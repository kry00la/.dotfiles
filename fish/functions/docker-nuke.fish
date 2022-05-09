function docker-nuke
docker stop (docker ps -aq)
docker rm (docker ps -aq)
echo "nuked...."
end
