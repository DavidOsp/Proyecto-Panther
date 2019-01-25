import {Component} from '@angular/core';
import {routerTransition} from '../../router.animations';
import {AppService}from '../../app.service';
import {Fecha} from '../../entities/fecha';



@Component({
  templateUrl: './periodo-lectivo.html',
  styleUrls: ['./periodo-lectivo.scss'],
  animations: [routerTransition()],
  providers: [AppService]
})


export class PeriodoLectivoComponent{
   public data:Fecha = new Fecha (1,null,null) ;
   public fechas:Fecha[];
   

   model: any;
constructor(
  private _PHService: AppService ,
 
 
  
){

}


ngOnInit(){
  this.mostrarFechas();
}

guardarFecha(){
  this.data.setId(1);
   this._PHService.crearFecha(this.data,this.data.id) ;  
    //console.log(this.data.id);
}

editarFechas() {
       if ( this.data.id ==1 ) {
      this._PHService.editarFecha(this.data,this.data.id);
  } else { this.guardarFecha(); }
  
}

mostrarFechas(){

  this._PHService.getFecha().subscribe(
    resultado=>{
      
     this.fechas=resultado.data;
     
  
  },
  error=>{
    console.log(<any>error);
  })
}

alert(){
  alert('AVISO: La fecha del semestre lectivo ha sido cambiada con exito. ');

}



}
