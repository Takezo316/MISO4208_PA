import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AppComponent } from './app.component';
import { ChartsModule } from 'ng2-charts';
import { AppRoutingModule } from '../modules/app-routing/app-routing.module';
import { DashboardComponent } from '../components/dashboard/dashboard.component';
import { GraphsComponent } from "../components/graphs/graphs.component";
import { PruebasComponent } from "../components/pruebas/pruebas.component";

import { BarChartComponent } from "../components/graphs/barchart/barchart";
import { BarStackComponent } from "../components/graphs/barchart/barStack.component";
import { ScatterGraphComponent } from "../components/graphs/scatter/scatter.component";
import { AppMaterialModule } from '../modules/app-material/app-material.module';
import { AppAgGridModule } from '../modules/app-ag-grid/app-ag-grid.module';
import { BaseHttpService } from '../services/BaseHttpService';
import { AppSharedService } from '../services/app-shared/app-shared.service';
import { AgGridBaseComponent } from '../components/base/ag-grid-base/ag-grid-base.component';
import { UploadComponent } from '../components/import-wizard/upload/upload.component';
import { HeaderComponent } from '../components/header/header.component';
import { ToolbarComponent } from '../components/toolbar/toolbar.component';
import { FileUploadComponent } from '../components/base/file-upload/file-upload.component';
import { FileUploadModule } from 'ng2-file-upload';
import { HttpClientModule } from '@angular/common/http';
import { ImportDirective } from '../directives/import-wizard/import.directive';
import { FlexLayoutModule } from '@angular/flex-layout';
import { LoginComponent } from '../components/login/login.component';
import { BordereauComponent } from '../components/import-wizard/bordereau/bordereau.component';
import { NameMatchingComponent } from '../components/name-matching/name-matching.component';
import { AgGridCellSelectEditor } from '../components/base/ag-grid-base/ag-grid-components/select-list.editor';
import { AgGridCellSelectRenderer } from '../components/base/ag-grid-base/ag-grid-components/select-list.renderer';
import { BordereauActionsRenderer } from '../components/base/ag-grid-base/ag-grid-components/bordereau-action.renderer';

@NgModule({
    declarations: [
        BarStackComponent,
        PruebasComponent,
        ScatterGraphComponent,
        BarChartComponent,
        AppComponent,
        GraphsComponent,
        AgGridBaseComponent,
        DashboardComponent,
        UploadComponent,
        HeaderComponent,
        ToolbarComponent,
        FileUploadComponent,
        ImportDirective,
        LoginComponent,
        BordereauComponent,
        NameMatchingComponent,
        AgGridCellSelectEditor,
        AgGridCellSelectRenderer,
        BordereauActionsRenderer
    ],
    imports: [
        BrowserModule,
        FormsModule, 
        ChartsModule,
        HttpClientModule,
        AppRoutingModule,
        AppMaterialModule,
        AppAgGridModule,
        FileUploadModule,
        FlexLayoutModule
    ],
    providers: [BaseHttpService, AppSharedService, HttpClientModule],
    entryComponents: [AgGridCellSelectEditor, AgGridCellSelectRenderer, BordereauActionsRenderer, UploadComponent],
    bootstrap: [AppComponent]
})
export class AppModule { }
