import { Injectable } from '@angular/core';
import { Response } from '@angular/http';
import { Observable } from 'rxjs';
// import { Observable } from 'rxjs/Observable';
// import { map, tap, mergeMap, catchError } from 'rxjs/Operators';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable()
export class BaseHttpService {
    constructor(private http: HttpClient) {}

    getData(url: string): Observable<any> {
        return this.http
            .get(url)
            .map(this.extractData)
            .catch(this.handleErrorObservable);
    }

    postData(url: string): Observable<any> {
        return this.http
            .post(url,"")
            .map(this.extractData)
            .catch(this.handleErrorObservable);
    }

    getDataBar(){
        return `[{"tipo_hora":"hora_valle","borough":"Manhattan","promedio_viaje":14.6994430924},{"tipo_hora":"hora_pico","borough":"Bronx","promedio_viaje":12.5871161874},{"tipo_hora":"hora_pico","borough":"Manhattan","promedio_viaje":14.5037380718},{"tipo_hora":"hora_pico","borough":"Unknown","promedio_viaje":19.5984009324},{"tipo_hora":"hora_pico","borough":"Staten Island","promedio_viaje":2.8592368923},{"tipo_hora":"hora_valle","borough":"EWR","promedio_viaje":0.0915353959},{"tipo_hora":"hora_valle","borough":"Unknown","promedio_viaje":20.3005509513},{"tipo_hora":"hora_valle","borough":"Brooklyn","promedio_viaje":17.2559373764},{"tipo_hora":"hora_pico","borough":"Brooklyn","promedio_viaje":19.4709737736},{"tipo_hora":"hora_valle","borough":"Staten Island","promedio_viaje":2.765844134},{"tipo_hora":"hora_pico","borough":"Queens","promedio_viaje":26.2403590876},{"tipo_hora":"hora_valle","borough":"Bronx","promedio_viaje":10.3843907115},{"tipo_hora":"hora_valle","borough":"Queens","promedio_viaje":25.7208539316},{"tipo_hora":"hora_pico","borough":"EWR","promedio_viaje":0.1682988837}]`
    }

    gitDataScatter(){
        return `[
            {
                "borough": "Manhattan",
                "origen": 163,
                "destino": 237
            },
            {
                "borough": "Brooklyn",
                "origen": 65,
                "destino": 87
            },
            {
                "borough": "Manhattan",
                "origen": 236,
                "destino": 229
            },
            {
                "borough": "Manhattan",
                "origen": 262,
                "destino": 74
            },
            {
                "borough": "Manhattan",
                "origen": 75,
                "destino": 161
            },
            {
                "borough": "Manhattan",
                "origen": 249,
                "destino": 132
            },
            {
                "borough": "Manhattan",
                "origen": 48,
                "destino": 48
            },
            {
                "borough": "Manhattan",
                "origen": 237,
                "destino": 74
            },
            {
                "borough": "Manhattan",
                "origen": 107,
                "destino": 137
            }
        ]`
    }

    add(model, url: string): Observable<any> {
        const headers = new HttpHeaders({
            'Content-Type': 'application/json; charset=utf-8',
            // 'Access-Control-Allow-Headers': 'Content-Type',
            // 'Access-Control-Allow-Origin': '*',
            // 'Access-Control-Allow-Methods': 'OPTIONS,POST,GET'
        });
        const options = { headers: headers };
        const body = JSON.stringify(model);
        return this.http
            .post(url, body, options)
            .map(this.extractData)
            .catch(this.handleErrorObservable);
    }

    deleteByBody(model, url: string): Observable<any> {
        const headers = new HttpHeaders({
            'Content-Type': 'application/json; charset=utf-8'
        });
        const options = { headers: headers };

        const body = JSON.parse(model);
        return this.http
            .post(url, body, options)
            .map(this.extractData)
            .catch(this.handleErrorObservable);
    }

    delete(url: string): Observable<any> {
        const headers = new HttpHeaders({
            'Content-Type': 'application/json; charset=utf-8'
        });
        const options = { headers: headers };

        return this.http
            .delete(url, options)
            .map(this.extractData)
            .catch(this.handleErrorObservable);
    }

    edit(model, url: string): Observable<any> {
        const headers = new HttpHeaders({
            'Content-Type': 'application/json; charset=utf-8'
        });
        const options = { headers: headers };
        const body = JSON.stringify(model);
        return this.http
            .put(url, body, options)
            .map(this.extractData)
            .catch(this.handleErrorObservable);
    }

    editByParams(url: string): Observable<any> {
        const headers = new HttpHeaders({
            'Content-Type': 'application/json; charset=utf-8'
        });
        const options = { headers: headers };
        return this.http
            .put(url, '', options)
            .map(this.extractData)
            .catch(this.handleErrorObservable);
    }

    private extractData(res: Response) {
        const body = res;
        return body || {};
    }

    private handleErrorObservable(error: Response | any) {
        console.error(error.message || error);
        return Observable.throw(error.message || error);
    }
}
