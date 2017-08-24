FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  imagemagick \
  libmagick++-dev \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libudunits2-dev \
  libgdal-dev \
  libgeos-dev \
  libgeos++-dev \
  libproj-dev \
  libspatialite-dev \
  openjdk-8-jre \
  openjdk-8-jdk \
  libv8-3.14-dev \
  libgsl0-dev \
  libgtk2.0-dev \
  xfonts-base \
  libnlopt-dev \
  libgomp1 \
  libicu-dev \
  libssl-dev \
  libpango1.0-dev \
  libpng-dev \
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
beepr \
C50 \
car \
caret \
charlatan \
checkmate \
chunked \
cld2 \
cld3 \
clickR \
cluster \
CodeDepends \
colorspace \
constants \
corrr \
corrplot \
countrycode \
cowplot \
cronR \
ctv \
DataCombine \
dataMaid \
datapasta \
data.table \
dbplyr \
desctable \
DescTools \
diffobj \
directlabels \
DT \
errors \
extrafont \
factoextra \
filesstrings \
flexdashboard \
foreign \
formatR \
formattable \
fst \
futile.logger \
fuzzyjoin \
gbm \
GGally \
ggalt \
ggbeeswarm \
ggforce \
ggfortify \
ggiraph \
ggmap \
ggpubr \
ggraph \
ggrepel \
ggsci \
ggtern \
ggThemeAssist \
ggthemes \
ggvis \
ghibli \
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
htmltab \
htmlwidgets \
httpuv \
hunspell \
huxtable \
igraph \
janitor \
kableExtra \
knitr \
leaflet \
leaps \
lmtest \
logging \
lumberjack \
magick \
magrittr \
manipulate \
margins \
microbenchmark \
mime \
missMDA \
mlDNA \
munsell \
naturalsort \
neuralnet \
NMF \
numform \
optparse \
pathological \
pdftools \
pixiedust \
pkggraph \
plotly \
plotrr \
prettydoc \
profvis \
psych \
qdapRegex \
randomForestExplainer \
RTextTools \
R.utils \
RColorBrewer \
Rcpp \
RCurl \
readtext \
ReporteRs \
revealjs \
rio \
riverplot \
rmarkdown \
rmdformats \
rprojroot \
rticles \
scatterplot3d \
sessioninfo \
shiny \
shinyBS \
shinyFiles \
shinydashboard \
shinyjs \
showtext \
sigr \
Simpsons \
SnowballC \
sos \
sparklyr \
stringdist \
summarytools \
tables \
tatoo \
tester \
textclean \
textreadr \
tictoc \
tidytext \
tidyxl \
tint \
tm \
topicmodels \
TTR \
tufte \
udunits2 \
unrtf \
validate \
viridis \
wesanderson \
wordcloud \ 
VIM \
&& Rscript -e 'devtools::install_github(c("hadley/colformat","hadley/precis","hadley/strict","ropenscilabs/skimr","dgrtwo/gganimate","rstats-db/RPostgres","smach/rmiscutils","yihui/printr","hrbrmstr/hrbrthemes","thomasp85/tweenr","hafen/geofacet","njtierney/narnia","krlmlr/here","krlmlr/rprojroot","ropenscilabs/packagemetrics","jeremystan/aargh","r-lib/boxes","ropenscilabs/available","ropenscilabs/data-packages","hrbrmstr/waffle","stefanedwards/lemon","Stan125/GREA","lchiffon/wordcloud2","bhaskarvk/leaflet.extras","vqv/ggbiplot","MilesMcBain/gistfo","rich-iannone/blastula","wilkox/ggfittext"))' \
&& Rscript -e 'extrafont::font_import(prompt = FALSE)' \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds

