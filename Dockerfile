# Usa una imagen base oficial de Node.js
FROM node:22-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto del código de tu proyecto
COPY . .

# Compila tu proyecto Astro para producción
RUN npm run build

# Exponer el puerto en el que la aplicación correrá
EXPOSE 4321

# Comando para ejecutar el servidor de Astro en el puerto 4321
CMD ["npm", "run", "start"]
