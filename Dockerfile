FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

ENV GOPATH /opt/go

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
  libgtk2.0-dev \
  r-cran-rgtk2 \
  r-cran-cairodevice \
  r-cran-rgl \
  r-cran-tkrplot \
  xfonts-base \
  libnlopt-dev \
  git \
  libgomp1 \
  libicu52 \
  libicu-dev \
  libssl-dev \
  libpango1.0-dev \
  libpng12-dev \
  libtiff5-dev \
  libjpeg62-turbo-dev \
  libtool \
  zlib1g-dev \
  automake \
  autoconf-archive \
  pkg-config \
  curl \
  libtesseract-dev \
  libleptonica-dev \
  libpoppler-cpp-dev \
  && . /etc/environment 

RUN wget http://www.leptonica.com/source/leptonica-1.74.1.tar.gz \
&& tar xvf leptonica-1.74.1.tar.gz \
&& cd leptonica-1.74.1 \
&& ./configure \
&& make \
&& make install \
&& git clone https://github.com/tesseract-ocr/tesseract.git \
&& cd tesseract \
&& ./autogen.sh \
&& ./configure --enable-debug \ 
&& LDFLAGS="-L/usr/local/lib" CFLAGS="-I/usr/local/include" \
&& make \ 
&& make install \
&& make install-langs \
&& ldconfig

RUN install2.r --error afex \
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

