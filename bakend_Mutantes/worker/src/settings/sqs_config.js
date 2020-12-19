const AWS = require("aws-sdk");

const sqs = new AWS.SQS({
    region: 'us-east-1',
    accessKeyId: 'AKIA46QBY4US3LVFDGM6',
    secretAccessKey: '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'
})

module.exports = sqs