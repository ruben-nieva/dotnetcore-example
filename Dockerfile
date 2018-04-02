FROM registry.access.redhat.com/dotnet/dotnet-20-runtime-rhel7
 
WORKDIR /app
COPY /app/out .

RUN pwd; ls -l
 
EXPOSE 5000
ENV ASPNETCORE_URLS http://*:5000
ENV ASPNETCORE_ENVIRONMENT docker
 
ENTRYPOINT ["dotnet", "app.dll"]
