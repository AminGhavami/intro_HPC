
<!doctype html>
<html lang="en" class="no-js">
  <head>
    
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      
      
        <meta name="author" content="Xavier Besseron">
      
      
        <link rel="canonical" href="https://hpc-software-environment-cf0f7b.gitlab.io/software_installation/">
      
      
        <link rel="prev" href="../debugging_profiling/">
      
      
        <link rel="next" href="../containers/">
      
      
      <link rel="icon" href="../assets/images/favicon.png">
      <meta name="generator" content="mkdocs-1.5.3, mkdocs-material-9.5.6">
    
    
      
        <title>Installing Software on HPC - Master in HPC - HPC Software Environment - Practicals</title>
      
    
    
      <link rel="stylesheet" href="../assets/stylesheets/main.50c56a3b.min.css">
      
      


    
    
      
    
    
      
        
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i%7CRoboto+Mono:400,400i,700,700i&display=fallback">
        <style>:root{--md-text-font:"Roboto";--md-code-font:"Roboto Mono"}</style>
      
    
    
      <link rel="stylesheet" href="../stylesheets/extra.css">
    
    <script>__md_scope=new URL("..",location),__md_hash=e=>[...e].reduce((e,_)=>(e<<5)-e+_.charCodeAt(0),0),__md_get=(e,_=localStorage,t=__md_scope)=>JSON.parse(_.getItem(t.pathname+"."+e)),__md_set=(e,_,t=localStorage,a=__md_scope)=>{try{t.setItem(a.pathname+"."+e,JSON.stringify(_))}catch(e){}}</script>
    
      

    
    
    
  </head>
  
  
    <body dir="ltr">
  
    
    <input class="md-toggle" data-md-toggle="drawer" type="checkbox" id="__drawer" autocomplete="off">
    <input class="md-toggle" data-md-toggle="search" type="checkbox" id="__search" autocomplete="off">
    <label class="md-overlay" for="__drawer"></label>
    <div data-md-component="skip">
      
        
        <a href="#software-installation-on-hpc" class="md-skip">
          Skip to content
        </a>
      
    </div>
    <div data-md-component="announce">
      
    </div>
    
    
      

  

<header class="md-header md-header--shadow" data-md-component="header">
  <nav class="md-header__inner md-grid" aria-label="Header">
    <a href=".." title="Master in HPC - HPC Software Environment - Practicals" class="md-header__button md-logo" aria-label="Master in HPC - HPC Software Environment - Practicals" data-md-component="logo">
      
  
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12 8a3 3 0 0 0 3-3 3 3 0 0 0-3-3 3 3 0 0 0-3 3 3 3 0 0 0 3 3m0 3.54C9.64 9.35 6.5 8 3 8v11c3.5 0 6.64 1.35 9 3.54 2.36-2.19 5.5-3.54 9-3.54V8c-3.5 0-6.64 1.35-9 3.54Z"/></svg>

    </a>
    <label class="md-header__button md-icon" for="__drawer">
      
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M3 6h18v2H3V6m0 5h18v2H3v-2m0 5h18v2H3v-2Z"/></svg>
    </label>
    <div class="md-header__title" data-md-component="header-title">
      <div class="md-header__ellipsis">
        <div class="md-header__topic">
          <span class="md-ellipsis">
            Master in HPC - HPC Software Environment - Practicals
          </span>
        </div>
        <div class="md-header__topic" data-md-component="header-topic">
          <span class="md-ellipsis">
            
              Installing Software on HPC
            
          </span>
        </div>
      </div>
    </div>
    
    
      <script>var media,input,key,value,palette=__md_get("__palette");if(palette&&palette.color){"(prefers-color-scheme)"===palette.color.media&&(media=matchMedia("(prefers-color-scheme: light)"),input=document.querySelector(media.matches?"[data-md-color-media='(prefers-color-scheme: light)']":"[data-md-color-media='(prefers-color-scheme: dark)']"),palette.color.media=input.getAttribute("data-md-color-media"),palette.color.scheme=input.getAttribute("data-md-color-scheme"),palette.color.primary=input.getAttribute("data-md-color-primary"),palette.color.accent=input.getAttribute("data-md-color-accent"));for([key,value]of Object.entries(palette.color))document.body.setAttribute("data-md-color-"+key,value)}</script>
    
    
    
      <label class="md-header__button md-icon" for="__search">
        
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M9.5 3A6.5 6.5 0 0 1 16 9.5c0 1.61-.59 3.09-1.56 4.23l.27.27h.79l5 5-1.5 1.5-5-5v-.79l-.27-.27A6.516 6.516 0 0 1 9.5 16 6.5 6.5 0 0 1 3 9.5 6.5 6.5 0 0 1 9.5 3m0 2C7 5 5 7 5 9.5S7 14 9.5 14 14 12 14 9.5 12 5 9.5 5Z"/></svg>
      </label>
      <div class="md-search" data-md-component="search" role="dialog">
  <label class="md-search__overlay" for="__search"></label>
  <div class="md-search__inner" role="search">
    <form class="md-search__form" name="search">
      <input type="text" class="md-search__input" name="query" aria-label="Search" placeholder="Search" autocapitalize="off" autocorrect="off" autocomplete="off" spellcheck="false" data-md-component="search-query" required>
      <label class="md-search__icon md-icon" for="__search">
        
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M9.5 3A6.5 6.5 0 0 1 16 9.5c0 1.61-.59 3.09-1.56 4.23l.27.27h.79l5 5-1.5 1.5-5-5v-.79l-.27-.27A6.516 6.516 0 0 1 9.5 16 6.5 6.5 0 0 1 3 9.5 6.5 6.5 0 0 1 9.5 3m0 2C7 5 5 7 5 9.5S7 14 9.5 14 14 12 14 9.5 12 5 9.5 5Z"/></svg>
        
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M20 11v2H8l5.5 5.5-1.42 1.42L4.16 12l7.92-7.92L13.5 5.5 8 11h12Z"/></svg>
      </label>
      <nav class="md-search__options" aria-label="Search">
        
        <button type="reset" class="md-search__icon md-icon" title="Clear" aria-label="Clear" tabindex="-1">
          
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M19 6.41 17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12 19 6.41Z"/></svg>
        </button>
      </nav>
      
    </form>
    <div class="md-search__output">
      <div class="md-search__scrollwrap" data-md-scrollfix>
        <div class="md-search-result" data-md-component="search-result">
          <div class="md-search-result__meta">
            Initializing search
          </div>
          <ol class="md-search-result__list" role="presentation"></ol>
        </div>
      </div>
    </div>
  </div>
</div>
    
    
  </nav>
  
</header>
    
    <div class="md-container" data-md-component="container">
      
      
        
          
        
      
      <main class="md-main" data-md-component="main">
        <div class="md-main__inner md-grid">
          
            
              
                
              
              <div class="md-sidebar md-sidebar--primary" data-md-component="sidebar" data-md-type="navigation" hidden>
                <div class="md-sidebar__scrollwrap">
                  <div class="md-sidebar__inner">
                    



<nav class="md-nav md-nav--primary" aria-label="Navigation" data-md-level="0">
  <label class="md-nav__title" for="__drawer">
    <a href=".." title="Master in HPC - HPC Software Environment - Practicals" class="md-nav__button md-logo" aria-label="Master in HPC - HPC Software Environment - Practicals" data-md-component="logo">
      
  
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12 8a3 3 0 0 0 3-3 3 3 0 0 0-3-3 3 3 0 0 0-3 3 3 3 0 0 0 3 3m0 3.54C9.64 9.35 6.5 8 3 8v11c3.5 0 6.64 1.35 9 3.54 2.36-2.19 5.5-3.54 9-3.54V8c-3.5 0-6.64 1.35-9 3.54Z"/></svg>

    </a>
    Master in HPC - HPC Software Environment - Practicals
  </label>
  
  <ul class="md-nav__list" data-md-scrollfix>
    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href=".." class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Home
  </span>
  

      </a>
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../command_line_hpc/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Command Line Environment on HPC
  </span>
  

      </a>
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../compilation/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Compilation on HPC
  </span>
  

      </a>
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../debugging_profiling/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Debugging & Profiling
  </span>
  

      </a>
    </li>
  

    
      
      
  
  
    
  
  
  
    <li class="md-nav__item md-nav__item--active">
      
      <input class="md-nav__toggle md-toggle" type="checkbox" id="__toc">
      
      
        
      
      
        <label class="md-nav__link md-nav__link--active" for="__toc">
          
  
  <span class="md-ellipsis">
    Installing Software on HPC
  </span>
  

          <span class="md-nav__icon md-icon"></span>
        </label>
      
      <a href="./" class="md-nav__link md-nav__link--active">
        
  
  <span class="md-ellipsis">
    Installing Software on HPC
  </span>
  

      </a>
      
        

<nav class="md-nav md-nav--secondary" aria-label="Table of contents">
  
  
  
    
  
  
    <label class="md-nav__title" for="__toc">
      <span class="md-nav__icon md-icon"></span>
      Table of contents
    </label>
    <ul class="md-nav__list" data-md-component="toc" data-md-scrollfix>
      
        <li class="md-nav__item">
  <a href="#introduction" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Introduction
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Introduction">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#objectives" class="md-nav__link">
    <span class="md-ellipsis">
      Objectives
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#instructions" class="md-nav__link">
    <span class="md-ellipsis">
      Instructions
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#report" class="md-nav__link">
    <span class="md-ellipsis">
      Report
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-0-setup" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 0: Setup
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 0: Setup">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#github-classroom-repository" class="md-nav__link">
    <span class="md-ellipsis">
      GitHub Classroom Repository
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#connection-to-a-compute-node" class="md-nav__link">
    <span class="md-ellipsis">
      Connection to a Compute Node
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-1-modulefile-for-manual-software-installation" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 1: Modulefile for Manual Software Installation
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 1: Modulefile for Manual Software Installation">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#inspecting-existing-modulefiles" class="md-nav__link">
    <span class="md-ellipsis">
      Inspecting existing Modulefiles
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#writing-your-own-modulefile" class="md-nav__link">
    <span class="md-ellipsis">
      Writing your own Modulefile
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#test-your-modulefile" class="md-nav__link">
    <span class="md-ellipsis">
      Test your Modulefile
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-2-software-installation-with-easybuild" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 2: Software Installation with EasyBuild
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#easybuild-initial-configuration" class="md-nav__link">
    <span class="md-ellipsis">
      EasyBuild Initial Configuration
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#installingupgrading-easybuild" class="md-nav__link">
    <span class="md-ellipsis">
      Installing/Upgrading EasyBuild
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#installing-software-with-easybuild" class="md-nav__link">
    <span class="md-ellipsis">
      Installing Software with EasyBuild
    </span>
  </a>
  
    <nav class="md-nav" aria-label="Installing Software with EasyBuild">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#hpl-benchmark" class="md-nav__link">
    <span class="md-ellipsis">
      HPL Benchmark
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#osu-micro-benchmarks" class="md-nav__link">
    <span class="md-ellipsis">
      OSU Micro Benchmarks
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#creating-your-own-easyconfig" class="md-nav__link">
    <span class="md-ellipsis">
      Creating your own EasyConfig
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-3-using-eessi" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 3: Using EESSI
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#report-submission" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Report submission
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#additional-resources" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Additional Resources
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#about-lmod-environment-module" class="md-nav__link">
    <span class="md-ellipsis">
      About Lmod Environment Module
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#about-easybuild" class="md-nav__link">
    <span class="md-ellipsis">
      About EasyBuild
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#about-eessi" class="md-nav__link">
    <span class="md-ellipsis">
      About EESSI
    </span>
  </a>
  
</li>
      
    </ul>
  
</nav>
      
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../containers/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Containers for HPC
  </span>
  

      </a>
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../testing/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Testing on HPC with ReFrame
  </span>
  

      </a>
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../open_ondemand/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Open OnDemand Web Portal
  </span>
  

      </a>
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../snakemake/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Workflow on HPC with SnakeMake
  </span>
  

      </a>
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../data_management_reproducibility/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Data Management & Reproducibility
  </span>
  

      </a>
    </li>
  

    
  </ul>
</nav>
                  </div>
                </div>
              </div>
            
            
              
                
              
              <div class="md-sidebar md-sidebar--secondary" data-md-component="sidebar" data-md-type="toc" >
                <div class="md-sidebar__scrollwrap">
                  <div class="md-sidebar__inner">
                    

<nav class="md-nav md-nav--secondary" aria-label="Table of contents">
  
  
  
    
  
  
    <label class="md-nav__title" for="__toc">
      <span class="md-nav__icon md-icon"></span>
      Table of contents
    </label>
    <ul class="md-nav__list" data-md-component="toc" data-md-scrollfix>
      
        <li class="md-nav__item">
  <a href="#introduction" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Introduction
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Introduction">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#objectives" class="md-nav__link">
    <span class="md-ellipsis">
      Objectives
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#instructions" class="md-nav__link">
    <span class="md-ellipsis">
      Instructions
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#report" class="md-nav__link">
    <span class="md-ellipsis">
      Report
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-0-setup" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 0: Setup
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 0: Setup">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#github-classroom-repository" class="md-nav__link">
    <span class="md-ellipsis">
      GitHub Classroom Repository
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#connection-to-a-compute-node" class="md-nav__link">
    <span class="md-ellipsis">
      Connection to a Compute Node
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-1-modulefile-for-manual-software-installation" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 1: Modulefile for Manual Software Installation
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 1: Modulefile for Manual Software Installation">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#inspecting-existing-modulefiles" class="md-nav__link">
    <span class="md-ellipsis">
      Inspecting existing Modulefiles
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#writing-your-own-modulefile" class="md-nav__link">
    <span class="md-ellipsis">
      Writing your own Modulefile
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#test-your-modulefile" class="md-nav__link">
    <span class="md-ellipsis">
      Test your Modulefile
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-2-software-installation-with-easybuild" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 2: Software Installation with EasyBuild
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#easybuild-initial-configuration" class="md-nav__link">
    <span class="md-ellipsis">
      EasyBuild Initial Configuration
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#installingupgrading-easybuild" class="md-nav__link">
    <span class="md-ellipsis">
      Installing/Upgrading EasyBuild
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#installing-software-with-easybuild" class="md-nav__link">
    <span class="md-ellipsis">
      Installing Software with EasyBuild
    </span>
  </a>
  
    <nav class="md-nav" aria-label="Installing Software with EasyBuild">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#hpl-benchmark" class="md-nav__link">
    <span class="md-ellipsis">
      HPL Benchmark
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#osu-micro-benchmarks" class="md-nav__link">
    <span class="md-ellipsis">
      OSU Micro Benchmarks
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#creating-your-own-easyconfig" class="md-nav__link">
    <span class="md-ellipsis">
      Creating your own EasyConfig
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-3-using-eessi" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 3: Using EESSI
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#report-submission" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Report submission
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#additional-resources" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Additional Resources
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#about-lmod-environment-module" class="md-nav__link">
    <span class="md-ellipsis">
      About Lmod Environment Module
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#about-easybuild" class="md-nav__link">
    <span class="md-ellipsis">
      About EasyBuild
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#about-eessi" class="md-nav__link">
    <span class="md-ellipsis">
      About EESSI
    </span>
  </a>
  
</li>
      
    </ul>
  
</nav>
                  </div>
                </div>
              </div>
            
          
          
            <div class="md-content" data-md-component="content">
              <article class="md-content__inner md-typeset">
                
                  


<h1 id="software-installation-on-hpc">Software Installation on HPC</h1>
<ul>
<li>Author: <a href="https://luxdem.uni.lu/team/xbesseron/">Xavier Besseron</a> (<a href="https://uni.lu/">University of Luxembourg</a>)</li>
<li>License: ©2025 <a href="http://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a></li>
<li>Date of practical: Thursday 20th of March 2025</li>
<li>Submission deadline: Tuesday 25th of March 2025 at 23h59</li>
</ul>
<h2 id="introduction">🔵 Introduction</h2>
<p>Welcome to our practical session on installing scientific software on HPC.
HPC environments are essential for large-scale simulations and computationally intensive research.
Understanding how to install the necessary tools correctly is a vital skill for the efficient use of these powerful resources.</p>
<h3 id="objectives">Objectives</h3>
<p><a href="https://geekandpoke.typepad.com/geekandpoke/2010/05/how-to-become-invaluable.html"><img align="right" alt="Cartoon Geek And Poke: How To Become Invaluable" src="../images/cartoon_how_to_become_invaluable.jpg" /></a></p>
<p>During this session, we will equip you with hands-on experience in tackling the challenges of software installation on HPC:</p>
<ul>
<li><strong>Modulefile Management</strong>: You'll learn how to manually create modulefiles, providing a structured way to manage different software versions and their dependencies.</li>
<li><strong>EasyBuild</strong>: We'll demonstrate EasyBuild, a powerful tool that streamlines software installations on HPC systems. You'll install software using existing recipes.</li>
<li><strong>Customizing EasyBuild</strong>: You'll delve into writing your own EasyBuild recipes. This gives you maximum flexibility when standard recipes aren't available.</li>
<li><strong>EESSI</strong>: We'll introduce the European Environment for Scientific Software Installations (EESSI). This project aims to simplify collaboration by providing standardized software stacks for HPC.</li>
</ul>
<p>The exercises will also refer to external documentation and instructions that need to be consulted. The aim is for you to be independent and work in 'real conditions' by finding the information you need to complete the tasks.</p>
<h3 id="instructions">Instructions</h3>
<p>This practical is an <strong>individual work</strong> to be carried out on the <strong>Aion cluster</strong> of the HPC platform of the University of Luxembourg.</p>
<p>It is composed of different elements:</p>
<ul>
<li>this page that contains <strong>instructions and questions</strong>;</li>
<li>the <strong>GitHub Classroom repository</strong> that contains the materials for the exercises;</li>
<li>the <strong>report</strong> that you have to submit via GitHub Classroom with the rest of the requested documents</li>
</ul>
<h3 id="report">Report</h3>
<p>Together with this tutorial, you need to prepare a short report of your work:</p>
<ul>
<li>There is no template, you can start from a blank document. Keep it simple, clear and well-organized.</li>
<li>Make sure you answer all the questions (cf below), with text, code or screenshots as requested.</li>
<li>Prepare your report at the same time you're doing the exercises.</li>
<li>Submit your report as a PDF file to your GitHub Classroom repository and <strong>push it before the deadline</strong>.</li>
</ul>
<div class="admonition question">
<p class="admonition-title">Question 1: What? Who? When?</p>
<p>Indicate at the beginning of your report:</p>
<ul>
<li>the title of the practical</li>
<li>your full name</li>
<li>your Uni.lu HPC username</li>
<li>your GitHub username</li>
<li>the date</li>
</ul>
</div>
<hr />
<h2 id="part-0-setup">🔵 Part 0: Setup</h2>
<h3 id="github-classroom-repository">GitHub Classroom Repository</h3>
<p>Following the same approach as the previous practicals,
this practical relies on Git Classroom to distribute the extra materials and for the submission of the report.
To create your copy of the repository, follow the invitation link and accept the assignment:</p>
<p>Assignment link: <a href="https://classroom.github.com/a/4mn7cji3">https://classroom.github.com/a/4mn7cji3</a></p>
<p>If you need detailed explanations, please refer to the first week's instructions for <a href="../command_line_hpc/#part-3-setting-up-git-and-downloading-the-materials">Setting up Git and downloading the materials</a>.</p>
<h3 id="connection-to-a-compute-node">Connection to a Compute Node</h3>
<p>The exercises are to be carried out in interactive mode on a compute node of the <strong>Aion cluster</strong> of the University of Luxembourg.</p>
<p>As a reminder, here are the steps to access a compute nodes:</p>
<ul>
<li>Connect to the access node of the Aion cluster (cf <a href="../command_line_hpc/#connection-to-hpc-access">Connection to HPC Access</a>)</li>
<li>Find your reservation, if application (cf <a href="../command_line_hpc/#finding-your-reservation">Finding your reservation</a>)</li>
<li>Connect to a compute node (cf <a href="../command_line_hpc/#connection-to-a-compute-node">Connection to a compute node</a>)</li>
</ul>
<details class="tip">
<summary>Recommended Settings</summary>
<p>For this practical session, the following options are suggested:</p>
<ul>
<li>Partition: <code>interactive</code></li>
<li>QoS: <code>debug</code></li>
<li>Reservation: <code>hpcswenv_w04</code> during the Thursday morning session</li>
<li>Time: 2 hours (or ending before the end of the reservation)</li>
<li>Node: One compute node</li>
<li>Tasks: One task</li>
<li>Cores: 32 cores per task</li>
</ul>
</details>
<p>Your access command line should look like this:</p>
<div class="highlight"><pre><span></span><code>salloc<span class="w"> </span>-p<span class="w"> </span>interactive<span class="w"> </span>--qos<span class="w"> </span>debug<span class="w"> </span>--reservation<span class="o">=</span>hpcswenv_w04<span class="w"> </span>--time<span class="o">=</span><span class="m">2</span>:00:00<span class="w"> </span>-N<span class="w"> </span><span class="m">1</span><span class="w"> </span>-n<span class="w"> </span><span class="m">1</span><span class="w"> </span>-c<span class="w"> </span><span class="m">32</span>
</code></pre></div>
<hr />
<h2 id="part-1-modulefile-for-manual-software-installation">🔵 Part 1: Modulefile for Manual Software Installation</h2>
<p>In this part, we want to create a modulefile for software installed manually.
But first, let's have a look at the modulefiles already installed on the Aion cluster.</p>
<h3 id="inspecting-existing-modulefiles">Inspecting existing Modulefiles</h3>
<p>Numerous software are installed on the Aion cluster for the users. 
They are installed in separate directories to avoid conflicting with each other.</p>
<p>For example, we can find the modulefile for the SCOTCH library using the instructions below.
The path to the modulefile is shown at the top of the <code>module show</code> output, followed by the content of the modulefile.</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Search for the SCOTCH module</span>
module<span class="w"> </span>avail<span class="w"> </span>SCOTCH

<span class="c1"># Show the content of the modulefile</span>
module<span class="w"> </span>show<span class="w"> </span>math/SCOTCH/6.1.0-gompi-2020b
</code></pre></div>
<div class="admonition question">
<p class="admonition-title">Question 2: Inspecting the SCOTCH modulefile</p>
<p>Answer all the questions below in your report:</p>
<ul>
<li>What is the full path to the SCOTCH modulefile?</li>
<li>What is the homepage of the SCOTCH library, as given in the module?</li>
<li>What is the installation path of the SCOTCH library?</li>
</ul>
<p>This version of SCOTCH has been installed with EasyBuild. </p>
<ul>
<li>Can you tell which version of EasyBuild has been used to install it? Where did you find this information?</li>
<li>Can tell where all the modulefiles are installed?</li>
<li>How many modulefiles are installed in this path? You can use <code>find PATH -type f -name '*.lua' | wc -l</code> to count all the <code>.lua</code> files in a given path.</li>
</ul>
</div>
<h3 id="writing-your-own-modulefile">Writing your own Modulefile</h3>
<p>The objective of this exercise is to write your modulefile for software installed manually.
We will use the preCICE library that you installed during <a href="../compilation/#part-4-compilation-of-the-precice-library">Part 4 of the practical session on Compilation on HPC</a>.</p>
<details class="info">
<summary>preCICE Installation</summary>
<p>This exercise makes use of the preCICE installation that you have performed during the previous practical session.
You will just need to use the full path to the preCICE installation directory. It should look like this:</p>
<p><img alt="preCICE Installation" src="../images/precice_installation.png" /></p>
<p>If you did not have this installation, you will need to perform it again using the <a href="../compilation/#part-4-compilation-of-the-precice-library">instructions of the practical</a>.</p>
</details>
<p>The Aion cluster uses the <strong>Lmod Environment Module</strong> system for which modulefiles are written in Lua, 
and thus the modulefile should respect the Lua and Lmod syntax.
The Lmod documentation provides many examples and a list of Lua functions that can help you to write a modulefile.</p>
<ul>
<li><a href="https://lmod.readthedocs.io/en/latest/015_writing_modules.html">An Introduction to Writing Modulefiles</a></li>
<li><a href="https://lmod.readthedocs.io/en/latest/100_modulefile_examples.html">Modulefile Examples from simple to complex</a></li>
<li><a href="https://lmod.readthedocs.io/en/latest/050_lua_modulefiles.html">Functions for Lua Modulefile</a></li>
<li><a href="https://lmod.readthedocs.io/en/latest/055_module_names.html">Module names and module naming conventions</a></li>
</ul>
<p>We will create our new modulefile in the <code>precice/modules</code> directory of the GitHub Classroom repository.
We will follow the <a href="https://lmod.readthedocs.io/en/latest/055_module_names.html">naming convention</a> <strong>Category/Name/Version</strong> with</p>
<ul>
<li>Category = <code>numlib</code></li>
<li>Name = <code>preCICE</code></li>
<li>Version = <code>3.1.2</code></li>
</ul>
<p>and thus the preCICE modulefile will be named <code>numlib/preCICE/3.1.2.lua</code>. Here <code>numlib</code> and <code>preCICE</code> are sub-directories and <code>3.1.2.lua</code> is the actual filename)</p>
<p><strong>Task 1</strong>: Create an empty file for the new modulefile at the right location following the defined naming convention. You might need to create additional sub-directories.</p>
<p><strong>Task 2</strong>: Edit the new modulefile <code>numlib/preCICE/3.1.2.lua</code> to match your preCICE installation. Of course, you can get inspiration from the SCOTCH modulefile that you inspected earlier. You need to pay attention to the following items:</p>
<ul>
<li>You can get a short description from the <a href="https://precice.org/">preCICE homepage</a></li>
<li>Your module should load the appropriate dependencies. They correspond to the modules you had to load to compile preCICE. Check your notes for Question 6 for the practical on  Compilation on HPC. NOTE: CMake is not needed as a dependency because it is only used for compilation but not during execution.</li>
<li>Update these environment variables<ul>
<li><code>PATH</code> for the directory <code>bin</code> containing the executables;</li>
<li><code>CPATH</code> for the directory <code>include</code> containing the preCICE headers;</li>
<li><code>LD_LIBRARY_PATH</code> and <code>LIBRARY_PATH</code> for the directory <code>lib64</code> containing the preCICE libraries;</li>
<li><code>MANPATH</code> for the directory <code>share/man</code> containing the manpages;</li>
<li><code>PKG_CONFIG_PATH</code> for the directory <code>lib/pkgconfig</code> containing the <em>pkgconfig</em> settings;</li>
<li><code>CMAKE_PREFIX_PATH</code> for the preCICE installation directory as a <a href="https://cmake.org/cmake/help/latest/envvar/CMAKE_PREFIX_PATH.html">CMake search path</a>.</li>
</ul>
</li>
</ul>
<div class="admonition question">
<p class="admonition-title">Question 3: Modulefile for preCICE installation</p>
<p>Add your Modulefile for the preCICE installation to your GitHub Classroom repository, at the location defined above.</p>
</div>
<h3 id="test-your-modulefile">Test your Modulefile</h3>
<p>To use your new modulefile, we need to update the Lmod search path with <code>module use</code> (this will effectively update the <code>MODULEPATH</code> environment variable).
After this, preCICE should be available in the list of modules</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Update Lmod search path</span>
module<span class="w"> </span>use<span class="w"> </span>/PATH/TO/REPO/precice/modules

<span class="c1"># Look for the preCICE module</span>
module<span class="w"> </span>avail<span class="w"> </span>preCICE
</code></pre></div>
<p>You can now use and test the preCICE library.
A small example is available in <code>precice/dummy_solver_cpp</code> for this purpose.
Run the following instructions to try it:</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Load preCICE module</span>
module<span class="w"> </span>load<span class="w"> </span>numlib/preCICE/3.1.2
<span class="c1"># Load the CMake module, needed by the example</span>
module<span class="w"> </span>load<span class="w"> </span>devel/CMake/3.20.1-GCCcore-10.2.0

<span class="c1"># Check the path to the preCICE executable</span>
which<span class="w"> </span>precice-tools
<span class="c1"># Check the preCICE version</span>
precice-tools<span class="w"> </span>--version

<span class="c1"># Go to the example directory</span>
<span class="nb">cd</span><span class="w"> </span>precice/dummy_solver_cpp

<span class="c1"># Configure the build</span>
cmake<span class="w"> </span>.
<span class="c1"># Build the example</span>
make
<span class="c1"># Run the test</span>
ctest<span class="w"> </span>-V
</code></pre></div>
<p>If your modulefile is correct, the CMake, Build and Test steps should be successful, as shown on the screenshot below.</p>
<p><img alt="Successful output with preCICE modulefile" src="../images/output_with_precice_modulefile.png" /></p>
<div class="admonition question">
<p class="admonition-title">Question 4: Testing the preCICE modulefile</p>
<ul>
<li>Run the commands above to test your preCICE modulefile</li>
<li>Take a screenshot of your terminal output  📸</li>
<li>Add the screenshot to your report</li>
</ul>
</div>
<hr />
<h2 id="part-2-software-installation-with-easybuild">🔵 Part 2: Software Installation with EasyBuild</h2>
<p><a href="https://easybuild.io/"><img align="right" alt="EasyBuild logo" src="../images/easybuild_logo.png" /></a></p>
<p>In this part, you will learn to use <strong>EasyBuild</strong>: </p>
<ol>
<li>Installation of EasyBuild itself</li>
<li>Installation of software with EasyBuild</li>
<li>Creation of EasyBuild recipes for other software</li>
</ol>
<h2 id="easybuild-initial-configuration">EasyBuild Initial Configuration</h2>
<p>Before using EasyBuild, let's do some initial setup.</p>
<p>EasyBuild is already available on the Aion cluster. Let's find the current version installed.</p>
<ol>
<li>Use <code>module</code> to find the currently available version of EasyBuild and load it</li>
<li>Check the current version of EasyBuild with <code>eb --version</code> (the command to run EasyBuild is <code>eb</code>)</li>
<li>Check the current EasyConfig configuration with <code>eb --show-config</code></li>
</ol>
<div class="admonition question">
<p class="admonition-title">Question 5: EasyBuild initial setup</p>
<p>Answer to these questions in your report:</p>
<ul>
<li>Take a screenshot 📸 of the 3 steps above and add it to your report.</li>
<li>What is the current version of EasyBuild available on Aion?</li>
<li>What are the options with non-default values in the EasyBuild configuration?</li>
<li>What is the installation path used by EasyBuild?</li>
</ul>
</div>
<p><strong>Task 1:</strong> To make the software installed by EasyBuild searchable with <code>module</code>, update the Lmod search path accordingly:</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Update Lmod search path</span>
module<span class="w"> </span>use<span class="w"> </span><span class="s2">&quot;</span><span class="si">${</span><span class="nv">EASYBUILD_PREFIX</span><span class="si">}</span><span class="s2">/modules/all&quot;</span>
</code></pre></div>
<p><strong>Task 2:</strong> To make this change permanent, add the following lines at the end of your <code>~/.bashrc</code> file:</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Include the EasyBuild installation path to the Lmod search path</span>
<span class="k">if</span><span class="w"> </span><span class="nb">command</span><span class="w"> </span>-v<span class="w"> </span>module<span class="w"> </span>&gt;/dev/null<span class="w"> </span><span class="m">2</span>&gt;<span class="p">&amp;</span><span class="m">1</span><span class="w"> </span><span class="p">;</span><span class="w"> </span><span class="k">then</span>
<span class="w">    </span>module<span class="w"> </span>use<span class="w"> </span><span class="s2">&quot;</span><span class="si">${</span><span class="nv">EASYBUILD_PREFIX</span><span class="si">}</span><span class="s2">/modules/all&quot;</span>
<span class="k">fi</span>
</code></pre></div>
<details class="info">
<summary>What are these lines doing?</summary>
<p>The <code>~/.bashrc</code> contains a list of commands that are executed every time a Bash shell is started.</p>
<p>The <code>if command -v module &gt;/dev/null 2&gt;&amp;1</code> detects if the <code>module</code> command is available, in which case the Lmod search path is updated.
If the <code>module</code> command is not available, it means that the shell is running on the access node instead of a compute node. Hence there is no need to update the module search path.</p>
</details>
<h2 id="installingupgrading-easybuild">Installing/Upgrading EasyBuild</h2>
<p>The installation procedure of EasyBuild is described on its <a href="https://docs.easybuild.io/installation/">documentation website</a>.
However, we can also leverage EasyBuild itself to install the latest version of EasyBuild.</p>
<p>Following these steps to install the latest version of EasyBuild:</p>
<ol>
<li>Load the current version of EasyBuild</li>
<li>Search the EasyBuild help for the option to install the latest known version of EasyBuild: use <code>eb --help</code> or search the <a href="https://docs.easybuild.io/version-specific/eb-help/">online documentation</a>.</li>
<li>Install the latest known version of Easybuild with the right command line option</li>
<li>Use <code>module</code> to search for the newly installed version of EasyBuild and load it</li>
<li>Check the version of the new EasyBuild with <code>eb --version</code></li>
</ol>
<div class="admonition question">
<p class="admonition-title">Question 6: Installing the latest EasyBuild</p>
<p>Answer to these questions in your report:</p>
<ul>
<li>What is the command line to install the latest version of EasyBuild with EasyBuild?</li>
<li>What is the version of the newly installed easybuild?</li>
</ul>
</div>
<h2 id="installing-software-with-easybuild">Installing Software with EasyBuild</h2>
<p>We can now use the latest EasyBuild to install new software on the Aion cluster. 
Because you don't have administrator permissions, the software is installed in your home directory:
the created modules are only visible to you and the software can only be used by you.</p>
<h3 id="hpl-benchmark">HPL Benchmark</h3>
<p>We will start by installing HPL with EasyBuild. 
HPL is a software package that solves a (random) dense linear system in double precision (64 bits) arithmetic on distributed-memory computers. 
It can thus be regarded as a portable as well as freely available implementation of the High-Performance Computing Linpack Benchmark.</p>
<p>If you remember well, you installed HPL manually at the <a href="../compilation/#part-5-compilation-of-hpl">end of the practical session on compilation</a>. 
Let's see if the installation is easier with EasyBuild.</p>
<p>Perform the steps below to install HPL with EasyBuild:</p>
<ol>
<li>Search for HPL among available EasyConfigs: <code>eb --search HPL</code></li>
<li>Search for HPL restricted to the <code>foss-2020b</code> toolchain: <code>eb --search HPL.*foss-2020b</code><ul>
<li>The pattern <code>HLP.*foss-2020b</code> searches for files containing <code>HLP</code> and <code>foss-2020b</code> to see only the files based on the <code>foss/2020b</code> toolchain</li>
</ul>
</li>
<li>Install HPL using the EasyConfig filename found: <code>eb HPL-XXX.eb</code> (no need to give the full path)</li>
</ol>
<p>EasyBuild will show the progress and the different steps of the compilation and installation.
If the installation is successful, you should see the message below:</p>
<div class="highlight"><pre><span></span><code>== COMPLETED: Installation ended successfully (took X secs)
== Results of the build can be found in the log file(s) /XXX/HPL/2.3-foss-2020b/easybuild/easybuild-HPL-XXX.log
</code></pre></div>
<p>The log file <code>/XXX/HPL/2.3-foss-2020b/easybuild/easybuild-HPL-XXX.log</code> contains detailed information about the compilation and installation.
It can be used to debug issues happening during the installation process.</p>
<p>You can now test HPL with these lines:</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Load the HPL module</span>
module<span class="w"> </span>load<span class="w"> </span>tools/HPL/2.3-foss-2020b
<span class="c1"># Copy the HPL input file in the current directory</span>
cp<span class="w"> </span><span class="s2">&quot;</span><span class="si">${</span><span class="nv">EBROOTHPL</span><span class="si">}</span><span class="s2">/bin/HPL.dat&quot;</span><span class="w"> </span>.
<span class="c1"># Run HPL on 4 cores</span>
srun<span class="w"> </span>-n<span class="w"> </span><span class="m">4</span><span class="w"> </span>-c<span class="w"> </span><span class="m">1</span><span class="w"> </span>xhpl
</code></pre></div>
<div class="admonition question">
<p class="admonition-title">Question 7: Installation of HPL</p>
<p>Write the answer in your report:</p>
<ul>
<li>What is the full path of the EasyConfig file that you used to build HPL?</li>
<li>What is the version of HPL built with this EasyConfig file?</li>
<li>Add the log file generated by EasyBuild to the <code>hpl</code> directory of your GitHub Classroom repository.</li>
<li>In your opinion, is it easier to install HPL manually or with EasyBuild? Why?</li>
</ul>
</div>
<h3 id="osu-micro-benchmarks">OSU Micro Benchmarks</h3>
<p>We will now install the latest version of the OSU Micro Benchmarks.</p>
<p>The <a href="https://mvapich.cse.ohio-state.edu/benchmarks/">OSU Micro-Benchmarks</a> are a collection of programs designed 
to measure the performance of various communication libraries, including MPI, OpenSHMEM, UPC++ and NCCL. </p>
<p>These benchmarks measure the low-level performance of fundamental communication patterns:</p>
<ul>
<li><strong>Point-to-point</strong>: Direct communication between two processes.</li>
<li><strong>Collective</strong>: Communication involving multiple processes (e.g., broadcast, reduce).</li>
<li><strong>One-sided</strong>: One process directly accessing the memory of another without explicit involvement from the remote process.</li>
</ul>
<p>Are OSU Micro Benchmarks available in EasyBuild?</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Look for EasyConfig with a name containing &#39;OSU&#39;</span>
eb<span class="w"> </span>--search<span class="w"> </span>OSU
<span class="c1"># Look for OSU-Micro-Benchmarks with toolchain version 2020b</span>
eb<span class="w"> </span>--search<span class="w"> </span>OSU-Micro-Benchmarks.*2020b
<span class="c1"># Look for OSU-Micro-Benchmarks with toolchain `gompi-2020b`</span>
eb<span class="w"> </span>--search<span class="w"> </span>OSU-Micro-Benchmarks.*gompi-2020b
</code></pre></div>
<details class="warning">
<summary>WARNING: Found one or more non-allowed loaded (EasyBuild-generated) modules in current environment</summary>
<p>EasyBuild can complain if some specific modules are loaded because it can affect the results of the build. 
 If such case, it shows the warning <code>WARNING: Found one or more non-allowed loaded (EasyBuild-generated) modules in current environment</code>.</p>
<p>To get rid of this warning, clean your environment with <code>module unload ...</code>. Alternatively, you can run <code>module purge</code> and then load the EasyBuild module again.</p>
</details>
<p><img alt="Search for OSU-Micro-Benchmarks easyconfigs" class="center" src="../images/omb_easyconfigs.png" /></p>
<p>According to the homepage, the latest version of the OSU Micro Benchmarks is version 7.5.
Can we install them on Aion using the old toolchain <code>gompi/2020b</code>?</p>
<p>Let's use the <a href="https://docs.easybuild.io/version-specific/eb-help/#software-search-and-build-options">advanced build options</a> of EasyBuild:</p>
<table>
<thead>
<tr>
<th>Command line option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>--try-software=NAME,VERSION</code></td>
<td>Try to search and build software with given name and version (type comma-separated list)</td>
</tr>
<tr>
<td><code>--try-software-name=NAME</code></td>
<td>Try to search and build software with given name</td>
</tr>
<tr>
<td><code>--try-software-version=VERSION</code></td>
<td>Try to search and build software with given version</td>
</tr>
<tr>
<td><code>--try-toolchain=NAME,VERSION</code></td>
<td>Try to search and build with given toolchain (name and version) (type comma-separated list)</td>
</tr>
<tr>
<td><code>--try-toolchain-name=NAME</code></td>
<td>Try to search and build with given toolchain name</td>
</tr>
<tr>
<td><code>--try-toolchain-version=VERSION</code></td>
<td>Try to search and build with given toolchain version</td>
</tr>
</tbody>
</table>
<p><strong>Task:</strong> Use EasyBuild with the right combination of command line options to install the <strong>OSU Micro Benchmarks</strong> version <strong>7.5</strong> with the toolchain <code>gompi/2020b</code>.</p>
<p>With the <code>--try-XXX</code> options, EasyBuild will generate a new EasyConfigs file in your current directory and try to build with it.</p>
<div class="admonition question">
<p class="admonition-title">Question 8: Installation of OSU Micro Benchmarks 7.5</p>
<ul>
<li>What is the EasyBuild command line to install the latest OSU Micro Benchmarks on Aion?</li>
<li>Add the generated EasyConfig file to the <code>omb</code> directory of your GitHub Classroom repository.</li>
<li>Add the EasyBuild log file  to the <code>omb</code> directory of your GitHub Classroom repository.</li>
</ul>
</div>
<!--
TODO: try to run OMB
-->

<h2 id="creating-your-own-easyconfig">Creating your own EasyConfig</h2>
<p>For this exercise, we would like to install the <a href="https://github.com/MolSSI-MDI/MDI_Library">MolSSI Driver Interface (MDI) library</a>.
It is a standardized API for fast, on-the-fly communication between computational chemistry codes.
There is an EasyConfig recipe <a href="https://github.com/easybuilders/easybuild-easyconfigs/blob/4.9.x/easybuild/easyconfigs/m/MDI/MDI-1.4.26-gompi-2023a.eb">available</a>
to build MDI version 1.4.26 with the toolchain <code>gompi/2022b</code>. However, for a specific need, we would like to build the <a href="https://github.com/MolSSI-MDI/MDI_Library/releases/tag/v1.4.29">version 1.4.29</a> with the old toolchain <code>gompi/2020b</code> of Aion.</p>
<p><strong>Task 1:</strong> Adapt the EasyConfig file <a href="https://github.com/easybuilders/easybuild-easyconfigs/blob/4.9.x/easybuild/easyconfigs/m/MDI/MDI-1.4.26-gompi-2023a.eb">MDI-1.4.26-gompi-2023a.eb</a> to build <strong>MDI 1.4.29</strong> with toolchain <strong>gompi/2020b</strong>:</p>
<ul>
<li>Make sure to use the correct name for the new EasyConfig file;</li>
<li>Update the software and toolchain version</li>
<li>Adapt the dependencies to use the versions available on Aion (use <code>module avail</code>)</li>
<li>Update the checksum of the source code archive (use <code>sha256sum MDI_Library-1.4.29.tar.gz</code> on the manually downloaded file to get the new checksum)</li>
</ul>
<p><strong>Task 2:</strong> Build MDI 1.4.29 with your new EasyConfig file</p>
<div class="admonition question">
<p class="admonition-title">Question 9: EasyConfig file for MDI 1.4.29</p>
<p>Add the following file to the <code>mdi</code> directory of your GitHub Classroom repository:</p>
<ul>
<li>Your new EasyConfig file for MDI 1.4.29</li>
<li>The EasyBuild log file of the installation</li>
</ul>
<p>Why is it needed to update the checksum? What is the purpose of this checksum?</p>
</div>
<hr />
<h2 id="part-3-using-eessi">🔵 Part 3: Using EESSI</h2>
<p><img alt="EESSI logo" src="../images/EESSI_logo_horizontal.jpg" /></p>
<p><a href="https://www.eessi-hpc.org/">EESSI</a> or <a href="https://www.eessi-hpc.org/">European Environment for Scientific Software Installations</a> is installed on the Uni.lu HPC platform.
The instructions to use it are detailed in the <a href="https://hpc-docs.uni.lu/software/eessi/">ULHPC Technical Documentation</a>.</p>
<p>In this part, we want to use EESSI on the Aion cluster to run the OpenFOAM motorbike simulation that we used in the previous practicals.
In this situation, the advantage of EESSI is that it provides more recent versions of OpenFOAM.</p>
<p><strong>Task 1:</strong> Following the <a href="https://hpc-docs.uni.lu/software/eessi/">online documentation</a>, set up the EESSI environment. This will update your <code>MODULEPATH</code> and make all the EESSI-provided software available via modules.</p>
<div class="admonition question">
<p class="admonition-title">Question 10: Exploring the EESSI environment</p>
<p>Check your environment to answer the following questions:</p>
<ul>
<li>What is the processor architecture detected by EESSI? You can use <code>env | grep EESSI</code> to see the environment variables related to EESSI.</li>
<li>What is the path to the modulefiles provided by EESSI? Explain how you found the answer.</li>
<li>What is the name of the OpenFOAM 11 module provided by EESSI? Explain how you found the answer.</li>
<li>What are the toolchains available with EESSI? Explain how you found the answer.</li>
</ul>
<p>Take a screenshot 📸 of your terminal output and add it to your report.</p>
</div>
<p><strong>Task 2:</strong> Run the motorbike simulation using the <strong>OpenFOAM 11</strong> provided by EESSI:</p>
<ul>
<li>Copy the input directory <code>motorBike-INPUT</code> (located in <code>eessi/</code>) to a new directory called <code>motorBike-RUN-32</code></li>
<li>Adapt the submission script <code>run_OpenFOAM_parallel.sh</code><ul>
<li>Set the number of cores to 32 (i.e., 32 tasks with 1 CPU per task)</li>
<li>Add the command to set up the EESSI environment</li>
<li>Set the working directory</li>
<li>Load the OpenFOAM 11 module from EESSI</li>
</ul>
</li>
<li>Submit the script with <code>sbatch</code></li>
<li>Monitor the execution with <code>sq</code> and <code>tail -f SLURM_motorbike_XXX.log</code></li>
<li>Check the execution log file <code>SLURM_motorbike_XXX.log</code> for successful execution</li>
</ul>
<div class="admonition question">
<p class="admonition-title">Question 11: Using OpenFOAM provided by EESSI</p>
<p>Add the following files to the <code>eessi</code> directory of your GitHub Classroom repository:</p>
<ul>
<li>Your modified <code>run_OpenFOAM_parallel.sh</code> script</li>
<li>Your execution log file  <code>SLURM_motorbike_XXX.log</code></li>
</ul>
</div>
<hr />
<h2 id="report-submission">🔵 Report submission</h2>
<p>Don't forget to add and push all the required files to your GitHub Classroom repository:</p>
<ul>
<li>the log files, the EasyConfig files and the submission scripts;</li>
<li>the report, including the answers to all the questions and the screenshots.</li>
</ul>
<p>Don't add any other files and directories (for example, build directories, executables, Makefile, etc.).
Finalize your report and save it as a PDF (no other format allowed!) in the <code>report</code> sub-directory of your GitHub Classroom repository.</p>
<details class="tip">
<summary>Uploading your report</summary>
<p>You don't need to copy it to the HPC to upload your report. Instead, you can use the <strong>Add file</strong> button directly on the GitHub webpage.</p>
</details>
<div class="admonition danger">
<p class="admonition-title">Files Submission</p>
<p>Your files and report are considered submitted once they are pushed to your repository.</p>
<p>Check your GitHub repository online to make sure:
<a href="https://github.com/MHPC-HPCSoftwareEnvironment/y2425-w04-software-installation-XXX">https://github.com/MHPC-HPCSoftwareEnvironment/y2425-w04-software-installation-XXX</a></p>
<p>Passed the deadline at <strong>25/03/2025 23h59</strong> you won't be able to push anymore.</p>
</div>
<hr />
<h2 id="additional-resources">🔵 Additional Resources</h2>
<h2 id="about-lmod-environment-module">About Lmod Environment Module</h2>
<ul>
<li><a href="https://lmod.readthedocs.io/en/latest/">Lmod Documentation</a></li>
<li><a href="https://lmod.readthedocs.io/en/latest/015_writing_modules.html">An Introduction to Writing Modulefiles</a></li>
<li><a href="https://lmod.readthedocs.io/en/latest/100_modulefile_examples.html">Modulefile Examples from simple to complex</a></li>
<li><a href="https://lmod.readthedocs.io/en/latest/050_lua_modulefiles.html">Functions for Lua Modulefile</a></li>
<li><a href="https://lmod.readthedocs.io/en/latest/055_module_names.html">Module names and module naming conventions</a></li>
</ul>
<h2 id="about-easybuild">About EasyBuild</h2>
<ul>
<li><a href="https://easybuild.io/">EasyBuild Homepage</a></li>
<li><a href="https://docs.easybuild.io/">EasyBuild Documentation</a></li>
<li><a href="https://docs.easybuild.io/version-specific/eb-help/">Command Line / Configuration Options</a></li>
<li><a href="https://docs.easybuild.io/using-easybuild/#searching_for_easyconfigs">Searching for EasyConfig files</a></li>
<li><a href="https://docs.easybuild.io/common-toolchains/">Common toolchains</a></li>
<li><a href="https://docs.easybuild.io/writing-easyconfig-files/">Writing easyconfig files</a></li>
<li><a href="https://tutorial.easybuild.io/2022-isc22/">EasyBuild Tutorial at ISC'22</a></li>
</ul>
<h2 id="about-eessi">About EESSI</h2>
<ul>
<li><a href="https://www.eessi-hpc.org/">EESSI Homepage</a></li>
<li><a href="https://hpc-docs.uni.lu/software/eessi/">Using EESSI on Uni.lu HPC</a></li>
</ul>







  
  




  



                
              </article>
            </div>
          
          
<script>var target=document.getElementById(location.hash.slice(1));target&&target.name&&(target.checked=target.name.startsWith("__tabbed_"))</script>
        </div>
        
      </main>
      
        <footer class="md-footer">
  
  <div class="md-footer-meta md-typeset">
    <div class="md-footer-meta__inner md-grid">
      <div class="md-copyright">
  
  
    Made with
    <a href="https://squidfunk.github.io/mkdocs-material/" target="_blank" rel="noopener">
      Material for MkDocs
    </a>
  
</div>
      
    </div>
  </div>
</footer>
      
    </div>
    <div class="md-dialog" data-md-component="dialog">
      <div class="md-dialog__inner md-typeset"></div>
    </div>
    
    
    <script id="__config" type="application/json">{"base": "..", "features": [], "search": "../assets/javascripts/workers/search.b8dbb3d2.min.js", "translations": {"clipboard.copied": "Copied to clipboard", "clipboard.copy": "Copy to clipboard", "search.result.more.one": "1 more on this page", "search.result.more.other": "# more on this page", "search.result.none": "No matching documents", "search.result.one": "1 matching document", "search.result.other": "# matching documents", "search.result.placeholder": "Type to start searching", "search.result.term.missing": "Missing", "select.version": "Select version"}}</script>
    
    
      <script src="../assets/javascripts/bundle.e1c3ead8.min.js"></script>
      
        <script src="../js/open_in_new_tab.js"></script>
      
    
  </body>
</html>