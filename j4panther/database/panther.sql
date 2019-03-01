-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2018 a las 17:59:05
-- Versión del servidor: 5.7.21-log
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `panther`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `idanexo_alistamiento` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `j4rol`
--

CREATE TABLE `j4rol` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `j4rol`
--

INSERT INTO `j4rol` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Admin'),
(2, 'user', 'User generic');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `j4user`
--

CREATE TABLE `j4user` (
  `id` int(11) NOT NULL,
  `user` varchar(254) NOT NULL,
  `password` varchar(128) NOT NULL,
  `keyAPI` varchar(60) NOT NULL,
  `roles` int(30) NOT NULL,
  `dateDelete` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `j4user`
--

INSERT INTO `j4user` (`id`, `user`, `password`, `keyAPI`, `roles`, `dateDelete`) VALUES
(1, 'admin', '$2y$10$rCdykaN0YQL/H4VJW0RKae69B2QekbrO3Iuj8OxFy/V1syHOmpfmO', '750e8b43e5ed564462c90ef0d382db26', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idMod_alistamiento` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idMod_alistamiento`, `nombre`, `descripcion`) VALUES
(1, 'Actividades de Alistamiento', 'Los lineamientos consignados en el presente instrumento se diseñaron para apoyar y orientar la gestión docente durante el proceso de alistamiento e inicio de actividades académicas, en programas bajo metodología a distancia y en linea en la Facultad de Estudios a Distancia'),
(2, 'Actividades de Inicio de Módulo', NULL),
(3, 'Labores a Realizar Durante el Desarrollo de Actividades				', 'Los lineamientos consignados en el presente instrumento se diseñaron para apoyar y orientar la gestión docente respecto de las labores a realizar durante el desarrollo de actividades académicas en cada curso de programas bajo metodología a distancia y en linea en la Facultad de Estudios a Distancia.			'),
(4, 'Labores a Realizar para Cierre de Módulo				', 'Los lineamientos consignados en el presente instrumento se diseñaron para apoyar y orientar la gestión docente acerca de las labores a realizar necesarias para generar el cierre de cursos en programas bajo metodología a distancia y en linea en la Facultad de Estudios a Distancia.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id`, `name`, `lastName`, `phone`) VALUES
(1, 'Nicolás', 'Pinzón', 3419478);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `idpreguntas_alistamiento` int(11) NOT NULL,
  `enunciado` varchar(800) DEFAULT NULL,
  `descripcion` varchar(600) DEFAULT NULL,
  `adjunto` varchar(200) DEFAULT NULL,
  `id_Modulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`idpreguntas_alistamiento`, `enunciado`, `descripcion`, `adjunto`, `id_Modulo`) VALUES
(1, 'Apropiar las directrices de la asignación académica y confirmar verificación correspondiente en\r\nplataforma, de acuerdo a la notificación recibida.', NULL, NULL, 1),
(2, 'Ingresar al Aula Virtual (http://tics.uptc.edu.co)  y verificar que aparezca el curso asignado junto con los estudiantes asociados conforme al listado que se encuentra en la plataforma docente SIRA. En caso de alguna inconsistencia comunicarse con la dirección de Escuela y  la Dirección de Innovación Educativa univirtual@uptc.edu.co', NULL, NULL, 1),
(3, 'Ingresar a Plataforma de Profesores (https://registro.uptc.edu.co/calificaciones/) y descargar el listado de estudiantes asignados a su curso. En caso de alguna inconsistencia comunicarse con la dirección de Escuela.', NULL, NULL, 1),
(4, 'Utilizar el correo electrónico institucional (nombreusuario@uptc.edu.co) para todas las comunicaciones con los estudiantes y la Universidad. Verificar activación de correo electrónico con webmaster@uptc.edu.co', NULL, NULL, 1),
(5, 'Actualizar perfil docente en aula virtual de acuerdo con experiencia laboral, formación académica, logros significativos.  Aportar fotografía actualizada tipo documento. ', 'El perfil en plataforma deberá dar respuesta a estas preguntas:\r\n* Qué estudios ha realizado (Formación académica)\r\n* En qué ha trabajado (Experiencia)\r\n* Expectivas del programa  (Qué aportará al programa como profesor)\r\n* Logros significativos (Reconocimientos relacionados con el área de conocimiento)\r\n* Nombres y apellidos completos, datos de contacto, horario de atención sincrónica.', NULL, 1),
(6, 'Revisar en su totalidad la Guia de aprendizaje del curso asignado, y cada unidad del mismo, actualziando calendarios, verificando que los enlaces se encuentren disponibles y vigentes. (Los reportes de inconsistencias y novedades comunicarlos en la dirección de Escuela y al profesor editor).', NULL, NULL, 1),
(7, 'Verificar que los materiales y recursos de la Guia de aprendizaje se puedan consultar, visualizar y/o descargar.  (Los reportes de inconsistencias y novedades comunicarlos en la dirección de escuela).', NULL, NULL, 1),
(8, 'Establecer el cronograma de actividades del módulo describiendo por cada actividad: fecha de inicio y finalización,  % frente a nota final, informacíón detalladao de entregables, otros datos que considere necesarios.', ' Formato Cronograma Actividades →', 'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html', 1),
(9, 'Gestionar  con Dirección de Innovación Educativa (univirtual@uptc.edu.co) la disponibilidad de sala para videoconferencia segun el horario entre semana definidio, y en concordancia con el cronograma de actvidades.  Recuerde que debe realizar por lo menos un encuentro sincrónico específico por semana para todos los estudiantes. ', ' Salas Collaborate para videoconferencias →', 'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html', 1),
(10, 'Contactar a los estudiantes asignados (en plataforma y por correo electrónico) mediante mensaje de bienvenida que contenga:  saludo formal, información del módulo asignado, fecha de inicio y finalización. Es necesario firmar el mensaje con nombres completos, email y celular de contacto, horario de atención sincrónico (skype, chat, correo, adobe connect). ', '* El mensaje de moodle de contener al inicio a palabra #bienvenidos', NULL, 2),
(11, 'Publicar (en plataforma y por correo electrónico) el cronograma de actividades del curso que describe por cada actividad: fecha de inicio y finalización,  % frente a nota final, informacíón detallado de entregables, otros datos que considere necesarios.', 'FormatoCronogramaActividades\r\n* El mensaje de moodle de contener al inicio a palabra #cronogramaActividades →\r\n ', 'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html', 2),
(12, 'Publicar un mensaje recordando a los estudiantes el respeto por los derechos de autor, que está prohibida la copia de trabajos entre participantes y de fuentes externas, enfatizando que los trabajos donde se encuentre este tipo de fraudes tendrán una evaluación con nota de cero y además se reportará dicha situación a  la dirección de Escuela', '* El mensaje de moodle de contener al inicio a palabra #derechosAutor', NULL, 2),
(13, 'Publicar en plataforma el comunicado de estudiantes y haciendo énfasis en las Pautas Generales para el Desarrollo del curso.', '* El mensaje de moodle de contener al inicio a palabra #comunicadoInicial', NULL, 2),
(14, 'Notificar a univirtual@uptc.edu.co las novedades de correos electrónicos rebotados o aspectos que requieran soporte técnico.', NULL, NULL, 2),
(15, 'Notificar a los estudiantes sobre la actividad de aprendizaje iniciada, indicando claramente los productos a entregar y los criterios de evaluación con los cuales se valorarán los entregables. Este ejercicio debe realizarse cada vez que se inicia una actividad en el módulo.', '* El mensaje de moodle de contener al inicio a palabra #criteriosEvaluacion', NULL, 3),
(16, 'Responder las preguntas y consultas registradas en el tablero de anotaciones de manera coherente y pertinente en un plazo máximo de 24 horas, salvo domigos y festivos.  ', '* El mensaje de moodle de contener al inicio a palabra #pqr', NULL, 3),
(17, 'Revisar diariamente el correo electrónico institucional para la atención de requerimientos e inquietudes de estudiantes y de la Universidad (áreas administrativas o académicas). Para todo comunicado o correo es requerimiento confirmar el recibido. ', NULL, NULL, 3),
(18, 'Publicar (mensaje por el AV y por correo electrónico) las fechas de realización de los encuentros sincrónicos programados para el curso, asi como las tutorias virtuales. Recuerde que debe realizar un encuentro sincrónico específico cada semana/ actividad.', '* El mensaje de moodle de contener al inicio a palabra #encuentros', NULL, 3),
(19, 'En los cursos en los que se requieran Foros Discusión: \r\n1. Crear y dar apertura al foro correspondiente.\r\n2. Informar inicio de foro a los estudiantes mediante mensaje en plataforma.\r\n3. Dinamizar las participaciones en el foro desde su rol como docente. \r\n4. Concluir y cerrar foro acorde con las participaciones de los estudiantes y temas tratados en el mismo. ', 'Se recomienda hacer uso de los críterios para controlar la calidad de los aportes en un foro que se presentan en la rúbrica TIGRE (Ver: http://aportetigre.blogspot.com.co/). Este ejercicio es importante aplicarlo con los aportes propios y los que revisa de sus estudiantes.\r\n* El mensaje de moodle de contener al inicio a palabra #foros', NULL, 3),
(20, 'Recordar a los estudiantes el cierre de cada actividad y la fecha máxima en la cual se recibirán entregables de acuerdo con lo definido en el cronograma de actividades socializado desde el inicio del curso. ', '* El mensaje de moodle de contener al inicio a palabra #cierreActividad', NULL, 3),
(21, 'Ser orientador y motivador en las comunicaciones con los estudiantes, no se trata solo de entregar resultados de evaluación o recordatorios sobre la entrega de las mismas. Hay que brindar orientaciones generales y específicas sobre cómo realizar las actividades.', NULL, NULL, 3),
(22, 'Informar a estudiantes sobre inconsistencias en los entregables, esta notificación debe realizarse en un plazo máximo de 24 horas despúes de recibida la evidencia.', '* El mensaje de moodle de contener al inicio a palabra #reporteInconsistencias', NULL, 3),
(23, 'Revisar el cumplimiento de las normas APA o IEEE o Icontec en la referenciación de fuentes bibliográficas en las evidencias recibidas.', NULL, NULL, 3),
(24, 'Revisar la coincidencia de trabajos entre estudiantes o con fuentes externas, para identificar posibles fraudes e informar a los estudiantes involucrados en esta situación, indicándoles las acciones a tomar.', '* El mensaje de moodle de contener al inicio a palabra #art74', NULL, 3),
(25, 'Evaluar y realimentar las actividades tareas,foros en un máximo de 5 días (120 horas).', '* El mensaje de moodle de contener al inicio a palabra #evaluar', NULL, 3),
(26, 'Calcular la calificación obtenida por el estudiante en cada actividad, considerando el desempeño observado en los aspectos establecidos en la matriz de evaluación (rubrica) de la guia de aprendizaje.', NULL, NULL, 3),
(27, 'Informar al estudiante a través de mensajes en el Aula la calificación obtenida y las observaciones realizadas a los entregables en cada uno de los aspectos evaluados. La información de la calificación se deberá enviar en un máximo de 5 días posteriores a la entrega de la actividad. ', '* El mensaje de moodle de contener al inicio a palabra #resultadosEvaluacion', NULL, 3),
(28, 'Atender las solicitudes de revisión de calificaciones.', '* El mensaje de moodle de contener al inicio a palabra #pqr', NULL, 3),
(29, 'LLevar el registro o planilla de calificaciones en el formato de notas, con las calificaciones parciales obtenidas por los estudiantes, verificando que no se cometan errores en el reporte del 1er 50% y del 2o. 50%. ó la nota unica según corresponda.', NULL, NULL, 3),
(30, 'Entregar el informe de seguimiento (calificaciones parciales) de acuerdo a las indicaciones informadas por la direccion de escuela y publicarlo en el Aula  teniendo la precaución de usar sólo el codigo de estudiante como dato de identificación. ', ' Seguimiento estudiantes →', 'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html', 3),
(31, 'Recordar a los estudiantes el cierre del módulo y la fecha máxima en la cual se recibirán entregables de acuerdo con lo definido en el cronograma de actividades socializado desde el inicio. ', '* El mensaje de moodle de contener al inicio a palabra #cierreActividad', NULL, 4),
(32, 'Realizar el cálculo de la calificación definitivas del módulo, teniendo en cuenta las calificaciones parciales informadas y los porcentajes asignados a cada una de las actividades en la  Guia de Aprendizaje', NULL, NULL, 4),
(33, 'Socializar en plataforma las calificaciones obtenidas durante el desarrollo del módulo (presentando el detalle de notas parciales y calificación definitiva), a más tardar dos días antes de la finalización del mismo. Advertir a los estudiantes que tienen 5 días calendario como plazo máximo para solicitar revisión de las calificaciones definitivas.', '* El mensaje de moodle de contener al inicio a palabra #cierre50', NULL, 4),
(34, 'Atender las solicitudes de revisión de calificaciones.', '* El mensaje de moodle de contener al inicio a palabra #pqr', NULL, 4),
(35, 'En la última semana del módulo, realizar una reunión de cierre (encuentro sincrónico con los estudiantes) donde haga una realimentación de los aspectos más importantes que se han observado en el desarrollo realizado por los estudiantes.', NULL, NULL, 4),
(36, 'Registrar las calificaciones definitivas en el SIRA un día después de finalizado el plazo de reclamaciones. La realimentación que se realice en este proceso debe proporcionar mínimamente las notas parciales y si es el caso alguna observación particular.', '* El mensaje de moodle de contener al inicio a palabra #sira', NULL, 4),
(37, 'Entregar el informe de seguimiento (calificaciones parciales y definitiva) en las fechas informadas por la dirección de Escuela. El reporte debe estar  firmado y enviarse escaneado al correo electrónico de la Escuela respectiva.', 'Seguimiento estudiantes →\r\n\r\n\r\n\r\n', 'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html', 4),
(38, 'Realizar una revisión técnica y pedagógica de las actividades de la Guia de aprendizaje para si es el caso proponer mejoras en el módulo e informarlas a la dirección de escuela: Descargar Formato: ', ' Mejora Módulo →', 'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `idrespuesta` int(11) NOT NULL,
  `respuesta` tinyint(4) NOT NULL,
  `fecha` date DEFAULT NULL,
  `pregunta_idpreguntas_alistamiento` int(11) NOT NULL,
  `pregunta_Modulo_idMod_alistamiento` int(11) NOT NULL,
  `docente_idanexo_alistamiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`idanexo_alistamiento`),
  ADD UNIQUE KEY `codigo_UNIQUE` (`nombres`);

--
-- Indices de la tabla `j4rol`
--
ALTER TABLE `j4rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `j4user`
--
ALTER TABLE `j4user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `j4user` (`user`) USING BTREE;

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idMod_alistamiento`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`idpreguntas_alistamiento`,`id_Modulo`),
  ADD KEY `fk_pregunta_Modulo_idx` (`id_Modulo`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`idrespuesta`,`pregunta_idpreguntas_alistamiento`,`pregunta_Modulo_idMod_alistamiento`,`docente_idanexo_alistamiento`),
  ADD KEY `fk_respuesta_pregunta1_idx` (`pregunta_idpreguntas_alistamiento`,`pregunta_Modulo_idMod_alistamiento`),
  ADD KEY `fk_respuesta_docente1_idx` (`docente_idanexo_alistamiento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `idanexo_alistamiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `j4user`
--
ALTER TABLE `j4user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idMod_alistamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `idpreguntas_alistamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `fk_pregunta_Modulo` FOREIGN KEY (`id_Modulo`) REFERENCES `modulo` (`idMod_alistamiento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `fk_respuesta_docente1` FOREIGN KEY (`docente_idanexo_alistamiento`) REFERENCES `docente` (`idanexo_alistamiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_respuesta_pregunta1` FOREIGN KEY (`pregunta_idpreguntas_alistamiento`,`pregunta_Modulo_idMod_alistamiento`) REFERENCES `pregunta` (`idpreguntas_alistamiento`, `id_Modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
