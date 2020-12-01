const express = require("express");
const app = express();
const port = 8080;

const cors = require('cors')

const path = require('path')

const e2e_router = require('./e2e/e2e_router')
const random_router = require('./random/random_router')
const vrt_router = require('./vrt/vrt_router')
const datagen_router = require('./datagen/datagen_router')

const sqs = require('./settings/sqs_config')

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

app.get("/getmessage", (req, res) => {

    let queueURL = "https://sqs.us-east-1.amazonaws.com/890135700773/automaticascola"

    var params = {
        AttributeNames: [
            "SentTimestamp"
        ],
        MaxNumberOfMessages: 10,
        MessageAttributeNames: [
            "All"
        ],
        QueueUrl: queueURL,
        VisibilityTimeout: 20,
        WaitTimeSeconds: 0
    };

    sqs.receiveMessage(params, function(err, data) {
        if (err) {
            console.log("Receive Error", err)
            return res.sendStatus(500)
        } else if (data.Messages) {
            console.log(data)
            console.log('___________________________________________________')
            console.log(data.Messages[0].Body)
            let deleteParams = {
                QueueUrl: queueURL,
                ReceiptHandle: data.Messages[0].ReceiptHandle
            }
            sqs.deleteMessage(deleteParams, function(err, data) {
                if (err) {
                    console.log("Delete Error", err)
                    return res.sendStatus(500)
                } else {
                    console.log("Message Deleted", data)
                    return res.send(data).status(200)
                }
            })
        }
    })
})

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
})
