echo stopping oramachine$3$1...
docker stop oramachine$3$1
docker rm oramachine$3$1
echo starting oramachine$3$1 from oramachine$3$2 image...
docker run --name oramachine$3$1 -d -p $(($1 + 8000)):8080 -p $(($1 + 2200)):22 -p $(($1 + 1500)):1521 -e ORACLE_ALLOW_REMOTE=true oramachine$2