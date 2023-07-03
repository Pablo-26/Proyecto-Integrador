use practicumDataBase;

-- -----------------------------------------------------
-- Table `cSexo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cSexo` (
  `idcSexo` INT NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idcSexo`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cEstadoCivil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cEstadoCivil` (
  `idcEstadoCivil` INT NOT NULL,
  `descripcion` VARCHAR(200) NULL,
  PRIMARY KEY (`idcEstadoCivil`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cNivelInstruccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cNivelInstruccion` (
  `idcNivelInst` INT NOT NULL,
  `descripcion` VARCHAR(250) NULL,
  PRIMARY KEY (`idcNivelInst`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Persona` (
  `idPersona` INT NOT NULL AUTO_INCREMENT,
  `edad` INT NOT NULL,
  `cSexo_idcSexo` INT NOT NULL,
  `cEstadoCivil_idcEstadoCivil` INT NOT NULL,
  `cNivelInstruccion_idcNivelInst` INT NOT NULL,
  `Hogar_idHogar` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idPersona`),
  INDEX `fk_Persona_cSexo1_idx` (`cSexo_idcSexo` ASC) VISIBLE,
  INDEX `fk_Persona_cEstadoCivil1_idx` (`cEstadoCivil_idcEstadoCivil` ASC) VISIBLE,
  INDEX `fk_Persona_cNivelInstruccion1_idx` (`cNivelInstruccion_idcNivelInst` ASC) VISIBLE,
  INDEX `fk_Persona_Hogar1_idx` (`Hogar_idHogar` ASC) VISIBLE,
  CONSTRAINT `fk_Persona_cSexo1`
    FOREIGN KEY (`cSexo_idcSexo`)
    REFERENCES `cSexo` (`idcSexo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_cEstadoCivil1`
    FOREIGN KEY (`cEstadoCivil_idcEstadoCivil`)
    REFERENCES `cEstadoCivil` (`idcEstadoCivil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_cNivelInstruccion1`
    FOREIGN KEY (`cNivelInstruccion_idcNivelInst`)
    REFERENCES `cNivelInstruccion` (`idcNivelInst`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_Hogar1`
    FOREIGN KEY (`Hogar_idHogar`)
    REFERENCES `Hogar` (`idHogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cAlimentosHogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cAlimentosHogar` (
  `idcAlimeHogar` INT NOT NULL,
  `descripcion` VARCHAR(50) NULL,
  PRIMARY KEY (`idcAlimeHogar`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `cElectrodomHogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cElectrodomHogar` (
  `idcElecHogar` INT NOT NULL,
  `descripcion` VARCHAR(50) NULL,
  PRIMARY KEY (`idcElecHogar`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `cVestimentaHogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cVestimentaHogar` (
  `idcVestHogar` INT NOT NULL,
  `descripcion` VARCHAR(50) NULL,
  PRIMARY KEY (`idcVestHogar`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cEconomiaHogar` (
  `idcEconHogar` INT NOT NULL,
  `descripcion` VARCHAR(50) NULL,
  PRIMARY KEY (`idcEconHogar`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Consumo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Consumo` (
  `idConsumo` INT NOT NULL AUTO_INCREMENT,
  `cEconomiaHogar_idcEconHogar` INT NOT NULL,
  `cAlimentosHogar_idcAlimeHogar` INT NOT NULL,
  `cElectrodomHogar_idcElecHogar` INT NOT NULL,
  `cVestimentaHogar_idcVestHogar` INT NOT NULL,
  `Hogar_idHogar` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`idConsumo`),
  INDEX `fk_Consumo_cEconomiaHogar1_idx` (`cEconomiaHogar_idcEconHogar` ASC) VISIBLE,
  INDEX `fk_Consumo_cAlimentosHogar1_idx` (`cAlimentosHogar_idcAlimeHogar` ASC) VISIBLE,
  INDEX `fk_Consumo_cElectrodomHogar1_idx` (`cElectrodomHogar_idcElecHogar` ASC) VISIBLE,
  INDEX `fk_Consumo_cVestimentaHogar1_idx` (`cVestimentaHogar_idcVestHogar` ASC) VISIBLE,
  INDEX `fk_Consumo_Hogar1_idx` (`Hogar_idHogar` ASC) VISIBLE,
  CONSTRAINT `fk_Consumo_cEconomiaHogar1`
    FOREIGN KEY (`cEconomiaHogar_idcEconHogar`)
    REFERENCES `cEconomiaHogar` (`idcEconHogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consumo_cAlimentosHogar1`
    FOREIGN KEY (`cAlimentosHogar_idcAlimeHogar`)
    REFERENCES `cAlimentosHogar` (`idcAlimeHogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consumo_cElectrodomHogar1`
    FOREIGN KEY (`cElectrodomHogar_idcElecHogar`)
    REFERENCES `cElectrodomHogar` (`idcElecHogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consumo_cVestimentaHogar1`
    FOREIGN KEY (`cVestimentaHogar_idcVestHogar`)
    REFERENCES `cVestimentaHogar` (`idcVestHogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consumo_Hogar1`
    FOREIGN KEY (`Hogar_idHogar`)
    REFERENCES `Hogar` (`idHogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;




/
DROP TABLE cSexo;
DROP TABLE cEstadoCivil;
DROP TABLE cNivelInstruccion;
DROP TABLE Persona;
DROP TABLE cEconomiaHogar;
DROP TABLE cAlimentosHogar;
DROP TABLE cElectrodomHogar;
DROP TABLE cVestimentaHogar;
DROP TABLE Consumo;

 */