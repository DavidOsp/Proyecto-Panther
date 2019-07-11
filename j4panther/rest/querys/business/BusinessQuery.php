<?php
/**
 * <b>Descripcion:</b> Clase que <br/> contiene las consultas de la aplicación
 * <b>Caso de Uso:</b> PANTHER-Business <br/>
 *
 * @author Josué Nicolás Pinzón Villamil <a href = "mailto:jpinzon@j4sysol.com">jpinzon@j4sysol.com</a>
 */

/**
 * Constante de consultas base de datos
 */
define("INTSERT_PERSON", "INSERT INTO person(name, lastName, phone) VALUES (?,?,?);");
define("UPDATE_PERSON", "UPDATE person SET name=?, lastName =? , phone=? WHERE id=? ;");

define("INTSERT_PREGUNTA", "INSERT INTO pregunta (enunciado, respuesta, id_modulo) VALUES (?,?,?);");
define("UPDATE_PREGUNTA", "UPDATE pregunta SET enunciado=?, respuesta =? , id_modulo=? WHERE id=? ;");

define("INTSERT_MODULO", "INSERT INTO modulo (nombre, descripcion) VALUES (?,?,?);");
define("UPDATE_MODULO", "UPDATE modulo SET nombre=?, descripcion =?  WHERE id=? ;");

define("INTSERT_LLAMADAS_PARAMETRICAS", "INSERT INTO llamadas_parametricas (fecha_inicio,fecha_final) VALUES (?,?);");
define("UPDATE_LLAMADAS_PARAMETRICAS", "UPDATE llamadas_parametricas SET fecha_inicio =?, fecha_final =?   WHERE id=? ;");

define("INTSERT_DOCENTES", "INSERT INTO docentes( primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, email, contrasena, id_user) VALUES (?,?,?,?,?,?,?);");
define("UPDATE_DOCENTES", "UPDATE docentes SET primer_nombre=?, segundo_nombre =? , primer_apellido=?, segundo_apellido =?, email =?,contrasena=? id_user=?  WHERE id=? ;");

define("INTSERT_ACTIVIDADES_CONTROLADAS", "INSERT INTO actividades_controladas (fk_id_pregunta,fk_id_docente,fk_id_modulo, porcentaje_completado) VALUES (?,?,?,?);");
define("UPDATE_ACTIVIDADES_CONTROLADAS", "UPDATE actividades_controladas SET fk_id_pregunta =?,fk_id_docente =?, fk_id_modulo=?, porcentaje_completado =?  WHERE id=? ;");

?>
