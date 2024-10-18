FROM node:20.18.0-bullseye-slim

# RUN apk update && apk add git g++ make py3-pip curl

RUN apt-get update && apt-get install -y     python3     make     g++     && rm -rf /var/lib/apt/lists/*
    
WORKDIR /app

COPY yarn.lock package.json ./

RUN yarn --frozen-lockfile --verbose

COPY . .

RUN yarn nx run-many -t build,lint
