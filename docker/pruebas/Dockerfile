# Usa la imagen de Nginx
FROM nginx:latest

WORKDIR .
# Copia los archivos estáticos de tu aplicación al directorio de Nginx
COPY . /usr/share/nginx/html

# El puerto 80 ya está expuesto por la imagen de Nginx por defecto
EXPOSE 3000
