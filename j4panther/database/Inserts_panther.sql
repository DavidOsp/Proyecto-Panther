-- Volcado de datos para la tabla `llamadas_parametricas`
--
INSERT INTO `llamadas_parametricas`(`id`, `fecha_inicio`, `fecha_final`)
VALUES(1, '2019-03-01', '2019-09-01');
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes`(
    `id`,
    `primer_nombre`,
    `segundo_nombre`,
    `primer_apellido`,
    `segundo_apellido`
)
VALUES(
    1,
    'josue',
    'nicolas',
    'pinzon',
    'villamil'
);
-- --------------------------------------------------------
--

    -- Volcado de datos para la tabla `asignaturas`
    --

INSERT INTO `asignaturas`(`id`, `nombre`, `id_docente`)
VALUES(
    1,
    'introduccion a la programacion',
    1
);
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos`(
    `id`,
    `numero`,
    `estudiantes_asignados`,
    `id_asignatura`
)
VALUES(1, '14_01', 6, 1),(2, '23_03', 18, 1);
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `j4rol`
--

INSERT INTO `j4rol`(`id`, `name`, `description`)
VALUES(1, 'admin', 'Admin'),(2, 'user', 'User generic');
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `j4user`
--

--

-- Volcado de datos para la tabla `j4user`
--

INSERT INTO `j4user`(
    `id`,
    `user_name`,
    `password`,
    `keyAPI`,
    `roles`,
    `dateDelete`
)
VALUES(
    1,
    'admin',
    '$2y$10$rCdykaN0YQL/H4VJW0RKae69B2QekbrO3Iuj8OxFy/V1syHOmpfmO',
    '750e8b43e5ed564462c90ef0d382db26',
    1,
    NULL
);
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person`(`id`, `name`, `lastName`, `phone`)
VALUES(1, 'Nicol�s', 'Pinz�n', 3419478);
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo`(
    `idMod_alistamiento`,
    `nombre`,
    `descripcion`
)
VALUES(
    1,
    'Actividades de Alistamiento',
    'Los lineamientos consignados en el presente instrumento se dise�aron para apoyar y orientar la gesti�n docente durante el proceso de alistamiento e inicio de actividades acad�micas, en programas bajo metodolog�a a distancia y en linea en la Facultad de Estudios a Distancia'
),(
    2,
    'Actividades de Inicio de M�dulo',
    NULL
),(
    3,
    'Labores a Realizar Durante el Desarrollo de Actividades				',
    'Los lineamientos consignados en el presente instrumento se dise�aron para apoyar y orientar la gesti�n docente respecto de las labores a realizar durante el desarrollo de actividades acad�micas en cada curso de programas bajo metodolog�a a distancia y en linea en la Facultad de Estudios a Distancia.			'
),(
    4,
    'Labores a Realizar para Cierre de M�dulo				',
    'Los lineamientos consignados en el presente instrumento se dise�aron para apoyar y orientar la gesti�n docente acerca de las labores a realizar necesarias para generar el cierre de cursos en programas bajo metodolog�a a distancia y en linea en la Facultad de Estudios a Distancia.'
);
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta`(
    `idpreguntas_alistamiento`,
    `enunciado`,
    `descripcion`,
    `adjunto`,
    `id_Modulo`
)
VALUES(
    1,
    'Apropiar las directrices de la asignaci�n acad�mica y confirmar verificaci�n correspondiente en\r\nplataforma, de acuerdo a la notificaci�n recibida.',
    NULL,
    NULL,
    1
),(
    2,
    'Ingresar al Aula Virtual (http://tics.uptc.edu.co)  y verificar que aparezca el curso asignado junto con los estudiantes asociados conforme al listado que se encuentra en la plataforma docente SIRA. En caso de alguna inconsistencia comunicarse con la direcci�n de Escuela y  la Direcci�n de Innovaci�n Educativa univirtual@uptc.edu.co',
    NULL,
    NULL,
    1
),(
    3,
    'Ingresar a Plataforma de Profesores (https://registro.uptc.edu.co/calificaciones/) y descargar el listado de estudiantes asignados a su curso. En caso de alguna inconsistencia comunicarse con la direcci�n de Escuela.',
    NULL,
    NULL,
    1
),(
    4,
    'Utilizar el correo electr�nico institucional (nombreusuario@uptc.edu.co) para todas las comunicaciones con los estudiantes y la Universidad. Verificar activaci�n de correo electr�nico con webmaster@uptc.edu.co',
    NULL,
    NULL,
    1
),(
    5,
    'Actualizar perfil docente en aula virtual de acuerdo con experiencia laboral, formaci�n acad�mica, logros significativos.  Aportar fotograf�a actualizada tipo documento. ',
    'El perfil en plataforma deber� dar respuesta a estas preguntas:\r\n* Qu� estudios ha realizado (Formaci�n acad�mica)\r\n* En qu� ha trabajado (Experiencia)\r\n* Expectivas del programa  (Qu� aportar� al programa como profesor)\r\n* Logros significativos (Reconocimientos relacionados con el �rea de conocimiento)\r\n* Nombres y apellidos completos, datos de contacto, horario de atenci�n sincr�nica.',
    NULL,
    1
),(
    6,
    'Revisar en su totalidad la Guia de aprendizaje del curso asignado, y cada unidad del mismo, actualziando calendarios, verificando que los enlaces se encuentren disponibles y vigentes. (Los reportes de inconsistencias y novedades comunicarlos en la direcci�n de Escuela y al profesor editor).',
    NULL,
    NULL,
    1
),(
    7,
    'Verificar que los materiales y recursos de la Guia de aprendizaje se puedan consultar, visualizar y/o descargar.  (Los reportes de inconsistencias y novedades comunicarlos en la direcci�n de escuela).',
    NULL,
    NULL,
    1
),(
    8,
    'Establecer el cronograma de actividades del m�dulo describiendo por cada actividad: fecha de inicio y finalizaci�n,  % frente a nota final, informac��n detalladao de entregables, otros datos que considere necesarios.',
    ' Formato Cronograma Actividades ?',
    'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html',
    1
),(
    9,
    'Gestionar  con Direcci�n de Innovaci�n Educativa (univirtual@uptc.edu.co) la disponibilidad de sala para videoconferencia segun el horario entre semana definidio, y en concordancia con el cronograma de actvidades.  Recuerde que debe realizar por lo menos un encuentro sincr�nico espec�fico por semana para todos los estudiantes. ',
    ' Salas Collaborate para videoconferencias ?',
    'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html',
    1
),(
    10,
    'Contactar a los estudiantes asignados (en plataforma y por correo electr�nico) mediante mensaje de bienvenida que contenga:  saludo formal, informaci�n del m�dulo asignado, fecha de inicio y finalizaci�n. Es necesario firmar el mensaje con nombres completos, email y celular de contacto, horario de atenci�n sincr�nico (skype, chat, correo, adobe connect). ',
    '* El mensaje de moodle de contener al inicio a palabra #bienvenidos',
    NULL,
    2
),(
    11,
    'Publicar (en plataforma y por correo electr�nico) el cronograma de actividades del curso que describe por cada actividad: fecha de inicio y finalizaci�n,  % frente a nota final, informac��n detallado de entregables, otros datos que considere necesarios.',
    'FormatoCronogramaActividades\r\n* El mensaje de moodle de contener al inicio a palabra #cronogramaActividades ?\r\n ',
    'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html',
    2
),(
    12,
    'Publicar un mensaje recordando a los estudiantes el respeto por los derechos de autor, que est� prohibida la copia de trabajos entre participantes y de fuentes externas, enfatizando que los trabajos donde se encuentre este tipo de fraudes tendr�n una evaluaci�n con nota de cero y adem�s se reportar� dicha situaci�n a  la direcci�n de Escuela',
    '* El mensaje de moodle de contener al inicio a palabra #derechosAutor',
    NULL,
    2
),(
    13,
    'Publicar en plataforma el comunicado de estudiantes y haciendo �nfasis en las Pautas Generales para el Desarrollo del curso.',
    '* El mensaje de moodle de contener al inicio a palabra #comunicadoInicial',
    NULL,
    2
),(
    14,
    'Notificar a univirtual@uptc.edu.co las novedades de correos electr�nicos rebotados o aspectos que requieran soporte t�cnico.',
    NULL,
    NULL,
    2
),(
    15,
    'Notificar a los estudiantes sobre la actividad de aprendizaje iniciada, indicando claramente los productos a entregar y los criterios de evaluaci�n con los cuales se valorar�n los entregables. Este ejercicio debe realizarse cada vez que se inicia una actividad en el m�dulo.',
    '* El mensaje de moodle de contener al inicio a palabra #criteriosEvaluacion',
    NULL,
    3
),(
    16,
    'Responder las preguntas y consultas registradas en el tablero de anotaciones de manera coherente y pertinente en un plazo m�ximo de 24 horas, salvo domigos y festivos.  ',
    '* El mensaje de moodle de contener al inicio a palabra #pqr',
    NULL,
    3
),(
    17,
    'Revisar diariamente el correo electr�nico institucional para la atenci�n de requerimientos e inquietudes de estudiantes y de la Universidad (�reas administrativas o acad�micas). Para todo comunicado o correo es requerimiento confirmar el recibido. ',
    NULL,
    NULL,
    3
),(
    18,
    'Publicar (mensaje por el AV y por correo electr�nico) las fechas de realizaci�n de los encuentros sincr�nicos programados para el curso, asi como las tutorias virtuales. Recuerde que debe realizar un encuentro sincr�nico espec�fico cada semana/ actividad.',
    '* El mensaje de moodle de contener al inicio a palabra #encuentros',
    NULL,
    3
),(
    19,
    'En los cursos en los que se requieran Foros Discusi�n: \r\n1. Crear y dar apertura al foro correspondiente.\r\n2. Informar inicio de foro a los estudiantes mediante mensaje en plataforma.\r\n3. Dinamizar las participaciones en el foro desde su rol como docente. \r\n4. Concluir y cerrar foro acorde con las participaciones de los estudiantes y temas tratados en el mismo. ',
    'Se recomienda hacer uso de los cr�terios para controlar la calidad de los aportes en un foro que se presentan en la r�brica TIGRE (Ver: http://aportetigre.blogspot.com.co/). Este ejercicio es importante aplicarlo con los aportes propios y los que revisa de sus estudiantes.\r\n* El mensaje de moodle de contener al inicio a palabra #foros',
    NULL,
    3
),(
    20,
    'Recordar a los estudiantes el cierre de cada actividad y la fecha m�xima en la cual se recibir�n entregables de acuerdo con lo definido en el cronograma de actividades socializado desde el inicio del curso. ',
    '* El mensaje de moodle de contener al inicio a palabra #cierreActividad',
    NULL,
    3
),(
    21,
    'Ser orientador y motivador en las comunicaciones con los estudiantes, no se trata solo de entregar resultados de evaluaci�n o recordatorios sobre la entrega de las mismas. Hay que brindar orientaciones generales y espec�ficas sobre c�mo realizar las actividades.',
    NULL,
    NULL,
    3
),(
    22,
    'Informar a estudiantes sobre inconsistencias en los entregables, esta notificaci�n debe realizarse en un plazo m�ximo de 24 horas desp�es de recibida la evidencia.',
    '* El mensaje de moodle de contener al inicio a palabra #reporteInconsistencias',
    NULL,
    3
),(
    23,
    'Revisar el cumplimiento de las normas APA o IEEE o Icontec en la referenciaci�n de fuentes bibliogr�ficas en las evidencias recibidas.',
    NULL,
    NULL,
    3
),(
    24,
    'Revisar la coincidencia de trabajos entre estudiantes o con fuentes externas, para identificar posibles fraudes e informar a los estudiantes involucrados en esta situaci�n, indic�ndoles las acciones a tomar.',
    '* El mensaje de moodle de contener al inicio a palabra #art74',
    NULL,
    3
),(
    25,
    'Evaluar y realimentar las actividades tareas,foros en un m�ximo de 5 d�as (120 horas).',
    '* El mensaje de moodle de contener al inicio a palabra #evaluar',
    NULL,
    3
),(
    26,
    'Calcular la calificaci�n obtenida por el estudiante en cada actividad, considerando el desempe�o observado en los aspectos establecidos en la matriz de evaluaci�n (rubrica) de la guia de aprendizaje.',
    NULL,
    NULL,
    3
),(
    27,
    'Informar al estudiante a trav�s de mensajes en el Aula la calificaci�n obtenida y las observaciones realizadas a los entregables en cada uno de los aspectos evaluados. La informaci�n de la calificaci�n se deber� enviar en un m�ximo de 5 d�as posteriores a la entrega de la actividad. ',
    '* El mensaje de moodle de contener al inicio a palabra #resultadosEvaluacion',
    NULL,
    3
),(
    28,
    'Atender las solicitudes de revisi�n de calificaciones.',
    '* El mensaje de moodle de contener al inicio a palabra #pqr',
    NULL,
    3
),(
    29,
    'LLevar el registro o planilla de calificaciones en el formato de notas, con las calificaciones parciales obtenidas por los estudiantes, verificando que no se cometan errores en el reporte del 1er 50% y del 2o. 50%. � la nota unica seg�n corresponda.',
    NULL,
    NULL,
    3
),(
    30,
    'Entregar el informe de seguimiento (calificaciones parciales) de acuerdo a las indicaciones informadas por la direccion de escuela y publicarlo en el Aula  teniendo la precauci�n de usar s�lo el codigo de estudiante como dato de identificaci�n. ',
    ' Seguimiento estudiantes ?',
    'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html',
    3
),(
    31,
    'Recordar a los estudiantes el cierre del m�dulo y la fecha m�xima en la cual se recibir�n entregables de acuerdo con lo definido en el cronograma de actividades socializado desde el inicio. ',
    '* El mensaje de moodle de contener al inicio a palabra #cierreActividad',
    NULL,
    4
),(
    32,
    'Realizar el c�lculo de la calificaci�n definitivas del m�dulo, teniendo en cuenta las calificaciones parciales informadas y los porcentajes asignados a cada una de las actividades en la  Guia de Aprendizaje',
    NULL,
    NULL,
    4
),(
    33,
    'Socializar en plataforma las calificaciones obtenidas durante el desarrollo del m�dulo (presentando el detalle de notas parciales y calificaci�n definitiva), a m�s tardar dos d�as antes de la finalizaci�n del mismo. Advertir a los estudiantes que tienen 5 d�as calendario como plazo m�ximo para solicitar revisi�n de las calificaciones definitivas.',
    '* El mensaje de moodle de contener al inicio a palabra #cierre50',
    NULL,
    4
),(
    34,
    'Atender las solicitudes de revisi�n de calificaciones.',
    '* El mensaje de moodle de contener al inicio a palabra #pqr',
    NULL,
    4
),(
    35,
    'En la �ltima semana del m�dulo, realizar una reuni�n de cierre (encuentro sincr�nico con los estudiantes) donde haga una realimentaci�n de los aspectos m�s importantes que se han observado en el desarrollo realizado por los estudiantes.',
    NULL,
    NULL,
    4
),(
    36,
    'Registrar las calificaciones definitivas en el SIRA un d�a despu�s de finalizado el plazo de reclamaciones. La realimentaci�n que se realice en este proceso debe proporcionar m�nimamente las notas parciales y si es el caso alguna observaci�n particular.',
    '* El mensaje de moodle de contener al inicio a palabra #sira',
    NULL,
    4
),(
    37,
    'Entregar el informe de seguimiento (calificaciones parciales y definitiva) en las fechas informadas por la direcci�n de Escuela. El reporte debe estar  firmado y enviarse escaneado al correo electr�nico de la Escuela respectiva.',
    'Seguimiento estudiantes ?\r\n\r\n\r\n\r\n',
    'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html',
    4
),(
    38,
    'Realizar una revisi�n t�cnica y pedag�gica de las actividades de la Guia de aprendizaje para si es el caso proponer mejoras en el m�dulo e informarlas a la direcci�n de escuela: Descargar Formato: ',
    ' Mejora M�dulo ?',
    'http://www.uptc.edu.co/secretaria_general/consejo_academico/resoluciones_2018/index.html',
    4
);
-- --------------------------------------------------------
