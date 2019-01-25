<?php

/**
 * <b>Descripcion:</b> Clase que <br/>contiene la descripcion de las fechas
 * <b>Caso de Uso:</b> PANTHER-Seguridad <br/>
 *
 * @author Jesus David Ospina  <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class Fecha
{

    /**
     * Identificador de la clase
     *
     * @var number id
     */
    public $id;

    /**
     * fecha_inicio
     *
     * @var Date fecha_inicio
     */
    public  $fecha_inicio;


    /**
     * fecha_final
     *
     * @var Date fecha_final
     */
    public $fecha_final;


    public function getId()
    {
        return $this->id;
    }

    /**
     * @return the $Descripcion
     */
    public function getDescipcion()
    {
        return $this->descripcion;
    }

    /**
     * @return the fecha_inicio
     */
    public function getFechaInicio()
    {
        return $this->fecha_inicio;
    }

    /**
     * @return the fecha_final
     */
    public function getFechaFinal()
    {
        return $this->fecha_final;
    }

    /**
     * @param number $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @param string $fecha_inicio
     */
    public function setFechaInicio($fecha_inicio)
    {
        $this->fecha_inicio = $fecha_inicio;
    }

    /**
     * @param string $fecha_final
     */
    public function setFechaFinal($fecha_final)
    {
        $this->fecha_final = $fecha_final;
    }


}
?>
