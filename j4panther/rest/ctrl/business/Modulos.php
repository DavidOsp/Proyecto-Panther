<?php

/**
 * <b>Descripcion:</b> Clase que <br/>Gestiona las preguntas
 * <b>Caso de Uso:</b> PANTHER- Business <br/>
 *
 * @author Jesus David Ospina <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class Modulos extends Request
{
    /**
     * Datos de la tabla "modulo"
     *
     * @var string
     */
    const NAME_TABLE = "modulo";

    public function init()
    {
        parent::$nameTable = self::NAME_TABLE;
        parent::$queryInsert = INTSERT_MODULO;
        parent::$queryUpdate = UPDATE_MODULO;
    }

    public function updateParameter($object, $statement, $id)
    {
        $statement->bindParam(1, $object->nombre);
        $statement->bindParam(2, $object->descripcion);
        $statement->bindParam(3, $id);
    }

    public function insertParameter($object, $statement)
    {
        $statement->bindParam(1, $object->nombre);
        $statement->bindParam(2, $object->descripcion);

    }

}
