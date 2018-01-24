FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

ADD github_installs.R /tmp/github_installs.R

RUN apt-get update -qq && apt-get -y --allow-unauthenticated --no-install-recommends install \
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


RUN install2.r --error Amelia \
charlatan \
colourpicker \
condformat \
CRANsearcher \
ctv \
data.table \
DataCombine \
dataCompareR \
DataExplorer \
dataMaid \
datapasta \
dataPreparation \
desctable \
DescTools \
diffobj \
extrafont \
factoextra \
filesstrings \
fs \
futile.logger \
here \
Hmisc \
janitor \
Kmisc \
lessR \
likert \
logging \
mi \
missForest \
naniar \
naturalsort \
numform \
pathological \
pkggraph \
pool \
profvis \
psych \
rio \
sessioninfo \
sigr \
Simpsons \
snakecase \
summarytools \
tabplot \
tadaatoolbox \
tatoo \
VIM \
visdat \
&& Rscript /tmp/github_installs.R \
&& Rscript -e 'extrafont::font_import(prompt = FALSE)' \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds

#&& Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(ask=FALSE); biocLite("EBImage", ask=FALSE); biocLite("ggtree", ask=FALSE)' > /tmp/packages_bioc.R \

