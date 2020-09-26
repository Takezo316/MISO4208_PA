import { Component, OnInit } from '@angular/core';
import {ApplicationsService} from '../Services/applications.service';
import {ApplicationsDto} from '../data/ApplicationsDto';
import { HttpService } from '../Services/http.service'

@Component({
  selector: 'app-execute-test',
  templateUrl: './execute-test.component.html',
  styleUrls: ['./execute-test.component.css']
})
export class ExecuteTestComponent implements OnInit {

  applications:Array<ApplicationsDto>;
  applicationSelect:ApplicationsDto;

  constructor(
    public applicationsService: ApplicationsService,
    private httpService: HttpService
  ) { }

  ngOnInit() {
    this.applications = this.applicationsService.getApplications();
  }

  public selectAplication(application) {    
    this.applicationSelect = this.applications.filter((item) => item.name == application)[0];
    console.log("SELECCION: ", JSON.stringify(this.applicationSelect));
  }


  executeTest() {
    console.log(this.applicationSelect);
    this.httpService.sendSQS();
    // this.httpService.sendTestMessage();
    console.log("ojo",this.httpService.getTest());
    this.httpService.getTest().subscribe(data => {
      console.log('data', data);
    });
  }

}
