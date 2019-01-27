FROM node:alpine
WORKDIR .
# Install app dependencies
COPY package.json .
# Copy project files into the docker image
RUN npm install

# STEP 2 build a small nginx image with static website
FROM nginx:latest

EXPOSE 80
