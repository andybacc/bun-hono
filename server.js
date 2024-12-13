import { Hono } from "hono";
const app = new Hono();

console.log(`Listening on localhost:3000`);

app.get("/", c => c.text("Hono!"));

export default app;
  