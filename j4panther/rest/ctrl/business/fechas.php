<?php

/**
 * <b>Descripcion:</b> Clase que <br/>Gestiona la fecha de inicio y final de semestre
 * <b>Caso de Uso:</b> PANTHER- Business <br/>
 *
 * @author Jesus David Ospina <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class Fechas extends Request
{
    /**
     * Datos de la tabla "llamadas parametricas"
     *
     * @var string
     */
    const NAME_TABLE = "llamadas_parametricas";

    public function init()
    {
        parent::$nameTable = self::NAME_TABLE;
        parent::$queryInsert = INTSERT_LLAMADAS_PARAMETRICAS;
        parent::$queryUpdate = UPDATE_LLAMADAS_PARAMETRICAS;
    }

    public function updateParameter($object, $statement, $id)
    {   
        $statement->bindParam(1, $object->fecha_inicio);
        $statement->bindParam(2, $object->fecha_final);
        $statement->bindParam(3, $id);
        
    }

    public function insertParameter($object, $statement)
    {
        $statement->bindParam(1, $object->fecha_inicio);
        $statement->bindParam(2, $object->fecha_final);
        

    }

}
