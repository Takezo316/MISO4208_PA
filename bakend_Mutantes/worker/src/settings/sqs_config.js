const AWS = require("aws-sdk");

const sqs = new AWS.SQS({
    region: 'us-east-1',
    accessKeyId: '',
    secretAccessKey: ''
})

module.exports = sqs