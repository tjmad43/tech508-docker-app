# from which image (Node v20)
FROM node:20-alpine

# label (metadata)
LABEL description="Sparta app - front page only" 

# set the defult working directory to /usr/src/app
WORKDIR /usr/src/app

# copy app folder (from folder with Dockerfile, copy to default location in container)
COPY app /usr/src/app
# (can do COPY app ./app since working dir already set)

COPY app/package*.json ./

# install dependencies with npm
RUN npm install

# expose port
EXPOSE 3000

CMD ["npm", "start"]