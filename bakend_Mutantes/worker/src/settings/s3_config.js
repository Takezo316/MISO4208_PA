const AWS = require("aws-sdk");

const s3 = new AWS.S3({
    region: '',
    accessKeyId: '',
    secretAccessKey: '',
})

module.exports = s3