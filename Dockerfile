FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  ImageMagick \
  libmagick++-dev \
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
  openjdk-7-jre \
  openjdk-7-jdk \
  libv8-3.14-dev \
  libgsl0-dev \
  libgtk2.0-dev \
  xfonts-base \
  libnlopt-dev \
  libgomp1 \
  libicu52 \
  libicu-dev \
  libssl-dev \
  libpango1.0-dev \
  libpng12-dev \
  libtiff5-dev \
  libjpeg62-turbo-dev \
  && . /etc/environment \
&& install2.r --error afex \
Amelia \
animation \
anim.plots \
antiword \
anytime \
assertive \
assertr \
assertthat \
car \
caret \
chunked \
cld2 \
cld3 \
clickR \
cluster \
colorspace \
corrplot \
countrycode \
data.table \
dbplyr \
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
hunspell \
huxtable \
igraph \
janitor \
knitr \
leaflet \
leaps \
lessR \
lmtest \
magick \
magrittr \
manipulate \
microbenchmark \
mime \
munsell \
NMF \
optparse \
pathological \
pdftools \
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
readtext \
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
sigr \
stringdist \
summarytools \
tester \
textclean \
textreadr \
tidytext \
tidyxl \
tint \
tm \
topicmodels \
tufte \
udunits2 \
unrtf \
validate \
viridis \
wesanderson \
wordcloud \ 
VIM \
&& Rscript -e 'devtools::install_github(c("hadley/colformat","hadley/precis","ropenscilabs/skimr","dgrtwo/gganimate","rstats-db/RPostgres","smach/rmiscutils","yihui/printr","hrbrmstr/hrbrthemes","thomasp85/tweenr","hafen/geofacet","njtierney/narnia","krlmlr/here","krlmlr/rprojroot","ropenscilabs/packagemetrics","jeremystan/aargh","r-lib/boxes","ropenscilabs/available","ropenscilabs/data-packages","hrbrmstr/waffle"))' \
&& Rscript -e 'extrafont::font_import(prompt = FALSE)' \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds

