<?php

/**
 * <b>Descripcion:</b> Clase que <br/>contiene la descripcion de los modulos
 * <b>Caso de Uso:</b> PANTHER-Seguridad <br/>
 *
 * @author Jesus David Ospina  <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class Modulo
{

    /**
     * Identificador de la clase
     *
     * @var float Id
     */
    public $id;

    /**
     * Descripcion del modulo
     *
     * @var string descripcion
     */
    public $descripcion;

    /**
     * nombre
     *
     * @var string nombre
     */
    public $nombre;



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
     * @return the $nombre
     */
    public function nombre()
    {
        return $this->nombre;
    }


    /**
     * @param number $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @param string $descripcion
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;
    }

    /**
     * @param string $nombre
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;
    }



}
?>
