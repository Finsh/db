SET FOREIGN_KEY_CHECKS=1;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `MMM` ;
CREATE SCHEMA IF NOT EXISTS `MMM` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `MMM` ;
-- -----------------------------------------------------
-- Table `MMM`.`table3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `MMM`.`table3` ;

CREATE  TABLE IF NOT EXISTS `MMM`.`table3` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `table3col` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MMM`.`table2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `MMM`.`table2` ;

CREATE  TABLE IF NOT EXISTS `MMM`.`table2` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `table2col` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MMM`.`table1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `MMM`.`table1` ;

CREATE  TABLE IF NOT EXISTS `MMM`.`table1` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `table3_id` INT NOT NULL ,
  `table2_id` INT NOT NULL ,
  `table1col` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_table1_table3_idx` (`table3_id` ASC) ,
  INDEX `fk_table1_table21_idx` (`table2_id` ASC) ,
  CONSTRAINT `fk_table1_table3`
    FOREIGN KEY (`table3_id` )
    REFERENCES `MMM`.`table3` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_table1_table21`
    FOREIGN KEY (`table2_id` )
    REFERENCES `MMM`.`table2` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MMM`.`table4`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `MMM`.`table4` ;

CREATE  TABLE IF NOT EXISTS `MMM`.`table4` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `table3_id` INT NOT NULL ,
  `table2_id` INT NOT NULL ,
  `table4col` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`, `table3_id`, `table2_id`) ,
  INDEX `fk_table4_table31_idx` (`table3_id` ASC) ,
  INDEX `fk_table4_table21_idx` (`table2_id` ASC) ,
  CONSTRAINT `fk_table4_table31`
    FOREIGN KEY (`table3_id` )
    REFERENCES `MMM`.`table3` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_table4_table21`
    FOREIGN KEY (`table2_id` )
    REFERENCES `MMM`.`table2` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MMM`.`table5`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `MMM`.`table5` ;

CREATE  TABLE IF NOT EXISTS `MMM`.`table5` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `table3_id` INT NOT NULL ,
  `table5col` VARCHAR(45) NULL ,
  INDEX `fk_table5_table31_idx` (`table3_id` ASC) ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_table5_table31`
    FOREIGN KEY (`table3_id` )
    REFERENCES `MMM`.`table3` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `MMM` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
