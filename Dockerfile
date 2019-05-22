# Base MicroService Builder
ARG MICROSERVICE = # WORKDIR /.



FROM FROM microsoft/dotnet:2.2-aspnetcore-runtime
WORKDIR {$MICROSERVICE}
