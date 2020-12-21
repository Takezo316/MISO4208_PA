import { AfterViewInit, Component, ViewChild, OnInit, } from '@angular/core';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';
import { BaseHttpService } from "../../services/BaseHttpService";
import { Router } from '@angular/router';


export interface ReporteMutantes {
  id: number;
  execution_id: number;
  status: string;
  result: string;
  details: string;
  s3_url: string;
}


@Component({
  selector: 'app-informes-bdd',
  templateUrl: './informes-bdd.component.html',
  styleUrls: ['./informes-bdd.component.css']
})
export class InformesBDDComponent implements AfterViewInit, OnInit {

  constructor(
    public _HttpService: BaseHttpService,
    private router: Router
  ) {
    this.datosTabla();
    this._HttpService.getData('http://54.209.187.51:8080/db/results').subscribe(pruebas => {
      console.log('data', pruebas);
      this.dataSource = new MatTableDataSource(pruebas);
      // return pruebas;
    });
   }

   ELEMENT_DATA: ReporteMutantes[] = [
    {
      "id": 1,
      "execution_id": 1,
      "status": "FINISHED",
      "result": "FAILED",
      "details": "10759",
      "s3_url": "https://habiticamiso.s3.amazonaws.com/cypress/videos/habitica/randomtesting/links_click.spec.js.mp4"
  }
  ];
  ngOnInit(): void {
  }

  displayedColumns: string[] = ['id','execution_id','status','result','details','s3_url']  
  dataSource = new MatTableDataSource();

  datosTabla(): any {
  }

  @ViewChild(MatSort) sort: MatSort;

  ngAfterViewInit() {
    this.dataSource.sort = this.sort;
  }

  
}
