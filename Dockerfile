FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

ADD github_installs.R /tmp/github_installs.R

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  imagemagick \
  libmagick++-dev \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libudunits2-dev \
  libgdal-dev \
  libgeos-dev \
  libgeos++-dev \
  libproj-dev \
  libspatialite-dev \
  openjdk-8-jre \
  openjdk-8-jdk \
  libv8-3.14-dev \
  libgsl0-dev \
  libgtk2.0-dev \
  xfonts-base \
  libnlopt-dev \
  libgomp1 \
  libicu-dev \
  libssl-dev \
  libpango1.0-dev \
  libpng-dev \
  libtiff5-dev \
  libjpeg62-turbo-dev \
  apt-utils \
  ed \
  r-cran-rgtk2 \
  && . /etc/environment 

RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(ask=FALSE); biocLite("EBImage", ask=FALSE); biocLite("ggtree", ask=FALSE)'  > /tmp/packages_bioc.R \
&& install2.r --error antiword \
ascii \
assertive \
assertr \
assertthat \
beepr \
charlatan \
checkmate \
checkpoint \
clipr \
CodeDepends \
constants \
cranlogs \
CRANsearcher \
cronR \
ctv \
data.table \
datapasta \
devtools \
extrafont \
formatR \
fst \
futile.logger \
gistr \
glue \
googlesheets \
googledrive \
here \
Hmisc \
htmltab \
htmltools \
humanFormat \
Kmisc \
later \
lessR \
lintr \
logging \
magrittr \
mallet \
MASS \
Matrix \
microbenchmark \
mime \
miniCRAN \
naturalsort \
numform \
officer \
optparse \
pathological \
pdftools \
pkggraph \
plumber \
pointblank \
pool \
prettyunits \
profvis \
progress \
R.utils \
Rcpp \
RcppEigen \
RcppQuantuccia \
RCurl \
readr \
readtext \
reticulate \
rio \
rprojroot \
sessioninfo \
sos \
tester \
textreadr \
tidyverse \
tidyxl \
unrtf \
validate \
writexl \
XML \
&& Rscript -e 'extrafont::font_import(prompt = FALSE)' \
&& echo "install.packages('rJava', repos='http://www.rforge.net/', configure.args='--disable-Xrs')" | R --no-save \
&& R CMD javareconf \
&& Rscript /tmp/github_installs.R \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds

