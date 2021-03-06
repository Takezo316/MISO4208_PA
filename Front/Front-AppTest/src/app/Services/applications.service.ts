import { Injectable } from '@angular/core';
import {ApplicationsDto} from '../data/ApplicationsDto';

@Injectable({
  providedIn: 'root'
})
export class ApplicationsService {

  applications = [
    {
      name:"Habitica Web - E2E -v3 ",
      description:"Habitica es una aplicación de seguimiento a tareas diarias catalogado como una app de productividad por medio de juego de roles.",
      version:"V3"
    },

    {
      name:"Habitica mobile - E2E - 2.4.2",
      description:"Habitica es una aplicación de seguimiento a tareas diarias catalogado como una app de productividad por medio de juego de roles.",
      version:"2.4.2"
    },
    {
      name:"CarReport - E2E - 1.0 ",
      description:"funciona como recordatorio para el seguimiento de toma de medicamentos.",
      version:"1.0.0"
    }
  ]

  constructor() { }


  public getApplications():Array<ApplicationsDto>{
    return this.applications;
  }
}
