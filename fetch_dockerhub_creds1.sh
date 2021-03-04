DOCKER_TOKEN=$(aws ssm get-parameter --name /prod/dockerhub/token --with-decryption --output text --query Parameter.Value)
echo $DOCKER_TOKEN
# docker login -u pangeamoneytransfer -p $DOCKER_PASS
