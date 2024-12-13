FROM oven/bun:alpine

WORKDIR /app
COPY ./package.json ./package.json
COPY ./server.js ./server.js

CMD ["bun", "install"]

ENTRYPOINT [ "bun", "run", "--watch", "server.js" ]