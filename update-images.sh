docker build -t tevity/dev:latest -f dev.Dockerfile .
docker build -t tevity/angular-dev:latest -f ./angular/Dockerfile .
docker build -t tevity/nest-dev:latest -f ./nest/Dockerfile .
docker system prune -f
docker rmi $(docker images --filter=reference="vsc*" -q) -f
docker rmi $(docker images -f "dangling=true" -q)

podman build -t tevity/dev:latest -f dev.Dockerfile .
podman build -t tevity/angular-dev:latest -f ./angular/Dockerfile .
podman build -t tevity/nest-dev:latest -f ./nest/Dockerfile .
podman system prune -f
podman rmi $(podman images --filter=reference="vsc*" -q) -f
podman rmi $(podman images -f "dangling=true" -q)
