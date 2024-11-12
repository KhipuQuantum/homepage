# Etapa 1: Construcción de la aplicación Astro
FROM node:latest AS builder

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

# Etapa 2: Servir la aplicación en modo producción con NGINX
FROM nginx:latest

# Copia los archivos generados en la etapa de construcción a la carpeta de NGINX
COPY --from=builder /app/dist /usr/share/nginx/html

# Copia el archivo nginx.conf personalizado a la configuración de NGINX
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto 4120, ya que NGINX está configurado para escuchar en este puerto
EXPOSE 4321
