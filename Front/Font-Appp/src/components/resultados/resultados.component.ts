import { AfterViewInit, Component, ViewChild, OnInit, } from '@angular/core';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';
import { BaseHttpService } from "../../services/BaseHttpService";
import { Router } from '@angular/router';


export interface ReporteMutantes {
  id: number;
  secuencia: string;
  create_at: string;
  report: string;
  tabla: string;
  mutantes: string;
}





@Component({
  selector: 'app-resultados',
  templateUrl: './resultados.component.html',
  styleUrls: ['./resultados.component.css']
})
export class ResultadosComponent implements AfterViewInit, OnInit {

  constructor(
    public _HttpService: BaseHttpService,
    private router: Router
  ) {
    this.datosTabla();
    this._HttpService.getData('https://9siqvn4neb.execute-api.us-east-1.amazonaws.com/pruebas/mutantes').subscribe(pruebas => {
      console.log('data', pruebas);
      this.dataSource = new MatTableDataSource(pruebas);
      // return pruebas;
    });
  }

  ELEMENT_DATA: ReporteMutantes[] = [

    {
      "report": "https://eduarduartes.github.io/Reporte/Reporte1608490176373",
      "tabla": "https://eduarduartes.github.io/Reporte/tabla1608490176373",
      "mutantes": "https://eduarduartes.github.io/Reporte/mutantes1608490176373.tar.gz",
      "secuencia": "1608490176373",
      "create_at": "2020-12-20T18:49:45.000Z",
      "id": 7
    },
    {
      "report": "https://eduarduartes.github.io/Reporte/Reporte1608493302533",
      "tabla": "https://eduarduartes.github.io/Reporte/tabla1608493302533",
      "mutantes": "https://eduarduartes.github.io/Reporte/mutantes1608493302533.tar.gz",
      "secuencia": "1608493302533",
      "create_at": "2020-12-20T19:41:52.000Z",
      "id": 8
    }
  ];
  ngOnInit(): void {
  }

  displayedColumns: string[] = ['id', 'secuencia', 'create_at', 'report', 'tabla', 'mutantes'];
  dataSource = new MatTableDataSource();

  datosTabla(): any {
  }

  @ViewChild(MatSort) sort: MatSort;

  ngAfterViewInit() {
    this.dataSource.sort = this.sort;
  }

}
