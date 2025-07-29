FROM mcr.microsoft.com/dotnet/aspnet:9.0
WORKDIR /app
COPY ./publish ./
ENV ASPNETCORE_URLS=http://0.0.0.0:5073
EXPOSE 5073
ENTRYPOINT ["dotnet", "ITQuizFrontend.dll"]

