function docker-nuke-exited
docker rm (docker ps -a -f status=exited -q)
end
