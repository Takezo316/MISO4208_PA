import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormControl, FormGroup} from '@angular/forms';
import { BaseHttpService } from "../../services/BaseHttpService";
import { AppConfig } from '../../constants/app-config';



@Component({
  selector: 'app-pruebas',
  templateUrl: './pruebas.component.html',
  styleUrls: ['./pruebas.component.css']
})
export class PruebasComponent implements OnInit {


  ngOnInit(): void {
  }

  formGroup: FormGroup;
  hideRequiredControl = new FormControl(false);
  floatLabelControl = new FormControl('auto');
  e2eprueba ="nada";

  constructor(fb: FormBuilder,
    public _HttpService: BaseHttpService
    ) {
    this.formGroup = fb.group({
      e2eprueba: [null],
      hideRequired: this.hideRequiredControl,
      floatLabel: this.floatLabelControl,
    });
  }

  onSubmit(post) {
    console.log( post);
    console.log("e2eprueba",post.e2eprueba);
    
    console.log("entro");
    this._HttpService.postData(AppConfig.URL_Host +'/e2e/usuarios/login').subscribe(cursos => {
      console.log('data', cursos);
      // this.cursos = cursos;
    });
  }

}
