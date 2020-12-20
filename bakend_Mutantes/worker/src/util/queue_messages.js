const axios = require('axios')
const sqs = require('../settings/sqs_config')
const mysql = require('./save_db')
const shell = require('shelljs');
const con = require('./save_db');
const { date } = require('faker');

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
            let comando = 'java -jar ../../scripts/target/MutAPK-2.0.0.jar ../../scripts/parameters/parameters.json | tee Reporte.md';

            console.log("comando: ", comando)
            if (shell.exec(comando).code !== 0) {
                shell.echo('Error: MutApk fail');
                shell.exit(1);
            }
            // Copiar reporte para publicar
            let serial = Date.now();
            let reporte = "Reporte" + serial + ".md"
            let copiPath = "../../../../Reporte/" + reporte;
            shell.cp('-R', 'Reporte.md', copiPath);

            //convertir reporte a tabla md 
            console.log(body.parametros.appName)
            shell.exec('csv2md < ../../scripts/mutantes/me.kuehle.carreport-times.csv > ../../../../Reporte/tabla' + serial + '.md --csvDelimiter=";"');

            //crear archivo comprimido con mutantes
            // tar -zcf reportemutantes.tar.gz mutantes/
            shell.exec('tar -zcf ../../../../Reporte/mutantes' + serial + '.tar.gz ../../scripts/mutantes');


            // publicar reportes 
            shell.exec('git -C ../../../../Reporte/ add .');
            shell.exec('git -C ../../../../Reporte/ commit -m "add ' + reporte + '"');
            shell.exec('git -C ../../../../Reporte/ push origin master');


            // Almacenar Reportes
            let url = 'https://eduarduartes.github.io/Reporte/'
            mysql.query("INSERT INTO `mydb`.`executions_mutantes` (`report`, `tabla`, `mutantes`, `secuencia`) VALUES (?, ?, ?, ?)",
                [url + "Reporte" + serial, url + 'tabla' + serial, url + 'mutantes' + serial + '.tar.gz', serial],
                function (e, r) {
                    if (e)
                        console.log("Error to insert execution", e)
                })


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