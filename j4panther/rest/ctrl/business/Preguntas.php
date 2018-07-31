<?php

/**
 * <b>Descripcion:</b> Clase que <br/>Gestiona las preguntas
 * <b>Caso de Uso:</b> PANTHER- Business <br/>
 *
 * @author Jesus David Ospina <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class Preguntas extends Request
{
    /**
     * Datos de la tabla "pregunta"
     *
     * @var string
     */
    const NAME_TABLE = "pregunta";

    public function init()
    {
        parent::$nameTable = self::NAME_TABLE;
        parent::$queryInsert = INTSERT_PREGUNTA;
        parent::$queryUpdate = UPDATE_PREGUNTA;
    }

    public function updateParameter($object, $statement, $id)
    {
        $statement->bindParam(1, $object->enunciado);
        $statement->bindParam(2, $object->descripcion);
        $statement->bindParam(3, $object->adjunto);
        $statement->bindParam(4, $id);
    }

    public function insertParameter($object, $statement)
    {
        $statement->bindParam(1, $object->enunciado);
        $statement->bindParam(2, $object->descripcion);
        $statement->bindParam(3, $object->adjunto);
    }

}
