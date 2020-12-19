const express = require("express");
const app = express();
const port = 8080;
var shell = require('shelljs');


const cors = require('cors')
const schedule = require('node-schedule')
const path = require('path')

const e2e_router = require('./e2e/e2e_router')
const random_router = require('./random/random_router')
const vrt_router = require('./vrt/vrt_router')
const datagen_router = require('./datagen/datagen_router')

const processQueueMessage = require('./util/queue_messages')

app.use(cors())

app.use('/public', express.static(path.join(__dirname, "../public")));

app.use('/e2e', e2e_router)
app.use('/random', random_router)
app.use('/vrt', vrt_router)
app.use('/datagen', datagen_router)

app.get("/", (req, res) => {
    res.send("Worker for E2E, Random, VRT, DataGen")
})

app.get("/healthcheck", (req, res) => {
    res.sendStatus(200)
})

// Schedule para revisar la cola
// schedule.scheduleJob('*/30 * * * * *', function() {
//     console.log("Looking for messages")
    processQueueMessage()
// })



app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
})
