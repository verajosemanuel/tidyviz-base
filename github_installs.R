if (!require("pacman")) install.packages("pacman")
pacman::p_load(devtools,fcuk,tidyverse)


install_github("hadley/precis")
install_github("hadley/strict")
install_github("ropenscilabs/skimr")
install_github("smach/rmiscutils")
install_github("ropenscilabs/packagemetrics")
install_github("jeremystan/aargh")
install_github("r-lib/boxes")
install_github("ropenscilabs/available")
install_github("ropenscilabs/data-packages")
install_github("Stan125/GREA")
install_github("MilesMcBain/gistfo")


# insertion in Rprofile ---------------------------------------------------

if (!require("pacman")) install.packages("pacman")
pacman::p_load(pathological)


if (!file.exists("~/.Rprofile"))
  # only create if not already there
  file.create("~/.Rprofile")

perfil <- pathological::r_profile()

cat(
  "options(prompt='R> ', digits=4)
  
  options(stringsAsFactors=FALSE)
  
  if(interactive())
  try(fortunes::fortune(), silent=TRUE)
  
  .Last = function() {
  cond = suppressWarnings(!require(fortunes, quietly=TRUE))
  if(cond)
  try(install.packages('fortunes'), silent=TRUE)
  message('Goodbye at ', date(), '\n')
  }
  
  # aliases
  s <- base::summary
  h <- utils::head
  n <- base::names

  .First <- function(){
  library(fcuk)
  library(tidyverse)
  }
  ", file = perfil, append=TRUE, sep = "\n")


