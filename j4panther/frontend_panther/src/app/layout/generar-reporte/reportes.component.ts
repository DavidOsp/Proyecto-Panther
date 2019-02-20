import { Component } from '@angular/core';
import { routerTransition } from '../../router.animations';
import { AppService } from '../../app.service';
import {Pregunta} from '../../entities/pregunta';
import {Modulo} from '../../entities/modulo';




@Component({
    
    templateUrl: './reportes.html',
    styleUrls: ['./reportes.scss'],
    animations: [routerTransition()],
    providers:[AppService]
})

export class ReportesComponent {
   public preguntas:Pregunta[];
   public modulos:Modulo[];
   public tab:number=1;
   

   constructor(
     private _PHService: AppService
   ){
    
   }

   ngOnInit(){


    this._PHService.getModulo().subscribe(
      resultado=>{
       this.modulos = resultado.data;
     
      },
      error=>{
        console.log(<any>error);
      }
    )


    this._PHService.getPreguntas().subscribe(
      resultado=>{
       this.preguntas = resultado.data;

      },
      error=>{
        console.log(<any>error);
      }
    )
  }
      // metodos que permiten asignar la pestaña de los modulos de preguntas
    setTab(tab:number){
      this.tab=tab;
    }

    getTab(){
      return this.tab;
    }

  
  }