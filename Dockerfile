FROM microsoft/aspnetcore:2.0

# install nodejs
RUN apt-get update && \
    apt-get install -y gnupg && \
    curl -sL https://deb.nodesource.com/setup_7.x |  bash - && \
    apt-get install -y nodejs && \
    apt-get remove -y gnupg

EXPOSE 80
COPY ./obj/Docker/publish /app/
WORKDIR /app

ENTRYPOINT ["dotnet", "cmdline-angular.dll"]
