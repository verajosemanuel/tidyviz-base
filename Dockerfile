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
animation \
anytime \
assertive \
assertr \
assertthat \
car \
caret \
chunked \
cluster \
colorspace \
corrplot \
data.table \
desctable \
diffobj \
DT \
errors \
filesstrings \
flexdashboard \
formatR \
formattable \
gbm \
GGally \
gganimate \
ggbeeswarm \
ggforce \
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
leaps \
lmtest \
magrittr \
microbenchmark \
NMF \
pathological \
plotly \
plotrr \
prettydoc \
profvis \
psych \
R.utils \
RColorBrewer \
Rcpp \
rio \
riverplot \
rmarkdown \
rmdformats \
rticles \
scatterplot3d \
shinyjs \
stringdist \
summarytools \
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
VIMGUI \
wordcloud 
RUN Rscript -e 'devtools::install_github(c("hadley/precis","rstats-db/RPostgres","smach/rmiscutils","yihui/printr","hrbrmstr/hrbrthemes","thomasp85/tweenr"))' \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds
