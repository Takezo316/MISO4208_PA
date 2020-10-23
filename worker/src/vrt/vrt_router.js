const express = require('express')
const router = express.Router()

const path = require('path')

const cypress = require('cypress')
const compare = require('../util/compare_images')

let runTest = (request, response, filename, img1, img2) => {
    let folder = 'habitica/vrt/'+filename+'/'
    cypress
        .run({
            spec: "cypress/integration/habitica/vrt/"+filename
        })
        .then((results) => {
            let screenFolder = path.join(results.config.screenshotsFolder, folder)
            let image1 = path.join(screenFolder, img1)
            let image2 = path.join(screenFolder, img2)

            compare(image1, image2, data => {
                response.json(data)
            })
        })
        .catch((err) => {
            console.error(err);
            response.status(500).send("Error en el test")
        })
}

router.post("/nombrepublico", (req, res) => {
    runTest(req, res, 'nombre_publico.spec.js', 'nombre_1.png', 'nombre_2.png')
});

router.post("/avatar", (req, res) => {
    runTest(req, res, 'cambiar_avatar.spec.js', 'avatar_1.png', 'avatar_2.png')
});

router.post("/debil", (req, res) => {
    runTest(req, res, 'todo_vs_debil.spec.js', 'debil_1.png', 'debil_2.png')
});

router.post("/fuerte", (req, res) => {
    runTest(req, res, 'todo_vs_fuerte.spec.js', 'fuerte_1.png', 'fuerte_2.png')
});

router.post("/deseos", (req, res) => {
    runTest(req, res, 'todo_vs_deseos.spec.js', 'deseos_1.png', 'deseos_2.png')
});

router.post("/personalizado", (req, res) => {
    runTest(req, res, 'todo_vs_personalizado.spec.js', 'personalizado_1.png', 'personalizado_2.png')
});

router.post("/programado", (req, res) => {
    runTest(req, res, 'todo_vs_programado.spec.js', 'programado_1.png', 'programado_2.png')
});

router.post("/vence", (req, res) => {
    runTest(req, res, 'todo_vs_vence.spec.js', 'vence_1.png', 'vence_2.png')
});

module.exports = router