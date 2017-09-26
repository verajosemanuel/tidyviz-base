FROM rocker/ropensci:latest

LABEL maintainer "vera.josemanuel@gmail.com"

ADD github_installs.R /tmp/github_installs.R

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
  r-cran-rgtk2 \
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
dataCompareR \
dataMaid \
datapasta \
data.table \
dataPreparation \
dbplyr \
desctable \
DescTools \
diffobj \
directlabels \
DT \
errors \
extrafont \
FactoMineR \
factoextra \
fBasics \
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
ggcorrplot \
ggforce \
ggfortify \
ggiraph \
ggmap \
ggplotgui \
ggpubr \
ggraph \
ggrepel \
ggridges \
ggsci \
ggtern \
ggThemeAssist \
ggthemes \
ggvis \
ghibli \
gistr \
glue \
gmodels \
gpclib \
gridExtra \
gsubfn \
gtable \
gtrendsR \
here \
hexbin \
highcharter \
Hmisc \
htmltab \
htmlwidgets \
httpuv \
humanFormat \
hunspell \
huxtable \
igraph \
janitor \
kableExtra \
Kmisc \
knitr \
lambda.tools \
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
munsell \
naturalsort \
neuralnet \
NMF \
numform \
optparse \
papeR \
pathological \
pdftools \
pinp \
pixiedust \
pkggraph \
plotly \
plotrr \
prettydoc \
prettyunits \
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
rhandsontable \
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
SimDesign \
SnowballC \
sos \
sparklyr \
stringdist \
sugrrants \
summarytools \
tables \
tatoo \
tester \
textclean \
textreadr \
tibbletime \
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
vtreat \
wesanderson \
wordcloud \ 
VIM \
&& Rscript /tmp/github_installs.R \
&& Rscript -e 'extrafont::font_import(prompt = FALSE)' \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/ \
&& rm -rf /tmp/downloaded_packages/  /tmp/*.rds

