#!/usr/bin/env Rscript

testpackage <- function(df, name, version){
  return(df[match(name , df$Package),]['Version'] == version)
}

testpackageExit <- function(df, name, version){
  if(!df[match(name , df$Package),]['Version'] == version){
    message ("There is a missing library")
    quit(1)
  }
}

df <- as.data.frame(installed.packages()[,c(1,3:4)])
