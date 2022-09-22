pipeline {
    agent {
      node {
        label ""
      } 
    }

    stages {
      stage('fetch_latest_code') {
        steps {
          git credentialsId: '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', url: 'https://github.com/swathidevops123/terraform.git'
        }
      }

      stage('TF Init&Plan') {
        steps {
          sh 'terraform init'
          sh 'terraform plan'
        }      
      }

      stage('Approval') {
        steps {
          script {
            def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
          }
        }
      }

      stage('TF Apply') {
        steps {
          sh 'terraform apply --auto-approve'
        }
      }
    } 
  }
