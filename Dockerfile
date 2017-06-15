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
  git \
  libgomp1 \
  libicu52 \
  libicu-dev \
  liblept4 \
  libleptonica-dev \
  libssl-dev \
  libpango1.0-dev \
  libpng12-dev \
  libtool \
  zlib1g-dev \
  && git clone --branch 3.04.01 --depth 1 https://github.com/tesseract-ocr/tesseract.git /tmp/tesseract \
  && cd /tmp/tesseract \
  && ./autogen.sh \
  && ./configure \
  && make \
  && make install \
  && make training \
  && make training-install \
  && ldconfig \
  && cd / \
  && curl -o /usr/local/share/tessdata/eng.traineddata \
    https://raw.githubusercontent.com/tesseract-ocr/tessdata/master/eng.traineddata \
  && apt-get purge --auto-remove -y \
    autoconf \
    automake \
    build-essential \
    ca-certificates \
    curl \
    git \
    libtool \
  && apt-get clean \
  && rm -rf /tmp/tesseract /var/lib/apt/lists/* \
  && . /etc/environment \
&& install2.r --error afex \
Amelia \
animation \
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
lmtest \
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
stringdist \
summarytools \
tesseract \
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
wordcloud \ 
VIM \
&& Rscript -e 'devtools::install_github(c("hadley/colformat","hadley/precis","ropenscilabs/skimr","dgrtwo/gganimate","rstats-db/RPostgres","smach/rmiscutils","yihui/printr","hrbrmstr/hrbrthemes","thomasp85/tweenr","hafen/geofacet","njtierney/narnia","krlmlr/here","krlmlr/rprojroot","ropenscilabs/packagemetrics","jeremystan/aargh","r-lib/boxes","ropenscilabs/available","ropenscilabs/data-packages"))' \
&& Rscript -e 'extrafont::font_import(prompt = FALSE)' \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds
