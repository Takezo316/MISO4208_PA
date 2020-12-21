const resemble = require('resemblejs')

const fs = require('fs');
const path = require('path')

let compare = (path1, path2, callback) => {
    let currentDate = Date.now()

    let img1 = path.resolve(__dirname, path1)
    let img2 = path.resolve(__dirname, path2)

    let img1New = path.resolve(__dirname, '../../public/images/path1_' + currentDate.toString() + '.png')
    let img2New = path.resolve(__dirname, '../../public/images/path2_' + currentDate.toString() + '.png')

    fs.renameSync(img1, img1New)
    fs.renameSync(img2, img2New)

    let file1 = fs.readFileSync(img1New)
    let file2 = fs.readFileSync(img2New)

    let diff = resemble(file1).compareTo(file2).onComplete((data) => {
        let diffImg = path.resolve(__dirname, '../../public/images/diff_' + currentDate.toString() + '.png')
        fs.writeFileSync(diffImg, data.getBuffer())
        console.log(data)
        callback({
            img1: path.relative('.', img1New),
            img2: path.relative('.', img2New),
            diff: path.relative('.', diffImg),
            misMatchPercentage: data.misMatchPercentage
        })
    })
}

module.exports = compare