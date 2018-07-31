<?php

/**
 * <b>Descripcion:</b> Clase que <br/>contiene las preguntas de la aplicación
 * <b>Caso de Uso:</b> PANTHER-Seguridad <br/>
 *
 * @author Jesus David Ospina  <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class Pregunta
{

    /**
     * Identificador de la clase
     *
     * @var float Id
     */
    public $id;

    /**
     * Enunciado pregunta
     *
     * @var string user
     */
    public $enunciado;

    /**
     * Respuesta
     *
     * @var string descripcion
     */
    public $descripcion;

    /**
     * adjunto
     *
     * @var string adjunto
     */
    public $adjunto;



    public function getId()
    {
        return $this->id;
    }

    /**
     * @return the $Enunciado
     */
    public function getEnunciado()
    {
        return $this->name;
    }

    /**
     * @return the $descripcion
     */
    public function descripcion()
    {
        return $this->descripcion;
    }

    /**
     * @return the $adjunto
     */
    public function getAdjunto()
    {
        return $this->adjunto;
    }

    /**
     * @param number $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @param string $enunciado
     */
    public function setEnunciado($enunciado)
    {
        $this->enunciado = $enunciado;
    }

    /**
     * @param string $descripcion
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;
    }

    /**
     * @param string $adjunto
     */
    public function setAdjunto($adjunto)
    {
        $this->adjunto = $adjunto;
    }



}
?>
