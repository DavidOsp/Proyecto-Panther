<?php

/**
 * <b>Descripcion:</b> Clase que <br/>contiene la descripcion de los docentes
 * <b>Caso de Uso:</b> PANTHER-Seguridad <br/>
 *
 * @author Jesus David Ospina  <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class Docente
{

    /**
     * Identificador de la clase
     *
     * @var number id
     */
    public $id;

    /**
     * primer_nombre
     *
     * @var String primer_nombre
     */
    public  $primer_nombre;


    /**
     * segundo_nombre
     *
     * @var String segundo_nombre
     */
    public $segundo_nombre;



        /**
     * primer_apellido
     *
     * @var String primer_apellido
     */
    public  $primer_apellido;


    /**
     * segundo_apellido
     *
     * @var String segundo_apellido
     */
    public $segundo_apellido;


    /**
     * correo electronico
     *
     * @var String email
     */
    public $email;

    /**
     * identificador de rol de usuario..
     *
     * @var String id_user
     */
    public $id_user;



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
     * @return the primer_nombre
     */
    public function getPrimer_nombre()
    {
        return $this->primer_nombre;
    }

    /**
     * @return the segundo_nombre
     */
    public function getSegundo_nombre()
    {
        return $this->segundo_nombre;
    }

  

    /**
     * @param string $primer_nombre
     */
    public function setPrimer_nombre($primer_nombre)
    {
        $this->primer_nombre = $primer_nombre;
    }

    /**
     * @param string $segundo_nombre
     */
    public function setSegundo_nombre($segundo_nombre)
    {
        $this->segundo_nombre = $segundo_nombre;
    }


   /**
     * @return the primer_apellido
     */
    public function getPrimer_apellido()
    {
        return $this->primer_apellido;
    }

    /**
     * @return the segundo_apellido
     */
    public function getSegundo_apellido()
    {
        return $this->segundo_nombre;
    }

  

    /**
     * @param string $primer_apellido
     */
    public function setPrimer_apellido($primer_apellido)
    {
        $this->primer_apellido = $primer_apellido;
    }

    /**
     * @param string $segundo_apellido
     */
    public function setSegundo_apellido($segundo_apellido)
    {
        $this->segundo_apellido = $segundo_apellido;
    }



        /**
     * @return the email
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * @return the id_user
     */
    public function getIdUser()
    {
        return $this->id_user;
    }


      /**
     * @param string $email
     */
    public function setEmail($email)
    {
        $this->email = $email;
    }

    /**
     * @param string $id_user
     */
    public function setIdUser($id_user)
    {
        $this->id_user = $id_user;
    }
    
}
?>
