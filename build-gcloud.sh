image="$1/$2/$3"
cd image
echo "Build image: $image"
docker build -t $image .
echo "Push image for google cloud"
docker push $image
echo "Delete image $image"
docker rmi "$image"
echo "Build image for Gcloud done: $image"
