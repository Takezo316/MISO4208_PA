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
                    response.status(200).json({video:msg})
                else
                    response.status(500).send('Failed to upload video to s3')
            })
        })
        .catch((err) => {
            console.error(err);
            response.status(500).send("Error en el test")
        })
}

router.post("/habitos", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/datagen/fake_habitos.spec.js")
})

router.post("/diarias", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/datagen/fake_diarias.spec.js")
})

router.post("/pendientes", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/datagen/fake_pendiente.spec.js")
})

router.post("/recompensas", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/datagen/fake_recompensa.spec.js")
})

module.exports = router