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
   public fecha_inicio:String;
   public fecha_final:String;
   public fechaActual: Date= new Date() ;
   public minDate1:Date;
   public maxDate1:Date;
   public minDate2:Date;
   public maxDate2:Date;

   model: any;
constructor(
  private _PHService: AppService ,
    
){

}

ngOnInit(){
  this.validarFecha();  // metodo que permite limitar el rango de fechas seleccionadas por un usuario
  this.mostrarFechas(); // metodo que permite recargar las dechas guardadas en la base de datos   
  
}
  // metodo que almacena la fecha seleccionada por el usuario

guardarFecha(){ 
    this.data.setId(1);   
    this.data.setFechaInicio(this.data.fecha_inicio.toLocaleDateString('zh-Hans-CN'));
    this.data.setFechaFin(this.data.fecha_final.toLocaleDateString('zh-Hans-CN'));
    this._PHService.crearFecha(this.data,this.data.id) ;         
    console.log(this.data);
}

// metodo que modifica la fecha almacenada por el usuario

editarFechas() {
       if ( this.data.id ==1 ) {
         this.data.setFechaInicio(this.data.fecha_inicio.toLocaleDateString('zh-Hans-CN'));
          this.data.setFechaFin(this.data.fecha_final.toLocaleDateString('zh-Hans-CN'));

        this._PHService.editarFecha(this.data,this.data.id);
  } else { this.guardarFecha(); }
  
  console.log(this.data);
 
}

// metodo que permite recargar las dechas guardadas en la base de datos

mostrarFechas(){

  this._PHService.getFecha().subscribe(
    resultado=>{
      
     this.fechas=resultado.data;
     
  
  },
  error=>{
    console.log(<any>error);
  })
}

// metodo que notifica al usuario el cambio de la fecha 

alert(){
  alert('AVISO: La fecha del semestre lectivo ha sido cambiada con exito. ');

}

// metodo que permite limitar el rango de fechas seleccionadas por un usuario

validarFecha(){
  this.minDate1 = new Date(this.fechaActual.getFullYear(), this.fechaActual.getMonth(), 1);
  this.maxDate1 = new Date(this.fechaActual.getFullYear(), this.fechaActual.getMonth()+2, 1);

  this.minDate2 = new Date(this.fechaActual.getFullYear(),this.fechaActual.getMonth()+4, 1); 
  this.maxDate2 = new Date(this.fechaActual.getFullYear(), this.fechaActual.getMonth()+7, 1);
  }
}