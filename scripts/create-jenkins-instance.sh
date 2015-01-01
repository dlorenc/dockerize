#!/bin/bash
cd "$(dirname "$0")"

# Creates a Jenkins instance with GCS access, running Docker.
gcloud compute instances create jenkins --zone=us-central1-f --scopes=storage-full --image=container-vm-v20141208 --image-project=google-containers --metadata-from-file startup-script=jenkins-startup-script.sh --tags=jenkins

# Opens up port 8080.
gcloud compute firewall-rules create jenkins --allow tcp:8080 --target-tags jenkins