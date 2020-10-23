const express = require('express')
const router = express.Router()

const cypress = require('cypress')
const uploadToS3 = require('../util/upload_to_s3')

const bucket = 'habiticamiso'

let runTest = (request, response, filename) => {
    cypress
        .run({
            spec: filename,
        })
        .then((results) => {
            uploadToS3(results.runs[0].video, bucket, msg => {
                if(msg !== 'error')
                    response.status(200).send(msg)
                else
                    response.status(500).send('Failed to upload video to s3')
            })
        })
        .catch((err) => {
            console.error(err);
            response.status(500).send("Error en el test")
        });
}

router.post("/usuarios/login", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/e2e/usuarios/login.spec.js")
});

router.post("/usuarios/logout", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/e2e/usuarios/logout.spec.js")
});

router.post("/usuarios/registro", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/e2e/usuarios/registro.spec.js")
});

router.post("/tareas/crear", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/e2e/tareas/crear_tareas.spec.js")
});

module.exports = router