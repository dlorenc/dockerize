# This script should be inserted into the Jenkins UI as a build step.
cd app/

IMAGE=dockerize_$BUILD_NUMBER
# Build the Docker image
docker build -t $IMAGE .
# Save it to a tar.gz
docker save $IMAGE > gzip > $IMAGE.tar.gz
docker rmi $IMAGE
# Upload it to GCS
gsutil cp $IMAGE.tar.gz gs://dockerize-builds/
rm $IMAGE.tar.gz