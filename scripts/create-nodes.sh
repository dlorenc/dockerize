for node in $(seq 0 2); do
	gcloud compute instances create node-$node --zone=us-central1-f --scopes storage-full compute-rw --image=container-vm-v20141208 --image-project=google-containers --tags=nodes
done
gcloud compute firewall-rules create nodes --allow tcp:80 --target-tags nodes
gcloud compute target-pools add-instances webservers --zone=us-central1-f --instances node-0 node-1 node-2
gcloud compute forwarding-rules create webserversrule --target-pool webservers --region=us-central1