export class Pregunta  {
  constructor(
    public id: number = null,
    public enunciado: string = '',
    public descripcion: string = '',
    public adjunto: string = '',
    public id_Modulo:number= null,
  ) {
  }
}
