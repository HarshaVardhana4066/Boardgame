pipeline{
    agent {label "slave-1"}

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
                git branch: "${params.Branch_name}", url: 'https://github.com/pheonix4066/Boardgame.git'
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