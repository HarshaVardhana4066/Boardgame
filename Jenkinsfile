pipeline {
    agent any
    
    tools {
        jdk 'java-17'
        maven 'maven3.9'
    }
    
    stages {   
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/HarshaVardhana4066/Boardgame.git' 
            }
        }
        stage('Compile') {
            steps {
            sh 'mvn compile'
            }
        }
        
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
