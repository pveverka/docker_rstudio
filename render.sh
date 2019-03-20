#!/bin/bash

render() {
sedStr="
  s!%%CONTAINER_TYPE%%!$container_type!g;
"

sed -r "$sedStr" $1
}

versions=(rbase rstudio)
for version in ${versions[*]}; do
  container_type=$(cat $version/container_type)
  echo "Compiling Docker file for $version and $container_type"
  render Dockerfile.template > $version/Dockerfile  
done
