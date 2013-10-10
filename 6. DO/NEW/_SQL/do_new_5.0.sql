SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `DO` ;
CREATE SCHEMA IF NOT EXISTS `DO` DEFAULT CHARACTER SET utf8 ;
USE `DO` ;

-- -----------------------------------------------------
-- Table `DO`.`schoolS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`schoolS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`schoolS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `number` INT UNSIGNED NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `directoruser` INT UNSIGNED NOT NULL COMMENT 'id пользователя выполняющий роль директора' ,
  `countclass` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countlearner` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countteacher` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countko` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countclassroom` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `description` TEXT NULL ,
  `countresponsible` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `idstudyduration` INT UNSIGNED NULL ,
  `countstudyday` TINYINT UNSIGNED NOT NULL DEFAULT 5 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`yodaS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`yodaS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`yodaS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `classS_id` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_yodaS_schoolS1_idx` (`schoolS_id` ASC) ,
  INDEX `fk_yodaS_classS1_idx` (`classS_id` ASC) ,
  CONSTRAINT `fk_yodaS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_yodaS_classS1`
    FOREIGN KEY (`classS_id` )
    REFERENCES `DO`.`classS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`classS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`classS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`classS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `level` TINYINT UNSIGNED NOT NULL ,
  `entryyear` SMALLINT UNSIGNED NOT NULL ,
  `endyear` SMALLINT UNSIGNED NULL ,
  `countlearner` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `yodaS_id` INT UNSIGNED NULL ,
  `letter` VARCHAR(2) NULL DEFAULT 'А' ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_classS_schoolS1_idx` (`schoolS_id` ASC) ,
  INDEX `fk_classS_yodaS1_idx` (`yodaS_id` ASC) ,
  CONSTRAINT `fk_classS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_classS_yodaS1`
    FOREIGN KEY (`yodaS_id` )
    REFERENCES `DO`.`yodaS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`learnerS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`learnerS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`learnerS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `classS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_learnerS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_learnerS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`teacherS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`teacherS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`teacherS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `absentstart` DATE NULL ,
  `absentfinish` DATE NULL DEFAULT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `category` TINYINT UNSIGNED NOT NULL DEFAULT 1 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_teacherS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_teacherS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`responsibleS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`responsibleS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`responsibleS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_responsibleS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_responsibleS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`subjectS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`subjectS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`subjectS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `level` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `color` VARCHAR(9) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`koS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`koS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`koS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_koS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_koS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`teachersubjectS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`teachersubjectS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`teachersubjectS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `teacherS_id1` INT UNSIGNED NOT NULL ,
  `subjectS_id1` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_teachersubjectS_teacherS1_idx` (`teacherS_id1` ASC) ,
  INDEX `fk_teachersubjectS_subjectS1_idx` (`subjectS_id1` ASC) ,
  CONSTRAINT `fk_teachersubjectS_teacherS1`
    FOREIGN KEY (`teacherS_id1` )
    REFERENCES `DO`.`teacherS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_teachersubjectS_subjectS1`
    FOREIGN KEY (`subjectS_id1` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Chto  on  prepodaet';


-- -----------------------------------------------------
-- Table `DO`.`classroomS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`classroomS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`classroomS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `abbreviation` VARCHAR(5) NULL ,
  `number` INT NULL ,
  `description` VARCHAR(256) NULL ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_classroomS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_classroomS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`materialS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`materialS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`materialS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `state` TINYINT UNSIGNED NOT NULL DEFAULT 1 ,
  `countparagraph` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countparagraphactive` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countsection` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `datecreate` DATETIME NOT NULL ,
  `dateupdate` DATETIME NOT NULL ,
  `notstudy` TINYINT(1) NOT NULL DEFAULT 1 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `teacherS_id1` INT UNSIGNED NOT NULL ,
  `subjectS_id1` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_materialS_teacherS1_idx1` (`teacherS_id1` ASC) ,
  INDEX `fk_materialS_subjectS1_idx1` (`subjectS_id1` ASC) ,
  CONSTRAINT `fk_materialS_teacherS1`
    FOREIGN KEY (`teacherS_id1` )
    REFERENCES `DO`.`teacherS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_materialS_subjectS1`
    FOREIGN KEY (`subjectS_id1` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`subgroupS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`subgroupS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`subgroupS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `classS_id1` INT UNSIGNED NOT NULL ,
  `subjectS_id` INT UNSIGNED NOT NULL ,
  `teacherS_id` INT UNSIGNED NULL ,
  `materialS_id` INT UNSIGNED NULL ,
  `isdefault` TINYINT(1) NOT NULL DEFAULT 1 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_subgroupS_classS1_idx1` (`classS_id1` ASC) ,
  INDEX `fk_subgroupS_subjectS1_idx` (`subjectS_id` ASC) ,
  INDEX `fk_subgroupS_teacherS1_idx` (`teacherS_id` ASC) ,
  INDEX `fk_subgroupS_materialS1_idx` (`materialS_id` ASC) ,
  CONSTRAINT `fk_subgroupS_classS1`
    FOREIGN KEY (`classS_id1` )
    REFERENCES `DO`.`classS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_subgroupS_subjectS1`
    FOREIGN KEY (`subjectS_id` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_subgroupS_teacherS1`
    FOREIGN KEY (`teacherS_id` )
    REFERENCES `DO`.`teacherS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_subgroupS_materialS1`
    FOREIGN KEY (`materialS_id` )
    REFERENCES `DO`.`materialS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisoklearnergroupS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`spisoklearnergroupS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`spisoklearnergroupS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `subgroupS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id1` INT UNSIGNED NOT NULL ,
  `countmark` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countabsent` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `averagemark` FLOAT UNSIGNED NOT NULL DEFAULT 0 ,
  `summark` INT UNSIGNED NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisoklearnergroupS_subgroupS1_idx` (`subgroupS_id` ASC) ,
  INDEX `fk_spisoklearnergroupS_learnerS1_idx` (`learnerS_id1` ASC) ,
  CONSTRAINT `fk_spisoklearnergroupS_subgroupS1`
    FOREIGN KEY (`subgroupS_id` )
    REFERENCES `DO`.`subgroupS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisoklearnergroupS_learnerS1`
    FOREIGN KEY (`learnerS_id1` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`timetableS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`timetableS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`timetableS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `number` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `dayweek` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `timestart` TIME NOT NULL ,
  `timefinish` TIME NOT NULL ,
  `subgroupS_id1` INT UNSIGNED NOT NULL ,
  `classroomS_id1` INT UNSIGNED NULL ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_timetableS_subgroupS1_idx1` (`subgroupS_id1` ASC) ,
  INDEX `fk_timetableS_classroomS1_idx1` (`classroomS_id1` ASC) ,
  INDEX `fk_timetableS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_timetableS_subgroupS1`
    FOREIGN KEY (`subgroupS_id1` )
    REFERENCES `DO`.`subgroupS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_timetableS_classroomS1`
    FOREIGN KEY (`classroomS_id1` )
    REFERENCES `DO`.`classroomS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_timetableS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisokteachersubjectsubgroupS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`spisokteachersubjectsubgroupS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`spisokteachersubjectsubgroupS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datestart` DATE NOT NULL ,
  `datefinish` DATE NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `subgroupS_id1` INT UNSIGNED NOT NULL ,
  `teachersubjectS_id1` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisokteachersubjectsubgroupS_subgroupS1_idx1` (`subgroupS_id1` ASC) ,
  INDEX `fk_spisokteachersubjectsubgroupS_teachersubjectS1_idx1` (`teachersubjectS_id1` ASC) ,
  CONSTRAINT `fk_spisokteachersubjectsubgroupS_subgroupS1`
    FOREIGN KEY (`subgroupS_id1` )
    REFERENCES `DO`.`subgroupS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokteachersubjectsubgroupS_teachersubjectS1`
    FOREIGN KEY (`teachersubjectS_id1` )
    REFERENCES `DO`.`teachersubjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Kakim  grupam prepodaet ';


-- -----------------------------------------------------
-- Table `DO`.`lessontypeS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`lessontypeS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`lessontypeS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(10) NOT NULL ,
  `description` VARCHAR(256) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`lessonS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`lessonS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`lessonS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `number` TINYINT UNSIGNED NOT NULL ,
  `date` DATETIME NOT NULL ,
  `hometask` VARCHAR(256) NULL DEFAULT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `subgroupS_id1` INT UNSIGNED NOT NULL ,
  `classroomS_id1` INT UNSIGNED NULL ,
  `teacherS_id1` INT UNSIGNED NULL ,
  `subjectS_id1` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_lessonS_subgroupS1_idx` (`subgroupS_id1` ASC) ,
  INDEX `fk_lessonS_classroomS1_idx` (`classroomS_id1` ASC) ,
  INDEX `fk_lessonS_teacherS1_idx` (`teacherS_id1` ASC) ,
  INDEX `fk_lessonS_subjectS1_idx` (`subjectS_id1` ASC) ,
  CONSTRAINT `fk_lessonS_subgroupS1`
    FOREIGN KEY (`subgroupS_id1` )
    REFERENCES `DO`.`subgroupS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_classroomS1`
    FOREIGN KEY (`classroomS_id1` )
    REFERENCES `DO`.`classroomS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_teacherS1`
    FOREIGN KEY (`teacherS_id1` )
    REFERENCES `DO`.`teacherS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_subjectS1`
    FOREIGN KEY (`subjectS_id1` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisoklessontypeS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`spisoklessontypeS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`spisoklessontypeS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `lessonS_id` INT UNSIGNED NOT NULL ,
  `lessontypeS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_lessonS_has_lessontypeS_lessontypeS1_idx` (`lessontypeS_id` ASC) ,
  INDEX `fk_lessonS_has_lessontypeS_lessonS1_idx` (`lessonS_id` ASC) ,
  CONSTRAINT `fk_lessonS_has_lessontypeS_lessonS1`
    FOREIGN KEY (`lessonS_id` )
    REFERENCES `DO`.`lessonS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_has_lessontypeS_lessontypeS1`
    FOREIGN KEY (`lessontypeS_id` )
    REFERENCES `DO`.`lessontypeS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`absentS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`absentS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`absentS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`schoolmarkS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`schoolmarkS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`schoolmarkS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `value` TINYINT UNSIGNED NULL DEFAULT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `spisoklessontypeS_id1` INT UNSIGNED NULL ,
  `learnerS_id1` INT UNSIGNED NOT NULL ,
  `absentS_id` INT UNSIGNED NULL ,
  `lessonS_id` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_schoolmarkS_spisoklessontypeS1_idx1` (`spisoklessontypeS_id1` ASC) ,
  INDEX `fk_schoolmarkS_learnerS1_idx1` (`learnerS_id1` ASC) ,
  INDEX `fk_schoolmarkS_absentS1_idx` (`absentS_id` ASC) ,
  INDEX `fk_schoolmarkS_lessonS1_idx` (`lessonS_id` ASC) ,
  CONSTRAINT `fk_schoolmarkS_spisoklessontypeS1`
    FOREIGN KEY (`spisoklessontypeS_id1` )
    REFERENCES `DO`.`spisoklessontypeS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_learnerS1`
    FOREIGN KEY (`learnerS_id1` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_absentS1`
    FOREIGN KEY (`absentS_id` )
    REFERENCES `DO`.`absentS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_lessonS1`
    FOREIGN KEY (`lessonS_id` )
    REFERENCES `DO`.`lessonS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`relationS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`relationS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`relationS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisokresponsiblelearnerS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`spisokresponsiblelearnerS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`spisokresponsiblelearnerS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `relationS_id` INT UNSIGNED NULL DEFAULT NULL ,
  `learnerS_id1` INT UNSIGNED NOT NULL ,
  `responsibleS_id1` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisokresponsiblelearnerS_relationS1_idx` (`relationS_id` ASC) ,
  INDEX `fk_spisokresponsiblelearnerS_learnerS1_idx` (`learnerS_id1` ASC) ,
  INDEX `fk_spisokresponsiblelearnerS_responsibleS1_idx` (`responsibleS_id1` ASC) ,
  CONSTRAINT `fk_spisokresponsiblelearnerS_relationS1`
    FOREIGN KEY (`relationS_id` )
    REFERENCES `DO`.`relationS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokresponsiblelearnerS_learnerS1`
    FOREIGN KEY (`learnerS_id1` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokresponsiblelearnerS_responsibleS1`
    FOREIGN KEY (`responsibleS_id1` )
    REFERENCES `DO`.`responsibleS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`sectionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`sectionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`sectionS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `number` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `subjectS_id1` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_sectionS_subjectS1_idx1` (`subjectS_id1` ASC) ,
  CONSTRAINT `fk_sectionS_subjectS1`
    FOREIGN KEY (`subjectS_id1` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`paragraphS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`paragraphS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`paragraphS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `number` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `state` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countquestion` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countpart` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `datecreate` DATETIME NOT NULL ,
  `dateupdate` DATETIME NOT NULL ,
  `notstudy` TINYINT(1) NOT NULL DEFAULT 1 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `countdiscussion` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countextention` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `materialS_id1` INT UNSIGNED NOT NULL ,
  `sectionS_id1` INT UNSIGNED NOT NULL ,
  `valid` TINYINT(1) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_paragraphS_materialS1_idx1` (`materialS_id1` ASC) ,
  INDEX `fk_paragraphS_sectionS1_idx1` (`sectionS_id1` ASC) ,
  CONSTRAINT `fk_paragraphS_materialS1`
    FOREIGN KEY (`materialS_id1` )
    REFERENCES `DO`.`materialS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_paragraphS_sectionS1`
    FOREIGN KEY (`sectionS_id1` )
    REFERENCES `DO`.`sectionS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`partparagraphS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`partparagraphS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`partparagraphS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` TEXT NULL DEFAULT NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `number` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `datecreate` DATETIME NOT NULL ,
  `dateupdate` DATETIME NOT NULL ,
  `countquestion` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  `paragraphS_id1` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_partparagraphS_partparagraphS1_idx` (`extension` ASC) ,
  INDEX `fk_partparagraphS_paragraphS1_idx1` (`paragraphS_id1` ASC) ,
  CONSTRAINT `fk_partparagraphS_paragraphS1`
    FOREIGN KEY (`paragraphS_id1` )
    REFERENCES `DO`.`paragraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`questionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`questionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`questionS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  `complexity` TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'сложность' ,
  `countanswer` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `countrightanswer` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  `partparagraphS_id1` INT UNSIGNED NOT NULL ,
  `valid` TINYINT(1) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_questionS_questionS1_idx` (`extension` ASC) ,
  INDEX `fk_questionS_partparagraphS1_idx1` (`partparagraphS_id1` ASC) ,
  CONSTRAINT `fk_questionS_partparagraphS1`
    FOREIGN KEY (`partparagraphS_id1` )
    REFERENCES `DO`.`partparagraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`answerS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`answerS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`answerS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  `right` TINYINT(1) NOT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `questionS_id1` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_answerS_questionS1_idx1` (`questionS_id1` ASC) ,
  CONSTRAINT `fk_answerS_questionS1`
    FOREIGN KEY (`questionS_id1` )
    REFERENCES `DO`.`questionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisokpartparagraphlessonS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`spisokpartparagraphlessonS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`spisokpartparagraphlessonS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `lessonS_id1` INT UNSIGNED NOT NULL ,
  `partparagraphS_id1` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisokpartparagraphlessonS_lessonS1_idx1` (`lessonS_id1` ASC) ,
  INDEX `fk_spisokpartparagraphlessonS_partparagraphS1_idx` (`partparagraphS_id1` ASC) ,
  CONSTRAINT `fk_spisokpartparagraphlessonS_lessonS1`
    FOREIGN KEY (`lessonS_id1` )
    REFERENCES `DO`.`lessonS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokpartparagraphlessonS_partparagraphS1`
    FOREIGN KEY (`partparagraphS_id1` )
    REFERENCES `DO`.`partparagraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`discussionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`discussionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`discussionS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `paragraphS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `countlike` SMALLINT NULL DEFAULT 0 ,
  `contcomment` SMALLINT NULL DEFAULT 0 ,
  `text` VARCHAR(256) NOT NULL ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  INDEX `fk_discussionS_paragraphS1_idx` (`paragraphS_id` ASC) ,
  INDEX `fk_discussionS_learnerS1_idx` (`learnerS_id` ASC) ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_discussionS_discussionS1_idx` (`extension` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`commentdiscussionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`commentdiscussionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`commentdiscussionS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `discussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `countlike` INT NULL DEFAULT 0 ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentdiscussionS_discussionS1_idx` (`discussionS_id` ASC) ,
  INDEX `fk_commentdiscussionS_commentdiscussionS1_idx` (`extension` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`likedislikediscussionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`likedislikediscussionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`likedislikediscussionS` (
  `discussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  INDEX `fk_likedislikediscussionS_discussionS1_idx` (`discussionS_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`likedislikecommentdiscussionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`likedislikecommentdiscussionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`likedislikecommentdiscussionS` (
  `commentdiscussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  INDEX `fk_likedislikediscussionS_commentdiscussionS1_idx` (`commentdiscussionS_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`paragraphextensionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`paragraphextensionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`paragraphextensionS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `paragraphS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  `countcomment` INT NULL DEFAULT 0 ,
  `countlike` INT NULL DEFAULT 0 ,
  `lastname` VARCHAR(256) NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_paragraphextensionS_paragraphS1_idx` (`paragraphS_id` ASC) ,
  INDEX `fk_paragraphextensionS_learnerS1_idx` (`learnerS_id` ASC) ,
  INDEX `fk_paragraphextensionS_paragraphextensionS1_idx` (`extension` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`commentparagraphextensionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`commentparagraphextensionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`commentparagraphextensionS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datetime` DATETIME NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `countlike` INT NOT NULL DEFAULT 0 ,
  `paragraphextensionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_commentparagraphextensionS_paragraphextensionS1_idx` (`paragraphextensionS_id` ASC) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentparagraphextensionS_commentparagraphextensionS1_idx` (`extension` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`likedislikecommentparagraphextensionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`likedislikecommentparagraphextensionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`likedislikecommentparagraphextensionS` (
  `commentparagraphextensionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  INDEX `fk_likedislikecommentparagraphextensionS_commentparagraphex_idx` (`commentparagraphextensionS_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`testS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`testS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`testS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `mark` TINYINT UNSIGNED NOT NULL DEFAULT 0 ,
  `datetime` DATETIME NOT NULL ,
  `paragraphS_id1` INT UNSIGNED NOT NULL ,
  `learnerS_id1` INT UNSIGNED NOT NULL ,
  `idsubject` INT UNSIGNED NOT NULL ,
  `idmaterial` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_testS_paragraphS1_idx1` (`paragraphS_id1` ASC) ,
  INDEX `fk_testS_learnerS1_idx1` (`learnerS_id1` ASC) ,
  CONSTRAINT `fk_testS_paragraphS1`
    FOREIGN KEY (`paragraphS_id1` )
    REFERENCES `DO`.`paragraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_testS_learnerS1`
    FOREIGN KEY (`learnerS_id1` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`likedislikeparagraphextensionS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`likedislikeparagraphextensionS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`likedislikeparagraphextensionS` (
  `paragraphextensionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  INDEX `fk_likedislikeparagraphextensionS_paragraphextensionS1_idx` (`paragraphextensionS_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisokclassyodaS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`spisokclassyodaS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`spisokclassyodaS` (
  `classS_id` INT UNSIGNED NOT NULL ,
  `yodaS_id` INT UNSIGNED NOT NULL ,
  `datestart` DATETIME NOT NULL ,
  `datefinish` DATETIME NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`yodaS_id`, `classS_id`) ,
  INDEX `fk_classS_has_yodaS_yodaS1_idx` (`yodaS_id` ASC) ,
  INDEX `fk_classS_has_yodaS_classS1_idx` (`classS_id` ASC) ,
  CONSTRAINT `fk_spisokclassyodaS_classS1`
    FOREIGN KEY (`classS_id` )
    REFERENCES `DO`.`classS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokclassyodaS_yodaS1`
    FOREIGN KEY (`yodaS_id` )
    REFERENCES `DO`.`yodaS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisokclassSlearnerS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`spisokclassSlearnerS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`spisokclassSlearnerS` (
  `classS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  INDEX `fk_spisokclassSlearnerS_learnerS1_idx` (`learnerS_id` ASC) ,
  INDEX `fk_spisokclassSlearnerS_classS1_idx` (`classS_id` ASC) ,
  PRIMARY KEY (`classS_id`, `learnerS_id`) ,
  CONSTRAINT `fk_spisokclassSlearnerS_classS1`
    FOREIGN KEY (`classS_id` )
    REFERENCES `DO`.`classS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokclassSlearnerS_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`scheduleringS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`scheduleringS` ;

CREATE  TABLE IF NOT EXISTS `DO`.`scheduleringS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `shift` TINYINT NOT NULL DEFAULT 1 ,
  `number` TINYINT NOT NULL ,
  `timestart` TIME NOT NULL ,
  `timefinish` TIME NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_scheduleringS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_scheduleringS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`studyduration`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DO`.`studyduration` ;

CREATE  TABLE IF NOT EXISTS `DO`.`studyduration` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NULL DEFAULT NULL ,
  `begin` DATE NOT NULL ,
  `end` DATE NOT NULL ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `used` TINYINT(1) NULL DEFAULT '0' ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_studyDuration_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_studyDuration_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `DO`.`schoolS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `DO` ;

-- -----------------------------------------------------
-- procedure cAbsent
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cAbsent`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cAbsent` (
	IN name VARCHAR(256)
)
BEGIN
	INSERT INTO `do`.`absents`(`id`,`text`)
	VALUES(NULL,name);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rAbsent
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rAbsent`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rAbsent` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cAnswerQuestion
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cAnswerQuestion`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cAnswerQuestion` (
	IN text TEXT, 
	IN rightA BOOL, 
	IN idQuestion INT UNSIGNED
)
BEGIN
	IF text IS NOT NULL AND idQuestion IS NOT NULL THEN
		IF rightA IS NULL THEN SET rightA = FALSE; END IF;
		INSERT INTO `do`.`answers`(`text`,`right`,`questionS_id1`)
		VALUES(text, rightA, idQuestion);
		
		CALL checkValidQuestion(idQuestion);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dAnswerOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dAnswerOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `dAnswerOne`(
	IN idAnswer INT UNSIGNED
)
BEGIN
	DECLARE idQuestion INT UNSIGNED;
	DECLARE isRight BOOL;
	SELECT `questionS_id1` INTO idQuestion 
	FROM `do`.`answers`
	WHERE `id` = idAnswer;
	SELECT `right` INTO isRight FROM `do`.`answers` WHERE `id` = idAnswer;
	IF isRight THEN
		UPDATE `do`.`questions`
		SET `countanswer` = `countanswer`-1,
			`countrightanswer` = `countrightanswer` -1
		WHERE `id` = idQuestion AND `deleted` = 0;
	ELSE
		UPDATE `do`.`questions`
		SET `countanswer` = `countanswer`-1
		WHERE `id` = idQuestion AND `deleted` = 0;
	END IF;
	UPDATE `do`.`answers` SET `deleted` = 1 WHERE `deleted` = 0 AND `id` = idAnswer;
	CALL checkValidQuestion(idQuestion);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rAnswerQuestion
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rAnswerQuestion`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rAnswerQuestion` (
	IN idAnswer INT UNSIGNED
)
BEGIN
	DELETE FROM `do`.`answers` WHERE `id` = idAnswer AND `deleteed` = 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cLearner
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cLearner`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cLearner` 
(
	IN iduser INT UNSIGNED,
	IN firstname VARCHAR(256),
	IN lastname VARCHAR(256),
	IN middlename VARCHAR(256),
	IN idschool INT UNSIGNED,
	IN idclass INT UNSIGNED
)
BEGIN
INSERT INTO `DO`.`learners`(
`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`,`classS_id`)VALUES(
 iduser, firstname, lastname, middlename, idschool, idclass);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cLesson
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cLesson`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cLesson` (
	idSubgroup INT UNSIGNED,
	idSubject INT UNSIGNED,
	idTeacher INT UNSIGNED,
	idClassroom INT UNSIGNED,
	number INT UNSIGNED,
	date DATETIME
)
BEGIN
	INSERT INTO `do`.`lessons`
	(`number`,`date`,`subgroupS_id1`,`classroomS_id1`,`teacherS_id1`,`subjectS_id1`)
	VALUES(number, date, idSubgroup, idClassroom, idTeacher, idSubject);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dParagraphOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dParagraphOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dParagraphOne` (
	IN idParagraph INT UNSIGNED
)
BEGIN
	DECLARE notstudy BOOL;
	DECLARE countSection INT UNSIGNED;
	DECLARE idSection INT UNSIGNED;
	DECLARE idMaterial INT UNSIGNED;

	SELECT `paragraphs`.`notstudy`, `paragraphs`.`sectionS_id1`, `paragraphs`.`materialS_id1`
		INTO notstudy, idSection, idMaterial
	FROM `do`.`paragraphs`
	WHERE `deleted` = 0 AND `id` = idParagraph;

	SELECT count(`paragraphs`.`id`)	INTO countSection
	FROM `do`.`paragraphs`
	WHERE `deleted` = 0 AND 
			`paragraphs`.`sectionS_id1` = idSection AND 
			`paragraphs`.`materialS_id1` = idMaterial;

	# 1 idMaterial
	# 2 idSection = 0 (by if)
	# 3 idMove
	# 4 NNP = -1 (to the end)
	# 5 global = true (ignore idSection)
	CALL resetNumberParagraphInMaterial(idMaterial, 0, idParagraph, -1, true);

	CALL dPartparagraphCascade(idParagraph);

	IF notstudy = 0 AND countSection > 1 THEN
		UPDATE `do`.`materials`
		SET `countparagraph` = `countparagraph`-1,
			`countparagraphactive` = `countparagraphactive`-1,
			`countsection` = `countsection`-1
		WHERE `id` = idMaterial AND `deleted` = 0;
	ELSEIF notstudy = 1 AND countSection > 1 THEN
		UPDATE `do`.`materials`
		SET `countparagraph` = `countparagraph`-1,
			`countsection` = `countsection`-1
		WHERE `id` = idMaterial AND `deleted` = 0;
	ELSEIF notstudy = 0 AND countSection = 1 THEN
		UPDATE `do`.`materials`
		SET `countparagraph` = `countparagraph`-1,
			`countparagraphactive` = `countparagraphactive`-1
		WHERE `id` = idMaterial AND `deleted` = 0;
	ELSE
		UPDATE `do`.`materials`
		SET `countparagraph` = `countparagraph`-1
		WHERE `id` = idMaterial AND `deleted` = 0;
	END IF;
	
	UPDATE `do`.`paragraphs`
	SET	`deleted` = 1
	WHERE `id` = idParagraph AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dPartparagraphCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dPartparagraphCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dPartparagraphCascade` (
	IN idParagraph INT UNSIGNED
)
BEGIN
	DECLARE idPartparagraph INT UNSIGNED;
	DECLARE done integer default 0;

	DECLARE CURS CURSOR FOR
		SELECT `partparagraphs`.`id`
		FROM `do`.`partparagraphs`
		WHERE `partparagraphs`.`paragraphS_id1` = idParagraph AND `deleted` = 0;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;
	OPEN CURS;
	WHILE done = 0 DO
		FETCH CURS INTO idPartparagraph;
		IF !done THEN
			CALL dQuestionCascade(idPartparagraph);
			CALL rPartparagraphLessonByPartparagraph(idPartparagraph);
		END IF;
	END WHILE;
	CLOSE CURS;
	
	UPDATE `do`.`partparagraphs`
	SET	`deleted` = 1
	WHERE `paragraphS_id1` = idParagraph AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cQuestionPartparagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cQuestionPartparagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cQuestionPartparagraph` (
	IN text TEXT, 
	IN complexity TINYINT UNSIGNED, 
	IN idPartparargraph INT UNSIGNED
)
BEGIN
	DECLARE idRoot INT UNSIGNED DEFAULT NULL;  
	DECLARE lenTEXT INT;  
	DECLARE countPartFullTEXT INT UNSIGNED; 
	DECLARE constPart INT DEFAULT 256;  
	DECLARE partTEXT VARCHAR(256);
        DECLARE scp INT UNSIGNED DEFAULT 0;
	
SET lenTEXT := CHAR_LENGTH(text);    
	IF (lenTEXT-constPart) > 0 THEN   
		SET countPartFullTEXT := lenTEXT / constPart;   
		SET @i = 0;    
		WHILE (@i <= countPartFullTEXT) DO
			SET scp = @i * constPart;
			IF @i = countPartFullTEXT THEN SET constPart = lenTEXT%constPart; END IF;
			SET partTEXT = SUBSTRING(text, (1 + scp), constPart);    
			IF @i = 0 THEN
				START TRANSACTION;
				INSERT INTO `do`.`questions`(`text`,`complexity`,`extension`,`partparagraphS_id1`)      
				VALUES(partTEXT, complexity, NULL, idPartparargraph);          
				SET idRoot = last_insert_id();
				#SELECT MAX(`do`.`questions`.`id`) INTO idRoot    
				#FROM `do`.`questiosns`     
				#WHERE `do`.`questions`.`extension` = NULL 
				#AND `do`.`questions`.`partparagraphS_id1` = idPartparargraph; 
				COMMIT;
				
				#SELECT @i, partTEXT, idRoot;
			ELSE     
				#SELECT @i, partTEXT, idRoot; 
				INSERT INTO `do`.`questions`(`text`,`complexity`,`extension`,`partparagraphS_id1`) 
				VALUES(partTEXT, complexity, idRoot, idPartparargraph);    
			END IF;    
			SET @i = @i +1;
		END WHILE;    
		#SELECT lenTEXT, countPartFullTEXT, constPart, lenTEXT%constPart;
		#SELECT * FROM `do`.`questions`;   
		# , SUBSTRING(text,((@i*constPart)+1),constPart)  
	ELSE   
		INSERT INTO `do`.`questions`(`text`,`complexity`,`extension`,`partparagraphS_id1`)   
		VALUES(text, complexity, NULL, idPartparargraph);  
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dQuestionOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dQuestionOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dQuestionOne` (
	IN idQuestion INT UNSIGNED
)
BEGIN
	DECLARE idPartParagraph INT UNSIGNED;
	DECLARE idParagraph INT UNSIGNED;
	CALL dAnswerCascade(idQuestion);
	
	SELECT `questions`.`partparagraphS_id1` INTO idPartParagraph
	FROM `do`.`questions`
	WHERE `id` = idQuestion AND `deleted` = 0;

	SELECT `partparagraphs`.`paragraphS_id1` INTO idParagraph
	FROM `do`.`partparagraphs`
	WHERE `id` = idPartParagraph AND `deleted` = 0;

	UPDATE `do`.`partparagraphs`
	SET `countquestion` = `countquestion` + 1
	WHERE `deleted` = 0 AND `id` = idPartParagraph;

	UPDATE `do`.`paragraphs`
	SET `countextention` = `countquestion` + 1
	WHERE `deleted` = 0 AND `id` = idParagraph;

	UPDATE `do`.`questions`
	SET `deleted` = 1
	WHERE `deleted` = 0 AND `id` = idQuestion;

	CALL checkValidParagraph(idParagraph);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rQuestion
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rQuestion`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rQuestion` (
	IN idQuestion INT UNSIGNED
)
BEGIN
	DELETE FROM `do`.`questions` WHERE `id` = idQuestion AND `deleted` = 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dQuestionCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dQuestionCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dQuestionCascade` (
	IN idPartParagraph INT UNSIGNED
)
BEGIN
	DECLARE idQuestion INT UNSIGNED;
	DECLARE done integer default 0;

	DECLARE CURS CURSOR FOR 
		SELECT `questions`.`id` FROM `do`.`questions` 
		WHERE `deleted` = 0 AND `partparagraphS_id1` = idPartParagraph;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;
	OPEN CURS;
	WHILE done = 0 DO
		FETCH CURS INTO idQuestion;
		IF !done THEN
			CALL dAnswersCascade(idQuestion);
		END IF;
	END WHILE;
	CLOSE CURS;
	
	UPDATE `do`.`questions`
	SET `deleted` = 1
	WHERE `deleted` = 0 AND `partparagraphS_id1` = idPartParagraph;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dAnswerCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dAnswerCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dAnswerCascade` (
	IN idQuestion INT UNSIGNED
)
BEGIN
	UPDATE `do`.`answers` SET `deleted` = 1 
	WHERE `questionS_id1` = idQuestion AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cClass
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cClass`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cClass` 
(
	IN level TINYINT UNSIGNED,
	IN entryyear SMALLINT UNSIGNED,
	IN idschool INT UNSIGNED,
	IN letter VARCHAR(2)
)
BEGIN
	INSERT INTO `DO`.`classs`(`name`,`level`,`entryyear`,`schoolS_id`,`letter`)
	VALUES( CONCAT(level, "-", letter), level, entryyear, idschool, letter);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dClassOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dClassOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dClassOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dClassCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dClassCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dClassCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rClassSchool
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rClassSchool`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rClassSchool` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rClassroom
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rClassroom`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rClassroom` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cKo
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cKo`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cKo` (
	iduser INT UNSIGNED,
	firstname VARCHAR(256),
	lastname VARCHAR(256),
	middlename VARCHAR(256),
	idSchool INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`kos`(`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`)
	VALUES(iduser, firstname, lastname, middlename, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dKoOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dKoOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dKoOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dKoCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dKoCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dKoCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rKo
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rKo`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rKo` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLearnerOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dLearnerOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dLearnerOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLearnerCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dLearnerCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dLearnerCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLearner
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rLearner`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rLearner` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLessonOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dLessonOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dLessonOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLesson
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rLesson`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rLesson` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cLessontype
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cLessontype`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cLessontype` (
	IN name VARCHAR(10),
	IN description VARCHAR(256)
)
BEGIN
	INSERT INTO `do`.`lessontypes`(`name`, `description`)
	VALUES(name, description);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLessontype
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rLessontype`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rLessontype` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cMaterialTeacher
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cMaterialTeacher`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cMaterialTeacher` (
	IN name VARCHAR(256),
	IN idTeacher INT UNSIGNED,
	IN idSubject INT UNSIGNED,
	IN state TINYINT UNSIGNED,
	IN notstudy BOOL,
	IN prefix VARCHAR(256)
)
BEGIN
	DECLARE name_auto VARCHAR(256);
	DECLARE sub_name VARCHAR(256);
	DECLARE def_name VARCHAR(256);
	DECLARE sub_level TINYINT;
	IF prefix IS NULL THEN SET prefix = "class"; END IF;
	IF name IS NULL THEN
		SELECT `do`.`subjects`.`name`, `do`.`subjects`.`level` 
		INTO sub_name, sub_level 
		FROM `do`.`subjects` WHERE `do`.`subjects`.`id`=idSubject;
		SET def_name := concat(sub_name, " ", sub_level, "-", prefix);

		SELECT count(*) INTO name_auto 
		FROM `do`.`materials` 
		WHERE `do`.`materials`.`teacherS_id1`=idTeacher 
			AND `do`.`materials`.`subjectS_id1`=idSubject 
			AND `do`.`materials`.`name` LIKE CONCAT(def_name,'%');
		IF name_auto != 0 THEN SET name_auto := concat(def_name, " (", name_auto, ")");
		ELSE SET name_auto := def_name; END IF;
	ELSE SET name_auto := name;
	END IF;
	INSERT INTO `do`.`materials`(`state`,`notstudy`,`datecreate`,`dateupdate`,`teacherS_id1`,`subjectS_id1`,`name`)
	VALUES(state, notstudy, now(), now(), idTeacher, idSubject, name_auto);	
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dMaterialOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dMaterialOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dMaterialOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rMaterialteacher
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rMaterialteacher`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rMaterialteacher` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cParagraphInSection
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cParagraphInSection`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cParagraphInSection` (
	number TINYINT UNSIGNED,
	name VARCHAR(256),
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`paragraphs`(`name`,`number`,`datecreate`,`dateupdate`,`materialS_id1`,`sectionS_id1`)
	VALUES(name, number, now(), now(), idMaterial, idSection);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rParagraphMaterial
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rParagraphMaterial`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rParagraphMaterial` (
	IN idParagraph INT UNSIGNED
)
BEGIN
	DELETE FROM `do`.`paragraphs` WHERE `id` = idParagraph AND `deleted` = 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dParagraphCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dParagraphCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dParagraphCascade` (
	IN idMaterial INT UNSIGNED
)
BEGIN
	DECLARE idParagraph INT UNSIGNED;
	DECLARE done integer default 0;

	DECLARE CURS CURSOR FOR
		SELECT `paragraphs`.`id`
		FROM `do`.`paragraphs`
		WHERE `materialS_id1` = idMaterial;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;
	OPEN CURS;
	WHILE done = 0 DO
		FETCH CURS INTO idParagraph;
		IF !done THEN
			CALL dPartparagraphCascade(idParagraph);
			CALL rTest(idParagraph);
		END IF;
	END WHILE;
	CLOSE CURS;
		
	UPDATE `do`.`paragraphs`
	SET	`deleted` = 1
	WHERE `materialS_id1` = idMaterial AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cPartparagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cPartparagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cPartparagraph` (
	number TINYINT UNSIGNED,
	name VARCHAR(256),
	text TEXT,
	idParagraph INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`partparagraphs`(`text`,`name`,`number`,`datecreate`,`dateupdate`,`paragraphS_id1`)
	VALUES(text, name, number, now(), now(),idParagraph);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dPartparagraphOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dPartparagraphOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dPartparagraphOne` (
	IN idPartParagraph INT UNSIGNED
)
BEGIN
	DECLARE idParagraph INT UNSIGNED;
	DECLARE countQuestion INT UNSIGNED;
	
	SELECT `partparagraphs`.`paragraphS_id1`, `partparagraphs`.`countquestion` 
		INTO idParagraph, countQuestion
	FROM `do`.`partparagraphs` 
	WHERE `id` = idPartParagraph AND `deleted` = 0;

	UPDATE `do`.`paragraphs`
	SET `countquestion` = `countquestion` - countQuestion, 
		`countpart` = `countpart` - 1
	WHERE `id` = idParagraph AND `deleted` = 0;

	CALL resetNumberPartparagraphInParagraph(idParagraph, idPartParagraph, -1);

	CALL dQuestionCascade(idPartParagraph);
	
	CALL rPartparagraphLessonByPartparagraph(idPartParagraph);

	UPDATE `do`.`partparagraphs`
	SET `deleted` = 1
	WHERE `deleted` = 0 AND `id` = idPartParagraph;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rPartparagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rPartparagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rPartparagraph` (
	IN idPartParagraph INT UNSIGNED
)
BEGIN
	DELETE FROM `do`.`partparagraphs` WHERE `id` = idPartParagraph;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cClassroom
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cClassroom`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cClassroom` (
	idSchool INT UNSIGNED,
	number INT,
	abbreviation VARCHAR(5),
	description VARCHAR(256)
)
BEGIN
	DECLARE name VARCHAR(45);
	IF abbreviation IS NOT NULL THEN
		SET name = CONCAT(number, " ", abbreviation);
	ELSE
		SET name = number;
	END IF;
	INSERT INTO `do`.`classrooms`(`name`,`abbreviation`,`number`,`description`,`schoolS_id`)
	VALUES(name, abbreviation, number, description, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cRelation
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cRelation`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cRelation` (
	name VARCHAR(256)
)
BEGIN
	INSERT INTO `do`.`relations`(`name`)
	VALUES(name);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSection
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rSection`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rSection` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLearnerSubgroup
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rLearnerSubgroup`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rLearnerSubgroup` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cTeacher
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cTeacher`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cTeacher`
(
	IN iduser INT UNSIGNED,
	IN firstname VARCHAR(256),
	IN lastname VARCHAR(256),
	IN middlename VARCHAR(256),
	IN idschool INT UNSIGNED,
	IN category TINYINT UNSIGNED
)
BEGIN
INSERT INTO `do`.`teachers`(
`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`,`category`)VALUES(
iduser,firstname,lastname,middlename,idschool,category);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cYoda
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cYoda`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cYoda` (
	IN idSchool INT UNSIGNED,
	IN idUser INT UNSIGNED,
	IN firstname VARCHAR(256),
	IN lastname VARCHAR(256),	
	IN middlename VARCHAR(256)
	
)
BEGIN
	INSERT INTO `do`.`yodas`(`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`)
	VALUES(idUser, firstname, lastname, middlename, idSchool);

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dYodaCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dYodaCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dYodaCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rYoda
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rYoda`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rYoda` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rRealation
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rRealation`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rRealation` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSchool
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cSchool`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cSchool` 
(
	IN number INT UNSIGNED,
	IN name VARCHAR(256),
	IN directoruser INT UNSIGNED,
	IN description TEXT
)
BEGIN
INSERT INTO `DO`.`schools`(
`number`,`name`,`directoruser`,`description`)VALUES(
 number, name, directoruser, description);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSchool
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rSchool`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rSchool` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cAbsentLesson
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cAbsentLesson`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cAbsentLesson` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSchoolmark
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cSchoolmark`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cSchoolmark` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSchoolmarkOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dSchoolmarkOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dSchoolmarkOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSchoolmark
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rSchoolmark`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rSchoolmark` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSection
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cSection`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cSection` (
	IN name VARCHAR(256),
	IN number TINYINT(1) UNSIGNED,
	IN idSubject INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`sections` (`name`,`number`,`subjectS_id1`)
	VALUES(name, number, idSubject);

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSectionOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dSectionOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dSectionOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSectionCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dSectionCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dSectionCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dClassLearnerOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dClassLearnerOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dClassLearnerOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dClassLearnerCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dClassLearnerCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dClassLearnerCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setSpisokClassLearner
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setSpisokClassLearner`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setSpisokClassLearner` (
	IN idClass INT UNSIGNED,
	IN idLearner INT UNSIGNED
)
BEGIN
	DECLARE csubgroup INT UNSIGNED;
	# add learner in class
	INSERT INTO `do`.`spisokclassslearners`(`classS_id`,`learnerS_id`)
	VALUES(idClass, idLearner);
	# add Learner in ALL exist default group
	SELECT count(id) INTO csubgroup FROM do.subgroups WHERE `isdefault`= true AND `classS_id1`=idClass;
	IF csubgroup > 0 THEN 
		CALL setLearnerToDefaultSubgroupAll(idLearner, idClass);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure transferToAnotherClass
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`transferToAnotherClass`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`transferToAnotherClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rClassLearner
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rClassLearner`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rClassLearner` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rYodaClass
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rYodaClass`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rYodaClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setYodaClass
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setYodaClass`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setYodaClass` (
	IN idClass INT UNSIGNED,
	IN idYoda INT UNSIGNED,
	IN datestart DATETIME
)
BEGIN
	INSERT INTO `do`.`spisokclassyodas`(`classS_id`,`yodaS_id`,`datestart`)
	VALUES(idClass, idYoda, datestart);
	
	UPDATE `do`.`yodas` SET `classS_id` = idClass WHERE `id` =  idYoda;
	UPDATE `do`.`classs` SET`yodaS_id` =  idYoda WHERE `id` = idClass;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure unsetYodaClass
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`unsetYodaClass`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`unsetYodaClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLearnerSubgroup
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dLearnerSubgroup`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dLearnerSubgroup` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLearnerSubgroupAll
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dLearnerSubgroupAll`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dLearnerSubgroupAll` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setLearnerToDefaultSubgroupAll
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setLearnerToDefaultSubgroupAll`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setLearnerToDefaultSubgroupAll` (
	IN idLearner INT UNSIGNED,
	IN idClass INT UNSIGNED
)
BEGIN
	DECLARE idSubgroup INT UNSIGNED;
	DECLARE done integer default 0;

	DECLARE CURS CURSOR FOR SELECT id FROM do.subgroups WHERE `isdefault`= true AND `classS_id1`=idClass;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;
	OPEN CURS;
	WHILE done = 0 DO
		FETCH CURS INTO idSubgroup;
		IF !done THEN	
			CALL setLearnerToSubgroup(idLearner, idSubgroup);
		END IF;
	END WHILE;
	CLOSE CURS;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setLearnerToSubgroup
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setLearnerToSubgroup`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setLearnerToSubgroup` (
	idLearner INT UNSIGNED,
	idSubgroup INT UNSIGNED
)
BEGIN
	IF idLearner IS NOT NULL AND idSubgroup IS NOT NULL THEN
		INSERT INTO `do`.`spisoklearnergroups`(`subgroupS_id`,`learnerS_id1`)
		VALUES(idSubgroup, idLearner);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLessontypeLessson
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rLessontypeLessson`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rLessontypeLessson` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setLessontype
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setLessontype`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setLessontype` (
	idLesson INT UNSIGNED,
	idLessontype INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`spisoklessontypes`(`lessonS_id`,`lessontypeS_id`)
	VALUES(idLesson, idLessontype);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rPartparagraphLessonByPartparagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rPartparagraphLessonByPartparagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rPartparagraphLessonByPartparagraph` (
	IN idPartParagraph INT UNSIGNED
)
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setPartparagraphLesson
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setPartparagraphLesson`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setPartparagraphLesson` (
	idLesson INT UNSIGNED,
	idPartparagraph INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`spisokpartparagraphlessons`(`lessonS_id1`,`partparagraphS_id1`)
	VALUES(idLesson, idPartparagraph);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setResponsible
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setResponsible`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setResponsible` (
	idRelation INT UNSIGNED,
	idLearner INT UNSIGNED,
	idResponsible INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`spisokresponsiblelearners`(`relationS_id`,`learnerS_id1`,`responsibleS_id1`)
	VALUES(idRelation, idLearner, idResponsible);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure unsetResponsible
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`unsetResponsible`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`unsetResponsible` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setSubjectClass
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setSubjectClass`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setSubjectClass` (
	IN idClass INT UNSIGNED,
	IN idSubject INT UNSIGNED,
	IN idTeacher INT UNSIGNED
)
BEGIN
	DECLARE idTeacherSubject INT UNSIGNED DEFAULT NULL;
	DECLARE idGroup INT UNSIGNED;
	# idTeacherSubject
	SELECT id INTO idTeacherSubject 
	FROM `do`.`teachersubjects` 
	WHERE `teacherS_id1`=idTeacher AND `subjectS_id1`=idSubject;

	IF idTeacherSubject IS NOT NULL THEN
		# create default subgroup for subject
		CALL cSubgroupDefault(idClass, idSubject, true, idGroup, idTeacher);
		# insert start teach teacher
		INSERT INTO `do`.`spisokteachersubjectsubgroups`(`datestart`,`subgroupS_id1`,`teachersubjectS_id1`)
		VALUES(NOW(), idGroup, idTeacherSubject);
	END IF;
	# add all learner in new default group for subject
	CALL setLearnerAllToSubgroupDefault(idGroup,idClass);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSubjectClass
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rSubjectClass`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rSubjectClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSubgroup
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cSubgroup`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cSubgroup` (
	IN name VARCHAR(256),
	IN idClass INT UNSIGNED,
	IN idSubject INT UNSIGNED,
	IN isdefault BOOL,
	INOUT idGroup INT UNSIGNED,
	IN idTeacher INT UNSIGNED
)
BEGIN
	IF isdefault THEN
		UPDATE `do`.`subgroups` SET `isdefault` = false 
		WHERE `subjectS_id`=idSubject AND `classS_id1`=idClass AND `isdefault` = true;
	END IF;

	INSERT INTO `do`.`subgroups`(`name`,`classS_id1`,`subjectS_id`,`isdefault`, `teacherS_id`)
	VALUES(name, idClass, idSubject, isdefault, idTeacher);

	SET idGroup = last_insert_id();
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSubgroupDefault
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cSubgroupDefault`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cSubgroupDefault` (
	IN idClass INT UNSIGNED,
	IN idSubject INT UNSIGNED,
	IN isdefault BOOL,
	OUT idGroupDef INT UNSIGNED,
	IN idTeacher INT UNSIGNED
)
BEGIN
	DECLARE nameGroup VARCHAR(256);	
	DECLARE count_subgroup INT UNSIGNED;
	DECLARE prefix VARCHAR(256);
	
	IF isdefault IS NULL THEN SET isdefault = true; END IF;
	IF prefix IS NULL THEN SET prefix = "Group"; END IF;
	
	# Whow much exist like current name group
	SELECT count(*) INTO count_subgroup FROM `do`.`subgroups`
	WHERE `classS_id1` = idClass AND `subjectS_id` = idSubject AND `name` LIKE CONCAT(prefix,'%');
	
	IF prefix >= 0 THEN SET prefix = CONCAT(prefix, " ", (count_subgroup+1)); END IF;
	IF isdefault THEN
		UPDATE `do`.`subgroups` SET `isdefault` = false 
		WHERE `classS_id1` = idClass AND `subjectS_id` = idSubject AND `isdefault` = true;
	END IF;
	CALL cSubgroup( prefix, idClass, idSubject, isdefault, idGroupDef, idTeacher);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSubgroupOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dSubgroupOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dSubgroupOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSubgroup
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rSubgroup`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rSubgroup` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setMaterialSubgroup
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setMaterialSubgroup`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setMaterialSubgroup` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSubject
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cSubject`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cSubject` (IN name VARCHAR(256), IN level TINYINT, IN color VARCHAR(9))
BEGIN
	INSERT INTO `DO`.`subjects`(`name`,`level`, `color`) VALUES(name, level, color);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSubjectOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dSubjectOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dSubjectOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSubject
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rSubject`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rSubject` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dTeacherOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dTeacherOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dTeacherOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dTeacherCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dTeacherCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dTeacherCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rTeacher
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rTeacher`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rTeacher` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rTeachersubject
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rTeachersubject`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rTeachersubject` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setTeachersubject
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setTeachersubject`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `setTeachersubject`(
	IN idTeacher INT UNSIGNED,
	IN idSubject INT UNSIGNED
)
BEGIN
	DECLARE cexist INT DEFAULT 0;
	SELECT count(*) into cexist 
	FROM `do`.`teachersubjects` WHERE teacherS_id1=idTeacher AND subjectS_id1=idSubject;
	IF cexist = 0 THEN
		INSERT INTO `do`.`teachersubjects`(`teacherS_id1`,`subjectS_id1`)
		VALUES(idTeacher, idSubject);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure unsetTeachersubject
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`unsetTeachersubject`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`unsetTeachersubject` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cTest
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cTest`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cTest` (
	idLearner INT UNSIGNED,
	idParagraph INT UNSIGNED,
	mark TINYINT UNSIGNED,
	countquestion SMALLINT UNSIGNED,
	correctanswer SMALLINT UNSIGNED
)
BEGIN
	IF mark IS NOT NULL AND idLearner IS NOT NULL AND idParagraph IS NOT NULL THEN
		INSERT INTO `do`.`tests`(`mark`,`datetime`,`countquestion`,`correctanswer`,`paragraphS_id1`,`learnerS_id1`)
		VALUES(mark, now(), countquestion, correctanswer, idParagraph, idLearner);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rTest
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rTest`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rTest` (
	IN idParagraph INT UNSIGNED
)
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cTimetable
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cTimetable`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cTimetable` (
	idSchool INT UNSIGNED,
	idClassroom INT UNSIGNED,
	idSubgroup INT UNSIGNED,
	number INT UNSIGNED,
	dayweek INT UNSIGNED,
	timestart INT UNSIGNED,
	timefinish INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`timetables`(
		`number`,`dayweek`, `timestart`,`timefinish`,
		`subgroupS_id1`,`classroomS_id1`,`schoolS_id`)
	VALUES(number, dayweek, timestart, timefinish, idSubgroup, idClassroom, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rTimetable
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rTimetable`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rTimetable` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dYodaOne
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dYodaOne`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dYodaOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cResponsible
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cResponsible`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cResponsible` (
	iduser INT UNSIGNED,
	firstname VARCHAR(256),
	lastname VARCHAR(256),
	middlename VARCHAR(256),
	idSchool INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`responsibles`(`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`)
	VALUES(iduser, firstname, lastname, middlename, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rResponsible
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rResponsible`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rResponsible` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure unsetSubjectClass
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`unsetSubjectClass`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`unsetSubjectClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setLearnerAllToSubgroupDefault
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`setLearnerAllToSubgroupDefault`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`setLearnerAllToSubgroupDefault` (
	idGroup INT UNSIGNED,
	idClass INT UNSIGNED
)
BEGIN
	DECLARE idLearner INT UNSIGNED;
	DECLARE done integer default 0;

	DECLARE CURS CURSOR FOR SELECT learnerS_id FROM spisokclassslearners WHERE classS_id = idClass;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;
	OPEN CURS;
	WHILE done = 0 DO
		FETCH CURS INTO idLearner;
		IF !done THEN	
			CALL setLearnerToSubgroup(idLearner,idGroup);
		END IF;
	END WHILE;
	CLOSE CURS;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure insParagraphInSection
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`insParagraphInSection`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`insParagraphInSection` (
	name VARCHAR(256),
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED
)
BEGIN
	DECLARE count_paragraph SMALLINT UNSIGNED;
	IF idMaterial IS NOT NULL AND idSection IS NOT NULL THEN		
		SELECT count(*) INTO count_paragraph 
		FROM `do`.`paragraphs` 
		WHERE `do`.`paragraphs`.`materialS_id1`=idMaterial
			AND `do`.`paragraphs`.`sectionS_id1` <= idSection;
		# reset paragraph number for all paragraph in material
		CALL resetNumberParagraphInMaterial(idMaterial, idSection, NULL, (count_paragraph+1), true);
		# create new paragraph
		CALL cParagraphInSection((count_paragraph+1), name, idMaterial, idSection);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure moveParagraphInSection
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`moveParagraphInSection`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`moveParagraphInSection` (
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED,
	idMove INT UNSIGNED,
	NNP TINYINT UNSIGNED
)
BEGIN
	IF idMaterial IS NOT NULL AND idSection IS NOT NULL AND idMove IS NOT NULL AND NNP IS NOT NULL THEN
		IF NNP IS NULL THEN
			SELECT count(*) INTO NNP 
			FROM `do`.`paragraphs` 
			WHERE `do`.`paragraphs`.`materialS_id1`=idMaterial
				AND `do`.`paragraphs`.`sectionS_id1` < (idSection+1);
		END IF;
		# reset all number paragraph
		CALL resetNumberParagraphInMaterial(idMaterial, idSection, idMove, NNP, false);
		# update mark paragraph for move
		UPDATE `do`.`paragraphs`
		SET `do`.`paragraphs`.`number` = NNP , `do`.`paragraphs`.`dateupdate` = now()
		WHERE `do`.`paragraphs`.`id` = idMove;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure moveParagraphInMaterial
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`moveParagraphInMaterial`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`moveParagraphInMaterial` (
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED,
	idMove INT UNSIGNED,
	NSP INT UNSIGNED,
	NNP TINYINT UNSIGNED
)
BEGIN
	IF idMaterial IS NOT NULL AND idSection IS NOT NULL AND idMove IS NOT NULL AND NSP IS NOT NULL THEN			
		IF NNP IS NULL THEN
			SELECT count(*) INTO NNP 
			FROM `do`.`paragraphs` 
			WHERE `do`.`paragraphs`.`materialS_id1`=idMaterial
				AND `do`.`paragraphs`.`sectionS_id1` < (idSection+1);
		END IF;

		# reset number without cur paragraph
		CALL resetNumberParagraphInMaterial(idMaterial, idSection, idMove, NNP, true);
		
		IF (NSP NOT IN ( SELECT sectionS_id1 FROM paragraphS WHERE materialS_id1 = idMaterial)) THEN
			UPDATE materialS SET countsection = countsection + 1 WHERE id = idMaterial;
		END IF;

		# update cur paragraph in NSP,NNP
		UPDATE `do`.`paragraphs`
		SET `do`.`paragraphs`.`number` = NNP, 
			`do`.`paragraphs`.`sectionS_id1` = NSP, 
			`do`.`paragraphs`.`dateupdate` = now()
		WHERE `do`.`paragraphs`.`id` = idMove;

		IF (idSection NOT IN ( SELECT sectionS_id1 FROM paragraphS WHERE materialS_id1 = idMaterial)) THEN
			UPDATE materialS SET countsection = countsection - 1 WHERE id = idMaterial;
		END IF;

	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure resetNumberParagraphInMaterial
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`resetNumberParagraphInMaterial`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`resetNumberParagraphInMaterial` (
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED,
	idMove INT UNSIGNED,
	NNP SMALLINT,
	global BOOL
)
BEGIN
	DECLARE CNP SMALLINT UNSIGNED;
	DECLARE direction SMALLINT DEFAULT 0;

	IF idSection IS NOT NULL THEN
		IF idMove IS NULL THEN
			# reset in this section of material (create paragraph in material [last insection])
			UPDATE `do`.`paragraphs`
			SET `do`.`paragraphs`.`number` = `do`.`paragraphs`.`number` + 1 , `do`.`paragraphs`.`dateupdate` = now()
			WHERE `do`.`paragraphs`.`materialS_id1` = idMaterial AND `number` >= NNP;
		ELSEIF idMove IS NOT NULL THEN
			SELECT `do`.`paragraphs`.`number` INTO CNP 
			FROM `do`.`paragraphs` WHERE `do`.`paragraphs`.`id` = idMove;

			IF global THEN
				# reset in this section of material with mark moved paragraph
				IF NNP = -1 THEN # move to end !!! REMOVE AFTER
					SET direction := -1;
					UPDATE `do`.`paragraphs`
					SET `do`.`paragraphs`.`number` = `do`.`paragraphs`.`number` + (direction) , `do`.`paragraphs`.`dateupdate` = now()
					WHERE `do`.`paragraphs`.`materialS_id1` = idMaterial 
						AND `do`.`paragraphs`.`id` != idMove AND `number` > CNP;
				ELSEIF NNP > CNP THEN # move down
					SET direction := -1;
					UPDATE `do`.`paragraphs`
					SET `do`.`paragraphs`.`number` = `do`.`paragraphs`.`number` + (direction) , `do`.`paragraphs`.`dateupdate` = now()
					WHERE `do`.`paragraphs`.`materialS_id1` = idMaterial 
						AND `do`.`paragraphs`.`id` != idMove AND `number` > CNP AND `number` <= NNP;
				ELSEIF NNP < CNP THEN # move up
					SET direction := +1;
					UPDATE `do`.`paragraphs`
					SET `do`.`paragraphs`.`number` = `do`.`paragraphs`.`number` + (direction) , `do`.`paragraphs`.`dateupdate` = now()
					WHERE `do`.`paragraphs`.`materialS_id1` = idMaterial 
						AND `do`.`paragraphs`.`id` != idMove AND `number` >= NNP AND `number` < CNP;
				END IF; 
			ELSE
				# reset in this section of material with mark moved paragraph
				IF NNP > CNP THEN # move down
					SET direction := -1;
					UPDATE `do`.`paragraphs`
					SET `do`.`paragraphs`.`number` = `do`.`paragraphs`.`number` + (direction) , `do`.`paragraphs`.`dateupdate` = now()
					WHERE `do`.`paragraphs`.`materialS_id1` = idMaterial AND `do`.`paragraphs`.`sectionS_id1` = idSection
						AND `do`.`paragraphs`.`id` != idMove AND `number` > CNP AND `number` <= NNP;
				ELSEIF NNP < CNP THEN # move up
					SET direction := +1;
					UPDATE `do`.`paragraphs`
					SET `do`.`paragraphs`.`number` = `do`.`paragraphs`.`number` + (direction) , `do`.`paragraphs`.`dateupdate` = now()
					WHERE `do`.`paragraphs`.`materialS_id1` = idMaterial AND `do`.`paragraphs`.`sectionS_id1` = idSection 
						AND `do`.`paragraphs`.`id` != idMove AND `number` >= NNP AND `number` < CNP;
				END IF;
			END IF;
		END IF;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure switchNotstudyParagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`switchNotstudyParagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`switchNotstudyParagraph` (
	idParagraph INT UNSIGNED,
	notstudy BOOL
)
BEGIN
	UPDATE `do`.`paragraphs` SET `notstudy` = notstudy WHERE `do`.`paragraphs`.`id` = idParagraph;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure insPartparagraphInParagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`insPartparagraphInParagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`insPartparagraphInParagraph` (
	name VARCHAR(256),
	idParagraph INT UNSIGNED
)
BEGIN
	DECLARE count_partparagraph SMALLINT UNSIGNED;
	IF idParagraph IS NOT NULL THEN		
		SELECT count(*) INTO count_partparagraph 
		FROM `do`.`partparagraphs` 
		WHERE `do`.`partparagraphs`.`paragraphS_id1`=idParagraph;
		# reset partparagraph number for all partparagraph in paragraph
		CALL resetNumberPartparagraphInParagraph(idParagraph, NULL, (count_partparagraph+1));
		# create new partparagraph
		CALL cPartparagraph((count_partparagraph+1), name, idParagraph);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure resetNumberPartparagraphInParagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`resetNumberPartparagraphInParagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`resetNumberPartparagraphInParagraph` (
	idParagraph INT UNSIGNED,
	idMove INT UNSIGNED,
	NNP SMALLINT
)
BEGIN
	DECLARE CNP SMALLINT UNSIGNED;
	DECLARE direction SMALLINT DEFAULT 0;

	IF idParagraph IS NOT NULL THEN
		IF idMove IS NULL THEN
			# reset in this paragraph (create partparagraph in material [last insection])
			UPDATE `do`.`partparagraphs`
			SET `do`.`partparagraphs`.`number` = `do`.`partparagraphs`.`number` + 1 , 
				`do`.`partparagraphs`.`dateupdate` = now()
			WHERE `do`.`partparagraphs`.`paragraphS_id1` = idParagraph AND `number` >= NNP;
		ELSEIF idMove IS NOT NULL THEN
			SELECT `do`.`partparagraphs`.`number` INTO CNP FROM `do`.`partparagraphs` 
			WHERE `do`.`partparagraphs`.`id` = idMove;
			# reset in this paragraph with mark moved partparagraph
			IF NNP = -1 THEN # move full down !!! AFTER DELETE NECESSARILY
				SET direction := -1;
				UPDATE `do`.`partparagraphs`
				SET `do`.`partparagraphs`.`number` = `do`.`partparagraphs`.`number` + (direction) , 
					`do`.`partparagraphs`.`dateupdate` = now()
				WHERE `do`.`partparagraphs`.`paragraphS_id1` = idParagraph
					AND `do`.`partparagraphs`.`id` != idMove
					AND `number` > CNP;
			ELSEIF NNP > CNP THEN # move down
				SET direction := -1;
				UPDATE `do`.`partparagraphs`
				SET `do`.`partparagraphs`.`number` = `do`.`partparagraphs`.`number` + (direction) , 
					`do`.`partparagraphs`.`dateupdate` = now()
				WHERE `do`.`partparagraphs`.`paragraphS_id1` = idParagraph
					AND `do`.`partparagraphs`.`id` != idMove 
					AND `number` > CNP AND `number` <= NNP;
			ELSEIF NNP < CNP THEN # move up
				SET direction := +1;
				UPDATE `do`.`partparagraphs`
				SET `do`.`partparagraphs`.`number` = `do`.`partparagraphs`.`number` + (direction) , 
					`do`.`partparagraphs`.`dateupdate` = now()
				WHERE `do`.`partparagraphs`.`paragraphS_id1` = idParagraph
					AND `do`.`partparagraphs`.`id` != idMove 
					AND `number` >= NNP AND `number` < CNP;
			END IF;
		END IF;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure movePartparagraphInParagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`movePartparagraphInParagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`movePartparagraphInParagraph` (
	idParagraph INT UNSIGNED,
	idMove INT UNSIGNED,
	NNP TINYINT UNSIGNED
)
BEGIN
	IF idParagraph IS NOT NULL AND idMove IS NOT NULL THEN
		IF NNP IS NULL THEN
			SELECT count(*) INTO NNP 
			FROM `do`.`partparagraphs` 
			WHERE `do`.`partparagraphs`.`paragraphS_id1`=idParagraph;
		END IF;
		# reset all number partparagraph
		CALL resetNumberPartparagraphInParagraph(idParagraph, idMove, NNP);
		# update mark partparagraph for move
		UPDATE `do`.`partparagraphs`
		SET `do`.`partparagraphs`.`number` = NNP , `do`.`partparagraphs`.`dateupdate` = now()
		WHERE `do`.`partparagraphs`.`id` = idMove;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure switchNotstudyMaterial
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`switchNotstudyMaterial`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`switchNotstudyMaterial` (
	idMaterial INT UNSIGNED,
	notstudy BOOL
)
BEGIN
	UPDATE `do`.`materials` SET `notstudy` = notstudy WHERE `do`.`materials`.`id` = idMaterial;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure moveQuestionInPartparagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`moveQuestionInPartparagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`moveQuestionInPartparagraph` (
	idPartparagraph INT UNSIGNED,
	idMove INT UNSIGNED
)
BEGIN
	UPDATE `do`.`questions`	SET	`partparagraphS_id1` = idPartparagraph WHERE `do`.`questions`.`id`=idMove;	
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSchedulering
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`cSchedulering`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`cSchedulering` (
	idSchool INT UNSIGNED,
	shift TINYINT UNSIGNED,
	number TINYINT UNSIGNED,
	timestart TIME,
	timefinsh TIME
)
BEGIN
	INSERT INTO `do`.`schedulerings`(`timestart`,`timefinsh`,`number`,`shift`,`schoolS_id`)
	VALUES(timestart, timefinsh, number, shift, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSchedulering
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`rSchedulering`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`rSchedulering` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure resetVisitaverage
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`resetVisitaverage`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`resetVisitaverage` (
	idSubgroup INT UNSIGNED,
	idLearner INT UNSIGNED,
	value TINYINT UNSIGNED,
	visit SMALLINT UNSIGNED
)
BEGIN
	DECLARE count_mark_old SMALLINT UNSIGNED DEFAULT 0;
	DECLARE average_mark_old FLOAT UNSIGNED DEFAULT 0;
	DECLARE sum_mark_old INT UNSIGNED DEFAULT 0;
	
	DECLARE count_mark_new SMALLINT UNSIGNED DEFAULT 0;
	DECLARE average_mark_new FLOAT UNSIGNED DEFAULT 0;
	DECLARE sum_mark_new INT UNSIGNED DEFAULT 0;

	IF value IS NOT NULL THEN # mark
		SELECT `countmark`,`summark`,`averagemark` INTO count_mark_old, sum_mark_old, average_mark_old
		FROM `do`.`spisoklearnergroups`
		WHERE `subgroupS_id` = idSubgroup AND `learnerS_id1` = idLearner;

		SET sum_mark_new = sum_mark_old + value;
		SET count_mark_new = sum_mark_old + 1;
		SET average_mark_new = sum_mark_new / count_mark_new;

		UPDATE `do`.`spisoklearnergroups`
		SET `countmark` = count_mark_new,
			`summark` = sum_mark_new,
			`averagemark` = average_mark_new
		WHERE `subgroupS_id` = idSubgroup AND `learnerS_id1` = idLearner;
	ELSEIF visit IS NOT NULL THEN # absent
		UPDATE `do`.`spisoklearnergroups`
		SET `countvisit` = `countvisit` + 1
		WHERE `subgroupS_id` = idSubgroup AND `learnerS_id1` = idLearner;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure getNextPrevIdClass
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`getNextPrevIdClass`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`getNextPrevIdClass` (
	IN curclass INT UNSIGNED,
	IN idSchool INT UNSIGNED
)
BEGIN
	DECLARE letter VARCHAR(2);
	DECLARE level TINYINT UNSIGNED;	
	DECLARE cInLevel TINYINT UNSIGNED;
	DECLARE idNEXTClass INT UNSIGNED DEFAULT NULL;
	DECLARE idPREVClass INT UNSIGNED DEFAULT NULL;
	DECLARE nameNEXTClass VARCHAR(256);
	DECLARE namePREVClass VARCHAR(256);

	SELECT `do`.`classs`.`letter`, `do`.`classs`.`level` INTO letter, level 
	FROM `do`.`classs` 
	WHERE `do`.`classs`.`id`= curclass 
		AND `do`.`classs`.`schoolS_id`= idSchool;
	#NEXT
	SELECT count(*) INTO cInLevel FROM `do`.`classs` 
	WHERE `do`.`classs`.`level`=level 
		AND `do`.`classs`.`letter` > letter
		AND `do`.`classs`.`schoolS_id`= idSchool;
	
	IF cInLevel > 0 THEN
		SELECT id, name INTO idNEXTClass, nameNEXTClass  FROM `do`.`classs` 
		WHERE `do`.`classs`.`letter` > letter
			AND `do`.`classs`.`level` = level 
			AND `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level`,`do`.`classs`.`letter` LIMIT 0,1;
	ELSE
		SELECT id, name INTO idNEXTClass, nameNEXTClass FROM `do`.`classs` 
		WHERE `do`.`classs`.`level` > level 
			AND `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level`,`do`.`classs`.`letter` LIMIT 0,1;
	END IF;
	IF idNEXTClass IS NULL THEN # FIRST
		SELECT id, name INTO idNEXTClass, nameNEXTClass FROM `do`.`classs`
		WHERE `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level`,`do`.`classs`.`letter` LIMIT 0,1;
	END IF;
	#PREV
	SELECT count(*) INTO cInLevel FROM `do`.`classs` 
	WHERE `do`.`classs`.`level`=level 
		AND `do`.`classs`.`letter` < letter
		AND `do`.`classs`.`schoolS_id`= idSchool;
	
	IF cInLevel > 0 THEN
		SELECT id, name INTO idPREVClass, namePREVClass FROM `do`.`classs` 
		WHERE `do`.`classs`.`letter` < letter
			AND `do`.`classs`.`level` = level
			AND `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level` DESC,`do`.`classs`.`letter` DESC LIMIT 0,1;
	ELSE
		SELECT id, name INTO idPREVClass, namePREVClass FROM `do`.`classs` 
		WHERE `do`.`classs`.`level` < level 
			AND `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level` DESC,`do`.`classs`.`letter` DESC LIMIT 0,1;
	END IF;
	IF idPREVClass IS NULL THEN # LAST
		SELECT id, name INTO idPREVClass, namePREVClass FROM `do`.`classs`
		WHERE `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level` DESC,`do`.`classs`.`letter` DESC LIMIT 0,1;
	END IF;
	SELECT idPREVClass, namePREVClass, idNEXTClass, nameNEXTClass;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure checkValidQuestion
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`checkValidQuestion`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `checkValidQuestion`(
	IN idQuestion INT UNSIGNED
)
BEGIN
	DECLARE valid BOOL;
	DECLARE countAll INT UNSIGNED;
	DECLARE countRight INT UNSIGNED;
	DECLARE idParagraph INT UNSIGNED;

	SELECT count(`answers`.`id`) INTO countAll
	FROM `do`.`answers`
	WHERE `answers`.`questionS_id1` = idQuestion AND `deleted` = 0;

	SELECT count(`answers`.`id`) INTO countRight
	FROM `do`.`answers`
	WHERE `answers`.`questionS_id1` = idQuestion AND `deleted` = 0 AND `answers`.`right` = 1;
	
	IF countAll >= 4 AND countRight >= 1 THEN SET valid = 1; ELSE SET valid = 0; END IF;

	UPDATE `do`.`questions` SET `valid` = valid WHERE `id` = idQuestion;
	
	SELECT `partparagraphs`.`paragraphS_id1` INTO idParagraph
	FROM `do`.`partparagraphs` 
	WHERE `id` = (
		SELECT `questions`.`partparagraphS_id1` 
		FROM `do`.`questions` 
		WHERE `id`=idQuestion
	);

	CALL checkValidParagraph(idParagraph);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dAnswersCascade
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`dAnswersCascade`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`dAnswersCascade` (
	IN idQuestion INT UNSIGNED
)
BEGIN
	UPDATE `do`.`answers` SET `deleted` = 1 
	WHERE `questionS_id1` = idQuestion AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure checkValidParagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`checkValidParagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`checkValidParagraph` (
	IN idParagraph INT UNSIGNED
)
BEGIN
	DECLARE countQuestion INT UNSIGNED;
	SELECT count(id) INTO countQuestion FROM
	(
		(
			SELECT * FROM `do`.`questionS` where partparagraphS_id1 in 
			(
				Select id from do.partparagraphs where paragraphS_id1 = idParagraph
			) 
			and complexity = 1 and valid = 1 and extension is null AND deleted = 0 ORDER BY RAND() limit 0,3 
		) 
		union (
			SELECT * FROM `do`.`questionS` where partparagraphS_id1 in 
			(
				Select id from do.partparagraphs where paragraphS_id1 = idParagraph) 
				and complexity = 2 and valid = 1 and extension is null AND deleted = 0 ORDER BY RAND() limit 0,2
			) 
		union (
			SELECT * FROM `do`.`questionS` where partparagraphS_id1 in 
			(
				Select id from do.partparagraphs where paragraphS_id1 = idParagraph
			) 
			and complexity = 3 and valid = 1 and extension is null AND deleted = 0 ORDER BY RAND() limit 0,1
		)
	) as B;
	IF countQuestion >= 6 THEN
		UPDATE `do`.`paragraphs` SET `valid` = 1 WHERE `id` = idParagraph;
	ELSE
		UPDATE `do`.`paragraphs` SET `valid` = 0 WHERE `id` = idParagraph;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure changeStudyStateParagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`changeStudyStateParagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`changeStudyStateParagraph` (
	IN idParagraph INT UNSIGNED,
	IN notstudy BOOL
)
BEGIN
	DECLARE idMaterial INT UNSIGNED;

	SELECT `paragraphs`.`materialS_id1` INTO idMaterial
	FROM `do`.`paragraphs`
	WHERE `id` = idParagraph;

	UPDATE `do`.`paragraphs` 
	SET `notstudy` = notstudy 
	WHERE `id` = idParagraph AND `deleted` = 0;
	
	IF notstudy = 0 THEN
		UPDATE `do`.`materials`
		SET `countparagraphactive` = `countparagraphactive`+1
		WHERE `deleted` = '0' AND `notstudy` = '0' AND `id` = idMaterial;
	ELSE
		UPDATE `do`.`materials`
		SET `countparagraphactive` = `countparagraphactive`-1
		WHERE `deleted` = '0' AND `notstudy` = '0' AND `id` = idMaterial;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure changeStudyStateMaterial
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`changeStudyStateMaterial`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`changeStudyStateMaterial` (
	IN idMaterial INT UNSIGNED,
	IN notstudy BOOL
)
BEGIN
	UPDATE `do`.`materials` 
	SET `notstudy` = notstudy
	WHERE `id` = idMaterial AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure uPartparagraph
-- -----------------------------------------------------

USE `DO`;
DROP procedure IF EXISTS `DO`.`uPartparagraph`;

DELIMITER $$
USE `DO`$$
CREATE PROCEDURE `DO`.`uPartparagraph` (
	name VARCHAR(256),
	text TEXT,
	idParagraph INT UNSIGNED
)
BEGIN
	UPDATE `partparagraphs` SET `text`= text, `name`= name, `dateupdate`= now() WHERE id = idParagraph;
END$$

DELIMITER ;
USE `DO`;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`classS_AINS` $$
USE `DO`$$


CREATE TRIGGER `classS_AINS` AFTER INSERT ON classS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE schoolS SET countclass = countclass + 1 WHERE id = NEW.schoolS_id;
END$$


DELIMITER ;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`learnerS_AINS` $$
USE `DO`$$


CREATE TRIGGER `learnerS_AINS` AFTER INSERT ON learnerS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE schoolS SET countlearner = countlearner + 1 WHERE id = NEW.schoolS_id;
END
$$


DELIMITER ;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`teacherS_AINS` $$
USE `DO`$$


CREATE TRIGGER `teacherS_AINS` AFTER INSERT ON teacherS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE schoolS SET countteacher = countteacher + 1 WHERE id = NEW.schoolS_id;
END
$$


DELIMITER ;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`koS_AINS` $$
USE `DO`$$


CREATE TRIGGER `koS_AINS` AFTER INSERT ON koS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE schoolS SET countko = countko + 1 WHERE id = NEW.schoolS_id;
END
$$


DELIMITER ;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`classroomS_AINS` $$
USE `DO`$$


CREATE TRIGGER `classroomS_AINS` AFTER INSERT ON classroomS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one

BEGIN
UPDATE schoolS SET countclassroom = countclassroom + 1 WHERE id = NEW.schoolS_id;
END
$$


DELIMITER ;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`schoolmarkS_AINS` $$
USE `DO`$$


CREATE TRIGGER `schoolmarkS_AINS` AFTER INSERT ON schoolmarkS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	
	CALL resetVisitaverage(
		(SELECT `subgroupS_id1` FROM `do`.`lessonS` WHERE `id` = NEW.`lessonS_id`), 
		NEW.learnerS_id1, NEW.value, NEW.absentS_id
	);
END$$


DELIMITER ;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`paragraphS_AINS` $$
USE `DO`$$


CREATE TRIGGER `paragraphS_AINS` AFTER INSERT ON paragraphS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE materialS SET countparagraph = countparagraph + 1 WHERE id = NEW.materialS_id1;
END$$


USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`paragraphS_BINS` $$
USE `DO`$$


CREATE TRIGGER `paragraphS_BINS` BEFORE INSERT ON paragraphS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	IF (NEW.sectionS_id1 NOT IN (
						SELECT sectionS_id1 
						FROM paragraphS 
						WHERE materialS_id1 = NEW.materialS_id1)) THEN
		UPDATE materialS SET countsection = countsection + 1 WHERE id = NEW.materialS_id1;
	END IF;
END
$$


DELIMITER ;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`partparagraphS_AINS` $$
USE `DO`$$


CREATE TRIGGER `partparagraphS_AINS` AFTER INSERT ON partparagraphS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE paragraphS SET countpart = countpart + 1 WHERE id = NEW.paragraphS_id1;
END
$$


DELIMITER ;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`questionS_AINS` $$
USE `DO`$$


CREATE TRIGGER `questionS_AINS` AFTER INSERT ON questionS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	DECLARE tempparagraphS_id INTEGER;

	UPDATE partparagraphS SET countquestion = countquestion + 1 WHERE id = NEW.partparagraphS_id1;
	
	SET @tempparagraphS_id := (SELECT paragraphS_id1 FROM partparagraphS WHERE id = NEW.partparagraphS_id1);
	
	UPDATE paragraphS SET countquestion = countquestion + 1 WHERE id = @tempparagraphS_id;
END
$$


DELIMITER ;

DELIMITER $$

USE `DO`$$
DROP TRIGGER IF EXISTS `DO`.`answerS_AINS` $$
USE `DO`$$


CREATE TRIGGER `answerS_AINS` AFTER INSERT ON answerS FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	UPDATE questionS SET countanswer = countanswer + 1 WHERE id = NEW.questionS_id1;
	IF (NEW.`right`) THEN
		UPDATE questionS SET countrightanswer = countrightanswer + 1 WHERE id = NEW.questionS_id1;
	END IF;
END
$$


DELIMITER ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
