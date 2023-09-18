FROM node:18

#Dockerfile
#Image
#Container

WORKDIR /app
COPY package.json /app
RUN npm install
COPY ./ /app
CMD ["npm", "start"]

