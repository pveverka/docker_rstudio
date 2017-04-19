#!/usr/bin/env Rscript

Packge_Install <- function(pack){
  install.packages(pack, repos='http://cran.us.r-project.org')
}

## LOAD LIBRARIES
Packge_Install('Rcpp')
Packge_Install('xts')
Packge_Install('quantmod')
Packge_Install('plyr')
Packge_Install('dplyr')
#Packge_Install('glmulti')
Packge_Install('reshape')
Packge_Install('reshape2')
Packge_Install('ggplot2')
Packge_Install('lubridate')
Packge_Install('RPostgreSQL')
Packge_Install('RCurl')
Packge_Install('randomForest')
Packge_Install('gridExtra')  # for violin plot
Packge_Install('e1071')  # for svm 
Packge_Install('rpart')
Packge_Install('rPython')
Packge_Install('mail')
Packge_Install('Quandl')
Packge_Install('data.table')
Packge_Install('compiler')
Packge_Install('snowfall')
