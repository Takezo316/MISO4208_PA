const axios = require('axios')
const sqs = require('../settings/sqs_config')
const mysql = require('./save_db')
const shell = require('shelljs');

const queueURL = "https://queue.amazonaws.com/890135700773/QueueMutantes"
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
    sqs.receiveMessage(params, async function (err, data) {
        if (err) {
            console.log("Receive Error", err)
        } else if (data.Messages) {
            console.log("Message incoming")
            // console.log("data:",data);
            let body = JSON.parse(data.Messages[0].Body)
            console.log("body:", body);

            // Generar mutantes
            shell.exec('cd c:'); //muestra el dir actual
            let comando = 'java -jar ../../scripts/target/MutAPK-2.0.0.jar ../../scripts/parameters/parameters.json | tee ';
            comando.concat("verReporte.md")
            if (shell.exec(comando).code !== 0) {
                shell.echo('Error: MutApk fail');
                shell.exit(1);
            }
            shell.exec('ls');
            shell.cp('-R', 'reporteEd.md', '../../../../Reporte/ojo.md');
            shell.exec('cd ../../../../');

            // let executionIndex = -1
            // mysql.query("INSERT INTO `mydb`.`executions` (`app_ver_id`, `test_feature_id`, `user_id`, `created_at`) VALUES (?, ?, ?, NOW())", ['1', '1', '1'], function(e, r) {
            //     if(e)
            //         console.log("Error to insert execution", e)
            //     else {
            //         executionIndex = r.insertId
            //         mysql.query("INSERT INTO executions_status (`execution_id`, `status`, `result`, `details`, `s3_url`) VALUES (?, 'PENDING', 'null', 'null', 'null')", [r.insertId], function(e1, r1) {
            //             if(e1)
            //                 console.log("Error to insert execution_status", e1)
            //         })

            //         axios.post(body.path).then(res => {
            //             //console.log(res.data)

            //             let sql = "UPDATE `mydb`.`executions_status` SET `status` = 'PASSED', `result` = 'TODO', `details` = 'TODO', `s3_url` = 'TODO' WHERE (`id` = ?)"
            //             mysql.query(sql, [executionIndex], function(err3, result) {
            //                 if(err3)
            //                     console.log("Error to update execution_status")
            //                 console.log(result)
            //             })

            //         }).catch(fatal => {
            //             //Save error to db
            //             console.log("Error", fatal)
            //         })
            //     }
            // })

            //Delete message
            let deleteParams = {
                QueueUrl: queueURL,
                ReceiptHandle: data.Messages[0].ReceiptHandle
            }
            sqs.deleteMessage(deleteParams, function (err1, data1) {
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