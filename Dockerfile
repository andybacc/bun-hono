FROM oven/bun:alpine

WORKDIR /home/bun/app
COPY package.json ./package.json
COPY server.js ./server.js

RUN bun install

ENTRYPOINT [ "bun", "server.js" ]