import { Injectable } from '@angular/core';
// import * as aws from 'aws-sdk';

@Injectable({
  providedIn: 'root'
})
export class HttpService {
  sqsUrl = "https://sqs.us-east-1.amazonaws.com/142135781414/SQS_Pruebas";

  constructor() {
    console.log('Se llamo al servicio ');
  }

  sendSQS() {
    console.log("Se evia cola SQS");
    // // Load the AWS SDK for Node.js
    // // var AWS = require('aws-sdk');
    // // Set the region 
    // aws.config.update({ region: 'REGION' });

    // // Create an SQS service object
    // var sqs = new aws.SQS({ apiVersion: '2012-11-05' });

    // var params = {
    //   // Remove DelaySeconds parameter and value for FIFO queues
    //   DelaySeconds: 10,
    //   MessageAttributes: {
    //     "Title": {
    //       DataType: "String",
    //       StringValue: "The Whistler"
    //     },
    //     "Author": {
    //       DataType: "String",
    //       StringValue: "John Grisham"
    //     },
    //     "WeeksOn": {
    //       DataType: "Number",
    //       StringValue: "6"
    //     }
    //   },
    //   MessageBody: "Information about current NY Times fiction bestseller for week of 12/11/2016.",
    //   // MessageDeduplicationId: "TheWhistler",  // Required for FIFO queues
    //   // MessageGroupId: "Group1",  // Required for FIFO queues
    //   QueueUrl: "SQS_QUEUE_URL"
    // };

    // sqs.sendMessage(params, function (err, data) {
    //   if (err) {
    //     console.log("Error", err);
    //   } else {
    //     console.log("Success", data.MessageId);
    //   }
    // });

  }


}
