function docker-nuke-dangling
docker rmi -f $(docker images -f "dangling=true" -q)
end
