FROM ubuntu:latest
WORKDIR /Devops
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y nodejs npm
COPY ./package.json .
COPY ./package-lock.json .
RUN npm install
COPY ./app.js .