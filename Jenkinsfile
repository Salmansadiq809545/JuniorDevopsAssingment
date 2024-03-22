pipeline{
    agent any
    stages{
        stage('Git Checkout')
        {
            steps{
                 git 'https://github.com/Salmansadiq809545/JuniorDevopsAssingment'
            }
           
        }
        stage('MAVEN Compile')
        {
            steps{
                 sh 'mvn compile'
            }
           
        }
          stage('MAVEN Package')
        {
            steps{
                 sh 'mvn clean package'
            }
           
        }
         stage('Docker Image Creation')
        {
            steps{
                 sh 'docker build -t salman8095/bankborj:v1 .'
            }
           
        }
         stage('Pushing Docker Image to Docker-Hub')
        {
            steps{
                 withCredentials([usernamePassword(credentialsId: 'dockerhub-pwd', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                    sh "echo $PASS | docker login -u $USER --password-stdin"
                    sh 'docker push salman8095/bankborj:v1'
                }
            }
           
        }
         stage('Docker Container')
        {
            steps{
                 sh 'docker run -itd -p 8091:8091 --name bankcontainer salman8095/bankborj:v1 '
            }
           
        }
    }
}
