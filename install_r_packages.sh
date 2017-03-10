#!/bin/bash - 
#===============================================================================
#
#          FILE: install_r_packagse.sh
# 
#         USAGE: ./install_r_packagse.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 03/10/2017 11:38
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
cd /tmp
for file in *rpackages.txt
do
  echo "reading from $file"
  for package in $(cat $file)
  do
    echo "Downloading $package from cran"
    wget https://cran.r-project.org/src/contrib/${package}.tar.gz
    R CMD INSTALL ${package}.tar.gz
  done
done
