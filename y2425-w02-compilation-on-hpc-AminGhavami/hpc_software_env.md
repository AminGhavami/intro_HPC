```html
<!doctype html>
<html lang="en" class="no-js">
  <head>
    
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      
      
        <meta name="author" content="Xavier Besseron">
      
      
        <link rel="canonical" href="https://hpc-software-environment-cf0f7b.gitlab.io/compilation/">
      
      
        <link rel="prev" href="../command_line_hpc/">
      
      
        <link rel="next" href="../debugging_profiling/">
      
      
      <link rel="icon" href="../assets/images/favicon.png">
      <meta name="generator" content="mkdocs-1.5.3, mkdocs-material-9.5.6">
    
    
      
        <title>Compilation on HPC - Master in HPC - HPC Software Environment - Practicals</title>
      
    
    
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
      
        
        <a href="#compilation-on-hpc" class="md-skip">
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
            
              Compilation on HPC
            
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
  

    
      
      
  
  
    
  
  
  
    <li class="md-nav__item md-nav__item--active">
      
      <input class="md-nav__toggle md-toggle" type="checkbox" id="__toc">
      
      
        
      
      
        <label class="md-nav__link md-nav__link--active" for="__toc">
          
  
  <span class="md-ellipsis">
    Compilation on HPC
  </span>
  

          <span class="md-nav__icon md-icon"></span>
        </label>
      
      <a href="./" class="md-nav__link md-nav__link--active">
        
  
  <span class="md-ellipsis">
    Compilation on HPC
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
  <a href="#connection-to-a-compute-node" class="md-nav__link">
    <span class="md-ellipsis">
      Connection to a Compute Node
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#github-classroom-repository" class="md-nav__link">
    <span class="md-ellipsis">
      GitHub Classroom Repository
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-1-compilers-and-toolchains" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 1: Compilers and Toolchains
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 1: Compilers and Toolchains">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#finding-available-compilers" class="md-nav__link">
    <span class="md-ellipsis">
      Finding available compilers
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#finding-available-toolchains" class="md-nav__link">
    <span class="md-ellipsis">
      Finding available toolchains
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-2-hello-world" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 2: Hello World!
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-3-compilation-of-the-gnu-mpfr-library" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 3: Compilation of the GNU MPFR Library
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-4-compilation-of-the-precice-library" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 4: Compilation of the preCICE library
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-5-compilation-of-hpl" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 5: Compilation of HPL
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
      
    </ul>
  
</nav>
      
    </li>
  

    
      
      
  
  
  
  
    <li class="md-nav__item">
      <a href="../debugging_profiling/" class="md-nav__link">
        
  
  <span class="md-ellipsis">
    Debugging & Profiling
  </span>
  

      </a>
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
  <a href="#connection-to-a-compute-node" class="md-nav__link">
    <span class="md-ellipsis">
      Connection to a Compute Node
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#github-classroom-repository" class="md-nav__link">
    <span class="md-ellipsis">
      GitHub Classroom Repository
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-1-compilers-and-toolchains" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 1: Compilers and Toolchains
    </span>
  </a>
  
    <nav class="md-nav" aria-label="🔵 Part 1: Compilers and Toolchains">
      <ul class="md-nav__list">
        
          <li class="md-nav__item">
  <a href="#finding-available-compilers" class="md-nav__link">
    <span class="md-ellipsis">
      Finding available compilers
    </span>
  </a>
  
</li>
        
          <li class="md-nav__item">
  <a href="#finding-available-toolchains" class="md-nav__link">
    <span class="md-ellipsis">
      Finding available toolchains
    </span>
  </a>
  
</li>
        
      </ul>
    </nav>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-2-hello-world" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 2: Hello World!
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-3-compilation-of-the-gnu-mpfr-library" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 3: Compilation of the GNU MPFR Library
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-4-compilation-of-the-precice-library" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 4: Compilation of the preCICE library
    </span>
  </a>
  
</li>
      
        <li class="md-nav__item">
  <a href="#part-5-compilation-of-hpl" class="md-nav__link">
    <span class="md-ellipsis">
      🔵 Part 5: Compilation of HPL
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
      
    </ul>
  
</nav>
                  </div>
                </div>
              </div>
            
          
          
            <div class="md-content" data-md-component="content">
              <article class="md-content__inner md-typeset">
                
                  


<h1 id="compilation-on-hpc">Compilation on HPC</h1>
<ul>
<li>Author: <a href="https://luxdem.uni.lu/team/xbesseron/">Xavier Besseron</a> (<a href="https://uni.lu/">University of Luxembourg</a>)</li>
<li>License: ©2025 <a href="http://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a></li>
<li>Date of practical: Thursday 6th of March 2025</li>
<li>Submission deadline: Tuesday 11th of March 2025 at 23h59</li>
</ul>
<h2 id="introduction">🔵 Introduction</h2>
<p>This practical session focuses on the compilation of software in an HPC environment.
Rather than relying on pre-built packages, HPC clusters often require to re-compile the software
to take advantage of the hardware and software characteristics of the platform and obtain the best performance.</p>
<h3 id="objectives">Objectives</h3>
<p>This work proposes concrete examples of software compilation on HPC.</p>
<ul>
<li>Find the available compilers, toolchains and dependencies</li>
<li>Compile software and libraries using classical build systems (e.g., Configure, CMake)</li>
<li>Try different compilers and compilation options</li>
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
<li>Make sure you answer all the questions (cf below), with text, code or screenshots.</li>
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
<h3 id="connection-to-a-compute-node">Connection to a Compute Node</h3>
<p>The exercises are to be carried out in interactive mode on a compute node of the Aion cluster of the University of Luxembourg.</p>
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
<li>Reservation: <code>hpcswenv_w02</code> during the Thursday morning session</li>
<li>Time: 2 hours (or ending before the end of the reservation)</li>
<li>Node: One compute node</li>
<li>Task: One task</li>
<li>Cores: 32 cores per task</li>
</ul>
</details>
<p>Your access command line should look like this:</p>
<div class="highlight"><pre><span></span><code>salloc<span class="w"> </span>-p<span class="w"> </span>interactive<span class="w"> </span>--qos<span class="w"> </span>debug<span class="w"> </span>--reservation<span class="o">=</span>hpcswenv_w02<span class="w"> </span>--time<span class="o">=</span><span class="m">2</span>:00:00<span class="w"> </span>-N<span class="w"> </span><span class="m">1</span><span class="w"> </span>-n<span class="w"> </span><span class="m">1</span><span class="w"> </span>-c<span class="w"> </span><span class="m">32</span>
</code></pre></div>
<h3 id="github-classroom-repository">GitHub Classroom Repository</h3>
<p>Following the same approach as the first week practical,
this practical relies on Git Classroom to distribute the extra materials and for the submission of the report.</p>
<p>To create your copy of the repository, follow the invitation link and accept the assignment:</p>
<p>Assignment link: <a href="https://classroom.github.com/a/rRod_VFj">https://classroom.github.com/a/rRod_VFj</a></p>
<p>If you need detailed explanations, please refer to the first week's instructions for <a href="../command_line_hpc/#part-3-setting-up-git-and-downloading-the-materials">Setting up Git and downloading the materials</a>.</p>
<hr />
<h2 id="part-1-compilers-and-toolchains">🔵 Part 1: Compilers and Toolchains</h2>
<p>From now on, it is assumed that you're connected to a <strong>compute node</strong> of the Uni.lu HPC platform. 
To make sure of that, check the shell prompt: It should end with the name of the node you're connected to, for example, <code>aion-0090</code>.</p>
<h3 id="finding-available-compilers">Finding available compilers</h3>
<p>As seen previously, <code>module</code> is the command allowing one explore and find software on an HPC platform.
But before that, let's check if there is a 'system' compiler already installed.</p>
<p>For that, we can check the usual names for compilers: <code>cc</code> and <code>gcc</code>.</p>
<div class="admonition question">
<p class="admonition-title">Question 2: Finding system compilers</p>
<p>Check the commands <code>cc</code> and <code>gcc</code>:</p>
<ul>
<li>What is the type of these commands? What is their full path? (you can use the commands <code>which</code>, <code>type</code>, <code>file</code> and/or <code>ls -l</code> to do that)</li>
<li>What is the name of these compilers? What version? (you can use the command line option <code>--version</code> to do that)</li>
<li>Are they the same compiler? Why?</li>
</ul>
</div>
<details class="warning">
<summary>Warning</summary>
<p>If you already have loaded modules, clear them off with <code>module purge</code> to make sure you only find system compilers.</p>
</details>
<p>The system compiler is the one that comes packaged with the Linux distribution installed on the computing node.
It is usually not used to install HPC software because it is old. 
Other and more recent compilers are available via the modules. Let's check them out.</p>
<p>To find compilers among the modules, we can proceed in different ways:</p>
<ol>
<li>Search by name when you already know what you're looking for. For example, in the lecture we have seen compilers <code>gcc</code>, <code>icc</code> and <code>clang</code>;</li>
<li>Search by module class, which sometimes appears as a prefix of the module name;</li>
<li>Search in the description of the module.</li>
</ol>
<p>The search can sometimes be complicated because there is no naming convention between the HPC sites. 
For example, on Uni.lu HPC, the modules are named <code>&lt;class&gt;/&lt;name&gt;/&lt;version&gt;</code>.
However, on MeluXina, the modules are named <code>&lt;name&gt;/&lt;version&gt;</code>. 
Furthermore, the <code>&lt;version&gt;</code> part may also contain the name of the toolchain used to compile the software.
Because of that, you might need to adapt your search pattern on other sites.</p>
<p>Here are some concrete examples of how to find compilers on Aion:</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Overview of all modules</span>
module<span class="w"> </span>overview

<span class="c1"># Find all modules whose name contains &#39;compiler&#39;</span>
module<span class="w"> </span>avail<span class="w"> </span>compiler

<span class="c1"># Find all modules with class &#39;compiler&#39;</span>
module<span class="w"> </span>-r<span class="w"> </span>avail<span class="w"> </span><span class="s1">&#39;^compiler/&#39;</span>

<span class="c1"># Find modules with &#39;compiler&#39; in their name or description</span>
module<span class="w"> </span>keyword<span class="w"> </span>compiler

<span class="c1"># Find all modules that are exactly named &#39;GCC&#39;</span>
module<span class="w"> </span>avail<span class="w"> </span><span class="s1">&#39;/GCC/&#39;</span>

<span class="c1"># Find all modules that are exactly named &#39;iccifort&#39; (for Intel compiler)</span>
module<span class="w"> </span>avail<span class="w"> </span><span class="s1">&#39;/iccifort/&#39;</span>
</code></pre></div>
<p>We will now focus only on the following C/C++ compilers:</p>
<table>
<thead>
<tr>
<th>Compiler</th>
<th>Module Name</th>
<th>C Compiler Command</th>
<th>C++ Compiler Command</th>
<th>Fortran Compiler Command</th>
</tr>
</thead>
<tbody>
<tr>
<td>GNU Compiler Collection (GCC)</td>
<td>GCC</td>
<td><code>gcc</code></td>
<td><code>g++</code></td>
<td><code>gfortran</code></td>
</tr>
<tr>
<td>LVVM C, C++, Objective-C compiler</td>
<td>Clang</td>
<td><code>clang</code></td>
<td><code>clang++</code></td>
<td><code>flang</code></td>
</tr>
<tr>
<td>Intel C, C++ &amp; Fortran compilers</td>
<td>iccifort</td>
<td><code>icc</code></td>
<td><code>icpc</code></td>
<td><code>ifort</code></td>
</tr>
<tr>
<td>AMD Optimized C/C++ &amp; Fortran compilers (AOCC)</td>
<td>AOCC</td>
<td><code>clang</code></td>
<td><code>clang++</code></td>
<td><code>flang</code></td>
</tr>
</tbody>
</table>
<div class="admonition question">
<p class="admonition-title">Question 3: Finding compiler modules</p>
<p>For each of the compilers in the table above, find them on the Aion cluster and write down:</p>
<ul>
<li>the full module name, with class-name-version;</li>
<li>the full path of the C compiler;</li>
<li>the version returned by the C compiler executable (use the <code>--version</code> command line option).</li>
</ul>
</div>
<h3 id="finding-available-toolchains">Finding available toolchains</h3>
<p>A <strong>compiler toolchain</strong> (or toolchain for short) is a set of software, tools and libraries, that are commonly used together to build applications.
It typically consists of one or more compilers (for C, C++ and Fortran), an MPI library and an optimized linear algebra library implementing the BLAS/LAPACK interface.</p>
<p>The software stack on the Uni.lu HPC platform is installed using <a href="https://easybuild.io/">EasyBuild</a> (to be introduced in the coming weeks) 
and in consequence, the toolchains available on Aion are a subset of <a href="https://docs.easybuild.io/common-toolchains/">the ones defined by EasyBuild</a>.</p>
<p>Currently, on Aion, we find the compilers and toolchains as defined in this diagram. At the top level, we find two toolchains:</p>
<ul>
<li><code>foss</code> (current version <code>2020b</code> on Uni.lu HPC) based on free and open-source software;</li>
<li><code>intel</code> (current version <code>2020b</code> on Uni.lu HPC) based on Intel software.</li>
</ul>
<pre class="mermaid"><code>graph LR
  A[GCCCore] --&gt; |binutils| B[GCC];
  A --&gt; |binutils| C[iccifort]
  B --&gt; |OpenMPI| E[gompi];
  C --&gt; |"Intel MPI (impi)"| F[iimpi];
  E --&gt; |OpenBLAS + FFTW + ScaLAPACK| G[foss];
  F --&gt; |"Intel MLK (imkl)"| H[intel];</code></pre>
<details class="info">
<summary>Newer toolchain definitions in EasyBuild</summary>
<p>EasyBuild has redefined its toolchains in its recent versions (not yet available on Uni.lu HPC). You can find more details in the <a href="https://docs.easybuild.io/common-toolchains/#toolchains_diagram">documentation</a>.</p>
</details>
<p>Same as before for the compilers, you can find and use the toolchains using the <code>module</code> command:</p>
<div class="highlight"><pre><span></span><code><span class="c1"># List the modules of the &#39;toolchain&#39; class</span>
module<span class="w"> </span>avail<span class="w"> </span><span class="s1">&#39;toolchain/&#39;</span>
</code></pre></div>
<div class="admonition question">
<p class="admonition-title">Question 4: Finding toolchains</p>
<p>List the main components of the main toolchains:</p>
<ul>
<li>For <code>toolchain/foss/2020b</code>: the module <strong>name</strong> and <strong>version</strong> of the compiler, MPI, BLAS, LAPACK and FFTW;</li>
<li>For <code>toolchain/intel/2020b</code>: the module <strong>name</strong> and <strong>version</strong> of the compiler, MPI, and MKL.</li>
</ul>
<p>You can either use <code>module show</code> to inspect a module. Alternatively, you can load the module and use <code>module list</code> to display the loaded modules.</p>
</div>
<hr />
<h2 id="part-2-hello-world">🔵 Part 2: Hello World!</h2>
<p><a href="https://hpc-wiki.info/hpc/Compiler"><img alt="Compilation of HelloWorld" class="center" src="../images/hello_world_compilation.png" /></a></p>
<p>In this part, let's do a simple compilation of "Hello World!" programs using the FOSS toolchain <code>foss/2020b</code>.
Two sample programs are available in the <code>hello_world</code> directory of your GitHub classroom repository:</p>
<ul>
<li><code>hello.cpp</code>: a pure C++ program;</li>
<li><code>hello_mpi.cpp</code>: a C++ program using MPI.</li>
</ul>
<p>To compile and use these programs, follow these steps:</p>
<ol>
<li>Load the <code>toolchain/foss/2020b</code> toolchain</li>
<li>Compile <code>hello.cpp</code> into the executable <code>hello</code> using the appropriate <strong>C++ compiler</strong></li>
<li>Execute the <code>hello</code> program</li>
<li>Compile <code>hello_mpi.cpp</code> into the executable <code>hello_mpi</code> using the appropriate <strong>C++ MPI compiler</strong> (cf the lecture)</li>
<li>Execute the <code>hello_mpi</code> program</li>
</ol>
<details class="failure">
<summary>Errors?</summary>
<ul>
<li>Error <code>undefined reference to 'std::cout'</code>: make sure you're using a C++ compiler</li>
<li>Error <code>undefined reference to 'MPI_Init'</code>: make sure you're using a MPI compiler</li>
<li>Error <code>bash: hello: command not found</code>: run the executable with <code>./hello</code> explicitely</li>
</ul>
</details>
<div class="admonition question">
<p class="admonition-title">Question 5: Compiling HelloWorld! with <code>foss</code> toolchain</p>
<p>Compile the "Hello World!" program with the FOSS toolchain:  Follow the five steps above and add a screenshot to your report 📸</p>
<p>The screenshot must show the <strong>input command lines</strong> and the <strong>output</strong> of the five steps, without errors.</p>
</div>
<p>Now, let's try again the compilation of the "Hello World!" programs with the Intel toolchain <code>intel/2020b</code>.
Adapt the five steps above to use the Intel toolchain and compilers. Make sure to clear all the loaded modules with <code>module purge</code> first.</p>
<div class="admonition question">
<p class="admonition-title">Question 6: Compiling HelloWorld! with <code>intel</code> toolchain</p>
<p>Compile the "Hello World!" program with the Intel toolchain:  Adapt the five steps above and add a screenshot to your report 📸</p>
<p>The screenshot must show the <strong>input command lines</strong> and the <strong>output</strong> of the five steps, without errors.</p>
</div>
<hr />
<h2 id="part-3-compilation-of-the-gnu-mpfr-library">🔵 Part 3: Compilation of the GNU MPFR Library</h2>
<p><img align="right" alt="MPFR library logo" src="../images/library_mpfr.png" /></p>
<p>The GNU MPFR library stands for <strong>Multiple Precision Floating-Point Reliable</strong> library and
is a portable C library for arbitrary-precision binary floating-point computation with correct rounding, based on the GNU Multi-Precision (GMP) library.
It is used in many scientific software, including Maple, GNU Octave or the Julia language.</p>
<ul>
<li><a href="https://www.mpfr.org/">Homepage</a></li>
<li><a href="https://www.mpfr.org/mpfr-current/#download">Download Source</a></li>
<li><a href="https://www.mpfr.org/mpfr-current/mpfr.html#How-to-Install">Installation Instructions</a></li>
</ul>
<p>The build system of MPFR is based on the <strong>Autotools</strong> with a classical <strong>configure-make-make install</strong> workflow with a <code>configure</code> script.
For this part, <strong>your task is to compile and install the latest version of the library (currently 4.2.1) with the following settings</strong>:</p>
<ul>
<li>use the native processor architecture of the Aion cluster and optimization level 3;</li>
<li>generate thread-safe code.</li>
</ul>
<div class="admonition info">
<p class="admonition-title">Additional Information</p>
<p>Minimal guidance is provided for you to complete this exercise, but keep in mind this information:</p>
<ul>
<li>MPFR is a C library, hence you will need to load a C compiler (GCC recommended).</li>
<li>It also depends on the GMP library: use the one available in the modules.</li>
<li>The source code can be downloaded from the <a href="https://www.mpfr.org/mpfr-current/#download">Download Page</a>. Use <code>wget '&lt;link&gt;'</code> to download from the command line directly on the compute node. </li>
<li>Use the <code>tar</code> command to extract the source code, for example, <code>tar -xzf mpfr-4.2.1.tar.gz</code> (more help online, for example <a href="https://hpc-wiki.info/hpc/Tar">here</a>).</li>
<li>MPFR is based on Autotools, so you will need to run the <code>configure</code> script to configure the build. Check also the <a href="https://www.mpfr.org/mpfr-current/mpfr.html#How-to-Install">Installation Instructions</a> from the website.</li>
<li>You can set the optimization level and target architecture using the appropriate environment variable (as explained in the lecture).</li>
<li>Options for the thread-safe build and the GMP dependency can be found with the <code>--help</code> of <code>configure</code>.</li>
<li>Install the library somewhere appropriate in your home directory, for example, a sub-directory dedicated to this practical.</li>
</ul>
</div>
<p>The installation procedure can follow this pattern:</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Use a dedicated work directory</span>
mkdir<span class="w"> </span>mpfr<span class="w"> </span><span class="p">;</span><span class="w"> </span><span class="nb">cd</span><span class="w"> </span>mpfr

<span class="c1"># Download the source code</span>
wget<span class="w"> </span><span class="s1">&#39;&lt;link&gt;&#39;</span>

<span class="c1"># Extract the source code</span>
tar<span class="w"> </span>-xzf<span class="w"> </span>mpfr-4.2.1.tar.gz

<span class="c1"># Create a build directory</span>
mkdir<span class="w"> </span>build<span class="w"> </span><span class="p">;</span><span class="w"> </span><span class="nb">cd</span><span class="w"> </span>build

<span class="c1"># Load the required modules</span>
module<span class="w"> </span>load<span class="w"> </span><span class="s1">&#39;&lt;module names ...&gt;&#39;</span>

<span class="c1"># Set the environment variables for the compilation options</span>
<span class="nb">export</span><span class="w"> </span><span class="s1">&#39;&lt;VARIABLE&gt;&#39;</span><span class="o">=</span><span class="s1">&#39;&lt;options&gt;&#39;</span>

<span class="c1"># Configure the build</span>
<span class="c1"># - set the install path</span>
<span class="c1"># - set the configure option</span>
<span class="s1">&#39;&lt;configure command line with options&gt;&#39;</span>

<span class="c1"># Build the library (and save output)</span>
make<span class="w"> </span>-j<span class="w"> </span><span class="m">8</span><span class="w"> </span><span class="p">|&amp;</span><span class="w"> </span>tee<span class="w"> </span>build.log

<span class="c1"># Install the library (and save output)</span>
make<span class="w"> </span>install<span class="w"> </span><span class="p">|&amp;</span><span class="w"> </span>tee<span class="w"> </span>install.log
</code></pre></div>
<details class="tip">
<summary>What is <code>command |&amp; tee file.log</code>?</summary>
<p>This syntax executes <code>command</code>, displays its output in the terminal and, at the same time, saves it to <code>file.log</code>.</p>
<p>In more details, we have:</p>
<ul>
<li><code>command</code> to execute the command;</li>
<li><code>|&amp;</code> is a shell pipe to redirect both the standart output and the error output (the usual pipe <code>|</code> only uses the standard output);</li>
<li><code>tee</code> is a small program that takes its input (coming from the pipe in this context) to displays it to the terminal and save it to a file;</li>
<li><code>file.log</code> is the parameter of the <code>tee</code> command indicating to which file the output should be saved.</li>
</ul>
</details>
<div class="admonition question">
<p class="admonition-title">Question 7: Installation procedure for the MPFR library</p>
<p>Fill the missing holes in the installation procedure for the MPFR library:</p>
<ul>
<li>write down the complete working installation procedure in your report</li>
<li>add the files <code>config.log</code>, <code>build.log</code> and <code>install.log</code> (and only these files) to your GitHub classroom repository in the <code>mpfr</code> directory</li>
</ul>
</div>
<hr />
<h2 id="part-4-compilation-of-the-precice-library">🔵 Part 4: Compilation of the preCICE library</h2>
<p><img align="right" alt="preCICE library logo" src="../images/library_precice.png" /></p>
<p>The preCICE library is an open-source <strong>coupling library for partitioned multi-physics simulations</strong>.
It is designed to facilitate the coupling of independent simulation software components.  It's particularly useful for multi-physics simulations, allowing programs specializing in different aspects (like fluid dynamics or structural analysis) to communicate and exchange data for a more comprehensive simulation.</p>
<ul>
<li><a href="https://precice.org/">Hompage</a></li>
<li><a href="https://github.com/precice/precice/releases">Download Source</a></li>
<li><a href="https://precice.org/installation-source-dependencies.html#overview">Dependencies</a></li>
<li><a href="https://precice.org/installation-source-configuration.html">Installation Instructions</a></li>
</ul>
<p><img alt="Compilation with CMake" class="center" src="../images/compilation_cmake.png" /></p>
<p>The build system of preCICE is based on <strong>CMake</strong> with a classical <strong>cmake-build-install</strong> workflow.
For this part, <strong>your task is to compile and install the latest version of the library (currently 3.1.2) with the following settings</strong>:</p>
<ul>
<li>use the native processor architecture of the Aion cluster and the <em>Release</em> build type;</li>
<li>make sure the following options are enabled:<ul>
<li>MPI communication</li>
<li>Python actions</li>
<li>PETSc mapping</li>
<li>C bindings</li>
<li>Fortran bindings</li>
</ul>
</li>
</ul>
<div class="admonition info">
<p class="admonition-title">Additional Information</p>
<p>Minimal guidance is provided for you to complete this exercise, but keep in mind this information:</p>
<ul>
<li>preCICE is a C++ library with C and Fortran bindings, hence you will need to load a C, C++ and Fortran compilers (GCC recommended).</li>
<li>preCICE has many <a href="https://precice.org/installation-source-dependencies.html#overview">dependencies</a>. Make sure to load the appropriate modules. (you can ignore Ginkgo and Kokkos)</li>
<li>The source code can be downloaded from the <a href="https://github.com/precice/precice/releases">GitHub release page of the project</a>. Use <code>wget '&lt;link&gt;'</code> to download from the command line directly on the compute node.</li>
<li>Use the <code>tar</code> command to extract the source code, for example, <code>tar -xzf v3.0.0.tar.gz</code> (more help online, for example <a href="https://hpc-wiki.info/hpc/Tar">here</a>).</li>
<li>preCICE is based on CMake, so you will need to run the <code>cmake</code> command to configure the build. Check also the <a href="https://precice.org/installation-source-configuration.html">Installation Instructions</a> from the website, but you can ignore the presets.</li>
<li>You can set the target architecture using the appropriate environment variable (as explained in the lecture).</li>
<li>You can set the build type using the standard CMake option (as explained in the lecture).</li>
<li>Check the <a href="https://precice.org/installation-source-configuration.html#options">Installation Instructions</a> to set the required build options.</li>
<li>Install the library somewhere appropriate in your home directory, for example, a sub-directory dedicated to this practical.</li>
</ul>
</div>
<p>The installation procedure can follow this pattern:</p>
<div class="highlight"><pre><span></span><code><span class="c1"># Use a dedicated work directory</span>
mkdir<span class="w"> </span>precice<span class="w"> </span><span class="p">;</span><span class="w"> </span><span class="nb">cd</span><span class="w"> </span>precice

<span class="c1"># Download the source code</span>
wget<span class="w"> </span><span class="s1">&#39;&lt;link&gt;&#39;</span>

<span class="c1"># Extract the source code</span>
tar<span class="w"> </span>-xzf<span class="w"> </span>v3.1.2.tar.gz
<span class="c1"># Create a build directory</span>
mkdir<span class="w"> </span>build<span class="w"> </span><span class="p">;</span><span class="w"> </span><span class="nb">cd</span><span class="w"> </span>build

<span class="c1"># Load the required modules</span>
module<span class="w"> </span>load<span class="w"> </span><span class="s1">&#39;&lt;module names ...&gt;&#39;</span>

<span class="c1"># Set the environment variables for the compilation options</span>
<span class="nb">export</span><span class="w"> </span><span class="s1">&#39;&lt;VARIABLE&gt;&#39;</span><span class="o">=</span><span class="s1">&#39;&lt;options&gt;&#39;</span>

<span class="c1"># Configure the build</span>
<span class="c1"># - set the install path</span>
<span class="c1"># - set the build type</span>
<span class="c1"># - set the cmake option to enable MPI communications, Python actions, PETSc mapping, C and Fortran bindings</span>
<span class="s1">&#39;&lt;cmake command line with options&gt;&#39;</span><span class="w"> </span><span class="p">|&amp;</span><span class="w"> </span>tee<span class="w"> </span>cmake.log

<span class="c1"># Build the library (and save output)</span>
make<span class="w"> </span>-j<span class="w"> </span><span class="m">16</span><span class="w"> </span><span class="p">|&amp;</span><span class="w"> </span>tee<span class="w"> </span>build.log

<span class="c1"># Install the library (and save output)</span>
make<span class="w"> </span>install<span class="w"> </span><span class="p">|&amp;</span><span class="w"> </span>tee<span class="w"> </span>install.log
</code></pre></div>
<div class="admonition question">
<p class="admonition-title">Question 8: Installation procedure for the preCICE library</p>
<p>Fill the missing holes in the installation procedure for the preCICE library:</p>
<ul>
<li>write down the complete working installation procedure in your report</li>
<li>add the files <code>cmake.log</code>, <code>build.log</code> and <code>install.log</code> (and only these files) to your GitHub classroom repository in the <code>precice</code> directory</li>
</ul>
</div>
<hr />
<h2 id="part-5-compilation-of-hpl">🔵 Part 5: Compilation of HPL</h2>
<p>HPL is a software package that solves a (random) dense linear system in double precision (64 bits) arithmetic on distributed-memory computers. 
It can thus be regarded as a portable as well as freely available implementation of the High-Performance Computing Linpack Benchmark.</p>
<p>The Linpack Benchmark measures the floating-point computing power and 
it is used to rank the world's most powerful supercomputers in the <a href="https://www.top500.org/project/linpack/">TOP500 list</a>.</p>
<ul>
<li><a href="https://www.netlib.org/benchmark/hpl/">Homepage</a></li>
<li><a href="https://www.netlib.org/benchmark/hpl/software.html">Download and Installation</a></li>
</ul>
<p>The build system of HPC relies on an ad-hoc Makefile.
The configuration is done by creating and editing a <code>Make.&lt;arch&gt;</code> file that contains the settings specific to the HPC system.</p>
<p>For this part, <strong>your task is to compile and run the latest HPL benchmark (currently 2.3) with Intel toolchain</strong>.
To achieve this, follow these instructions:</p>
<ol>
<li>Download the HPL archive and extract it</li>
<li>Go to the <code>hpl-2.3</code> directory (called the top-level directory)</li>
<li>Copy the example configuration file <code>setup/Make.Linux_Intel64</code> to the top-level directory with the new name <code>Make.Aion_Intel64</code></li>
<li>In the new <code>Make.Aion_Intel64</code> file, edit the following settings:<ul>
<li>Set variable <code>ARCH</code> to <code>Aion_Intel64</code></li>
<li>Set variable <code>TOPdir</code> to the path to your top-level directory</li>
<li>Set variable <code>OMP_DEFS</code> to <code>-qopenmp</code></li>
<li>Add <code>-xHost</code> to the variable <code>CCFLAGS</code></li>
</ul>
</li>
<li>Load the Intel toolchain <code>toolchain/intel/2020b</code></li>
<li>Compile HPL with <code>make arch=Aion_Intel64</code></li>
</ol>
<p>If the compilation is successful, you will find an executable called <code>xhpl</code> in the <code>bin/Aion_Intel64</code> directory. To execute a short test of HPL, follow these steps:</p>
<ol>
<li>Go to the <code>bin/Aion_Intel64</code> directory</li>
<li>Run <code>srun -n 4 -c 8 ./xhpl</code></li>
</ol>
<div class="admonition question">
<p class="admonition-title">Question 9: Compilation and execution of HPL</p>
<p>Compile and run HPL with the instructions above. </p>
<ul>
<li>add the configuration file <code>Make.Aion_Intel64</code> in the <code>hpl</code> directory of your GitHub classroom repository</li>
<li>save the output of the HPL execution and add it to the <code>hpl</code> directory your GitHub classroom repository</li>
</ul>
</div>
<hr />
<h2 id="report-submission">🔵 Report submission</h2>
<p>Don't forget to add and push all the required files to your GitHub Classroom repository:</p>
<ul>
<li>the log files of questions 7, 8 and 9;</li>
<li>the report, including the answers to all the questions and the screenshots.</li>
</ul>
<p>Don't add any other files and directories (for example, build directories, executables, Makefile, etc.).
Finalize your report and save it as a PDF (no other format allowed!) in the <code>report</code> sub-directory of your GitHub Classroom repository. </p>
<details class="tip">
<summary>Uploading your report</summary>
<p>You don't need to copy it to the HPC to upload your report. Instead, you can use the <strong>Add file</strong> button directly on the GitHub webpage.</p>
</details>
<div class="admonition danger">
<p class="admonition-title">Files Submission</p>
<p>Your files and report are considered submitted once they are pushed to your repository. </p>
<p>Check your GitHub repository online to make sure:
<a href="https://github.com/MHPC-HPCSoftwareEnvironment/y2425-w02-compilation-on-hpc-XXX">https://github.com/MHPC-HPCSoftwareEnvironment/y2425-w02-compilation-on-hpc-XXX</a></p>
<p>Passed the deadline at <strong>11/03/2025 23h59</strong> you won't be able to push anymore.</p>
</div>
<hr />
<h2 id="additional-resources">🔵 Additional Resources</h2>
<p>On HPC Wiki:</p>
<ul>
<li><a href="https://hpc-wiki.info/hpc/Tar">About Tar</a></li>
<li><a href="https://hpc-wiki.info/hpc/Modules">About Modules</a></li>
<li><a href="https://hpc-wiki.info/hpc/Compiler">About Compilers</a></li>
<li><a href="https://hpc-wiki.info/hpc/Make">About Make</a></li>
<li><a href="https://hpc-wiki.info/hpc/CMake">About CMake</a></li>
</ul>
<p>Build software with CMake</p>
<ul>
<li><a href="https://hsf-training.github.io/hsf-training-cmake-webpage/02-building/index.html">Building with CMake</a></li>
<li><a href="https://cliutils.gitlab.io/modern-cmake/chapters/intro/running.html">An Introduction to Modern CMake: Running CMake</a></li>
<li><a href="https://gitlab.kitware.com/cmake/community/-/wikis/FAQ#running-cmake">CMake FAQ: Running CMake</a></li>
<li><a href="https://preshing.com/20170511/how-to-build-a-cmake-based-project/">How to Build a CMake-Based Project</a></li>
</ul>
<p>Build software with Autotools (configure)</p>
<ul>
<li><a href="https://opensource.com/article/19/7/introduction-gnu-autotools">Introduction to GNU Autotools</a></li>
</ul>
<p>Compilation with a Makefile</p>
<ul>
<li><a href="https://opensource.com/article/18/8/what-how-makefile">What is a Makefile and how does it work?</a></li>
<li><a href="https://www.gnu.org/software/make/manual/make.html">GNU Make Reference Documentation</a></li>
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
