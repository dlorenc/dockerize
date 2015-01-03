# dockerize

## Dockerize Your Team

This repo contains a small nodejs application, scripts to provision some GCE instances,
scripts to build the application into a docker image, and an ansible playbook
to deploy it.

App code is in app/  
Scripts are in scripts/  
Deployment code is in playbooks/  

## Example Usage

### Development  
$ cd app  
$ npm install  
$ npm start  
Example app listening at http://0.0.0.0:8080  

### CI
1. Create a jenkins instance using scripts/create-jenkins-instance.sh  
2. Log into your jenkins instance, and install the github plugin.  
3. Create a Freestyle project  
4. Replace the bucket in scripts/jenkins-build.sh
5. Add a build step with the contents of scripts/jenkins-build.sh  
6. Build away!  

### Deployment
1. $ cd playbooks  
2. $ edit hosts to contain your IP addresses
3. $ ansible-playbook playbook.yaml -i hosts --extra-vars "version=BUILD_NUMBER" --private-key=~/.ssh/google_compute_engine
