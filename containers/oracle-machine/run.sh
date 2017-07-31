echo stopping oramachine$1...
docker stop oramachine$1
docker rm oramachine$1
echo starting oramachine$1
docker run --name oramachine$1 -d -p $(($1 + 8000)):8080 -p $(($1 + 2200)):22 -p $(($1 + 1500)):1521 -e ORACLE_ALLOW_REMOTE=true -v F:/docker/devops-tools/containers/oracle-machine/dumps/:/dumps2 oramachine$2