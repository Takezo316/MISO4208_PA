const express = require("express");
const app = express();
const port = 8080;

const path = require('path')

const e2e_router = require('./e2e/e2e_router')
const vrt_router = require('./vrt/vrt_router')

app.use('/public', express.static(path.join(__dirname, "../public")));

app.use('/e2e', e2e_router)
app.use('/vrt', vrt_router)

app.get("/", (req, res) => {
    res.send("Worker for E2E, Random, VRT, DataGen")
})

app.get("/healtcheck", (req, res) => {
    res.sendStatus(200)
})

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
})
