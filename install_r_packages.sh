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

set -euo nounset -o pipefail                              # Treat unset variables as an error 
pushd /tmp
for file in *rpackages.txt
do
  echo "reading from $file"
  for package in $(cat $file)
  do
    echo "Downloading $package from cran"
    wget https://cran.r-project.org/src/contrib/${package}.tar.gz
    R CMD INSTALL ${package}.tar.gz
    if [[ $? -ne 0 ]]
    then
      exit 1
    fi
    rm ${package}.tar.gz
  done
done
popd
