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
        nexusUrl = 'http://3.81.33.200:8081'
    }
    stages {
        stage("read the version") {
            steps {
                script {
                    echo "Application version: ${params.appVersion}"
                }
            }
    }  
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