export class Pregunta  {
  constructor(
    public id: number = 0,
    public enunciado: string = '',
    public descripcion: string = '',
    public adjunto: string = '',
    public id_Modulo:number= null,
  ) {
  }
}
