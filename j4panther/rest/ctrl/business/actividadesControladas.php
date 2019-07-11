<?php

/**
 * <b>Descripcion:</b> Clase que <br/>Gestiona las actividades Controladas
 * <b>Caso de Uso:</b> PANTHER- Business <br/>
 *
 * @author Jesus david ospina alvarado <a href = "mailto:j.davosp@gmail.com">j.davosp@gmail.com</a>
 */
class actividadesControladas extends Request
{
    /**
     * Datos de la tabla "actividades_controladas"
     *
     * @var string
     */
    const NAME_TABLE = "actividades_controladas";
    
    public function init()
    {
        parent::$nameTable = self::NAME_TABLE;
        parent::$queryInsert = INTSERT_ACTIVIDADES_CONTROLADAS;
        parent::$queryUpdate = UPDATE_ACTIVIDADES_CONTROLADAS;
    }

    public function updateParameter($object, $statement, $id)
    {
        $statement->bindParam(1, $object->fk_id_pregunta);
        $statement->bindParam(2, $object->fk_id_docente);
        $statement->bindParam(3, $object->fk_id_modulo);
        $statement->bindParam(4, $object->porcentaje_completado);
        $statement->bindParam(5, $id);
    }

    public function insertParameter($object, $statement)
    {
        $statement->bindParam(1, $object->fk_id_pregunta);
        $statement->bindParam(2, $object->fk_id_docente);
        $statement->bindParam(3, $object->fk_id_modulo);
        $statement->bindParam(4, $object->porcentaje_completado);
        $statement->bindParam(5, $id); 
    
    }

}

