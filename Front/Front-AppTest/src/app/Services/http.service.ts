import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { map, catchError } from 'rxjs/operators';

import { HttpClient, HttpHeaders, HttpResponse } from '@angular/common/http';

// import * as aws from 'aws-sdk';



@Injectable({
  providedIn: 'root'
})
export class HttpService {
  sqsUrl = "https://sqs.us-east-1.amazonaws.com/142135781414/SQS_Pruebas";
  lamdbaUrl = "https://87yt1rgrp4.execute-api.us-east-1.amazonaws.com/UnderTestingApp";

  constructor(protected http: HttpClient) {
    console.log('Se llamo al servicio ');
  }

  asendSQS() {
    console.log("Se evia cola SQS");
  }
  getTest(): Observable<any> {
    return this.http.get<any>(this.lamdbaUrl);
  }


  sendSQS(): Observable<any> {
    console.log("Se evia cola SQS");
    // const url = this.activitiesUrl + 'preguntaOpcionMultiple/' + id + '/';
    return this.getRequestWithoutParams(this.lamdbaUrl).pipe(
      response => {
        console.log(response);
        return response;
      }, error => {
        console.log(error);
        return error;
      }
    );
  }


  getHeaders(contentType, typeMethod) {
    if (typeMethod === 'post') {
      return new HttpHeaders({
        'Content-Type': contentType
      });
    } else {
      return new HttpHeaders();
    }

  }

  postJSON(url, data): Observable<HttpResponse<string>> {
    return this.http.post<string>(url, data,
      {
        headers: this.getHeaders('application/json', 'post'),
        observe: 'response'
      }
    );
  }

  getRequestWithoutParams(url): Observable<any> {
    return this.http.get(url, {
      headers: this.getHeaders('application/json', 'get'),
      observe: 'response'
    });
  }

  getRequestWithParams(url, data): Observable<any> {
    return this.http.get(url + '?' + this.listParams(data),
      {
        headers: this.getHeaders('application/json', 'get'),
        observe: 'response'
      });
  }
  listParams(data) {
    if (data === '') {
      return '';
    } else {
      return Object.keys(data).map(key => `${key}=${encodeURIComponent(data[key])}`).join('&');
    }
  }

}
