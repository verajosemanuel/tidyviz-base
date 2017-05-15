FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libudunits2-dev \
  libgdal1-dev \
  libproj-dev \
  openjdk-7-jre \
  openjdk-7-jdk \
  libv8-3.14-dev \
  libgsl0-dev \
  && . /etc/environment
 
RUN install2.r addinslist \
Amelia \
anytime \
assertive \
assertr \
assertthat \
caret \
chunked \
cluster \
corrplot \
data.table \
diffobj \
digest \
DT \
filesstrings \
flexdashboard \
formatR \
gbm \
GGally \
ggbeeswarm \
ggfortify \
ggiraph \
ggraph \
ggrepel \
ggsci \
ggThemeAssist \
ggthemes \
ggvis \
glue \
gmodels \
gpclib \
grid \
gridExtra \
gtable \
highcharter \
Hmisc \
htmlwidgets \
httpuv \
huxtable \
igraph \
janitor \
knitr \
leaflet \
magrittr \
microbenchmark \
NMF \
pathological \
plotly \
plotrr \
prettydoc \
profvis \
R.utils \
RColorBrewer \
Rcpp \
reshape2 \
rio \
riverplot \
rmarkdown \
rmdformats \
rstan \
rticles \
stringdist \
tester \
textclean \
tidytext \
tidyxl \
tm \
topicmodels \
tufte \
udunits2 \
validate \
viridis \
VIM \
wordcloud 
RUN Rscript -e 'devtools::install_github(c("hadley/precis","rstats-db/RPostgres","smach/rmiscutils","yihui/printr"))'
RUN apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds
