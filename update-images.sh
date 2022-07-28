docker build -t tevity/dev:latest -f dev.Dockerfile .
docker build -t tevity/angular-dev:latest -f ./angular/Dockerfile .
docker build -t tevity/nest-dev:latest -f ./nest/Dockerfile .
