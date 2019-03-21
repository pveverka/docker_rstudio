#!/usr/bin/env Rscript

testpackage <- function(df, name, version){
  return(df[df['Package'] == name ][2] == version)
}

testpackageExit <- function(df, name, version){
  if(!df[df['Package'] == name ][2] == version){
    message ("There is a missing library")
    quit(1)
  }
}

df <- as.data.frame(installed.packages()[,c(1,3:4)])
