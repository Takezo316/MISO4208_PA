const express = require("express");
const app = express();
const port = 8080;

const cypress = require("cypress");
const AWS = require("aws-sdk");

const path = require('path')
const fs = require('fs')

const s3 = new AWS.S3({
    region: 'HERE',
    accessKeyId: 'HERE',
    secretAccessKey: 'HERE',
});

const bucket = 'habiticamiso'

let uploadToS3 = (videoPath) => { 
    let fileStream = fs.createReadStream(videoPath)
    fileStream.on('error', function (err) {
        console.log('File Error', err);
    })

    let params = {
        Bucket: bucket,
        Key: path.relative('.', videoPath),
        Body: fileStream
    }

    s3.upload(params, function (err, data) {
        if (err) {
            console.log("Unable to upload to S3")
            console.log(err)
        }else
            console.log("Upload Success", data.Location)
    })

}

app.get("/", (req, res) => {
    res.send("Hello World!");
});

app.post("/test/login", (req, res) => {
    cypress
        .run({
            spec: "cypress/integration/habitica/usuarios/login.spec.js",
        })
        .then((results) => {
            console.log(results);
            console.log("Fin de los resultados");
            uploadToS3(results.runs[0].video)
            res.status(200).send("Subiendo resultados a S3")
        })
        .catch((err) => {
            console.error(err);
            res.status(500).send("Error en el test")
        });
});

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
});
