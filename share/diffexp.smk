
rule feature_count:
    input:
        bams = expand("star/{sample.sample}/Aligned.sortedByCoord.out.bam", sample=samples.itertuples())
    output:
        fc = "counts/fc.rds",
        stat = "counts/fc_stats.summary"
    threads:
        8
    log:
        "logs/featureCounts.log"
    params:
        annotation = "refs/{}.gtf".format(config["ref"]["build"]),
        strandness = get_strandness(units),
        # convert array boolean to binary
        se = [is_sample_se(sample.sample) for sample in samples.itertuples()]
    script:
        "../scripts/featureCounts.R"

rule deseq2_init:
    input:
        counts="counts/fc.rds"
    output:
        "deseq2/all.rds"
    params:
        samples=config["samples"]
    log:
        "logs/deseq2/init.log"
    threads: get_deseq2_threads()
    script:
        "../scripts/deseq2-init.R"


rule pca:
    input:
        "deseq2/all.rds"
    output:
        report("results/pca.pdf", category = "PCA", caption = "../report/pca.rst")
    params:
        pca_labels=config["pca"]["labels"]
    log:
        "logs/pca.log"
    script:
        "../scripts/plot-pca.R"
        

rule deseq2:
    input:
        "deseq2/all.rds"
    output:
        table = report("results/diffexp/{contrast}.diffexp.tsv", category = "Differential Expression", caption = "../report/diffexp.rst"),
        ma_plot = report("results/diffexp/{contrast}.ma-plot.pdf", category = "Differential Expression", caption = "../report/ma.rst"),
        plot_count = report("results/diffexp/{contrast}.plot-count.pdf", category = "Differential Expression", caption = "../report/pc.rst"),
        volcano = report("results/diffexp/{contrast}.volcano.pdf", category = "Differential Expression", caption = "../report/volcano.rst")
    params:
        contrast="{contrast}"
    message:
        "performing contrast using apeglm logFC shrinkage"
    log:
        "logs/deseq2/{contrast}.diffexp.log"
    threads: get_deseq2_threads()
    script:
        "../scripts/deseq2.R"



rule TOP2A:
    input:
        "results/diffexp/{contrast}.diffexp.tsv"
    output:
        "results/diffexp/{contrast}.TOP2A.tsv"
    log:
        "logs/TOP2A/{contrast}.log"
    shell:
        "grep -w TOP2A {input} > {output} 2> {log}"

rule diffexp_summary:
    input:
        "results/diffexp/{contrast}.diffexp.tsv"
    output:
        "results/diffexp/{contrast}.summary.tsv"
    log:
        "logs/diffexp_summary/{contrast}.log"
    shell:
        r"""
        awk 'BEGIN{{up=0; down=0}} 
             NR>1 && $3 >= 1 && $6 < 0.05 {{up++}} 
             NR>1 && $3 <= -1 && $6 < 0.05 {{down++}} 
             END{{print "Up-regulated\t" up; print "Down-regulated\t" down}}' \
             {input} > {output} 2> {log}
        """

