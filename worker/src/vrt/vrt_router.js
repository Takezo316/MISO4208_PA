const express = require('express')
const router = express.Router()

const path = require('path')

const cypress = require('cypress')
const compare = require('../util/compare_images')

router.post("/nombrepublico", (req, res) => {
    let folder = 'habitica/vrt/nombre_publico.spec.js/'
    cypress
        .run({
            spec: "cypress/integration/habitica/vrt/nombre_publico.spec.js",
        })
        .then((results) => {
            let screenFolder = path.join(results.config.screenshotsFolder, folder)
            let image1 = path.join(screenFolder, 'nombre_1.png')
            let image2 = path.join(screenFolder, 'nombre_2.png')

            compare(image1, image2, data => {
                res.json(data)
            })
        })
        .catch((err) => {
            console.error(err);
            res.status(500).send("Error en el test")
        });
});

module.exports = router