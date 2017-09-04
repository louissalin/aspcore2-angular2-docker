# aspcore2-angular2-docker

This project is mainly for future reference. It's a basic Angular 2 app created using `dotnet new angular` with an added Dockerfile.

### to run locally

> dotnet restore
> npm install
> dotnet run

### to publish

> dotnet publish -c Release -o .obj/Docker/publish

this will create a obj/Docker/publish directory with all the files necessary to run the app. The Dockerfile will copy those files into the container.

> docker build -t aspcore2 .

### to run the docker container

> docker run --rm --name web -p 80:80 aspcore2


