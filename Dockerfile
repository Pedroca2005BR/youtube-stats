# Gets the base image for this image. In this case, node with debian:latest
FROM node:13.12.0-stretch

# Runs a command line. In this case, it creates directories
RUN mkdir -p /app/src

# Sets the working directory as /app/src
WORKDIR /app/src

# Copies the file package.json to the working directory
COPY package.json .

# Instala o npm no working directory
RUN npm install

# Copia tudo na pasta atua para o working directory
COPY . .

# Expoem a porta desejada
EXPOSE 3000

# Another way to run terminal lines
CMD [ "npm", "start" ]

