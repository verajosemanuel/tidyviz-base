FROM rocker/rstudio:latest

LABEL maintainer "vera.josemanuel@gmail.com"

ADD configure.R /tmp/configure.R
ADD check_installs.R /tmp/check_installs.R

RUN apt-get update -qq && apt-get -y --allow-unauthenticated --no-install-recommends install \
  imagemagick \
  libgeos++-dev \
  libspatialite-dev \
  libv8-3.14-dev \
  libgtk2.0-dev \
  libnlopt-dev \
  libjpeg62-turbo-dev \
  libtool \
  m4 \
  automake \
  apt-utils \
  ed \
  r-cran-rgtk2 \
  libmpfr-dev \
  libzmq3-dev \
  libxml2-dev \
  libapparmor-dev \
  libgdal-dev \
  libproj-dev \
  default-jdk \
  libbz2-dev \
  libpcre3-dev \
  liblzma-dev \
  zlib1g-dev \
  libmagick++-dev \
  r-cran-rjava \
  && R CMD javareconf \
  && . /etc/environment \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && rm -rf /tmp/downloaded_packages/  /tmp/*.rds
 
  RUN Rscript /tmp/configure.R \
  && Rscript -e 'extrafont::font_import(prompt = FALSE)' \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && rm -rf /tmp/downloaded_packages/  /tmp/*.rds

  RUN install2.r --error --deps TRUE Amelia \
  archivist \
  basictabler \
  bookdown \
  caTools \
  charlatan \
  cleandata \
  colourpicker \
  compare \
  compareGroups \
  condformat \
  conflicted \
  corrr \
  cowplot \
  CRANsearcher

  RUN Rscript /tmp/check_installs.R
  
  RUN export ADD=shiny && bash /etc/cont-init.d/add
  
