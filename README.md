# tidyviz-base
[![Build Status](https://img.shields.io/badge/build-passed-brightgreen.svg)](https://img.shields.io/badge/build-passed-brightgreen.svg) [![](https://images.microbadger.com/badges/version/jvera/tidyviz-base.svg)](https://microbadger.com/images/jvera/tidyviz-base "Get your own version badge on microbadger.com")  [![license](https://img.shields.io/badge/license-GPLv2-blue.svg)](https://opensource.org/licenses/GPL-2.0)


image            | description                               | size   | metrics | build status 
---------------- | ----------------------------------------- | ------ | ------- | --------------
[tidyviz-base](https://hub.docker.com/r/jvera/tidyviz-base)            |  base for tidyviz   |[![](https://images.microbadger.com/badges/image/jvera/tidyviz-base.svg)](https://microbadger.com/images/jvera/tidyviz-base "Get your own image badge on microbadger.com")| [![](https://img.shields.io/docker/pulls/jvera/tidyviz-base.svg)](https://hub.docker.com/r/jvera/tidyviz-base) | [![](https://img.shields.io/docker/automated/jvera/tidyviz-base.svg)](https://hub.docker.com/r/jvera/tidyviz-base/builds)

Built upon rocker/ropensci:latest

#### This is a bare-bones image for tidyviz. just some libraries and github packages plus rJava

#### PLEASE CONSIDER any other tidyviz image instead for all packages and features (wrangler, stats, extra...)

## Quick Reference

Pull the image from repo:

```bash
docker pull jvera/tidyviz-base:latest
```
Then build a container:

```bash
docker run -d -p 8787:8787 jvera/tidyviz-base
```

Connect to port 8787 with your browser (rstudio as user and password) to check if your Rserver is up and running.
By default, the RStudio user does not have access to root, such that users cannot install binary libraries with apt-get without first entering the container. To enable root from within RStudio, launch the container with the flag -e ROOT=TRUE, e.g.

```bash
docker run -d -p 8787:8787 -e ROOT=TRUE jvera/tidyviz-base
```
You can now open a shell from RStudio (see the "Tools" menu), or directly from the R console using system(), e.g.

```bash
system("sudo apt-get install -y vim")
```

When container is built you can start it with:

```bash
docker start mycontainer --interactive /bin/bash
```

### Sharing data with host:

```bash
docker start mycontainer --interactive -v ~/dockerdata:/data /bin/bash
```

Any file you place there, will be available for the container to use, and vice versa. Maybe you need a Shiny Server, so run a Dockerized Shiny and share the same folder so you can develop your viz in Rstudio and serve with Shiny.

### More info: Using Rstudio Image

[https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image](https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image)

## Included Packages

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Base </th>
   <th style="text-align:left;"> Description </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> antiword </td>
   <td style="text-align:left;"> Wraps the 'AntiWord' utility to extract text from Microsoft
    Word documents. The utility only supports the old 'doc' format, not the 
    new xml based 'docx' format. Use the 'xml2' package to read the latter. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ascii </td>
   <td style="text-align:left;"> Coerce R object to asciidoc, txt2tags, restructuredText,
        org, textile or pandoc syntax.  Package comes with a set of
        drivers for Sweave. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> assertive </td>
   <td style="text-align:left;"> Lots of predicates (is_* functions) to check the state of your
    variables, and assertions (assert_* functions) to throw errors if they
    aren't in the right form. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> assertr </td>
   <td style="text-align:left;"> Provides functionality to assert conditions
    that have to be met so that errors in data used in
    analysis pipelines can fail quickly. Similar to
    'stopifnot()' but more powerful, friendly, and easier
    for use in pipelines. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> assertthat </td>
   <td style="text-align:left;"> assertthat is an extension to stopifnot() that makes it
    easy to declare the pre and post conditions that you code should
    satisfy, while also producing friendly error messages so that your
    users know what they've done wrong. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> beepr </td>
   <td style="text-align:left;"> The sole function of this package is beep(), with the purpose to
    make it easy to play notification sounds on whatever platform you are on.
    It is intended to be useful, for example, if you are running a long analysis
    in the background and want to know when it is ready. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> charlatan </td>
   <td style="text-align:left;"> Make fake data, supporting addresses, person names, dates,
    times, colors, coordinates, currencies, digital object identifiers
    ('DOIs'), jobs, phone numbers, 'DNA' sequences, doubles and integers
    from distributions and within a range. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> checkmate </td>
   <td style="text-align:left;"> Tests and assertions to perform frequent argument checks. A
    substantial part of the package was written in C to minimize any worries
    about execution time overhead. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> checkpoint </td>
   <td style="text-align:left;"> The goal of checkpoint is to solve the problem of package
    reproducibility in R. Specifically, checkpoint allows you to install packages
    as they existed on CRAN on a specific snapshot date as if you had a CRAN time
    machine. To achieve reproducibility, the checkpoint() function installs the
    packages required or called by your project and scripts to a local library
    exactly as they existed at the specified point in time. Only those packages
    are available to your project, thereby avoiding any package updates that came
    later and may have altered your results. In this way, anyone using checkpoint's
    checkpoint() can ensure the reproducibility of your scripts or projects at any
    time. To create the snapshot archives, once a day (at midnight UTC) Microsoft
    refreshes the Austria CRAN mirror on the &quot;Microsoft R Archived Network&quot;
    server (&lt;https://mran.microsoft.com/&gt;). Immediately after completion
    of the rsync mirror process, the process takes a snapshot, thus creating the
    archive. Snapshot archives exist starting from 2014-09-17. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> clipr </td>
   <td style="text-align:left;"> Simple utility functions to read from and write to the Windows,
    OS X, and X11 clipboards. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CodeDepends </td>
   <td style="text-align:left;"> Tools for analyzing R expressions
  or blocks of code and determining the dependencies between them.
  It focuses on R scripts, but can be used on the bodies of functions.
  There are many facilities including the ability to summarize  or get a high-level
  view of code, determining dependencies between variables,  code improvement
  suggestions. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> constants </td>
   <td style="text-align:left;"> CODATA internationally recommended values of the fundamental physical 
    constants, provided as symbols for direct use within the R language. Optionally, 
    the values with errors and/or the values with units are also provided if the 
    'errors' and/or the 'units' packages are installed. The Committee on Data
    for Science and Technology (CODATA) is an interdisciplinary committee of the
    International Council for Science which periodically provides the internationally 
    accepted set of values of the fundamental physical constants. This package 
    contains the &quot;2014 CODATA&quot; version, published on 25 June 2015:
    Mohr, P. J., Newell, D. B. and Taylor, B. N. (2016)
    &lt;DOI:10.1103/RevModPhys.88.035009&gt;, &lt;DOI:10.1063/1.4954402&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> cranlogs </td>
   <td style="text-align:left;"> 'API' to the database of 'CRAN' package downloads from the
    'RStudio' 'CRAN mirror'. The database itself is at &lt;http://cranlogs.r-pkg.org&gt;,
    see &lt;https://github.com/metacran/cranlogs.app&gt; for the raw 'API'. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CRANsearcher </td>
   <td style="text-align:left;"> One of the strengths of R is its vast package ecosystem. Indeed, R packages extend from visualization to Bayesian inference and from spatial analyses to pharmacokinetics (&lt;https://cran.r-project.org/web/views/&gt;). There is probably not an area of quantitative research that isn't represented by at least one R package. At the time of this writing, there are more than 10,000 active CRAN packages. Because of this massive ecosystem, it is important to have tools to search and learn about packages related to your personal R needs. For this reason, we developed an RStudio addin capable of searching available CRAN packages directly within RStudio. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> cronR </td>
   <td style="text-align:left;"> Create, edit, and remove 'cron' jobs on your unix-alike system. The package provides a set of easy-to-use wrappers
    to 'crontab'. It also provides an RStudio add-in to easily launch and schedule your scripts. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ctv </td>
   <td style="text-align:left;"> Infrastructure for task views to CRAN-style repositories: Querying task views and installing the associated
             packages (client-side tools), generating HTML pages and storing task view information in the repository
	     (server-side tools). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> data.table </td>
   <td style="text-align:left;"> Fast aggregation of large data (e.g. 100GB in RAM), fast ordered joins, fast add/modify/delete of columns by group using no copies at all, list columns, a fast friendly file reader and parallel file writer. Offers a natural and flexible syntax, for faster development. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> datapasta </td>
   <td style="text-align:left;"> RStudio addins and R functions that make copy-pasting vectors and tables to text painless. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> devtools </td>
   <td style="text-align:left;"> Collection of package development tools. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> extrafont </td>
   <td style="text-align:left;"> Tools to using fonts other than the standard PostScript fonts.
    This package makes it easy to use system TrueType fonts and with PDF or
    PostScript output files, and with bitmap output files in Windows. extrafont
    can also be used with fonts packaged specifically to be used with, such as
    the fontcm package, which has Computer Modern PostScript fonts with math
    symbols. See https://github.com/wch/extrafont for instructions and
    examples. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> formatR </td>
   <td style="text-align:left;"> Provides a function tidy_source() to format R source code. Spaces
    and indent will be added to the code automatically, and comments will be
    preserved under certain conditions, so that R code will be more
    human-readable and tidy. There is also a Shiny app as a user interface in
    this package (see tidy_app()). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fst </td>
   <td style="text-align:left;"> Read and write data frames at high speed. Compress your data with fast and efficient type-optimized algorithms that allow for random access of stored data frames (columns and rows). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> futile.logger </td>
   <td style="text-align:left;"> Provides a simple yet powerful logging utility. Based loosely on
    log4j, futile.logger takes advantage of R idioms to make logging a
    convenient and easy to use replacement for cat and print statements. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gistr </td>
   <td style="text-align:left;"> Work with 'GitHub' 'gists' from 'R' (e.g., 
    &lt;http://en.wikipedia.org/wiki/GitHub#Gist&gt;, 
    &lt;https://help.github.com/articles/about-gists/&gt;). A 'gist'
    is simply one or more files with code/text/images/etc. This package allows
    the user to create new 'gists', update 'gists' with new files, rename files,
    delete files, get and delete 'gists', star and 'un-star' 'gists', fork 'gists',
    open a 'gist' in your default browser, get embed code for a 'gist', list
    'gist' 'commits', and get rate limit information when 'authenticated'. Some
    requests require authentication and some do not. 'Gists' website: 
    &lt;https://gist.github.com/&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> glue </td>
   <td style="text-align:left;"> An implementation of interpreted string literals, inspired by
  Python's Literal String Interpolation &lt;https://www.python.org/dev/peps/pep-0498/&gt; and Docstrings
  &lt;https://www.python.org/dev/peps/pep-0257/&gt; and Julia's Triple-Quoted String Literals
  &lt;https://docs.julialang.org/en/stable/manual/strings/#triple-quoted-string-literals&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> googlesheets </td>
   <td style="text-align:left;"> Interact with Google Sheets from R. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> googledrive </td>
   <td style="text-align:left;"> Manage Google Drive files from R. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> here </td>
   <td style="text-align:left;"> Constructs paths to your project's files.
    The 'here()' function uses a reasonable heuristics to find your project's
    files, based on the current working directory at the time when the package
    is loaded. Use it as a drop-in replacement for 'file.path()', it will always
    locate the files relative to your project root. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hmisc </td>
   <td style="text-align:left;"> Contains many functions useful for data
	analysis, high-level graphics, utility operations, functions for
	computing sample size and power, importing and annotating datasets,
	imputing missing values, advanced table making, variable clustering,
	character string manipulation, conversion of R objects to LaTeX and html code,
	and recoding variables. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> htmltab </td>
   <td style="text-align:left;"> HTML tables are a valuable data source but extracting and recasting
    these data into a useful format can be tedious. This package allows to collect
    structured information from HTML tables. It is similar to readHTMLTable()
    of the XML package but provides three major advantages. First, the function
    automatically expands row and column spans in the header and body cells.
    Second, users are given more control over the identification of header and body
    rows which will end up in the R table, including semantic header information
    that appear throughout the body. Third, the function preprocesses table code,
    corrects common types of malformations, removes unneeded parts and so helps to
    alleviate the need for tedious post-processing. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> htmltools </td>
   <td style="text-align:left;"> Tools for HTML generation and output. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> humanFormat </td>
   <td style="text-align:left;"> Format quantities of time or bytes into human-friendly strings. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Kmisc </td>
   <td style="text-align:left;"> This package contains a collection of functions for common data
    extraction and reshaping operations, string manipulation, and
    functions for table and plot generation for R Markdown documents. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> later </td>
   <td style="text-align:left;"> Executes arbitrary R or C functions some time after the current
    time, after the R execution stack has emptied. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lessR </td>
   <td style="text-align:left;"> Each function accomplishes the work of several or more standard R functions. For example, two function calls, Read() and CountAll(), read the data and generate summary statistics for all variables in the data frame, plus histograms and bar charts as appropriate.  Other functions provide for descriptive statistics, a comprehensive regression analysis, analysis of variance and t-test, plotting including the introduced here Violin/Box/Scatter plot for a numerical variable, bar chart, histogram, box plot, density curves, calibrated power curve, reading multiple data formats with the same function call, variable labels, color themes, Trellis graphics and a built-in help system. A confirmatory factor analysis of multiple indicator measurement models is available, as are pedagogical routines for data simulation such as for the Central Limit Theorem. Compatible with 'RStudio' and 'knitr' including generation of R markdown instructions for interpretative output. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lintr </td>
   <td style="text-align:left;"> Checks adherence to a given style, syntax errors and possible
    semantic issues.  Supports on the fly checking of R code edited with 'RStudio IDE', 'Emacs',
    'Vim', 'Sublime Text' and 'Atom'. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> logging </td>
   <td style="text-align:left;"> logging is a pure R package that implements the ubiquitous
        log4j package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> magrittr </td>
   <td style="text-align:left;"> Provides a mechanism for chaining commands with a
    new forward-pipe operator, %&gt;%. This operator will forward a
    value, or the result of an expression, into the next function
    call/expression. There is flexible support for the type
    of right-hand side expressions. For more information, see
    package vignette.
    To quote Rene Magritte, &quot;Ceci n'est pas un pipe.&quot; </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mallet </td>
   <td style="text-align:left;"> This package allows you to train topic models in mallet and load results directly into R. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MASS </td>
   <td style="text-align:left;"> Functions and datasets to support Venables and Ripley,
  &quot;Modern Applied Statistics with S&quot; (4th edition, 2002). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Matrix </td>
   <td style="text-align:left;"> Classes and methods for dense and sparse matrices and
    operations on them using 'LAPACK' and 'SuiteSparse'. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> microbenchmark </td>
   <td style="text-align:left;"> Provides infrastructure to accurately measure and compare
        the execution time of R expressions. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mime </td>
   <td style="text-align:left;"> Guesses the MIME type from a filename extension using the data
    derived from /etc/mime.types in UNIX-type systems. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> miniCRAN </td>
   <td style="text-align:left;"> Makes it possible to create an internally consistent
    repository consisting of selected packages from CRAN-like repositories.
    The user specifies a set of desired packages, and 'miniCRAN' recursively
    reads the dependency tree for these packages, then downloads only this
    subset. The user can then install packages from this repository directly,
    rather than from CRAN.  This is useful in production settings, e.g. server
    behind a firewall, or remote locations with slow (or zero) Internet access. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> naturalsort </td>
   <td style="text-align:left;"> Provides functions related to human natural ordering.
    It handles adjacent digits in a character sequence as a number so that
    natural sort function arranges a character vector by their numbers, not digit
    characters. It is typically seen when operating systems lists file names. For
    example, a sequence a-1.png, a-2.png, a-10.png looks naturally ordered because 1
    &lt; 2 &lt; 10 and natural sort algorithm arranges so whereas general sort algorithms
    arrange it into a-1.png, a-10.png, a-2.png owing to their third and fourth
    characters. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> numform </td>
   <td style="text-align:left;"> Format numbers and plots for publication; includes the removal of leading zeros,
          standardization of number of digits, addition of affixes, and a p-value formatter.
          These tools combine the functionality of several 'base' functions such as paste(),
          format(), and sprintf() into specific use case functions that are named in a way
          that is consistent with usage, making their names easy to remember and easy to
          deploy. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> officer </td>
   <td style="text-align:left;"> Access and manipulate 'Microsoft Word' and 'Microsoft PowerPoint' documents from R. 
  The package focus on tabular and graphical reporting from R; it also provides two functions 
  that let users get document content into data objects. A set of functions 
  lets add and remove images, tables and paragraphs of text in new or existing documents. 
  When working with 'PowerPoint' presentations, slides can be added or removed; shapes inside 
  slides can also be added or removed. When working with 'Word' documents, a cursor can be 
  used to help insert or delete content at a specific location in the document. The package 
  does not require any installation of Microsoft product to be able to write Microsoft files. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> optparse </td>
   <td style="text-align:left;"> A command line parser inspired by Python's 'optparse' library to
    be used with Rscript to write &quot;#!&quot; shebang scripts that accept short and
    long flag/options. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pathological </td>
   <td style="text-align:left;"> Utilities for paths, files and directories. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pdftools </td>
   <td style="text-align:left;"> Utilities based on 'libpoppler' for extracting text, fonts, attachments and 
    metadata from a PDF file. Also supports high quality rendering of PDF documents info
    PNG, JPEG, TIFF format, or into raw bitmap vectors for further processing in R. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pkggraph </td>
   <td style="text-align:left;"> Interactively explore various dependencies of a package(s) (on the Comprehensive R Archive Network Like repositories) and perform analysis using tidy philosophy. Most of the functions return a 'tibble' object (enhancement of 'dataframe') which can be used for further analysis. The package offers functions to produce 'network' and 'igraph' dependency graphs. The 'plot' method produces a static plot based on 'ggnetwork' and 'plotd3' function produces an interactive D3 plot based on 'networkD3'. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> plumber </td>
   <td style="text-align:left;"> Gives the ability to automatically generate and serve an HTTP API
    from R functions using the annotations in the R documentation around your
    functions. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pointblank </td>
   <td style="text-align:left;"> Validate data in local data frames,
    local 'tibble' objects, in 'CSV' and 'TSV' files,
    and in database tables ('PostgreSQL' and 'MySQL').
    Validation pipelines can be made using
    easily-readable, consecutive validation steps
    and such pipelines allow for switching of the
    data table context. Upon execution of the
    validation plan, several reporting options are
    available. User-defined thresholds for failure
    rates allow for the determination of appropriate
    reporting actions (e.g., sending email
    notifications). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pool </td>
   <td style="text-align:left;"> Enables the creation of object pools, which make it less
    computationally expensive to fetch a new object. Currently the
    only supported pooled objects are 'DBI' connections. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> prettyunits </td>
   <td style="text-align:left;"> Pretty, human readable formatting of quantities.
    Time intervals: 1337000 -&gt; 15d 11h 23m 20s.
    Vague time intervals: 2674000 -&gt; about a month ago.
    Bytes: 1337 -&gt; 1.34 kB. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> profvis </td>
   <td style="text-align:left;"> Interactive visualizations for profiling R code. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> progress </td>
   <td style="text-align:left;"> Configurable Progress bars, they may include percentage,
    elapsed time, and/or the estimated completion time. They work in
    terminals, in 'Emacs' 'ESS', 'RStudio', 'Windows' 'Rgui' and the
    'macOS' 'R.app'. The package also provides a 'C++' 'API', that works
    with or without 'Rcpp'. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> R.utils </td>
   <td style="text-align:left;"> Utility functions useful when programming and developing R packages. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Rcpp </td>
   <td style="text-align:left;"> The 'Rcpp' package provides R functions as well as C++ classes which
 offer a seamless integration of R and C++. Many R data types and objects can be
 mapped back and forth to C++ equivalents which facilitates both writing of new
 code as well as easier integration of third-party libraries. Documentation 
 about 'Rcpp' is provided by several vignettes included in this package, via the 
 'Rcpp Gallery' site at &lt;http://gallery.rcpp.org&gt;, the paper by Eddelbuettel and 
 Francois (2011, JSS), the book by Eddelbuettel (2013, Springer) and the paper
 by Eddelbuettel and Balamuta (2017, PeerJ); see 'citation(&quot;Rcpp&quot;)' for details. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RcppEigen </td>
   <td style="text-align:left;"> R and 'Eigen' integration using 'Rcpp'.
 'Eigen' is a C++ template library for linear algebra: matrices, vectors,
 numerical solvers and related algorithms.  It supports dense and sparse
 matrices on integer, floating point and complex numbers, decompositions of
 such matrices, and solutions of linear systems. Its performance on many
 algorithms is comparable with some of the best implementations based on
 'Lapack' and level-3 'BLAS'. The 'RcppEigen' package includes the header
 files from the 'Eigen' C++ template library (currently version 3.3.3). Thus
 users do not need to install 'Eigen' itself in order to use 'RcppEigen'.
 Since version 3.1.1, 'Eigen' is licensed under the Mozilla Public License
 (version 2); earlier version were licensed under the GNU LGPL version 3 or
 later. 'RcppEigen' (the 'Rcpp' bindings/bridge to 'Eigen') is licensed under
 the GNU GPL version 2 or later, as is the rest of 'Rcpp'. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RcppQuantuccia </td>
   <td style="text-align:left;"> 'QuantLib' bindings are provided for R using 'Rcpp' and the
 header-only 'Quantuccia' variant (put together by Peter Caspers) offering
 an essential subset of 'QuantLib'. See the included file 'AUTHORS' for a full
 list of contributors to both 'QuantLib' and 'Quantuccia'. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RCurl </td>
   <td style="text-align:left;"> A wrapper for 'libcurl' &lt;http://curl.haxx.se/libcurl/&gt;
	Provides functions to allow one to compose general HTTP requests
        and provides convenient functions to fetch URIs, get &amp; post
        forms, etc. and process the results returned by the Web server.
        This provides a great deal of control over the HTTP/FTP/...
        connection and the form of the request while providing a
        higher-level interface than is available just using R socket
        connections.  Additionally, the underlying implementation is
        robust and extensive, supporting FTP/FTPS/TFTP (uploads and
        downloads), SSL/HTTPS, telnet, dict, ldap, and also supports
        cookies, redirects, authentication, etc. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> readr </td>
   <td style="text-align:left;"> The goal of 'readr' is to provide a fast and friendly way to read
    rectangular data (like 'csv', 'tsv', and 'fwf'). It is designed to flexibly
    parse many types of data found in the wild, while still cleanly failing when
    data unexpectedly changes. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> readtext </td>
   <td style="text-align:left;"> Functions for importing and handling text files and formatted text
    files with additional meta-data, such including '.csv', '.tab', '.json', '.xml',
    '.pdf', '.doc', '.docx', '.xls', '.xlsx', and others. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> reticulate </td>
   <td style="text-align:left;"> R interface to Python modules, classes, and functions. When calling
    into Python R data types are automatically converted to their equivalent Python
    types. When values are returned from Python to R they are converted back to R
    types. Compatible with all versions of Python &gt;= 2.7. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rio </td>
   <td style="text-align:left;"> Streamlined data import and export by making assumptions that
    the user is probably willing to make: 'import()' and 'export()' determine
    the data structure from the file extension, reasonable defaults are used for
    data import and export (e.g., 'stringsAsFactors=FALSE'), web-based import is
    natively supported (including from SSL/HTTPS), compressed files can be read
    directly without explicit decompression, and fast import packages are used where
    appropriate. An additional convenience function, 'convert()', provides a simple
    method for converting between file types. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rprojroot </td>
   <td style="text-align:left;"> Robust, reliable and flexible paths to files below a
    project root. The 'root' of a project is defined as a directory
    that matches a certain criterion, e.g., it contains a certain
    regular file. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sessioninfo </td>
   <td style="text-align:left;"> Query and print information about the current R session.
    It is similar to 'utils::sessionInfo()', but includes more information
    about packages, and where they were installed from. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sos </td>
   <td style="text-align:left;"> Search contributed R packages, sort by package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tester </td>
   <td style="text-align:left;"> tester allows you to test characteristics of common R objects. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> textreadr </td>
   <td style="text-align:left;"> A small collection of convenience tools for reading text documents
    into R. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tidyverse </td>
   <td style="text-align:left;"> The 'tidyverse' is a set of packages that work in harmony
    because they share common data representations and 'API' design. This
    package is designed to make it easy to install and load multiple
    'tidyverse' packages in a single step. Learn more about the 'tidyverse'
    at &lt;https://tidyverse.org&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tidyxl </td>
   <td style="text-align:left;"> Imports non-tabular from Excel files into R.  Exposes cell content,
    position and formatting in a tidy structure for further manipulation.
    Provides functions for selecting cells by position and relative position,
    and for associating data cells with header cells by proximity in given
    directions.  Supports '.xlsx' and '.xlsm' via the embedded 'RapidXML' C++
    library &lt;http://rapidxml.sourceforge.net&gt;.  Does not support '.xlsb' or
    '.xls'. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> unrtf </td>
   <td style="text-align:left;"> Wraps the 'unrtf' utility to extract text from RTF files. Supports
    document conversion to HTML, LaTeX or plain text. Output in HTML is recommended
    because 'unrtf' has limited support for converting between character encodings. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> validate </td>
   <td style="text-align:left;"> Declare data validation rules and data quality indicators; confront
    data with them and analyze or visualize the results. The package supports
    rules that are per-field, in-record, cross-record or cross-dataset. Rules
    can be automatically analyzed for rule type and connectivity. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> writexl </td>
   <td style="text-align:left;"> Portable, light-weight data frame to 'xlsx' exporter based on 'libxlsxwriter'. 
    No 'Java' or 'Excel' required. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> XML </td>
   <td style="text-align:left;"> Many approaches for both reading and
        creating XML (and HTML) documents (including DTDs), both local
        and accessible via HTTP or FTP.  Also offers access to an
        'XPath' &quot;interpreter&quot;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> hadley/precis </td>
   <td style="text-align:left;"> Succintly Summarise Data Frames. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> hadley/strict </td>
   <td style="text-align:left;"> The goal of strict to make R behave a little more strictly, making base functions more likely to throw an error rather than returning potentially ambiguous results. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ropenscilabs/skimr </td>
   <td style="text-align:left;"> A frictionless, pipeable approach to dealing with summary statistics. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> smach/rmiscutils </td>
   <td style="text-align:left;"> miscellaneous R functions </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ropenscilabs/packagemetrics </td>
   <td style="text-align:left;"> A Package for Helping You Choose Which Package to Use. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> jeremystan/aargh </td>
   <td style="text-align:left;"> Easily Expose R Functions to Command Line Arguments. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> r-lib/boxes </td>
   <td style="text-align:left;"> Draw rules and boxes in the terminal. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ropenscilabs/available </td>
   <td style="text-align:left;"> Check if a package name is available to use. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ropenscilabs/available </td>
   <td style="text-align:left;"> Check if a package name is available to use. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ropenscilabs/data-packages </td>
   <td style="text-align:left;"> The State Of Data On CRAN: Discovering Good Data Packages. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Stan125/GREA </td>
   <td style="text-align:left;"> Gotta Read Em All: RStudio Add-In to interactively read ALL the data into R using RIO. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MilesMcBain/gistfo </td>
   <td style="text-align:left;"> Collect multiple functions for in-database visualization code. </td>
  </tr>
  </tbody>
</table>
