import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';
import { BaseHttpService } from "../../services/BaseHttpService";
import { AppConfig } from '../../constants/app-config';
import { Router } from '@angular/router';
import { ThemePalette } from '@angular/material/core';
import swal from 'sweetalert2';


export interface Task {
  name: string;
  state: boolean;
  color: ThemePalette;
  subtasks?: Task[];
}
export interface Body {
  body: {
    parametros: any;
    estrategia: Task[];
    operadores: Task[];
  }
}
export interface selPrueba {
  idtest_feature: number,
  name: string,
  path: string,
  test_type_id: number
}

@Component({
  selector: 'app-pruebas',
  templateUrl: './pruebas.component.html',
  styleUrls: ['./pruebas.component.css']
})
export class PruebasComponent implements OnInit {


  ngOnInit(): void {
    this._HttpService.getData('https://9siqvn4neb.execute-api.us-east-1.amazonaws.com/pruebas').subscribe(pruebas => {
      console.log('data', pruebas);
      this.listaPruebas = pruebas;
    });
  }
  state = {
    'key': 'value',
  }

  listaPruebas: selPrueba[] = [
    {
      idtest_feature: 1,
      name: "Login usuario",
      path: "http://localhost:8080/e2e/usuarios/login",
      test_type_id: 1
    },
   
  ]


  formGroupDBB: FormGroup;

  formGroup: FormGroup;
  hideRequiredControl = new FormControl(false);
  floatLabelControl = new FormControl('auto');
  e2eprueba = "nada";

  constructor(fb: FormBuilder,
    public _HttpService: BaseHttpService,
    private router: Router
  ) {
    this.formGroup = fb.group({
      appName: [null],
      apkPath: [null],
      //selectionParameters
      multithreadExec: true,
      ignoreDeadCode: true,
      amountMutants: "35",
      perOperator: false,
      confidenceLevel: "85",
      marginError: "10",
      baseAPKPath: "./",
      hideRequired: this.hideRequiredControl,
      floatLabel: this.floatLabelControl,
    });

    
    this.formGroupDBB = fb.group({
      path: [null],
      hideRequired: this.hideRequiredControl,
      floatLabel: this.floatLabelControl
    });
  }

  onSubmitD(post) {

    //alert
    swal.fire('Hello world!')

    // Swal.fire('la prueba se realizo exitosamente','sfdsf','success')

    // codigo para consumir directo

    console.log(post);
    console.log("e2eprueba", post.e2eprueba);
    this.router.navigateByUrl('https://habiticamiso.s3.amazonaws.com/cypress/videos/habitica/datagen/fake_diarias.spec.js.mp4');

    console.log("entro");
    this._HttpService.postData(AppConfig.URL_Host + '/datagen/' + post.e2eprueba).subscribe(cursos => {
      console.log('data', cursos);
      this.router.navigateByUrl('//dashboard/' + cursos.video);
      swal.fire('la prueba se realizo exitosamente', 'ver video: ' + cursos.video, 'success')

      // this.cursos = cursos;
    });
  }

  onSubmitBDD(post){
    swal.fire('OK', 'Se inicio la ejecución de la prueba!', 'success')
    let body: any = {
      body: {
        path: post.path,
      }
    };

    this._HttpService.add(body, 'https://9siqvn4neb.execute-api.us-east-1.amazonaws.com/pruebas').subscribe(postSQS => {
      console.log('data', postSQS);
    });
  }

  onSubmit(post) {

    //alert
    swal.fire('OK', 'Se inicio la generación de los Mutantes!', 'success')

    // this.router.navigateByUrl('//dashboard', { state: this.state });
    console.log("post", post);
    console.log("estrategiaP", this.task.subtasks);
    console.log("operadores", this.operadores.subtasks);
    let body: Body = {
      body: {
        parametros: post,
        estrategia: this.task.subtasks,
        operadores: this.operadores.subtasks
      }
    };

    console.log(body);

    this._HttpService.add(body, 'https://87yt1rgrp4.execute-api.us-east-1.amazonaws.com/UnderTestingApp').subscribe(cursos => {
      console.log('data', cursos);
      // this.cursos = cursos;
    });


    //codigo para consumir directo

    // console.log( post);
    // console.log("e2eprueba",post.e2eprueba);

    // console.log("entro");
    // this._HttpService.postData(AppConfig.URL_Host +'/e2e/usuarios/login').subscribe(cursos => {
    //   console.log('data', cursos);
    //   // this.cursos = cursos;
    // });

  }

  task: Task = {
    name: 'All',
    state: false,
    color: 'primary',
    subtasks: [
      { name: 'amountMutants', state: true, color: 'primary' },
      { name: 'perOperator', state: false, color: 'primary' },
      { name: 'confidenceLevel', state: false, color: 'primary' },
      { name: 'marginError', state: false, color: 'primary' }

    ]
  };

  operadores: Task = {
    name: 'All',
    state: false,
    color: 'primary',
    subtasks: [
      { name: 'ActivityNotDefined', state: true, color: 'primary' },
      { name: 'DifferentActivityIntentDefinition', state: false, color: 'primary' },
      { name: 'InvalidActivityPATH', state: false, color: 'primary' },
      { name: 'InvalidKeyIntentPutExtra', state: false, color: 'primary' },
      { name: 'InvalidLabel', state: false, color: 'primary' },
      { name: 'NullIntent', state: false, color: 'primary' },
      { name: 'NullValueIntentPutExtra', state: false, color: 'primary' },
      { name: 'WrongMainActivity', state: false, color: 'primary' },
      { name: 'MissingPermissionManifest', state: false, color: 'primary' },
      { name: 'WrongStringResource', state: false, color: 'primary' },
      { name: 'SDKVersion', state: false, color: 'primary' },
      { name: 'LengthyBackEndService', state: false, color: 'primary' },
      { name: 'LongConnectionTimeOut', state: false, color: 'primary' },
      { name: 'BluetoothAdapterAlwaysEnabled', state: false, color: 'primary' },
      { name: 'NullBluetoothAdapter', state: false, color: 'primary' },
      { name: 'InvalidURI', state: false, color: 'primary' },
      { name: 'NullGPSLocation', state: false, color: 'primary' },
      { name: 'InvalidDate', state: false, color: 'primary' },
      { name: 'NullBackEndServiceReturn', state: false, color: 'primary' },
      { name: 'NullMethodCallArgument', state: false, color: 'primary' },
      { name: 'ClosingNullCursor', state: false, color: 'primary' },
      { name: 'InvalidIndexQueryParameter', state: false, color: 'primary' },
      { name: 'InvalidSQLQuery', state: false, color: 'primary' },
      { name: 'ViewComponentNotVisible', state: false, color: 'primary' },
      { name: 'FindViewByIdReturnsNull', state: false, color: 'primary' },
      { name: 'InvalidColor', state: false, color: 'primary' },
      { name: 'InvalidViewFocus', state: false, color: 'primary' },
      { name: 'InvalidIDFindView', state: false, color: 'primary' },
      { name: 'InvalidFilePath', state: false, color: 'primary' },
      { name: 'NullInputStream', state: false, color: 'primary' },
      { name: 'OOMLargeImage', state: false, color: 'primary' },
      { name: 'LengthyGUIListener', state: false, color: 'primary' },
      { name: 'NullOutputStream', state: false, color: 'primary' },
      { name: 'LengthyGUICreation', state: false, color: 'primary' },

    ]
  };

  allComplete: boolean = false;

  updateAllComplete() {
    this.allComplete = this.task.subtasks != null && this.task.subtasks.every(t => t.state);
  }

  someComplete(): boolean {
    if (this.task.subtasks == null) {
      return false;
    }
    return this.task.subtasks.filter(t => t.state).length > 0 && !this.allComplete;
  }

  setAll(completed: boolean) {
    this.allComplete = completed;
    if (this.task.subtasks == null) {
      return;
    }
    this.task.subtasks.forEach(t => t.state = completed);
  }


}
