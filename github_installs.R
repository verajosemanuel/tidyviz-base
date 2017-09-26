if (!require("pacman")) install.packages("pacman")
pacman::p_load(devtools,fcuk)

install_github("hadley/readr")
install_github("hadley/colformat")
install_github("hadley/precis")
install_github("hadley/strict")
install_github("ropenscilabs/skimr")
install_github("dgrtwo/gganimate")
install_github("rstats-db/RPostgres")
install_github("smach/rmiscutils")
install_github("yihui/printr")
install_github("hrbrmstr/hrbrthemes")
install_github("thomasp85/tweenr")
install_github("hafen/geofacet")
install_github("njtierney/narnia")
install_github("krlmlr/here")
install_github("krlmlr/rprojroot")
install_github("ropenscilabs/packagemetrics")
install_github("jeremystan/aargh")
install_github("r-lib/boxes")
install_github("ropenscilabs/available")
install_github("ropenscilabs/data-packages")
install_github("hrbrmstr/waffle")
install_github("stefanedwards/lemon")
install_github("Stan125/GREA")
install_github("lchiffon/wordcloud2")
install_github("bhaskarvk/leaflet.extras")
install_github("vqv/ggbiplot")
install_github("MilesMcBain/gistfo")
install_github("rich-iannone/blastula")
install_github("wilkox/ggfittext")
install_github("tidyverse/googledrive")
install_github("rich-iannone/pointblank")
install_github("EmilHvitfeldt/ggpage")
install_github("hrbrmstr/msgxtractr")
install_github("krlmlr/styler")
install_github("ropensci/writexl")


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
  }
  ", file = perfil, append=TRUE, sep = "\n")


