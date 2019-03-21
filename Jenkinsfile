pipeline{
  agent {
    label "engineering"
  }

  options {
    timestamps()
  }

  stages{
    stage("Prepare building environment"){
      steps{
        script{
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
                docker.build("dv:${env.BUILD_ID}", "./dv")
              }
            }
          }
        }

        stage("RStudio"){
          steps{
            script{
              ansiColor('xterm') {
                docker.build("rstudio:${env.BUILD_ID}", "./rstudio")
              }
            }
          }
        }

        stage("Analytical team image"){
          steps{
            script{
              ansiColor('xterm') {
                docker.build("rbase:${env.BUILD_ID}", "./rbase")
              }
            }
          }
        }

      }
    }

    stage("Publish to hub.docker.com"){
      steps{
        script{
          sh 'echo "publishing"'
        }
      }
    }


  }
}
