const AWS = require("aws-sdk");

const s3 = new AWS.S3({
    region: 'us-east-1',
    accessKeyId: 'AKIA46QBY4USVR2LWSLA',
    secretAccessKey: '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',
})

module.exports = s3