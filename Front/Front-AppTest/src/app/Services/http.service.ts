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

    
  }


}
