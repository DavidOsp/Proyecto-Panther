<?php

/**
 * <b>Descripcion:</b> Clase que <br/>contiene la descripcion de las actividades controladas
 * <b>Caso de Uso:</b> PANTHER-Seguridad <br/>
 *
 * @author Jesus David Ospina  <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class actividades_controladas
{

    /**
     * Identificador de la clase
     *
     * @var number id
     */
    public $id;

    /**
     * llave foranea de pregunta
     *
     * @var number fk_id_pregunta
     */
    public  $fk_id_pregunta;

    
    /**
     * llave foranea de docente
     *
     * @var number fk_id_docente
     */
    public  $fk_id_docente;
    

    /**
     * llave foranea de modulo
     *
     * @var number fk_id_modulo
     */
    public  $fk_id_modulo;


    /**
     * porcentaje que indica el progreso de la actividad
     *
     * @var number porcentaje_completado
     */
    public $porcentaje_completado;


/**
 * Setters y getters
 */


    public function getId()
    {
        return $this->id;
    }

      /**
     * @param number $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }


    /**
     * @return the fk_id_pregunta
     */
    public function getFkIdPregunta()
    {
        return $this->fk_id_pregunta;
    }

   /**
     * @param string $fk_id_pregunta
     */
    public function setFkIdPregunta($fk_id_pregunta)
    {
        $this->fk_id_pregunta = $fk_id_pregunta;
    }



    /**
     * @return the fk_id_docente
     */
    public function getFkIdDocente()
    {
        return $this->fk_id_docente;
    }

 
    /**
     * @param string $fk_id_docente
     */
    public function setFkIdDocente($fk_id_docente)
    {
        $this->fk_id_docente = $fk_id_docente;
    }


   /**
     * @return the fk_id_modulo
     */
    public function getFkIdModulo()
    {
        return $this->fk_id_modulo;
    }

       /**
     * @param string $fk_id_modulo
     */
    public function setFkIdModulo($fk_id_modulo)
    {
        $this->fk_id_modulo = $fk_id_modulo;
    }


    /**
     * @return the porcentaje_completado
     */
    public function getPorcentajeCompletado()
    {
        return $this->porcentaje_completado;
    }

   

    /**
     * @param string $porcentaje_completado
     */
    public function setPorcentajeCompletado($porcentaje_completado)
    {
        $this->porcentaje_completado = $porcentaje_completado;
    }
    
}
?>
