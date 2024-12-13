FROM oven/bun:alpine

WORKDIR /app
COPY ./package.json ./package.json
CMD ["bun", "install"]

ENTRYPOINT [ "bun", "run", "--watch", "server.js" ]