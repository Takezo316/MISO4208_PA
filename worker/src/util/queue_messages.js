const sqs = require('../settings/sqs_config');

const queueURL = "https://sqs.us-east-1.amazonaws.com/890135700773/automaticascola"
const params = {
    AttributeNames: [
        "SentTimestamp"
    ],
    MaxNumberOfMessages: 10,
    MessageAttributeNames: [
        "All"
    ],
    QueueUrl: queueURL,
    VisibilityTimeout: 20,
    WaitTimeSeconds: 0
}

let sleep = (time) => {
    return new Promise((resolve) => {
        setTimeout(resolve, time)
    })
} 

let processQueueMessage = async () => {
    sqs.receiveMessage(params, async function(err, data) {
        if (err) {
            console.log("Receive Error", err)
        } else if (data.Messages) {
            //TODO
            console.log(data.Messages[0].Body)

            let deleteParams = {
                QueueUrl: queueURL,
                ReceiptHandle: data.Messages[0].ReceiptHandle
            }
            sqs.deleteMessage(deleteParams, function(err1, data1) {
                if (err1) {
                    console.log("Delete Error", err1)
                } else {
                    console.log("Message Deleted", data1)
                }
            })
        } else {
            console.log("No messages in queue")
        }
    })
}

module.exports = processQueueMessage