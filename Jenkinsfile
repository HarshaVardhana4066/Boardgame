pipeline{
    agent any

    tools{
        maven "Maven3"

    }

    stages{
        stage('Hello'){
            steps{
                echo "Hey bro will gone smash it dont worry everything will be worth"
            } 
        }

         stage('Git checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/jaiswaladi246/Boardgame.git'
            } 
        }

         stage('compile'){
            steps{
                sh  "mvn compile"
                
            } 
        }

         stage('test'){
            steps{
                sh  "mvn test"
            } 
        }
        stage('build'){
            steps{
                sh "mvn package"
            } 
        }

    }
} 
