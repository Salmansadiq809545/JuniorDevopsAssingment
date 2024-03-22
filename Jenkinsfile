pipeline{
    agent any
     environment {
     IMAGE_NAME="salman8095/bankborj"
     TAG="latest"
     CONTAINER_NAME="bankcontainer"
     PORT_MAPPING="8091:8091"
         
     }
     
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
          stage('Docker Stop Container')
        {
            steps{
                 sh 'docker stop "$CONTAINER_NAME" '
            }
           
        }
          stage('Docker Remove Container')
        {
            steps{
                 sh 'docker rm "$CONTAINER_NAME" '
            }
           
        }
         stage('Docker Image Creation')
        {
            steps{
                 sh 'docker build -t "$IMAGE_NAME:$TAG" .'
            }
           
        }
         stage('Pushing Docker Image to Docker-Hub')
        {
            steps{
                 withCredentials([usernamePassword(credentialsId: 'dockerhub-pwd', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                    sh "echo $PASS | docker login -u $USER --password-stdin"
                    sh 'docker push "$IMAGE_NAME:$TAG"'
                }
            }
           
        }
         stage('Docker Container')
        {
            steps{
                 sh 'docker run -itd -p "$PORT_MAPPING" --name "$CONTAINER_NAME" "$IMAGE_NAME:$TAG" '
            }
           
        }
    }
}
