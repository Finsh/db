SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `admin_social`.`profile`
-- -----------------------------------------------------

DROP SCHEMA IF EXISTS `admin_social` ;
CREATE SCHEMA IF NOT EXISTS `admin_social` DEFAULT CHARACTER SET utf8 ;
USE `admin_social` ;

DROP TABLE IF EXISTS `admin_social`.`profile` ;

CREATE  TABLE IF NOT EXISTS `admin_social`.`profile` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `login` VARCHAR(20) NOT NULL ,
  `password` VARCHAR(32) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  `firstname` VARCHAR(25) NOT NULL ,
  `lastname` VARCHAR(25) NOT NULL ,
  `middlename` VARCHAR(25) NULL ,
  `telephone` VARCHAR(15) NULL ,
  `mobile` VARCHAR(15) NULL ,
  `email2` VARCHAR(45) NULL ,
  `city` VARCHAR(20) NULL ,
  `country` VARCHAR(45) NULL ,
  `birthday` DATE NULL ,
  `countsubscribes` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countalbum` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countcontact` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countblog` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countblogcomment` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countwall` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countwallmy` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `isdefaultava` TINYINT(1) NOT NULL DEFAULT 1 ,
  `isdefaulthb` TINYINT(1) NOT NULL DEFAULT 1 ,
  `role` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NOT NULL DEFAULT 0 ,
  `lock` TINYINT(1) NOT NULL DEFAULT 0 ,
  `valid` TINYINT(1) NOT NULL DEFAULT 1 ,
  `countinbox` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countoutbox` INT UNSIGNED NOT NULL DEFAULT 0 ,
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_social`.`messagegroup`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_social`.`messagegroup` ;

CREATE  TABLE IF NOT EXISTS `admin_social`.`messagegroup` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_social`.`spisokmessagegroupuser`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_social`.`spisokmessagegroupuser` ;

CREATE  TABLE IF NOT EXISTS `admin_social`.`spisokmessagegroupuser` (
  `messagegroup_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_spisokmessagegroupuser_messagegroup1_idx` (`messagegroup_id` ASC) ,
  INDEX `fk_spisokmessagegroupuser_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_spisokmessagegroupuser_messagegroup1`
    FOREIGN KEY (`messagegroup_id` )
    REFERENCES `admin_social`.`messagegroup` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokmessagegroupuser_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `admin_social`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_social`.`blogmetka`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_social`.`blogmetka` ;

CREATE  TABLE IF NOT EXISTS `admin_social`.`blogmetka` (
  `idblogmetka` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `color` VARCHAR(9) NOT NULL ,
  PRIMARY KEY (`idblogmetka`) ,
  UNIQUE INDEX `idblogmetka_UNIQUE` (`idblogmetka` ASC) ,
  UNIQUE INDEX `color_UNIQUE` (`color` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_social`.`holliday`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_social`.`holliday` ;

CREATE  TABLE IF NOT EXISTS `admin_social`.`holliday` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `date` DATE NOT NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `descriptor` TEXT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `admin_social`.`systemnews`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_social`.`systemnews` ;

CREATE  TABLE IF NOT EXISTS `admin_social`.`systemnews` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `type` INT NOT NULL ,
  `text` TEXT NOT NULL ,
  `datetime` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_social`.`notificationerror`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_social`.`notificationerror` ;

CREATE  TABLE IF NOT EXISTS `admin_social`.`notificationerror` (
  `id` BIGINT NOT NULL AUTO_INCREMENT ,
  `adress` VARCHAR(15) NULL ,
  `description` VARCHAR(256) NULL ,
  `description_extension` VARCHAR(256) NULL ,
  `viewadmin` TINYINT(1) NULL ,
  `pid_action` INT UNSIGNED NULL ,
  `pid_over` INT UNSIGNED NULL ,
  `date` DATETIME NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_social`.`roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_social`.`roles` ;

CREATE  TABLE IF NOT EXISTS `admin_social`.`roles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `profile_id` INT UNSIGNED NOT NULL ,
  `role` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `idadress` INT UNSIGNED NULL ,
  `idschool` INT NOT NULL ,
  `info` VARCHAR(256) NOT NULL ,
  `datestart` DATE NOT NULL ,
  `datefinish` DATE NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_roles_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_roles_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `admin_social`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- procedure cRole
-- -----------------------------------------------------

USE `admin_social`;
DROP procedure IF EXISTS `admin_social`.`cRole`;

DELIMITER $$
USE `admin_social`$$
CREATE PROCEDURE `admin_social`.`cRole` (
	idProfile INT UNSIGNED,
	role TINYINT UNSIGNED,
	idAdress INT UNSIGNED,
	idSchool INT UNSIGNED,
	info VARCHAR(256)
)
BEGIN
	INSERT INTO `admin_social`.`roles`(`profile_id`,`role`,`idadress`,`idschool`,`info`,`datestart`)
	VALUES(idProfile, role, idAdress, idSchool, info, now());
END$$

DELIMITER ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
