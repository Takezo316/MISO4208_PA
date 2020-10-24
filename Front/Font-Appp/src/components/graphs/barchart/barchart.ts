import { Component } from '@angular/core';
import { BaseHttpService } from "../../../services/BaseHttpService";
import { ChartDataSets, ChartType, ChartOptions } from 'chart.js';
import { element } from 'protractor';

interface Datara1_a {
  tipo_hora: string;
  borough: string;
  promedio_viaje: number;
}

@Component({
  selector: 'barchart',
  templateUrl: './barchart.html'
})
export class BarChartComponent {

  constructor(public _httpService: BaseHttpService) {
  }

  dataS = '';
  dataRa1_a: Datara1_a[];

  ngOnInit() {

    // Traer data 
    // let data = this._httpService.getDataBar();
    // let dataRa1_a: Datara1_a[] = JSON.parse(data);
    this._httpService.getData('http://mine4102-5.virtual.uniandes.edu.co:5000/get/ra1_a').subscribe(dataNy => {
      console.log('data', dataNy);
      this.dataRa1_a = dataNy;

      // this.dataRa1_a: = JSON.parse(this.dataS); 
      console.log('this.dataRa1_a: ', this.dataRa1_a);


      //Eliminar ruido
      this.dataRa1_a.forEach((element, index) => {
        if (element.borough === "EWR") {
          this.dataRa1_a.splice(index, 1)
        }
      });
      this.dataRa1_a.forEach((element, index) => {
        if (element.borough === "Unknown") {
          this.dataRa1_a.splice(index, 1)
        }
      });


      //ordenar Array
      this.dataRa1_a.sort(predicateBy("borough"));
      this.dataRa1_a.sort(predicateBy("tipo_hora"));

      //dividir en horas pico y horas valle
      let dataHP = this.dataRa1_a.slice(0, this.dataRa1_a.length / 2)
      let dataHV = this.dataRa1_a.slice(this.dataRa1_a.length / 2)

      console.log("dataHP: ", dataHP);
      console.log("dataHV: ", dataHV);

      //Colocar labels
      this.mbarChartLabels = [];
      dataHP.forEach(element => {
        this.mbarChartLabels.push(element.borough)
      });

      console.log(this.dataRa1_a);

      //cargar datos a la grafica
      this.barChartData[0].label = "Promedio en " + dataHP[0].tipo_hora.replace('_', ' ');
      this.barChartData[0].data = [];
      this.barChartData[1].data = [];
      this.barChartData[1].label = "Promedio en " + dataHV[0].tipo_hora.replace('_', ' ');

      dataHP.forEach(element => {
        this.barChartData[0].data.push(element.promedio_viaje)
      });
      dataHV.forEach(element => {
        this.barChartData[1].data.push(element.promedio_viaje)
      });


      //Funcion para ordenar 
      function predicateBy(prop) {
        return function (a, b) {
          if (a[prop] > b[prop]) {
            return 1;
          } else if (a[prop] < b[prop]) {
            return -1;
          }
          return 0;
        }
      }
    });
  }

  Data: Datara1_a;

  public barChartOptions: any = {
    scaleShowVerticalLines: false,
    responsive: true
  };

  public mbarChartLabels: string[] = ['Queens', 'Brooklyn', 'Staten Island', 'Bronx', 'Manhattan'];
  public barChartType: string = 'bar';
  public barChartLegend: boolean = true;

  public barChartColors: Array<any> = [
    {
      backgroundColor: 'rgba(105,159,177,0.2)',
      borderColor: 'rgba(105,159,177,1)',
      pointBackgroundColor: 'rgba(105,159,177,1)',
      pointBorderColor: '#fafafa',
      pointHoverBackgroundColor: '#fafafa',
      pointHoverBorderColor: 'rgba(105,159,177)'
    },
    {
      backgroundColor: 'rgba(77,20,96,0.3)',
      borderColor: 'rgba(77,20,96,1)',
      pointBackgroundColor: 'rgba(77,20,96,1)',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgba(77,20,96,1)'
    }
  ];
  public barChartData: ChartDataSets[] = [
    { data: [], label: 'Average tarifa en hora pico' },
    { data: [], label: 'Average tarifa en hora valle' }
  ];

  // events
  public chartClicked(e: any): void {
    console.log(e);
  }

  public chartHovered(e: any): void {
    console.log(e);
  }

  public chargeData(): void {


    // let data = [
    //   Math.round(Math.random() * 100),
    //   Math.round(Math.random() * 100),
    //   Math.round(Math.random() * 100),
    //   (Math.random() * 100),
    //   Math.round(Math.random() * 100),
    //   (Math.random() * 100),
    //   Math.round(Math.random() * 100)];
    // let clone = JSON.parse(JSON.stringify(this.barChartData));
    // clone[0].data = data;
    // this.barChartData = clone;
  }
}