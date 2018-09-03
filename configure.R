if (!require("pacman")) install.packages("pacman")
pacman::p_load(devtools,fcuk,tidyverse,pathological)
# devtools::install_github("ewenharrison/finalfit")

# insertion in Rprofile ---------------------------------------------------

if (!file.exists("~/.Rprofile"))
  # only create if not already there
  file.create("~/.Rprofile")

if (!file.exists("~/.R/snippets/r.snippets")
  file.create("~/.R/snippets/r.snippets")

perfil <- pathological::r_profile()

cat(
  "options(prompt='R> ', digits=4)

  options(stringsAsFactors=FALSE)

  options(scipen = 999)

  if(interactive())
  try(fortunes::fortune(), silent=TRUE)

  .Last = function() {
  cond = suppressWarnings(!require(fortunes, quietly=TRUE))
  if(cond)
  try(install.packages('fortunes'), silent=TRUE)
  message('Goodbye at ', date(), '\n')
  }

  .First <- function(){
  library(fcuk)
  library(tidyverse)
  }
  ", file = perfil, append=TRUE, sep = "\n")

    
 cat("snippet p
	${1:object} %<>% ${0}", file = "~/.R/snippets/r.snippets", append=TRUE, sep = "\n")
    
    
check.packages <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) 
        install.packages(new.pkg, dependencies = TRUE)
}


packages.to.install <- c("Amelia",
"xml2",
"archivist",
"basictabler",
"bookdown",
"caTools",
"charlatan",
"cleandata",
"colourpicker",
"compare",
"compareGroups",
"condformat",
"conflicted",
"corrr",
"cowplot",
"CRANsearcher",
"ctv",
"data.table",
"DataCombine",
"dataCompareR",
"DataExplorer",
"dataMaid",
"datapasta",
"dataPreparation",
"densityClust",
"descriptr",
"desctable",
"DescTools",
"diffobj",
"diffdf")

check.packages(packages.to.install)
