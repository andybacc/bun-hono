import { Hono } from "hono";

const app = new Hono().basePath('/api');

app.get("/", (c) => {
    c.send("Hello World");
});

app.onError((err, c) => {
    console.log(err)
    if (err instanceof HTTPException) {
        return c.json({ error: err.message }, err.status)
    } else {
        return c.json({ error: 'Internat server error' }, 500)
    }
})

export default {
    port: 3000,
    fetch: app.fetch,
}