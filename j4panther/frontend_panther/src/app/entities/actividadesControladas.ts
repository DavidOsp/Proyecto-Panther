export class actividadesControladas {
    constructor(
        public id : number = null,
        public fk_id_pregunta : number =null,
        public fk_id_modulo : number =0,
        public fk_id_docente: number=0,
        public porcentaje_completado : number= null
    ){

    }

    setId(id:number){
        this.id = id;
    }

    getId(){
        return this.id;
    }

    setFkIfPregunta(fkIdPregunta:number){
        this.fk_id_pregunta=fkIdPregunta;
    }

    getFkIdPregunta(){
        return this.fk_id_pregunta;
    }
    
    setFkIdModulo(fkIdModulo:number){
        this.fk_id_modulo = fkIdModulo;
    }

    getFkIdModulo(){
        return this.fk_id_modulo;
    }

    setIdDocente(fk_id_docente:number){
        this.fk_id_docente=fk_id_docente;
    }

    getIdDocente(){
        return this.fk_id_docente;
    }

    setPorcentaje(porcentaje_completado:number){
        this.porcentaje_completado=porcentaje_completado;
    }

    getPorcentaje(){
        return this.porcentaje_completado;
    }
}