for node in $(seq 0 2); do
	gcloud compute instances create node-$node --zone=us-central1-f --scopes=storage-full --image=container-vm-v20141208 --image-project=google-containers --tags=nodes
done