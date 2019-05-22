# MicroService Node Builder 
# Source: https://dotnet.microsoft.com/learn/web/aspnet-microservice-tutorial/docker-file with Modifications

FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /src/services/{$MICROSERVICE}

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src/services/Account/Account.API/
COPY myMicroservice.csproj myMicroservice/
RUN dotnet restore myMicroservice/myMicroservice.csproj
WORKDIR /src/myMicroservice
COPY . .
RUN dotnet build myMicroservice.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish myMicroservice.csproj -c Release -o /app

FROM base AS final
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Account.dll"]