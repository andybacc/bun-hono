FROM oven/bun:alpine

WORKDIR /app
COPY package.json /app/package.json
COPY server.js /app/server.js

RUN bun install

ENTRYPOINT [ "bun", "server.js" ]