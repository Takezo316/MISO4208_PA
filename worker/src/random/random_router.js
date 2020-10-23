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
        });
}

router.post("/screen", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/randomtesting/screen_clicks.spec.js")
});

router.post("/link", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/randomtesting/links_click.spec.js")
});

router.post("/input", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/randomtesting/input_text.spec.js")
});

router.post("/button", (req, res) => {
    runTest(req, res, "cypress/integration/habitica/randomtesting/button_clicks.spec.js")
});

module.exports = router