FROM rocker/rstudio:latest

LABEL maintainer "vera.josemanuel@gmail.com"

ADD configure.R /tmp/configure.R

RUN apt-get update -qq && apt-get -y --allow-unauthenticated --no-install-recommends install \
  imagemagick \
  libgeos++-dev \
  libspatialite-dev \
  libv8-3.14-dev \
  libgtk2.0-dev \
  libnlopt-dev \
  libgomp1 \
  libjpeg62-turbo-dev \
  libtool \
  m4 \
  automake \
  apt-utils \
  ed \
  r-cran-rgtk2 \
  libmpfr-dev \
  libssh-dev \
  libzmq3-dev \
  libxml2-dev \
  libssl-dev \
  libapparmor-dev \
  default-jdk \
  && . /etc/environment \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && rm -rf /tmp/downloaded_packages/  /tmp/*.rds
  
  RUN R CMD javareconf
  
  RUN apt-get update -qq && apt-get -y --allow-unauthenticated --no-install-recommends install r-cran-rjava \
  libgdal-dev \
  libproj-dev \
  && . /etc/environment \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && rm -rf /tmp/downloaded_packages/  /tmp/*.rds \
  && Rscript /tmp/configure.R \
  && Rscript -e 'extrafont::font_import(prompt = FALSE)' \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && rm -rf /tmp/downloaded_packages/  /tmp/*.rds

  RUN export ADD=shiny && bash /etc/cont-init.d/add
