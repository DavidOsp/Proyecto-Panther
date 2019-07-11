<?php

/**
 * <b>Descripcion:</b> Clase que <br/>Gestiona los Docentes
 * <b>Caso de Uso:</b> PANTHER- Business <br/>
 *
 * @author Jesus david ospina alvarado <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class Docentes extends Request
{
    /**
     * Datos de la tabla "docentes"
     *
     * @var string
     */
    const NAME_TABLE = "docentes";
    
    public function init()
    {
        parent::$nameTable = self::NAME_TABLE;
        parent::$queryInsert = INTSERT_DOCENTES;
        parent::$queryUpdate = UPDATE_DOCENTES;
    }

    public function updateParameter($object, $statement, $id)
    {
        $statement->bindParam(1, $object->primer_nombre);
        $statement->bindParam(2, $object->segundo_nombre);
        $statement->bindParam(3, $object->primer_apellido);
        $statement->bindParam(4, $object->segundo_apellido);
        $statement->bindParam(5, $object->email);
        $statement->bindParam(6, $object->id_user);
        $statement->bindParam(7, $object->contrasena);
        $statement->bindParam(8, $id);
    }

    public function insertParameter($object, $statement)
    {
        $statement->bindParam(1, $object->primer_nombre);
        $statement->bindParam(2, $object->segundo_nombre);
        $statement->bindParam(3, $object->primer_apellido);
        $statement->bindParam(4, $object->segundo_apellido);
        $statement->bindParam(5, $object->email);
        $statement->bindParam(6, $object->contrasena);
        $statement->bindParam(7, $object->id_user);
    }

}

