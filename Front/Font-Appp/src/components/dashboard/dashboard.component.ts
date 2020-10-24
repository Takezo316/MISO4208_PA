import { Component, OnInit } from '@angular/core';
import { MockData } from '../../constants/mock-data';
import { MatDialog } from '@angular/material/dialog';
import { DashboardService } from './dashboard.service';
import { BaseHttpService } from "../../services/BaseHttpService";


@Component({
    selector: 'app-dashboard',
    templateUrl: './dashboard.component.html',
    styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {
    selectedTabIndex: number | null = 0;
    bxViewcolumnDefs = MockData.agGridColumnDefs_homeScreen;
    bxViewrowData = MockData.agGridRowDefs_homeScreen;
    workFlowViewcolumnDefs = [];
    workFlowViewrowData = [];
    dialogConfiguration = {
        width: '2000px',
        height: '900px',
        data: null,
        disableClose: true
    };

    constructor(
        public _httpService: BaseHttpService, public dialog: MatDialog,
        public dashboardService: DashboardService
    ) { }

    ngOnInit() {
        this.getWfGridData();
        this._httpService.getData('http://mine4102-5.virtual.uniandes.edu.co:5000/get/ra1_b')
            .subscribe(dataNy => {
                console.log('data', dataNy);
                this.bxViewrowData = dataNy;
            });
    }

    onAddTowerClick($event: any) {
        this.openDialog();
    }

    openDialog() { }

    getWfGridData() {
        const colDef: any[] = MockData.agGridColumnDefs_WF;

        colDef.map(column => {
            column.headerName = column.field;
        });
        console.log("colDef: ", colDef);
        console.log("MockData.agGridRowData_WF: ", MockData.agGridRowData_WF);
        console.log("MockData: ", MockData);

        this._httpService.getData('http://mine4102-5.virtual.uniandes.edu.co:5000/get/ra1_a')
            .subscribe(dataNy => {
                console.log('data', dataNy);
                // this.bxViewrowData = dataNy;
                this.workFlowViewrowData = dataNy;
            });
            
        this.workFlowViewcolumnDefs = colDef;
        // this.workFlowViewrowData = MockData.agGridRowData_WF;
    }
}
