# Usar la imagen oficial ligera de Nginx
FROM nginx:alpine

# Copiar tu archivo index.html al directorio web raíz de Nginx
COPY index.html /usr/share/nginx/html/

# Exponer el puerto 80 (puerto estándar HTTP)
EXPOSE 80

# Comando para iniciar Nginx cuando el contenedor arranque
CMD ["nginx", "-g", "daemon off;"]
