export class Fecha  {
  constructor(
      public id: number = null,
      public fecha_inicio:  Date ,
      public fecha_final:  Date,
      

  ) {
  }

  setId(id){
    this.id=id;
}

  setFechaInicio(fechaInicio){
      this.fecha_inicio=fechaInicio;
  }

  setFechaFin(fechaFin){
    this.fecha_final=fechaFin;
 }

  getId(){
    return this.id;
  }

   getFechaInicio(){
    return this.fecha_inicio;
  }

   getFechaFin(){
    return this.fecha_final;
  }

}
