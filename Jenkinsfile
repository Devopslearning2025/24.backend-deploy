pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES') 
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    parameters {
        string(name: 'appVersion', defaultValue: '1.0.0', description: 'what is the application version?')
    }
    environment {
        def appVersion = '' //variable declaration
        nexusUrl = 'nexus.devopslearning2025.online:8081'
    }
    stages {
        stage("read the version") {
            steps {
                script {
                    echo "Application version: ${params.appVersion}"
                }
            }
        }
    }
    stage("init") {
        steps {
            script {
                cd terraform
                terraform init
            }
        }
    } 
    stage("plan") {
        steps {
            script {
                cd terraform
                terraform plan
            }
        }
    } 
    // stage("Apply") {
    //     steps {
    //         script {
                
    //         }
    //     }
    // }   
    post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }
        success {
            echo 'i will run the pipeline is usccess'
        }
        failure {
            echo 'i will the pipeline is failure'
        }
    }
}