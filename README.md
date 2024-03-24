Junior Level Assignment

Automating Dockerized Deployments
Scenario:
You are tasked with automating the deployment process for a Dockerized web application. The goal is to set up a continuous integration and continuous deployment (CI/CD) pipeline using basic scripting and Docker concepts.

Requirements:
•	Docker Setup: Install Docker on a Linux server and set up a basic Docker environment.
•	Git Repository: Create a Git repository for the web application code.
•	CI Pipeline: Set up a basic CI pipeline using a CI tool (e.g., Jenkins, GitLab CI). The pipeline should:
•	Trigger on code commits to the Git repository.
•	Build the Docker image for the web application.
•	Push the Docker image to a Docker registry (e.g., Docker Hub).
•	CD Pipeline: Implement a basic CD pipeline to deploy the Dockerized application. The pipeline should:
•	Pull the latest Docker image from the registry.
•	Stop and remove existing containers.
•	Run a new container with the updated image.
•	Bash Scripts: Write Bash scripts to automate Docker-related tasks, such as building images, pushing to registries, and deploying containers.


Step 1:
 
Here we created AWS Ec2 Ubuntu Instance

![AWS](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/d1729489-ff1d-411e-88c6-3ecf8ecb6fb9)


Step 2:
 
Here we install docker in ec2 instance with the above code

![1(2)](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/d4377ff1-fbaf-4d22-8ecd-333e88c13cde)


Step 3:
 
Docker has been successfully installed 

![1(2)](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/f918478f-9cec-4783-8181-2eb21204f547)


Step 4:
 
Here we login into docker hub using credentials using the terminal

![1(3)](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/6d4a6891-a260-4064-adaa-0431d3fd0ec7)



Step 5:
 
we use this command to check docker images

![1(4)](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/0098e893-627e-4249-8597-dcceaf1ed2d1)

Step 6:
 
We install Jenkins using the above code in Ec2 instance


Step 7:

 ![2 Installing Jenkins](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/266e35d6-5c2b-4252-9819-cb4460af15f4)

Here we download and install Jenkins using shell script 

Step 8:

![2(4)](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/0640220b-35f5-4370-8f8d-828275326eff)

Jenkins has been Successfully installed in server on port 8080


Step 9:
 
![2(6)](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/e6a7a3e5-00ac-407b-8497-8fc86717c553)

Some Necessary Jenkins extensions are being installed


Step 10:
 ![3](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/03a4fd64-2b03-4a9f-ab0a-d2a2f54298e4)

This is the Github Repo where code is kept

Step 11:

 ![githubwebhook](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/77c57ddf-6083-444a-a6dc-0f0cc0668b4a)

Github webhook has been configured

Step 12:

 ![JenkinsPipeline](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/41d8fb2f-e294-47cf-9608-460e8db9fa25)

This is the Jenkins pipeline which does Continuous integration and continuous deployment

Step 13:

 ![JenkinsPipelinePic](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/8350a50c-8392-4e7f-97e0-4d376646cd52)

Pipeline has been successful and it has deployed the container on port 8091 and pushed the docker images to docker hub

Step 14:

![dockerhubregestry](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/dcb6288e-fbc3-47bb-8b05-82b406a1c270)

Here is the docker hub where docker image has been pushed using Jenkins ci/cd pipeline

Step 15:

 ![Output](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/d14506eb-6a12-4cfd-ac7c-431c1a22cde0)

Here is the docker container deployed at port 8091 and its running

Step 16:

Bash Scripting

 ![bashScripting](https://github.com/Salmansadiq809545/JuniorDevopsAssingment/assets/151068261/32375536-2489-45d6-89f6-29a824e3f316)

Here is the bash scripting to automate the process of building docker image and docker container





