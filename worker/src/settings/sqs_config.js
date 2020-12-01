const AWS = require("aws-sdk");

const sqs = new AWS.SQS({
    region: '',
    accessKeyId: '',
    secretAccessKey: ''
})

module.exports = sqs