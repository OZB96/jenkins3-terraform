pipeline {
  agent {
    docker {
      image "bryandollery/terraform-packer-aws-alpine"
      args "-u root --entrypoint=''"
    }
  }
  environment {
    CREDS = credentials('aws-omar-creds')
    AWS_ACCESS_KEY_ID = "${CREDS_USR}"
    AWS_SECRET_ACCESS_KEY = "${CREDS_PSW}"
    OWNER = "omar"
    PROJECT_NAME = 'web-server_with-api'
    AWS_PROFILE="kh-labs"
    TF_NAMESPACE="omar"
  }
  stages {
      stage("init") {
          steps {
              sh 'make init'
          }
      }
      stage("workspace") {
          steps {
              sh """
#if [[ \$? -ne 0 ]]; then
#fi
terraform workspace new jenkins-lab-2
terraform workspace select jenkins-lab-2

"""
          }
      }
      stage("plan") {
          steps {
              sh 'make plan'
          }
      }
      stage("apply") {
          steps {
              sh 'make apply'
          }
      }
  }
}
