DOCKER_CREDS=$(aws ssm get-parameter --name /prod/dockerhub --with-decryption | jq '.Parameter.Value' | jq '.|fromjson')
echo $DOCKER_CREDS
DOCKER_USER=$(echo $DOCKER_CREDS | jq -r '.user')
DOCKER_PASS=$(echo $DOCKER_CREDS | jq -r '.token')
echo $DOCKER_USER
echo $DOCKER_PASS
docker login -u $DOCKER_USER -p $DOCKER_PASS
