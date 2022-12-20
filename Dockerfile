# Filename: Dockerfile 
FROM node:19-alpine
RUN apk add  --no-cache ffmpeg
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]