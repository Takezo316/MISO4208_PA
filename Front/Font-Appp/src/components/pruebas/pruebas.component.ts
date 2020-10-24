import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';
import { BaseHttpService } from "../../services/BaseHttpService";
import { AppConfig } from '../../constants/app-config';
import { Router } from '@angular/router';
import Swal from 'sweetalert2'



@Component({
  selector: 'app-pruebas',
  templateUrl: './pruebas.component.html',
  styleUrls: ['./pruebas.component.css']
})
export class PruebasComponent implements OnInit {


  ngOnInit(): void {
  }
  state = {
    'key': 'value',
  }
  body = {
    "body": {
      "name": "Habitica Web",
      "description": "Habitica es una aplicación de seguimiento a tareas…app de productividad por medio de juego de roles.",
      "version": "V3"
    }
  }

  formGroup: FormGroup;
  hideRequiredControl = new FormControl(false);
  floatLabelControl = new FormControl('auto');
  e2eprueba = "nada";

  constructor(fb: FormBuilder,
    public _HttpService: BaseHttpService,
    private router: Router
  ) {
    this.formGroup = fb.group({
      e2eprueba: [null],
      hideRequired: this.hideRequiredControl,
      floatLabel: this.floatLabelControl,
    });
  }

  onSubmitD(post) {

    //alert


    // Swal.fire('la prueba se realizo exitosamente','sfdsf','success')

    // codigo para consumir directo

    console.log(post);
    console.log("e2eprueba", post.e2eprueba);
    this.router.navigateByUrl('https://habiticamiso.s3.amazonaws.com/cypress/videos/habitica/datagen/fake_diarias.spec.js.mp4');

    console.log("entro");
    this._HttpService.postData(AppConfig.URL_Host + '/datagen/' + post.e2eprueba).subscribe(cursos => {
      console.log('data', cursos);
      this.router.navigateByUrl('//dashboard/' + cursos.video);
      Swal.fire('la prueba se realizo exitosamente', 'ver video: ' + cursos.video, 'success')

      // this.cursos = cursos;
    });
  }

  onSubmit(post) {




    // this.router.navigateByUrl('//dashboard', { state: this.state });
    console.log("post", post);
    console.log("body", this.body);


    this._HttpService.add(this.body, 'http://ec2-54-172-85-138.compute-1.amazonaws.com:8080/vrt/avatar').subscribe(cursos => {
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

}
