import { Component } from '@angular/core';
import { BaseHttpService } from "../../../services/BaseHttpService";
import { ChartDataSets, ChartType, ChartOptions, ChartPoint, ChartColor } from 'chart.js';


interface Datara1_b {
    borough: string;
    origen: number;
    destino: number;
}

@Component({
    selector: 'scatter-graph',
    templateUrl: './scatter.component.html',
})
export class ScatterGraphComponent {

    constructor(public _httpService: BaseHttpService) {

    }

    ngOnInit() {
        let dataRa1_b: Datara1_b[];
        let dataScatterPlot: any = [];
        let backgroundColor= [ "rgba(255,99,132,0.6)"​,   "rgba(54,162,235,0.6)", "rgba(255,206,86,0.6)",
                               "rgba(231,233,237,0.6)", "rgba(75,192,192,0.6)"
                                ​​​]
                                ​​​

        this._httpService.getData('http://mine4102-5.virtual.uniandes.edu.co:5000/get/ra1_b').subscribe(dataScatter => {
            dataRa1_b = dataScatter;

            //ordenar Array
            dataRa1_b.sort(predicateBy("borough"));
            console.log('dataScatter', dataScatter);

            //separar por borough
            let dataSplit = [];
            dataRa1_b.forEach((element, index) => {
                if (index < dataRa1_b.length - 1 && element.borough.localeCompare(dataRa1_b[index + 1].borough)) {
                    dataSplit.push(index)
                }
            });
            console.log(dataSplit);
            let largo = dataSplit.length - 1;
            dataSplit.forEach(elem => {
                dataScatterPlot.push(dataRa1_b.splice(dataSplit[largo] + 1));
                largo--;
            });

            console.log("dataScatterPlot: ", dataScatterPlot, " dataSplit[largo] ", dataSplit[largo]);

            //Eliminar ruido
            dataScatterPlot.forEach((element, index) => {
                if (element[0].borough === "EWR") {
                    dataScatterPlot.splice(index, 1)
                }
            });
            dataScatterPlot.forEach((element, index) => {
                if (element[0].borough === "Unknown") {
                    dataScatterPlot.splice(index, 1)
                }
            });
            //Elimnar unkanowk and emr
            // dataScatterPlot.splice(0, 1);
            // dataScatterPlot.splice(2, 1);

            console.log("dataScatterPlot: ", dataScatterPlot, " dataSplit[largo] ", dataSplit[largo]);


            // Cargar data
            dataScatterPlot.forEach((element: Datara1_b[], index) => {
                let aux: ChartDataSets = { data: [] };
                // let color: ChartColor[]=[];
                aux.pointRadius = 10;
                aux.label = element[index].borough;
                // console.log("element[0].borough: ", element[index].borough);
                
                //formato
                aux.backgroundColor = backgroundColor[index];
                aux.pointBackgroundColor = backgroundColor[index];
                aux.pointHoverBackgroundColor = backgroundColor[index];
                
                element.forEach((elem: Datara1_b, ind) => {
                    let auxPoint: ChartPoint = {};
                    auxPoint.x = elem.origen;
                    auxPoint.y = elem.destino;
                    auxPoint.r = 10;
                    aux.data[ind] = auxPoint;
                });

                if(index===0){
                    this.chartData[0] =aux;
                }else{
                    this.chartData.push(aux);
                }
            });

            console.log("this.chartData",this.chartData);
            // chargeDataScatter.push({data: {x=2, y = element[0].destino}, label: element[0].borough,  pointRadius: 10,   } )

            // });



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



    public ZoneLabels: string[] = ['', 'Queens', 'Brooklyn', 'Staten Island', 'Bronx', 'Manhattan'];
    public chartType: ChartType = 'scatter';

    // scatter
    public scatterChartOptions: ChartOptions = {
        responsive: true,
        tooltips: {
            callbacks: {
                label: (item, data) => {
                    console.log(item);
                    return 'Recorrido: ' + item.xLabel + ' to ' + item.yLabel;
                    // return 'Recorrido: ' + this.ZoneLabels[item.xLabel] + ' to ' + this.ZoneLabels[item.yLabel]

                }
            }
        },
        scales: { //you're missing this
            yAxes: [{
                scaleLabel: {
                    display: true,
                    labelString: 'Locations ORIGNS'
                },
                ticks: {
                    // stepSize: 1,
                    beginAtZero: true
                }
            }],
            xAxes: [{
                scaleLabel: {
                    display: true,
                    labelString: 'Locations DESTINOS​'
                },
                ticks: {
                    // stepSize: 1,
                    beginAtZero: true
                }
            }]
        },
    };

    chartData: ChartDataSets[] = [
        {
            data: [
                { x: 1, y: 1, r: 100 },
            ],
            label: 'Queens​',
            pointRadius: 10,
        },

    ];
}




/* TypeError: cyclic object value 
this.chartData 
(4) […]
​
0: {…}
​​
_meta: Object { 1: {…} }
​​
backgroundColor: (5) […]
​​​
0: "rgba(255,99,132,0.6)"
​​​
1: "rgba(54,162,235,0.6)"
​​​
2: "rgba(255,206,86,0.6)"
​​​
3: "rgba(231,233,237,0.6)"
​​​
4: "rgba(75,192,192,0.6)"
​​​
length: 5
​​​
<prototype>: Array []
​​
borderColor: Array(5) [ "#fff", "#fff", "#fff", … ]
​​
data: Array(5) [ {…}, {…}, {…}, … ]
​​
label: "Borough 1​"
​​
pointBackgroundColor: Array(5) [ "rgba(255,99,132,1)", "rgba(54,162,235,1)", "rgba(255,206,86,1)", … ]
​​
pointBorderColor: Array(5) [ "#fff", "#fff", "#fff", … ]
​​
pointHoverBackgroundColor: Array(5) [ "rgba(255,99,132,1)", "rgba(54,162,235,1)", "rgba(255,206,86,1)", … ]
​​
pointHoverBorderColor: Array(5) [ "rgba(255,99,132,1)", "rgba(54,162,235,1)", "rgba(255,206,86,1)", … ]
​​
pointRadius: 10
​​
<prototype>: Object { … }
​
1: Object { data: (413) […], pointRadius: 10, label: "Queens", … }
​
2: Object { data: (4378) […], pointRadius: 10, label: "Manhattan", … }
​
3: Object { data: (116) […], pointRadius: 10, label: "Brooklyn", … }
​
length: 4
​
<prototype>: Array []
scatter.component.ts:86:20
*/