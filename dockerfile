# Dockerfile
FROM nginx:alpine

# Statische Blazor-Dateien kopieren (nach dotnet publish)
COPY ./publish/wwwroot/ /usr/share/nginx/html/

# Optional: eigene nginx.conf für SPA-Routing
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
