FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

ADD github_installs.R /tmp/github_installs.R

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
&& install2.r --error --deps TRUE ascii \
assertive \
beepr \
checkpoint \
CodeDepends \
constants \
CRANsearcher \
cronR \
ctv \
datapasta \
extrafont \
fst \
futile.logger \
googlesheets \
googledrive \
here \
Hmisc \
htmltab \
humanFormat \
Kmisc \
later \
lessR \
logging \
mallet \
miniCRAN \
naturalsort \
numform \
officer \
optparse \
pathological \
pkggraph \
pool \
profvis \
questionr \
RcppQuantuccia \
reticulate \
rio \
sessioninfo \
sos \
tester \
textreadr \
tidyxl \
validate \
writexl \
&& Rscript -e 'extrafont::font_import(prompt = FALSE)' \
&& install2.r --error --deps TRUE Amelia \
bigrquery \
Boruta \
colourpicker \
condformat \
DataCombine \
dataCompareR \
dataMaid \
dataPreparation \
desctable \
DescTools \
diffobj \
dummies \
factoextra \
FactoMineR \
filesstrings \
fuzzyjoin \
ghibli \
gsubfn \
HH \
imputeTS \
janitor \
likert \
mi \
mice \
missForest \
missMDA \
naniar \
sigr \
Simpsons \
summarytools \
tabplot \
tadaatoolbox \
tatoo \
unpivotr \
VIM \
visdat \
vtreat \
wesanderson \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds

# sjmisc \
# sjPlot \
# sjstats \
# pointblank \
# lumberjack \
