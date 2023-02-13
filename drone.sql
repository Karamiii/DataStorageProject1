-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema drone
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema drone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `drone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `drone` ;

-- -----------------------------------------------------
-- Table `drone`.`drones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drone`.`drones` ;

CREATE TABLE IF NOT EXISTS `drone`.`drones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `brand` VARCHAR(255) NOT NULL,
  `model` VARCHAR(255) NOT NULL,
  `additional_info` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `drone`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drone`.`users` ;

CREATE TABLE IF NOT EXISTS `drone`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `token` VARCHAR(255) NOT NULL,
  `WhenInUse` DATE NULL DEFAULT NULL,
  `drones_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_users_drones1_idx` (`drones_id` ASC) VISIBLE,
  CONSTRAINT `fk_users_drones1`
    FOREIGN KEY (`drones_id`)
    REFERENCES `drone`.`drones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `drone`.`images`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drone`.`images` ;

CREATE TABLE IF NOT EXISTS `drone`.`images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `analysis_description` TEXT NOT NULL,
  `lat` FLOAT NOT NULL,
  `lon` FLOAT NOT NULL,
  `time` DATETIME NOT NULL,
  `drone_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `drone_id` (`drone_id` ASC) VISIBLE,
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `images_ibfk_1`
    FOREIGN KEY (`drone_id`)
    REFERENCES `drone`.`drones` (`id`),
  CONSTRAINT `images_ibfk_2`
    FOREIGN KEY (`user_id`)
    REFERENCES `drone`.`users` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `drone`.`send_addresses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drone`.`send_addresses` ;

CREATE TABLE IF NOT EXISTS `drone`.`send_addresses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(255) NOT NULL,
  `token` VARCHAR(255) NOT NULL,
  `images_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_send_addresses_images1_idx` (`images_id` ASC) VISIBLE,
  CONSTRAINT `fk_send_addresses_images1`
    FOREIGN KEY (`images_id`)
    REFERENCES `drone`.`images` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
