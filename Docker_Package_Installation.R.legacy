#!/usr/bin/env Rscript

## LOAD LIBRARIES
if(!require('versions') ){ 
  install.packages("https://cran.r-project.org/src/contrib/Archive/versions/versions_0.2.tar.gz", repos=NULL, type="source")
}
library('versions')

#Find All LibPaths
paths<- .libPaths()

for(i in 1:length(paths)){
  print(paste0('Checking Versions in .libPath(): ', .libPaths()[i]))
  
  #remove the most recent libPath and redo removal and installs
  if(i > 1){.libPaths( .libPaths()[-1])}
  
  remove.packages('argparse')
  install.versions('argparse','2.0.0')
  
  remove.packages('data.table')
  install.versions('data.table','1.10.4-3')
  
  remove.packages('doParallel')
  install.versions('doParallel','1.0.11')
  
  remove.packages('dplyr')
  install.versions('dplyr','0.7.4')
  
  remove.packages('DT')
  install.versions('DT','0.2')
  
  remove.packages('e1071')
  install.versions('e1071','1.6-8')
  
  remove.packages('foreach')
  install.versions('foreach','1.4.4')
    
  remove.packages('ggplot2')
  install.versions('ggplot2','3.1.0')
  
  remove.packages('ini')
  install.versions('ini','0.3.1')
  
  remove.packages('jsonlite')
  install.versions('jsonlite','1.5')
  
  remove.packages('lubridate')
  install.versions('lubridate','1.7.4')
  
  remove.packages('plyr')
  install.versions('plyr','1.8.4')
  
  remove.packages('quantmod')
  install.versions('quantmod','0.4-11')
  
  remove.packages('randomForest')
  install.versions('randomForest','4.6-12')
  
  remove.packages('Rcpp')
  install.versions('Rcpp','0.12.17')
  
  remove.packages('RCurl')
  install.versions('RCurl','1.95-4.8')
  
  remove.packages('reshape2')
  install.versions('reshape2','1.4.3')
  
  remove.packages('rlang')
  install.versions('rlang', '0.2.0')
  
  remove.packages('rpart')
  install.versions('rpart','4.1-10')
  
  remove.packages('RPostgreSQL')
  install.versions('RPostgreSQL','0.4-1')
  
  remove.packages('rPython')
  install.versions('rPython', '0.0-6')
    
  remove.packages('stringi')
  install.versions('stringi','1.2.4')
  
  remove.packages('stringr')
  install.versions('stringr','1.2.0')
  
  remove.packages('testthat')
  install.versions('testthat','1.0.2')
  
  remove.packages('tibble')
  install.versions('tibble','1.3.4')
  
  remove.packages('tidyr')
  install.versions('tidyr','0.7.2')
  
  remove.packages('timeDate')
  install.versions('timeDate','3042.101')
  
  remove.packages('XML')
  install.versions('XML','3.98-1.16')
  
  remove.packages('xts')
  install.versions('xts','0.10-0')
  
  remove.packages('zoo')
  install.versions('zoo','1.8-0')
}
