docker build -t tevity/dev:latest -f dev.Dockerfile .
docker build -t tevity/angular-dev:latest -f ./angular/Dockerfile .
docker build -t tevity/nest-dev:latest -f ./nest/Dockerfile .
docker rmi $(docker images --filter=reference="vsc*" -q) -f
docker rmi $(docker images -f "dangling=true" -q)
