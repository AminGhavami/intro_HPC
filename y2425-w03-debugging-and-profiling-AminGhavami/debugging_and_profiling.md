
<!doctype html>
<html lang="en" class="no-js">
  <head>
    
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      
      
        <meta name="author" content="Xavier Besseron">
      
      
        <link rel="canonical" href="https://hpc-software-environment-cf0f7b.gitlab.io/debugging_profiling/">
      
      
        <link rel="prev" href="../compilation/">
      
      
        <link rel="next" href="../software_installation/">
      
      
      <link rel="icon" href="../assets/images/favicon.png">
      <meta name="generator" content="mkdocs-1.5.3, mkdocs-material-9.5.6">
    
    
      
        <title>Debugging & Profiling - Master in HPC - HPC Software Environment - Practicals</title>
      
    
    
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
      
        
        <a href="#debugging-and-profiling" class="md-skip">
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
            
              Debugging & Profiling
            
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
  

    
      
      
  
  
    
  
  
  
    <li class="md-nav__item md-nav__item--active">
      
      <input class="md-nav__toggle md-toggle" type="checkbox" id="__toc">
      
      
        
      
      
        <label class="md-nav__link md-nav__link--active" for="__toc">
          
  
  <span class="md-ellipsis">
    Debugging & Profiling
  </span>
  

          <span class="md-nav__icon md-icon"></span>
        </label>
      
      <a href="./" class="md-nav__link md-nav__link--active">
        
  
  <span class="md-ellipsis">
    Debugging & Profiling
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
  <a href="#interactive-graphical-session" class="md-nav__link">
    <span class="md-ellipsis">
      Interactive Graphical Session
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
  <a href="#part-1-performance-characterization" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 1: Performance Characterization
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 1: Performance Characterization">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#introduction_1" class="md-nav__link">
    <span class="md-ellipsis">
      Introduction
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#submission-script" class="md-nav__link">
    <span class="md-ellipsis">
      Submission script
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#execution-at-a-larger-scale" class="md-nav__link">
    <span class="md-ellipsis">
      Execution at a larger scale
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-2-performance-profiling" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 2: Performance Profiling
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 2: Performance Profiling">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#submission-script_1" class="md-nav__link">
    <span class="md-ellipsis">
      Submission script
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#visualizing-the-profiling-results" class="md-nav__link">
    <span class="md-ellipsis">
      Visualizing the profiling results
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-3-debugging" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 3: Debugging
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 3: Debugging">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#estimation-of-pi-using-the-monte-carlo-method" class="md-nav__link">
    <span class="md-ellipsis">
      Estimation of Pi using the Monte Carlo Method
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#setup-the-debugger" class="md-nav__link">
    <span class="md-ellipsis">
      Setup the debugger
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#find-the-bugs" class="md-nav__link">
    <span class="md-ellipsis">
      Find the bugs! 🔎🪳
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
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
      
    </ul>
  
</nav>
      
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../software_installation/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Installing Software on HPC
  </span>
  

      </a>
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
  <a href="#interactive-graphical-session" class="md-nav__link">
    <span class="md-ellipsis">
      Interactive Graphical Session
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
  <a href="#part-1-performance-characterization" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 1: Performance Characterization
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 1: Performance Characterization">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#introduction_1" class="md-nav__link">
    <span class="md-ellipsis">
      Introduction
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#submission-script" class="md-nav__link">
    <span class="md-ellipsis">
      Submission script
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#execution-at-a-larger-scale" class="md-nav__link">
    <span class="md-ellipsis">
      Execution at a larger scale
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-2-performance-profiling" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 2: Performance Profiling
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 2: Performance Profiling">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#submission-script_1" class="md-nav__link">
    <span class="md-ellipsis">
      Submission script
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#visualizing-the-profiling-results" class="md-nav__link">
    <span class="md-ellipsis">
      Visualizing the profiling results
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-3-debugging" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 3: Debugging
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 3: Debugging">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#estimation-of-pi-using-the-monte-carlo-method" class="md-nav__link">
    <span class="md-ellipsis">
      Estimation of Pi using the Monte Carlo Method
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#setup-the-debugger" class="md-nav__link">
    <span class="md-ellipsis">
      Setup the debugger
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#find-the-bugs" class="md-nav__link">
    <span class="md-ellipsis">
      Find the bugs! 🔎🪳
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
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
      
    </ul>
  
</nav>
                  </div>
                </div>
              </div>
            
          
          
            <div class="md-content" data-md-component="content">
              <article class="md-content__inner md-typeset">
                
                  


<h1 id="debugging-and-profiling">Debugging and Profiling</h1>
<ul>
<li>Author: <a href="https://luxdem.uni.lu/team/xbesseron/">Xavier Besseron</a> (<a href="https://uni.lu/">University of Luxembourg</a>)</li>
<li>License: ©2025 <a href="http://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a></li>
<li>Date of practical: Thursday 13th of March 2025</li>
<li>Submission deadline: Tuesday 18th of March 2025 at 23h59</li>
</ul>
<h2 id="introduction">🔵 Introduction</h2>
<p>This practical session focuses on the debugging and profiling of parallel applications on HPC.
Debugging and profiling are both crucial because they directly impact code reliability and efficiency. </p>
<ul>
<li><strong>Debugging</strong> helps pinpoint errors and crashes within the complex, massively parallel code typical of HPC applications.</li>
<li><strong>Profiling</strong> uncovers performance bottlenecks and helps identify optimization opportunities to ensure that expensive HPC resources are used optimally.</li>
</ul>
<p>These techniques work together to accelerate code development and ensure that the results generated by HPC are accurate and achieve the best possible performance.</p>
<p><img alt="Bugs" class="center" src="../images/bugs.png" /></p>
<h3 id="objectives">Objectives</h3>
<p>This work proposes concrete examples of profiling and debugging parallel applications on HPC:</p>
<ul>
<li>Performance Characterization</li>
<li>Performance Profiling</li>
<li>Debugging</li>
</ul>
<p>The exercises will also refer to external documentation and instructions that need to be consulted. The aim is for you to be independent and work in 'real conditions' by finding the information you need to complete the task.</p>
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
<p>Assignment link: <a href="https://classroom.github.com/a/9sqmuDpM">https://classroom.github.com/a/9sqmuDpM</a></p>
<p>If you need detailed explanations, please refer to the first week's instructions for <a href="../command_line_hpc/#part-3-setting-up-git-and-downloading-the-materials">Setting up Git and downloading the materials</a>.</p>
<h3 id="interactive-graphical-session">Interactive Graphical Session</h3>
<p>Some of the tools used in this practical are graphical tools that require an X11 server.</p>
<details class="warning">
<summary>On Windows: Start an X11 server and enable X11-forwarding</summary>
<p><strong>If you're using Windows</strong>, you need to setup an X11 server and start it before connecting to the HPC.
The easiest way is to install and use <a href="https://mobaxterm.mobatek.net/">MobaXterm</a>. 
To start the X11 server, click to top right icon.</p>
<p><img alt="X11 Server button on MobaXterm" class="center" src="../images/mobaxterm_xserver.png" /></p>
<p>Then, if make sure to enable X11-forwarding for your connection to the HPC.</p>
<p><img alt="X11-forwarding on MobaXterm" class="center" src="../images/mobaxterm_x11_forwarding.png" /></p>
</details>
<details class="warning">
<summary>On MacOS X: Start an X11 server and enable X11-forwarding</summary>
<p><strong>If you're using MacOS X</strong>, you need to setup an X11 server and start it before connecting to the HPC.
You can follow the instructions on this page to set it up:</p>
<ul>
<li><a href="https://www.cyberciti.biz/faq/apple-osx-mountain-lion-mavericks-install-xquartz-server/">How to install X Window System XQuartz on macOS for ssh X11 forwarding</a></li>
</ul>
<p>Then, if make sure to enable X11-forwarding for your connection to the HPC.</p>
<div class="highlight"><pre><span></span><code>ssh<span class="w"> </span>-X<span class="w"> </span>aion-cluster
</code></pre></div>
</details>
<details class="warning">
<summary>On Linux: Enable X11-forwarding</summary>
<p>If you're using Linux or MacOS, use the <code>-X</code> options on your SSH command to enable X11-forwarding for your connection to the HPC. For example</p>
<div class="highlight"><pre><span></span><code>ssh<span class="w"> </span>-X<span class="w"> </span>aion-cluster
</code></pre></div>
</details>
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
<li>Reservation: <code>hpcswenv_w03</code> during the Thursday morning session</li>
<li>Time: 2 hours (or ending before the end of the reservation)</li>
<li>Node: One compute node</li>
<li>Tasks: 32 tasks</li>
<li>Cores: 1 core per task</li>
<li>Enable X11 forwarding: <code>--x11</code></li>
</ul>
</details>
<p>Your access command line should look like this:</p>
<div class="highlight"><pre><span></span><code>salloc<span class="w"> </span>-p<span class="w"> </span>interactive<span class="w"> </span>--qos<span class="w"> </span>debug<span class="w"> </span>--reservation<span class="o">=</span>hpcswenv_w03<span class="w"> </span>--time<span class="o">=</span><span class="m">2</span>:00:00<span class="w"> </span>-N<span class="w"> </span><span class="m">1</span><span class="w"> </span>-n<span class="w"> </span><span class="m">32</span><span class="w"> </span>-c<span class="w"> </span><span class="m">1</span><span class="w"> </span>--x11
</code></pre></div>
<details class="failure">
<summary>Failed to access a computing node?</summary>
<p>The message <code>salloc: error: No DISPLAY variable set, cannot setup x11 forwarding</code> indicates that you did not enable X11 forwarding when you first connected to the access node.</p>
</details>
<hr />
<h2 id="part-1-performance-characterization">🔵 Part 1: Performance Characterization</h2>
<h3 id="introduction_1">Introduction</h3>
<p>For this first exercise, we will do the <strong>performance characterization</strong> of a parallel Computational Fluid Dynamics simulation based on the OpenFOAM software.
This toy example calculates the airflow around a motorbike. It is the same example that you have used in the <a href="../command_line_hpc/#running-a-parallel-application">first practical</a>.</p>
<p><img alt="OpenFOAM MotorBike Tutorial" class="center" src="../images/openfoam-motorbike.png" /></p>
<p>We will use the <strong><a href="https://www.linaroforge.com/linaroPerformanceReports/">Performance Reports</a></strong> analysis tool that provides a summarized view of an application's performance characteristics.
It can identify whether the application is primarily:</p>
<ul>
<li><strong>CPU-bound</strong>: Limited by how fast the processor can execute instructions;</li>
<li><strong>MPI-bound</strong>: Limited by communication overhead in distributed computing environments;</li>
<li><strong>I/O-bound</strong>: Limited by how fast it can read/write data (e.g., hard disk, network);</li>
<li><strong>Python interpreter-bound</strong>: Limited by the overhead of running in the Python environment.</li>
</ul>
<p>The generated reports are concise and readable: they are designed to be easily understood, offering insights even when you don't have direct access to the application's source code.</p>
<div class="admonition info">
<p class="admonition-title">Performance Reports is a commercial tool</p>
<p>Performance Reports is part of the Linaro Forge tool suite that was previously known as Arm Forge or Allinea Forge.
It is a commercial tool that requires a licence to be used, and thus it is not available on all the HPC platforms.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Using Performance Reports on Uni.lu HPC</p>
<p>The University of Luxembourg has purchased a license for the Performance Reports tool and it is available to use for the user of the HPC platform.
The version installed on the Uni.lu HPC is 20.0.3 which was released by Arm. Thus we will call it <strong>Arm Performance Reports</strong>.</p>
<p>On the Aion and Iris cluster, Arm Performance Reports is available via the module <code>tools/ArmReports/20.0.3</code> and the command line executable is named <code>perf-report</code>.</p>
</div>
<h3 id="submission-script">Submission script</h3>
<p>Performance Reports can be used in a non-interactive way, simply by prefixing your <code>mpirun</code> command with <code>perf-report</code>.
Check <code>perf-report --help</code> for more details and options on how to use it. Don't forget to load the module first.</p>
<p><img alt="Performance Reports Help" class="center" src="../images/perfreport_help.png" /></p>
<p>To characterize the performance of our application, we will create a submission script. 
We will start from the script that we developed during the first practical and adapt it to use Performance Reports.
In your GitHub Classroom repository, there is a directory named <code>motorBike-input</code>. It contains the input files and the submission script for the motorbike simulation.</p>
<ol>
<li>Make a copy of the input directory to a new directory named <code>motorBike-PERFREPORT-06</code></li>
<li>In the <code>motorBike-PERFREPORT-06</code> directory, edit the submission script to use Performance Reports:<ul>
<li>Use 6 computing cores</li>
<li>Load the needed module </li>
<li>Set the working directory</li>
<li>Adapt the <code>mpirun</code> command line</li>
</ul>
</li>
<li>Submit your script to SLURM with <code>sbatch</code></li>
<li>Monitor the execution and check the SLURM log file to ensure the execution is successful.</li>
</ol>
<p>After successful execution, you will get two new files (named <code>simpleFoam_XXX.html</code> and <code>simpleFoam_XXX.txt</code>) in your execution directory.
They both contain the results of the performance analysis and the performance characterization of the application.</p>
<ul>
<li>The <code>.txt</code> file is suitable for a quick look in the terminal using a tool like <code>less</code>.</li>
<li>The <code>.html</code> file offers nicer formatting and is more suitable to look at from a web browser after downloading it to your laptop.</li>
</ul>
<div class="admonition question">
<p class="admonition-title">Question 2: Performance Reports of the MotorBike simulation on 6 cores</p>
<p>In your GitHub Class repository, add the following files to the <code>perfreport</code> directory:</p>
<ul>
<li>The adapted submission script that runs the performance analysis of the motorbike simulation on 6 cores;</li>
<li>The two performance reports (<code>.txt</code> and <code>.html</code>) of the performance analysis.</li>
</ul>
<p>Looking at the report, can you tell:</p>
<ul>
<li>What is the main bottleneck for the performance of this application? Percentage spent?</li>
<li>What is the second factor limiting the performance? Percentage spent?</li>
<li>How much (in percentage) represents the rest? What does it correspond to?</li>
</ul>
<p>Thinking in terms of roofline analysis,</p>
<ul>
<li>Is this application limited by the compute operations or the memory accesses?</li>
<li>Would this execution benefit from using more vectorized instructions?</li>
</ul>
<p>Based on this report, </p>
<ul>
<li>What is your main recommendation to improve the performance of this simulation?</li>
</ul>
<p>Justify and write down the answers in your report.</p>
</div>
<h3 id="execution-at-a-larger-scale">Execution at a larger scale</h3>
<p>Now, let's run the same analysis for an execution with more resources. Create a new directory and adapt the submission script for an execution on 24 cores.</p>
<div class="admonition question">
<p class="admonition-title">Question 3: Performance Reports of the MotorBike simulation on 24 cores</p>
<p>In your GitHub Class repository, add the following files to the <code>perfreport</code> directory:</p>
<ul>
<li>The adapted submission script that runs the performance analysis of the motorbike simulation on 24 cores;</li>
<li>The two performance reports (<code>.txt</code> and <code>.html</code>) of the performance analysis.</li>
</ul>
<p>Looking at the new report,</p>
<ul>
<li>Describe in a few lines the main changes in the results, compared to the execution on 6 cores.</li>
<li>What is the change in the execution time? What is the speedup?</li>
<li>Is there a significant change in the time spent in I/O?</li>
</ul>
<p>Justify and write down the answers in your report.</p>
</div>
<hr />
<h2 id="part-2-performance-profiling">🔵 Part 2: Performance Profiling</h2>
<p>For this part, we use <strong>Arm/<a href="https://www.linaroforge.com/">Linaro MAP</a></strong> to profile the same OpenFOAM motorbike simulation.
At the difference of Performance Reports, MAP will provide a more detailed trace of the simulation over this execution.
To profile an application with MAP, there is no need to modify the code.
However, it could display better results if the debug flag <code>-g</code> is enabled during the compilation.</p>
<div class="admonition info">
<p class="admonition-title">MAP is a commercial tool</p>
<p>MAP is part of the Linaro Forge tool suite and was previously known as Arm Forge or Allinea Forge.
Similarly to Performance Reports, it is a commercial tool that requires a licence to be used, and thus it is not available on all the HPC platforms.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Using MAP on Uni.lu HPC</p>
<p>The University of Luxembourg has purchased a license for Arm Forge (including MAP and DDT) and it is available to use for the user of the HPC platform.
The version installed on the Uni.lu HPC is 20.0.3 which was released by Arm.</p>
<p>On the Aion and Iris cluster, Arm MAP is available via the module <code>tools/ArmForge/20.0.3</code> and the command line executable is named <code>map</code>.</p>
</div>
<p>In practice, there are two phases in the process of performance analysis and optimization:</p>
<ul>
<li>Phase 1: <strong>Profiling (Data Collection)</strong>. It corresponds to the actual act of running your system while MAP is collecting performance data.</li>
<li>Phase 2: <strong>Exploration and Analysis of Results</strong>. Because the profiling data is often vast and complex, good visualization tools are essential. They help to create a good interpretation of the problems, identifying Bottlenecks and understanding the root causes.</li>
</ul>
<p>MAP relies on a graphical interface that can be used for both phases:
When MAP starts, you can select the program to profile, set the parameters and various options and then start the profiling on all your computing nodes.
Alternatively, the profiling phase can be done non-interactively, simply by prefixing the <code>mpirun</code> command line with the <code>map --profile</code> command.</p>
<div class="admonition question">
<p class="admonition-title">Question 4: Interactive vs non-interactive profiling</p>
<p>In your opinion, what are the advantages of using non-interactive profiling over directly opening the graphical interface and setting it up manually?</p>
</div>
<h3 id="submission-script_1">Submission script</h3>
<p>Let's use a non-interactive profiling. You can use <code>map --help</code> to see the command line options. Don't forget to load the module first.</p>
<p><img alt="MAP Help" class="center" src="../images/map_help.png" /></p>
<p>To profile the motorbike simulation, we will create a submission script. 
And again, we will start from the template script available in <code>motorBike-input</code>.</p>
<ol>
<li>Make a copy of the input directory <code>motorBike-input</code> to a new directory named <code>motorBike-MAP-06</code></li>
<li>In the <code>motorBike-MAP-06</code> directory, edit the submission script to use MAP:<ul>
<li>Use 6 computing cores</li>
<li>Load the needed module </li>
<li>Set the working directory</li>
<li>Adapt the <code>mpirun</code> command line</li>
</ul>
</li>
<li>Submit your script to SLURM with <code>sbatch</code></li>
<li>Monitor the execution and check the SLURM log file to ensure the execution is successful.</li>
</ol>
<p>After successful execution, you will get one new file (named <code>simpleFoam_XXX.map</code>) in your execution directory.
It contains the results of the performance profile of the application. </p>
<div class="admonition question">
<p class="admonition-title">Question 5: Profiling of the MotorBike simulation on 6 cores</p>
<p>In your GitHub Class repository, add the following files to the <code>profiling</code> directory:</p>
<ul>
<li>The adapted submission script that runs the profiling of the motorbike simulation on 6 cores;</li>
<li>The result trace (file <code>simpleFoam_XXX.map</code>) of the performance profiling.</li>
</ul>
</div>
<h3 id="visualizing-the-profiling-results">Visualizing the profiling results</h3>
<p>To explore the profiling results, you can open the MAP graphical interface simply by executing the <code>map</code> command in your terminal. Make sure you have loaded the <code>ArmForge</code> module first.</p>
<div class="highlight"><pre><span></span><code>module<span class="w"> </span>load<span class="w"> </span>tools/ArmForge/20.0.3
map
</code></pre></div>
<p>If you have <a href="./#interactive-graphical-session">set up the X11-forwarding correctly</a>, the MAP window should appear.</p>
<p><img alt="MAP Graphical User Interface" class="center" src="../images/map_gui.png" /></p>
<details class="failure">
<summary>Cannot open the MAP interface?</summary>
<p>The MAP interface does not show up? Check the error message in your terminal:</p>
<ul>
<li>Error <code>bash: map: command not found</code> means that you did not load the <code>ArmForge</code> module.</li>
<li>Error <code>map: cannot connect to X server</code> means that you did not enable X11-forwarding when connecting to the access node or compute node.</li>
</ul>
</details>
<p><img align="right" alt="Load Profile Data in MAP" src="../images/map_load_profile.png" /></p>
<p>To load the performance profile of the motorbike simulation:</p>
<ol>
<li>Click on the "Arm MAP" tab on the left;</li>
<li>Click on "Load Profile Data File" in the middle;</li>
<li>Search for the profile data file <code>simpleFoam_XXX.map</code> that you have been generated.</li>
</ol>
<p>Once loaded, you should see a timeline with different metrics and many other panels.
Check the online <a href="https://developer.arm.com/documentation/101136/22-1-3/MAP/Get-started-with-MAP/MAP-user-interface?lang=en">documentation</a> to understand the role of the different panels.
MAP follows the same color code as Performance Reports:
the <strong>CPU metrics</strong> are in green; the <strong>MPI metrics</strong> are in blue; the <strong>memory metrics</strong> are in red; and the <strong>I/O metrics</strong> are in orange.</p>
<p><img alt="Motorbike profile in MAP" class="center" src="../images/map_motorbike.png" /></p>
<p>In our example, the source files are not visible in the middle panel because OpenFOAM has been compiled without the debugging information.</p>
<div class="admonition question">
<p class="admonition-title">Question 6: Exploring the metrics views in MAP</p>
<p>In the MAP user interface,</p>
<ul>
<li>Select the metrics preset <strong>CPU Instructions</strong>:<ul>
<li>What is the type of CPU instructions that occupy the CPU most of the time?</li>
<li>Take a screenshot.</li>
</ul>
</li>
<li>Select the metrics preset <strong>MPI</strong>:<ul>
<li>What is the average amount of data sent by MPI over the whole simulation?</li>
<li>If you select the first seconds of the simulation, how does this value change?</li>
<li>Take a screenshot.</li>
</ul>
</li>
<li>Select the metrics preset <strong>IO</strong>:<ul>
<li>Can you identify how many times OpenFOAM writes its output during the whole simulation?</li>
<li>Does this match with the files present in the execution directory?</li>
<li>Take a screenshot.</li>
</ul>
</li>
</ul>
<p>Add all the screenshots and your answers to your report.</p>
</div>
<div class="admonition question">
<p class="admonition-title">Question 7: Exploring the Thread Stacks in MAP</p>
<p>In the bottom panel of the MAP user interface, select the tab <strong>Main Thread Stacks</strong>:</p>
<ul>
<li>In which function is done most of the MPI communication? (remember the color code)</li>
<li>Save a screenshot in your report.</li>
</ul>
<p>Add the screenshot and your answer to the report.</p>
</div>
<hr />
<h2 id="part-3-debugging">🔵 Part 3: Debugging</h2>
<p>For the debugging part, we will use the <strong>Arm/<a href="https://www.linaroforge.com/">Linaro DDT</a></strong> parallel debugger. Similarly to Performance Reports and MAP, it is a tool developed by Linaro (and previously Arm and Allinea).</p>
<details class="info">
<summary>DDT is a commercial tool</summary>
<p>DDT is part of the Linaro Forge tool suite and was previously known as Arm Forge or Allinea Forge.
It is a commercial tool that requires a licence to be used, and thus it is not available on all the HPC platforms.</p>
</details>
<details class="info">
<summary>Using DDT on Uni.lu HPC</summary>
<p>The University of Luxembourg has purchased a license for Arm Forge (including MAP and DDT) and it is available to use for the user of the HPC platform.
The version installed on the Uni.lu HPC is 20.0.3 which was released by Arm.</p>
<p>On the Aion and Iris cluster, Arm DDT is available via the module <code>tools/ArmForge/20.0.3</code> and the command line executable is named <code>ddt</code>.</p>
</details>
<h3 id="estimation-of-pi-using-the-monte-carlo-method">Estimation of Pi using the Monte Carlo Method</h3>
<p><img align="right" alt="Estimation of Pi using Monte Carlo" src="../images/pi_monte_carlo.gif" /></p>
<p>For this part, we will work on a small MPI program that estimates the value of Pi using the Monte Carlo Method.
In short, this approach generates random points and counts how many fall in the circle enclosed by the unit square.</p>
<p>More detailed explanations can be found online:</p>
<ul>
<li><a href="https://academo.org/demos/estimating-pi-monte-carlo/">Estimating Pi using the Monte Carlo Method</a></li>
<li><a href="https://simple.wikipedia.org/wiki/Monte_Carlo_algorithm">Monte Carlo algorithm</a></li>
</ul>
<p>An MPI program of this algorithm is available in the <code>debugging</code> directory of your GitHub Classroom repository.
For this algorithm, the parallelization with MPI is extremely simple: 
All the generated points are independent of each other, so each MPI process can work on a set of points separately without communication.
When the total number of points has been reached, the results from all the MPI processes are collected and summed up on the main process (using <code>MPI_Reduce()</code>), which then can calculate the final estimation of Pi .</p>
<p>Let's compile this program:</p>
<ol>
<li>Go to the <code>debugging</code> directory</li>
<li>Load the FOSS toolchain</li>
<li>Run <code>make</code> to compile the program</li>
</ol>
<p>Then, you can run the simulation with <code>mpirun -n &lt;nb proc&gt; ./pi_monte_carlo &lt;nb iterations&gt;</code>. For example</p>
<div class="highlight"><pre><span></span><code>mpirun<span class="w"> </span>-n<span class="w"> </span><span class="m">1</span><span class="w"> </span>./pi_monte_carlo<span class="w"> </span><span class="m">100000000</span>
mpirun<span class="w"> </span>-n<span class="w"> </span><span class="m">2</span><span class="w"> </span>./pi_monte_carlo<span class="w"> </span><span class="m">100000000</span>
mpirun<span class="w"> </span>-n<span class="w"> </span><span class="m">4</span><span class="w"> </span>./pi_monte_carlo<span class="w"> </span><span class="m">100000000</span>
mpirun<span class="w"> </span>-n<span class="w"> </span><span class="m">8</span><span class="w"> </span>./pi_monte_carlo<span class="w"> </span><span class="m">100000000</span>
</code></pre></div>
<h3 id="setup-the-debugger">Setup the debugger</h3>
<p>The Makefile comes with a suite of tests that can be executed with <code>make tests</code>.
However, it appears there are some surprising results for some of the tests.
There are probably a few bugs 🪲 left by a careless developer.</p>
<p><img alt="Bugs in Pi Monte Carlo" class="center" src="../images/pi_monte_carlo_bugs.png" /></p>
<p>Let's chase the bugs with the Arm DDT debugger.</p>
<div class="admonition tip">
<p class="admonition-title">First, compile with debugging information</p>
<p>Before starting debugging, we need to recompile the program with the debugging information. 
This will help the compiler to display more information about the program being executed.</p>
<ol>
<li>Open the <code>Makefile</code> file with your favorite text editor.</li>
<li>Add the <code>-g</code> option to the <code>CFLAGS</code>, save and exit.</li>
<li>Recompile the program with <code>make</code></li>
</ol>
</div>
<p>A simple way to use this compiler is to prefix the program command line with <code>ddt</code>:</p>
<p><div class="highlight"><pre><span></span><code>module<span class="w"> </span>load<span class="w"> </span>tools/ArmForge/20.0.3
ddt<span class="w"> </span>mpirun<span class="w"> </span>-n<span class="w">  </span><span class="m">3</span><span class="w"> </span>./pi_monte_carlo
</code></pre></div>
and then just click the <strong>Run</strong> button.</p>
<p><img alt="Pi Monte Carlo program in DDT" class="center" src="../images/ddt_pi_monte_carlo.png" /></p>
<details class="failure">
<summary>Cannot open the DDT interface?</summary>
<p>The DDT interface does not show up? Check the error message in your terminal:</p>
<ul>
<li>Error <code>bash: ddt: command not found</code> means that you did not load the <code>ArmForge</code> module.</li>
<li>Error <code>ddt: cannot connect to X server</code> means that you did not enable X11-forwarding when connecting to the access node or compute node.</li>
</ul>
</details>
<p>Check the <a href="https://developer.arm.com/documentation/101136/22-1-3/DDT/Get-started-with-DDT/DDT-user-interface?lang=en">online documentation</a> to understand the DDT user interface.</p>
<h3 id="find-the-bugs">Find the bugs! 🔎🪳</h3>
<p><img align="right" alt="Estimation of Pi using Monte Carlo" src="../images/ddt_insect_spray.png" /></p>
<p>There are two known bugs in this MPI program. They are highlighted by the test suite executed by <code>make test</code>. </p>
<ul>
<li><strong>Bug 1</strong>: The number of iterations used is shown to be 99999999 instead of 100000000. It can be reproduced with the command <code>mpirun -n 3 ./pi_monte_carlo 100000000</code>.</li>
<li><strong>Bug 2</strong>: The estimated value of Pi becomes negative and far from the expected value. It can be reproduced with the command <code>mpirun -n 16 ./pi_monte_carlo 10000000000</code>.</li>
</ul>
<p>Use the DDT debugger to track and exterminate these bugs. </p>
<div class="admonition tips">
<p class="admonition-title">Tips to use DDT debugger</p>
<ul>
<li>The buttons on the toolbar control the execution of the program: for example, "Step Over" will execute only one line.</li>
<li>Click on the left of a line number to set a breakpoint. The debugger will stop at this line before it is executed.</li>
<li>In the right panel, the tab <em>Locals</em> shows the values of the local variables. Right-click on a variable and use <em>Compare Across Processes</em> to see the value of the different processes.</li>
<li>Select "File" and "Restart Session" to restart the execution from the beginning.</li>
</ul>
</div>
<div class="admonition tips">
<p class="admonition-title">Debugging Methodology</p>
<ul>
<li>Identify the variables that show incorrect values in the output</li>
<li>Identify at which lines these variables are modified</li>
<li>Set breakpoint to check how the values are calculated (What is the expected value? What do you get?)</li>
</ul>
</div>
<div class="admonition question">
<p class="admonition-title">Question 8: Debugging the Pi Monte Carlo program</p>
<p>Find the two bugs in the Pi Monte Carlo program. For each bug,</p>
<ul>
<li>Explain the cause of the bug;</li>
<li>Propose a correction;</li>
<li>Show the results for the correct execution.</li>
</ul>
<p>Write down these answers in your report. And finally, add the corrected program to your GitHub repository.</p>
</div>
<hr />
<h2 id="report-submission">🔵 Report submission</h2>
<p>Don't forget to add and push all the required files to your GitHub Classroom repository:</p>
<ul>
<li>the submission scripts;</li>
<li>the performance reports and profiles;</li>
<li>the corrected program;</li>
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
<a href="https://github.com/MHPC-HPCSoftwareEnvironment/y2425-w03-debugging-and-profiling-XXX">https://github.com/MHPC-HPCSoftwareEnvironment/y2425-w03-debugging-and-profiling-XXX</a></p>
<p>Passed the deadline at <strong>18/03/2025 23h59</strong> you won't be able to push anymore.</p>
</div>
<hr />
<h2 id="additional-resources">🔵 Additional Resources</h2>
<ul>
<li><a href="https://www.vi-hps.org/tools/">VI-HPC Tools Guide</a></li>
</ul>
<p>About Arm/Linaro Performance Reports:</p>
<ul>
<li><a href="https://www.linaroforge.com/linaroPerformanceReports">Linaro Performance Reports Homepage</a></li>
<li><a href="https://docs.linaroforge.com/23.1.1/html/forge/performance_reports/interpreting_performance_reports/index.html">Linaro Performance Reports Documentation: Interpret performance reports</a></li>
<li><a href="https://developer.arm.com/documentation/101137/2003/Interpreting-performance-reports">Arm Performance Reports User Guide Version 20.0.3</a></li>
<li><a href="https://docs.nersc.gov/tools/performance/performancereports/">NERSC Documentation on Linaro Performance Reports</a></li>
</ul>
<p>About Arm/Linaro MAP:</p>
<ul>
<li><a href="https://www.linaroforge.com/linaroMap">Linaro MAP Homepage</a></li>
<li><a href="https://developer.arm.com/documentation/101136/2003/MAP?lang=en">Arm MAP User Guide Version 20.0.3</a></li>
<li><a href="https://docs.nersc.gov/tools/performance/map/">NERSC Documentation on Linaro MAP</a></li>
</ul>
<p>About Arm/Linaro DDT:</p>
<ul>
<li><a href="https://www.linaroforge.com/linaroDdt/">Linaro DDT Homepage</a></li>
<li><a href="https://developer.arm.com/documentation/101136/2003/DDT?lang=en">Arm DDT User Guide Version 20.0.3</a></li>
<li><a href="https://docs.nersc.gov/tools/debug/ddt/">NERSC Documentation on Linaro DDT</a></li>
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