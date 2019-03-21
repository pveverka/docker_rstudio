def makeDockerImageVersion(){
  if(env.BRANCH_NAME == 'master'){
    return 'latest'
  }
  return env.BRANCH_NAME
}

pipeline{
  agent {
    label "engineering"
  }

  options {
    timestamps()
  }

  environment {
    registry = "finmason/docker_rstudio"
    registryCredential = 'hub.docker.com'
  }

  stages{
    stage("Prepare building environment"){
      steps{
        script{
          sh 'env'
          sh 'bash addons/render.sh'
          sh '''#!/bin/bash
          for i in dv rbase rstudio; do
            echo $i;
            cp addons/* $i/
            cp Packages_analytics.R $i/
          done;
          cp Packages_datavalidation.R dv/
          '''
        }
      }
    }
    stage("Build image"){
      parallel{
        stage("Datavalidation image"){
          steps{
            script{
              ansiColor('xterm') {
                dvImage = docker.build("${registry}:dv-${makeDockerImageVersion()}", "./dv")
              }
            }
          }
        }

        stage("RStudio"){
          steps{
            script{
              ansiColor('xterm') {
                rstudioImage = docker.build("${registry}:${makeDockerImageVersion()}", "./rstudio")
              }
            }
          }
        }

        stage("Analytical team image"){
          steps{
            script{
              ansiColor('xterm') {
                rbaseImage = docker.build("${registry}:rbase-${makeDockerImageVersion()}", "./rbase")
              }
            }
          }
        }

      }
    }

    stage("Publish to hub.docker.com"){
      steps{
        script{
          docker.withRegistry( '', registryCredential ) {
            dvImage.push()
            rstudioImage.push()
            rbaseImage.push()
          }
        }
      }
    }


  }
}
