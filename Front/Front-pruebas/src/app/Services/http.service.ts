import { Injectable } from '@angular/core';
import * as aws from 'aws-sdk';
import { AwsSqsService } from './aws-sqs.service';

@Injectable({
  providedIn: 'root'
})
export class HttpService {
  sqsUrl = "https://sqs.us-east-1.amazonaws.com/142135781414/SQS_Pruebas";

  constructor(private sqs: AwsSqsService) {
    console.log('Se llamo al servicio ');
  }

  sendSQS() {
    console.log("Se evia cola SQS");
  }

  //build and message an SQS queue
  public async sendTestMessage() {
    // this.processing = true;
    // this.sqsResponse = null;
    var messageAttributes: AWS.SQS.MessageBodyAttributeMap = {};

    messageAttributes = this.sqs.addNumberToMessageAttributes(messageAttributes, "TestNumber", 1);

    var sqsResult = await this.sqs.sendMessage(this.sqsUrl, "TEST FROM ANGULAR-ELECTRON-AWS", messageAttributes);
    console.log(sqsResult);
    // this.sqsResponse = sqsResult;
    // this.processing = false;
  }

}
