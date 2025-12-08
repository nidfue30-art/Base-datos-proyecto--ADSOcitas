-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sistema_citasesteticas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sistema_citasesteticas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sistema_citasesteticas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `sistema_citasesteticas` ;

-- -----------------------------------------------------
-- Table `sistema_citasesteticas`.`asistente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema_citasesteticas`.`asistente` (
  `id_asistente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `apellidos` VARCHAR(100) NOT NULL,
  `tipo_documento` ENUM('CC', 'TI', 'Permiso', 'Pasaporte') NOT NULL,
  `num_documento` VARCHAR(50) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `genero` ENUM('M', 'F') NULL DEFAULT NULL,
  `celular` VARCHAR(20) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `usuario` VARCHAR(50) NULL DEFAULT NULL,
  `contrasena` VARCHAR(50) NOT NULL,
  `estado` ENUM('Activo', 'Inactivo') NULL DEFAULT NULL,
  PRIMARY KEY (`id_asistente`),
  UNIQUE INDEX `email` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sistema_citasesteticas`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema_citasesteticas`.`cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `celular` VARCHAR(20) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE INDEX `email` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sistema_citasesteticas`.`profesional`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema_citasesteticas`.`profesional` (
  `id_profesional` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `celular` VARCHAR(20) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `especialidad` ENUM('cejas_henna','laminado_cejas','cejas hilo y cera','lifting','retoque_pestañas','depilacion con cera',
'cepillados','depilacion bikini completo','depilacion axilas','depilacion cara', 'depilacion cara', 'depilacion bigote', 
'depilacion pierna completa', 'depilacion pierna completa', 'depilacion bigote', 'depilacion pierna completa','pestañas clasicas', 
'lifting pestañas', 'retoque pestañas', 'pestañas 3d 5d', 'retoque pestañas 3d 5d', 'cejas hilo y cera', 'pestañas 3d(duplicate)', 
'micropigmentacion cejas primera seccion', 'retoque micropigmentacion cejas', 'micropigmentacion labios primera seccion', 'retoque micropigmentacion labios') NULL DEFAULT NULL,
  `genero` ENUM('M', 'F') NULL DEFAULT NULL,
  `estado` ENUM('Activo', 'Inactivo') NULL DEFAULT NULL,
  PRIMARY KEY (`id_profesional`),
  UNIQUE INDEX `email` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sistema_citasesteticas`.`propietario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema_citasesteticas`.`propietario` (
  `id_propietario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `apellidos` VARCHAR(100) NOT NULL,
  `tipo_documento` ENUM('CC', 'TI', 'Permiso', 'Pasaporte') NOT NULL,
  `num_documento` VARCHAR(50) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `genero` ENUM('M', 'F') NULL DEFAULT NULL,
  `celular` VARCHAR(20) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `usuario` VARCHAR(50) NULL DEFAULT NULL,
  `contrasena` VARCHAR(50) NOT NULL,
  `estado` ENUM('Activo', 'Inactivo') NULL DEFAULT NULL,
  PRIMARY KEY (`id_propietario`),
  UNIQUE INDEX `email` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sistema_citasesteticas`.`salon_atencion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema_citasesteticas`.`salon_atencion` (
  `id_salonatencion` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `hora_atencion` VARCHAR(50) NOT NULL,
  `especialidades` TEXT NULL DEFAULT NULL,
  `capacidad` INT NULL DEFAULT NULL,
  `estado` ENUM('Activo', 'Inactivo') NULL DEFAULT NULL,
  PRIMARY KEY (`id_salonatencion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sistema_citasesteticas`.`historial_visitas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema_citasesteticas`.`historial_visitas` (
  `id_historial` INT NOT NULL AUTO_INCREMENT,
  `fecha_visita` DATETIME NOT NULL,
  `motivo_visita` TEXT NULL DEFAULT NULL,
  `tratamiento` TEXT NULL DEFAULT NULL,
  `observaciones` TEXT NULL DEFAULT NULL,
  `estado_cita` ENUM('Completada', 'Cancelada', 'Reprogramada') NULL DEFAULT NULL,
  PRIMARY KEY (`id_historial`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sistema_citasesteticas`.`recomendaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema_citasesteticas`.`recomendaciones` (
  `id_recomendaciones` INT NOT NULL AUTO_INCREMENT,
  `tipo_recomendacion` ENUM('Producto', 'Tratamiento') NOT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  `producto` VARCHAR(100) NULL DEFAULT NULL,
  `frecuencia_uso` VARCHAR(100) NULL DEFAULT NULL,
  `tiempo_sugerido` DATE NULL DEFAULT NULL,
  `prioridad` ENUM('Alta', 'Media', 'Baja') NULL DEFAULT NULL,
  `estado` ENUM('Pendiente', 'Realizada', 'Omitida') NULL DEFAULT NULL,
  `observaciones` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_recomendaciones`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sistema_citasesteticas`.`citas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistema_citasesteticas`.`citas` (
  `id_cita` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NULL DEFAULT NULL,
  `id_profesional` INT NULL DEFAULT NULL,
  `id_propietario` INT NULL DEFAULT NULL,
  `id_asistente` INT NULL DEFAULT NULL,
  `id_salonatencion` INT NULL DEFAULT NULL,
  `id_historial` INT NULL DEFAULT NULL,
  `id_recomendaciones` INT NULL DEFAULT NULL,
  `fecha_hora` DATETIME NULL DEFAULT NULL,
  `motivo` VARCHAR(200) NOT NULL,
  `estado` ENUM('pendiente', 'completada', 'cancelada') NULL DEFAULT 'pendiente',
  `notas` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_cita`),
  INDEX `id_cliente` (`id_cliente` ASC) VISIBLE,
  INDEX `id_profesional` (`id_profesional` ASC) VISIBLE,
  INDEX `id_propietario` (`id_propietario` ASC) VISIBLE,
  INDEX `id_asistente` (`id_asistente` ASC) VISIBLE,
  INDEX `id_salonatencion` (`id_salonatencion` ASC) VISIBLE,
  INDEX `id_historial` (`id_historial` ASC) VISIBLE,
  INDEX `id_recomendaciones` (`id_recomendaciones` ASC) VISIBLE,
  CONSTRAINT `citas_ibfk_1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `sistema_citasesteticas`.`cliente` (`id_cliente`),
  CONSTRAINT `citas_ibfk_2`
    FOREIGN KEY (`id_profesional`)
    REFERENCES `sistema_citasesteticas`.`profesional` (`id_profesional`),
  CONSTRAINT `citas_ibfk_3`
    FOREIGN KEY (`id_propietario`)
    REFERENCES `sistema_citasesteticas`.`propietario` (`id_propietario`),
  CONSTRAINT `citas_ibfk_4`
    FOREIGN KEY (`id_asistente`)
    REFERENCES `sistema_citasesteticas`.`asistente` (`id_asistente`),
  CONSTRAINT `citas_ibfk_5`
    FOREIGN KEY (`id_salonatencion`)
    REFERENCES `sistema_citasesteticas`.`salon_atencion` (`id_salonatencion`),
  CONSTRAINT `citas_ibfk_6`
    FOREIGN KEY (`id_historial`)
    REFERENCES `sistema_citasesteticas`.`historial_visitas` (`id_historial`),
  CONSTRAINT `citas_ibfk_7`
    FOREIGN KEY (`id_recomendaciones`)
    REFERENCES `sistema_citasesteticas`.`recomendaciones` (`id_recomendaciones`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
