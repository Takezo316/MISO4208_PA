const path = require('path')
const fs = require('fs')

const s3 = require('../settings/s3_config')

let uploadToS3 = (videoPath, bucketName, callback) => {
    let fileStream = fs.createReadStream(videoPath)
    fileStream.on('error', function (err) {
        console.log('File Error', err);
        callback('error')
    })

    let params = {
        Bucket: bucketName,
        Key: path.relative('.', videoPath),
        Body: fileStream
    }

    s3.upload(params, function (err, data) {
        if (err) {
            console.log("Unable to upload to S3")
            console.log(err)
            callback('error')
        }else {
            console.log("Upload Success", data.Location)
            callback(data.Location)
        }
    })

}

module.exports = uploadToS3