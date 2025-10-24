# Usar la imagen oficial ligera de Nginx
FROM nginx:alpine

# Copiar tu archivo index.html Y LOS OTROS ARCHIVOS al directorio web raíz de Nginx
COPY index.html /usr/share/nginx/html/
COPY a seamless backgroun.png /usr/share/nginx/html/  # <-- COMILLAS ELIMINADAS
COPY cumple_video.mp4 /usr/share/nginx/html/

# Exponer el puerto 80 (puerto estándar HTTP)
EXPOSE 80

# Comando para iniciar Nginx cuando el contenedor arranque
CMD ["nginx", "-g", "daemon off;"]
