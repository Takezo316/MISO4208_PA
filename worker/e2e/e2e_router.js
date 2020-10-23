const express = require('express')
const router = express.Router()

const cypress = require('cypress')
const uploadToS3 = require('../util/upload_to_s3')

const bucket = 'habiticamiso'

router.post("/usuarios/login", (req, res) => {
    cypress
        .run({
            spec: "cypress/integration/habitica/e2e/usuarios/login.spec.js",
        })
        .then((results) => {
            console.log(results);
            console.log("Fin de los resultados");
            uploadToS3(results.runs[0].video, bucket)
            res.status(200).send("Subiendo resultados a S3")
        })
        .catch((err) => {
            console.error(err);
            res.status(500).send("Error en el test")
        });
});

router.post("/usuarios/logout", (req, res) => {
    cypress
        .run({
            spec: "cypress/integration/habitica/e2e/usuarios/logout.spec.js",
        })
        .then((results) => {
            console.log(results);
            console.log("Fin de los resultados");
            uploadToS3(results.runs[0].video, bucket)
            res.status(200).send("Subiendo resultados a S3")
        })
        .catch((err) => {
            console.error(err);
            res.status(500).send("Error en el test")
        });
});

router.post("/usuarios/registro", (req, res) => {
    cypress
        .run({
            spec: "cypress/integration/habitica/e2e/usuarios/registro.spec.js",
        })
        .then((results) => {
            console.log(results);
            console.log("Fin de los resultados");
            uploadToS3(results.runs[0].video, bucket)
            res.status(200).send("Subiendo resultados a S3")
        })
        .catch((err) => {
            console.error(err);
            res.status(500).send("Error en el test")
        });
});

router.post("/tareas/crear", (req, res) => {
    cypress
        .run({
            spec: "cypress/integration/habitica/e2e/tareas/crear_tareas.spec.js",
        })
        .then((results) => {
            console.log(results);
            console.log("Fin de los resultados");
            uploadToS3(results.runs[0].video, bucket)
            res.status(200).send("Subiendo resultados a S3")
        })
        .catch((err) => {
            console.error(err);
            res.status(500).send("Error en el test")
        });
});

module.exports = router