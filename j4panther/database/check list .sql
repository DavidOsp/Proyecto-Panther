
-- -----------------------------------------------------
-- Tabla `panther`.`Modulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `panther`.`Modulo` (
  `idMod_alistamiento` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(200) NULL,
  PRIMARY KEY (`idMod_alistamiento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla `panther`.`pregunta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `panther`.`pregunta` (
  `idpreguntas_alistamiento` INT NOT NULL AUTO_INCREMENT,
  `enunciado` VARCHAR(800) NULL,
  `descripcion` VARCHAR(200) NULL,
  `adjunto` VARCHAR(200) NULL,
  `Modulo_idMod_alistamiento` INT NOT NULL,
  PRIMARY KEY (`idpreguntas_alistamiento`, `Modulo_idMod_alistamiento`),
  INDEX `fk_pregunta_Modulo_idx` (`Modulo_idMod_alistamiento` ASC),
  CONSTRAINT `fk_pregunta_Modulo`
    FOREIGN KEY (`Modulo_idMod_alistamiento`)
    REFERENCES `panther`.`Modulo` (`idMod_alistamiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla `panther`.`docente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `panther`.`docente` (
  `idanexo_alistamiento` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(100) NOT NULL,
  `apellidos` VARCHAR(100) NULL,
  PRIMARY KEY (`idanexo_alistamiento`),
  UNIQUE INDEX `codigo_UNIQUE` (`nombres` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla `panther`.`respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `panther`.`respuesta` (
  `idrespuesta` INT NOT NULL,
  `respuesta` TINYINT NOT NULL,
  `fecha` DATE NULL,
  `pregunta_idpreguntas_alistamiento` INT NOT NULL,
  `pregunta_Modulo_idMod_alistamiento` INT NOT NULL,
  `docente_idanexo_alistamiento` INT NOT NULL,
  PRIMARY KEY (`idrespuesta`, `pregunta_idpreguntas_alistamiento`, `pregunta_Modulo_idMod_alistamiento`, `docente_idanexo_alistamiento`),
  INDEX `fk_respuesta_pregunta1_idx` (`pregunta_idpreguntas_alistamiento` ASC, `pregunta_Modulo_idMod_alistamiento` ASC),
  INDEX `fk_respuesta_docente1_idx` (`docente_idanexo_alistamiento` ASC),
  CONSTRAINT `fk_respuesta_pregunta1`
    FOREIGN KEY (`pregunta_idpreguntas_alistamiento` , `pregunta_Modulo_idMod_alistamiento`)
    REFERENCES `panther`.`pregunta` (`idpreguntas_alistamiento` , `Modulo_idMod_alistamiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_respuesta_docente1`
    FOREIGN KEY (`docente_idanexo_alistamiento`)
    REFERENCES `panther`.`docente` (`idanexo_alistamiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

