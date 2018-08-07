import { Component } from '@angular/core';
import { routerTransition } from '../../router.animations';
import { AppService } from '../../app.service';
import {Pregunta} from '../../entities/pregunta';
import {Modulo} from '../../entities/modulo';


@Component({
    //selector: 'check-list',
    templateUrl: './check-list.html',
    styleUrls: ['./check-list.scss'],
    animations: [routerTransition()],
    providers:[AppService]
})

export class CheckListComponent {
   public preguntas:Pregunta[];
   public modulos:Modulo[];
   public texto:string;
   public tab:number;

   constructor(
     private _PHService: AppService
   ){

     this.texto='Hola Mundo desde CheckList!!'
   }

  ngOnInit(){


    this._PHService.getModulo().subscribe(
      resultado=>{
       this.modulos = resultado.data;
       console.log(this.modulos);
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

    setTab(tab:number){
      this.tab=tab;
    }

    getTab(){
      return this.tab;
    }s

}
