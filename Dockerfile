FROM oven/bun:alpine

COPY package.json /app/package.json
COPY server.js /app/server.js

RUN bun install