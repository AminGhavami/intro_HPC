import pandas as pd
import numpy as np
from snakemake.utils import validate, min_version
##### set minimum snakemake version #####
min_version("5.20.1") # for singularity binds
from snakemake.utils import validate, min_version

##### load config and sample sheets #####
configfile: "config/config.yaml"
validate(config, schema="../schemas/config.schema.yaml")

samples = pd.read_table(config["samples"]).set_index("sample", drop=False)
validate(samples, schema="../schemas/samples.schema.yaml")

units = pd.read_table(config["units"], dtype=str).set_index(["sample", "unit"], drop=False)
units.index = units.index.set_levels([i.astype(str) for i in units.index.levels])  # enforce str in index
validate(units, schema="../schemas/units.schema.yaml")

# check if contrast condition in samples and config match
conditions = np.unique(samples["condition"].values).tolist()
for key, val in config["diffexp"]["contrasts"].items():
  for cond in val:
    assert cond.find('-') == -1, "dashes found in {}, not allowed since later converted to underscores by DESeq2".format(cond)
    assert cond in conditions, "condition {} in config.yaml don't match in samples.yaml".format(cond)
  assert len(key.split("_vs_")) == 2, "contrasts in config.yaml must in the form XX_vs_YY (provided: {})".format(key)
  for cond in key.split("_vs_"):
    assert cond in conditions, "conditions in headers must be present in samples.yaml ({} missing)".format(cond)

# check if sample in units.tsv and samples.tsv are coherent
for usp in np.unique(units["sample"].values).tolist():
  assert usp in np.unique(samples["sample"].values).tolist(), "sample {} in units.tsv is not samples.tsv".format(usp)
for ssp in np.unique(samples["sample"].values).tolist():
  assert ssp in np.unique(units["sample"].values).tolist(), "sample {} in samples.tsv is not units.tsv".format(ssp)


if config["celid"]:
  assert config["ref"]["build"] == "GRCh38", "The CeL-ID worlflow only works with the GRCh38 genome"


wildcard_constraints:
    sample="|".join(samples["sample"]),
    unit="|".join(units["unit"]),
    read="|".join(["0", "1", "2"])

def input_multiqc(wildcards):
    multiqc_input = []
    for (sample, unit) in units.index:
        reads = [ "1", "2" ]
        if is_single_end(sample, unit):
            reads = [ "0" ]
            multiqc_input.extend(expand (["trimmed_se/{sample}-{unit}.settings"],
            sample = sample, unit = unit))
        else:
            multiqc_input.extend(expand (["trimmed_pe/{sample}-{unit}.settings"],
            sample = sample, unit = unit))

        multiqc_input.extend(expand([
                    "qc/fastqc/{sample}-{unit}-{reads}_fastqc.zip",
                    "qc/fastqc/{sample}-{unit}-{reads}.html",
                ], sample = sample, unit = unit, reads = reads)
        )
        if not config["params"]["testing"]:
            multiqc_input.extend(expand([
                "qc/fastq_screen/{sample}-{unit}-{reads}_fastq_screen.txt",
                "qc/fastq_screen/{sample}-{unit}-{reads}_fastq_screen.png"
                ], sample = sample, unit = unit, reads = reads)
            )
    for sample in samples.index:
      multiqc_input.extend(expand([
        "star/{sample}/ReadsPerGene.out.tab",
        "logs/star/{sample}/Log.final.out"], sample = sample)
      )
    multiqc_input.append("counts/fc_stats.summary")
    return multiqc_input




def get_final_output():
    final_output = expand(["results/diffexp/{contrast}.diffexp.tsv",
        "results/diffexp/{contrast}.ma-plot.pdf"],
        contrast=config["diffexp"]["contrasts"],
    )
    final_output.append("results/pca.pdf")
    final_output.append("qc/multiqc_report.html")
    if config["celid"]:
        final_output.append("results/cel-id_plot.pdf")
    final_output.append("results/session.txt")
    final_output.append("results/diffexp/{contrast}.TOP2A.tsv")
    final_output.append("results/diffexp/{contrast}.summary.tsv")
    return final_output


def get_raw_fq(wildcards):
    """Get individual raw FASTQ files from unit sheet, based on a read (end) wildcard"""
    if ( wildcards.read == "0" or wildcards.read == "1" ):
        return units.loc[ (wildcards.sample, wildcards.unit), "fq1" ]
    elif wildcards.read == "2":
        return units.loc[ (wildcards.sample, wildcards.unit), "fq2" ]




def get_strandness(units):
    if "strandedness" in units.columns:
        return units["strandedness"].tolist()
    else:
        strand_list=["none"]
        return strand_list*units.shape[0]

def get_deseq2_threads(wildcards=None):
    # https://twitter.com/mikelove/status/918770188568363008
    few_coeffs = False if wildcards is None else len(get_contrast(wildcards)) < 10
    return 1 if len(samples) < 100 or few_coeffs else 6

def get_contrast(wildcards):
    return config["diffexp"]["contrasts"][wildcards.contrast]


def is_single_end(sample, unit):
    """Determine whether unit is single-end."""
    fq2_present = pd.isnull(units.loc[(sample, unit), "fq2"])
    # when not a boolean, cast it to one
    if not isinstance(fq2_present, bool):
        fq2 = bool(fq2_present.all())
    else:
        fq2 = fq2_present
    if not isinstance(fq2, bool):
        # if this is the case, get_fastqs cannot work properly
        raise ValueError(
            f"Multiple fq2 entries found for sample-unit combination {sample}-{unit}.\n"
            "This is most likely due to a faulty units.tsv file, e.g. "
            "a unit name is used twice for the same sample.\n"
            "Try checking your units.tsv for duplicates."
        )
    return fq2

def is_sample_se(sample):
    fq2 = pd.isnull(units.loc[sample, "fq2"]).tolist()
    all_same = all(i == fq2[0] for i in fq2)
    if not all_same:
        raise ValueError(
            f"Same sample with > 1 unit must be all single or paired-end (sample: {sample}-{unit})"
        )
    return all(fq2)


def get_fastq(wildcards):
    fastqs = units.loc[(wildcards.sample, wildcards.unit), ["fq1", "fq2"]].dropna()
    if len(fastqs) == 2:
        return {"fq1": fastqs.fq1, "fq2": fastqs.fq2}
    return {"fq1": fastqs.fq1}


# return list of technical replicates (units) for fq1 if present
def get_fq1(sample):
    #unit = ''.join(units.loc[sample, ["unit"]].values.flatten())
    unit = units.loc[sample, ["unit"]].values.flatten()
    if config["trimming"]["skip"]:
        # no trimming, use raw reads
        return units.loc[(sample, unit), ["fq1"]].values.flatten().tolist() 
    else:
        # yes trimming, use trimmed data
        if not is_single_end(sample, unit):
            # paired-end sample
            return expand("trimmed_pe/{sample}-{unit}.1.fastq.gz", sample=sample, unit=unit)
        # single end sample, return only 1 file using pure python format
        #print(expand("trimmed_se/{sample}-{unit}.fastq.gz", sample=sample, unit=unit))
        return expand("trimmed_se/{sample}-{unit}.fastq.gz", sample=sample, unit=unit)

# return list of technical replicates (units) for fq2 if present
def get_fq2(sample):
    if config["trimming"]["skip"]:
        # no trimming, use raw reads
        return units.loc[(sample), ["fq2"]].values.flatten().tolist() 
    else:
        # yes trimming, use trimmed data
        if not is_single_end(sample, units.loc[(sample), ["unit"]].values.flatten()):
            # paired-end sample
            return expand("trimmed_pe/{sample}-{unit}.2.fastq.gz", sample=sample, unit=units.loc[(sample), ["unit"]].values.flatten())
        # single end sample, return None
        return []

