const express = require("express");
const app = express();
const port = 8080;

const cypress = require("cypress");
const AWS = require("aws-sdk");

const s3 = new AWS.S3({
    region: process.env.AWS_REGION,
    accessKeyId: process.env.AWS_ACCESS_KEY,
    secretAccessKey: process.env.AWS_SECRET_KEY,
});

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
