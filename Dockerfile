FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  ImageMagick \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libudunits2-dev \
  libgdal-dev \
  libgdal1-dev \
  libgeos-dev \
  libgeos++-dev \
  libproj-dev \
  libspatialite-dev \
  netcdf-bin \
  openjdk-7-jre \
  openjdk-7-jdk \
  libv8-3.14-dev \
  libgsl0-dev \
  libtiff5-dev \
  libgtk2.0-dev \
  r-cran-rgtk2 \
  r-cran-cairodevice \
  r-cran-rgl \
  r-cran-tkrplot \
  bwidget \
  tk-dev \
  xauth \
  xfonts-base \
  xvfb \
  libnlopt-dev \
  ImageMagick \
  libssl-dev \
  && . /etc/environment \
&& install2.r --error afex \
Amelia \
animation \
anytime \
assertive \
assertr \
assertthat \
car \
caret \
chunked \
cld2 \
cluster \
colorspace \
corrplot \
countrycode \
data.table \
desctable \
diffobj \
directlabels \
DT \
errors \
extrafont \
factoextra \
filesstrings \
flexdashboard \
formatR \
formattable \
futile.logger \
gbm \
GGally \
ggbeeswarm \
ggforce \
ggfortify \
ggiraph \
ggmap \
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
gsubfn \
gtable \
here \
hexbin \
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
manipulate \
microbenchmark \
mime \
munsell \
NMF \
pathological \
plotly \
plotrr \
prettydoc \
profvis \
psych \
qdapRegex \
RTextTools \
R.utils \
RColorBrewer \
Rcpp \
RCurl \
revealjs \
rio \
riverplot \
rmarkdown \
rmdformats \
rprojroot \
rticles \
scatterplot3d \
shiny \
shinyBS \
shinyFiles \
shinydashboard \
shinyjs \
showtext \
stringdist \
summarytools \
tester \
textclean \
tidytext \
tidyxl \
tint \
tm \
topicmodels \
tufte \
udunits2 \
validate \
viridis \
wordcloud \ 
VIM \
&& Rscript -e 'devtools::install_github(c("hadley/colformat","hadley/precis","ropenscilabs/skimr","dgrtwo/gganimate","rstats-db/RPostgres","smach/rmiscutils","yihui/printr","hrbrmstr/hrbrthemes","thomasp85/tweenr","hafen/geofacet","njtierney/narnia","krlmlr/here","krlmlr/rprojroot","ropenscilabs/packagemetrics","jeremystan/aargh"))' \
&& Rscript -e 'extrafont::font_import(prompt = FALSE)' \
RUN apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds
