FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

# ADD github_installs.R /tmp/github_installs.R

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  imagemagick \
  libgeos++-dev \
  libspatialite-dev \
  libv8-3.14-dev \
  libgtk2.0-dev \
  libnlopt-dev \
  libgomp1 \
  libjpeg62-turbo-dev \
  apt-utils \
  ed \
  r-cran-rgtk2 \
  libmpfr-dev \
  && . /etc/environment \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && rm -rf /tmp/downloaded_packages/  /tmp/*.rds


RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(ask=FALSE); biocLite("EBImage", ask=FALSE); biocLite("ggtree", ask=FALSE)'  > /tmp/packages_bioc.R \
&& install2.r --error --deps TRUE Amelia \
CodeDepends \
colourpicker \
condformat \
CRANsearcher \
ctv \
DataCombine \
dataCompareR \
dataMaid \
datapasta \
dataPreparation \
desctable \
DescTools \
diffobj \
dummies \
extrafont \
factoextra \
filesstrings \
futile.logger \
fuzzyjoin \
here \
Hmisc \
humanFormat \
imputeTS \
janitor \
Kmisc \
later \
lessR \
likert \
logging \
mi \
mice \
missForest \
missMDA \
naniar \
naturalsort \
numform \
pathological \
pkggraph \
pool \
profvis \
questionr \
reticulate \
rio \
sessioninfo \
sigr \
Simpsons \
summarytools \
tabplot \
tadaatoolbox \
tatoo \
textreadr \
tidyxl \
validate \
VIM \
visdat \
vtreat \
writexl \
&& Rscript -e 'extrafont::font_import(prompt = FALSE)' \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds
