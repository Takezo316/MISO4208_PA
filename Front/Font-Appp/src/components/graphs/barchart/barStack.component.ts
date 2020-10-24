import { Component, AfterViewInit } from '@angular/core';
import { BaseHttpService } from "../../../services/BaseHttpService";

interface Datara1_b {
  tipo_hora: string;
  borough: string;
  promedio_viaje: number;
}

@Component({
  selector: 'barStack',
  templateUrl: './barStack.component.html'
})
export class BarStackComponent implements AfterViewInit {

  
  ngOnInit() {
    // alert('parent - ngOnInit')
    let res = this._HttpService.getData('http://mine4102-5.virtual.uniandes.edu.co:5000/get/ra1_a');
    console.log(res);
    this._HttpService.getData('http://mine4102-5.virtual.uniandes.edu.co:5000/get/ra1_a').subscribe(cursos => {
      console.log('data', cursos);
      // this.cursos = cursos;
    });

  }

  ngAfterViewInit() {
    // ...
    console.log("init work");

  };

  constructor(public _HttpService: BaseHttpService) {
    // Create 100 users
    console.log("entro constructor");

    let res = _HttpService.getData('http://mine4102-5.virtual.uniandes.edu.co:5000/get/ra1_a');
    console.log(res);

  };


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
  public barChartData: any[] = [
    { data: [55, 60, 75, 82, 56], label: 'Viajes Internos', stack: 'a' },
    { data: [58, 55, 60, 79, 66], label: 'Viajes Entre Zonas', stack: 'a' }
  ];

  // events
  public chartClicked(e: any): void {
    console.log(e);
  }

  public chartHovered(e: any): void {
    console.log(e);
  }

  public randomize(): void {
    let data = [
      Math.round(Math.random() * 100),
      Math.round(Math.random() * 100),
      Math.round(Math.random() * 100),
      (Math.random() * 100),
      Math.round(Math.random() * 100),
      (Math.random() * 100),
      Math.round(Math.random() * 100)];
    let clone = JSON.parse(JSON.stringify(this.barChartData));
    clone[0].data = data;
    this.barChartData = clone;
  }
}