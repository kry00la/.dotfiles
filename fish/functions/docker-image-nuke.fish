function docker-image-nuke
docker rmi (docker images -a -q)
end
