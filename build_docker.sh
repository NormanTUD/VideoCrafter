set -e
export DOCKER_BUILDKIT=1 # required for .dockerignore per Dockerfile

export COMMIT_HASH=1cac500

docker build --build-arg COMMIT_HASH --build-arg USE_XFORMERS=1 -t videocrafter:"${COMMIT_HASH}"-xformers -f docker/Dockerfile docker/
docker tag videocrafter:"${COMMIT_HASH}"-xformers wawa9000/videocrafter:"${COMMIT_HASH}"-xformers
docker tag videocrafter:"${COMMIT_HASH}"-xformers wawa9000/videocrafter:latest-xformers


./download_models.sh
docker build -t videocrafter:"${COMMIT_HASH}"-xformers-full -f docker/models.Dockerfile .
docker tag videocrafter:"${COMMIT_HASH}"-xformers-full wawa9000/videocrafter:"${COMMIT_HASH}"-xformers-full
docker tag videocrafter:"${COMMIT_HASH}"-xformers-full wawa9000/videocrafter:latest-xformers-full

#docker push wawa9000/videocrafter:"${COMMIT_HASH}"-xformers
#docker push wawa9000/videocrafter:latest-xformers
#docker push wawa9000/videocrafter:"${COMMIT_HASH}"-xformers-full
#docker push wawa9000/videocrafter:latest-xformers-full
