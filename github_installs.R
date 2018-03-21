if (!require("pacman")) install.packages("pacman")
pacman::p_load(devtools,fcuk,tidyverse,pathological)



# insertion in Rprofile ---------------------------------------------------

if (!file.exists("~/.Rprofile"))
  # only create if not already there
  file.create("~/.Rprofile")

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

  # aliases
  s <- base::summary
  h <- utils::head
  n <- base::names

  .First <- function(){
  library(fcuk)
  library(tidyverse)
  }
  ", file = perfil, append=TRUE, sep = "\n")


install_github("IndrajeetPatil/ggstatsplot",dependencies = TRUE,upgrade_dependencies = TRUE)
install_github('thomasp85/farver')
