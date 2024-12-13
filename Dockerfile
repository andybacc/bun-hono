FROM oven/bun:alpine

WORKDIR /app
COPY ./package.json /app/package.json
COPY ./server.js /app/server.js

CMD ["bun", "install"]

ENTRYPOINT [ "bun", "run", "--watch", "server.js" ]