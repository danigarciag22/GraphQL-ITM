# Utiliza una imagen base adecuada para tu proyecto
FROM node:20

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios de tu proyecto al contenedor
COPY package.json yarn.lock /app/
COPY . /app/

# Instala las dependencias del proyecto utilizando yarn
RUN yarn install

# Expone el puerto en el que se ejecutará tu aplicación
EXPOSE 4000

# Define el comando para ejecutar tu aplicación
CMD ["yarn", "start"]
