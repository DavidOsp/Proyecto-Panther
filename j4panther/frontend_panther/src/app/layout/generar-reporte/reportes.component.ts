import { Component } from '@angular/core';
import { routerTransition } from '../../router.animations';
import { AppService } from '../../app.service';



@Component({
    
    templateUrl: './reportes.html',
    styleUrls: ['./reportes.scss'],
    animations: [routerTransition()],
    providers:[AppService]
})

export class ReportesComponent {
   public texto:string;
   

   constructor(
     private _PHService: AppService
   ){

     this.texto="componente de reportes Funcionando";
   }

   ngOnInit(){
     
   }




  }