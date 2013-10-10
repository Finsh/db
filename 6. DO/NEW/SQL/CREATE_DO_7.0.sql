SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `admin_do` ;
CREATE SCHEMA IF NOT EXISTS `admin_do` DEFAULT CHARACTER SET utf8 ;
USE `admin_do` ;

-- -----------------------------------------------------
-- Table `admin_do`.`schools`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`schools` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`schools` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `number` INT UNSIGNED NULL DEFAULT NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `directoruser` INT UNSIGNED NOT NULL COMMENT 'id пользователя выполняющий роль директора' ,
  `countclass` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countlearner` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countteacher` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countko` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countclassroom` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `description` TEXT NULL DEFAULT NULL ,
  `countresponsible` SMALLINT UNSIGNED NOT NULL DEFAULT 0 ,
  `idstudyduration` INT UNSIGNED NULL DEFAULT NULL ,
  `countstudyday` TINYINT UNSIGNED NOT NULL DEFAULT '5' ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`yodas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`yodas` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`yodas` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `classS_id` INT UNSIGNED NULL DEFAULT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_yodaS_schoolS1_idx` (`schoolS_id` ASC) ,
  INDEX `fk_yodaS_classS1_idx` (`classS_id` ASC) ,
  CONSTRAINT `fk_yodaS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_yodaS_classS1`
    FOREIGN KEY (`classS_id` )
    REFERENCES `admin_do`.`classs` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`classs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`classs` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`classs` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `level` TINYINT UNSIGNED NOT NULL ,
  `entryyear` SMALLINT UNSIGNED NOT NULL ,
  `endyear` SMALLINT UNSIGNED NULL DEFAULT NULL ,
  `countlearner` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `yodaS_id` INT UNSIGNED NULL DEFAULT NULL ,
  `letter` VARCHAR(2) NULL DEFAULT 'А' ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_classS_schoolS1_idx` (`schoolS_id` ASC) ,
  INDEX `fk_classS_yodaS1_idx` (`yodaS_id` ASC) ,
  CONSTRAINT `fk_classS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_classS_yodaS1`
    FOREIGN KEY (`yodaS_id` )
    REFERENCES `admin_do`.`yodas` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`learners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`learners` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`learners` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `classS_id` INT UNSIGNED NULL DEFAULT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_learnerS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_learnerS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`teachers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`teachers` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`teachers` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `absentstart` DATE NULL DEFAULT NULL ,
  `absentfinish` DATE NULL DEFAULT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `category` TINYINT UNSIGNED NOT NULL DEFAULT '1' ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_teacherS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_teacherS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`responsibles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`responsibles` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`responsibles` (
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
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`subjects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`subjects` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`subjects` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `level` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `color` VARCHAR(9) NULL DEFAULT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`kos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`kos` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`kos` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `iduser` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_koS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_koS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`teachersubjects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`teachersubjects` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`teachersubjects` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `teacherS_id1` INT UNSIGNED NOT NULL ,
  `subjectS_id1` INT UNSIGNED NOT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_teachersubjectS_teacherS1_idx` (`teacherS_id1` ASC) ,
  INDEX `fk_teachersubjectS_subjectS1_idx` (`subjectS_id1` ASC) ,
  CONSTRAINT `fk_teachersubjectS_teacherS1`
    FOREIGN KEY (`teacherS_id1` )
    REFERENCES `admin_do`.`teachers` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_teachersubjectS_subjectS1`
    FOREIGN KEY (`subjectS_id1` )
    REFERENCES `admin_do`.`subjects` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Chto  on  prepodaet';


-- -----------------------------------------------------
-- Table `admin_do`.`classrooms`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`classrooms` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`classrooms` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `abbreviation` VARCHAR(5) NULL DEFAULT NULL ,
  `number` INT NULL DEFAULT NULL ,
  `description` VARCHAR(256) NULL DEFAULT NULL ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_classroomS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_classroomS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`materials`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`materials` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`materials` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `state` TINYINT UNSIGNED NOT NULL DEFAULT '1' ,
  `countparagraph` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countparagraphactive` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countsection` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `datecreate` DATETIME NOT NULL ,
  `dateupdate` DATETIME NOT NULL ,
  `notstudy` TINYINT(1) NOT NULL DEFAULT '1' ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `teacherS_id1` INT UNSIGNED NOT NULL ,
  `subjectS_id1` INT UNSIGNED NULL DEFAULT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_materialS_teacherS1_idx1` (`teacherS_id1` ASC) ,
  INDEX `fk_materialS_subjectS1_idx1` (`subjectS_id1` ASC) ,
  CONSTRAINT `fk_materialS_teacherS1`
    FOREIGN KEY (`teacherS_id1` )
    REFERENCES `admin_do`.`teachers` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_materialS_subjectS1`
    FOREIGN KEY (`subjectS_id1` )
    REFERENCES `admin_do`.`subjects` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`subgroups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`subgroups` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`subgroups` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `classS_id1` INT UNSIGNED NOT NULL ,
  `subjectS_id` INT UNSIGNED NOT NULL ,
  `teacherS_id` INT UNSIGNED NULL DEFAULT NULL ,
  `materialS_id` INT UNSIGNED NULL DEFAULT NULL ,
  `isdefault` TINYINT(1) NOT NULL DEFAULT '1' ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_subgroupS_classS1_idx1` (`classS_id1` ASC) ,
  INDEX `fk_subgroupS_subjectS1_idx` (`subjectS_id` ASC) ,
  INDEX `fk_subgroupS_teacherS1_idx` (`teacherS_id` ASC) ,
  INDEX `fk_subgroupS_materialS1_idx` (`materialS_id` ASC) ,
  CONSTRAINT `fk_subgroupS_classS1`
    FOREIGN KEY (`classS_id1` )
    REFERENCES `admin_do`.`classs` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_subgroupS_subjectS1`
    FOREIGN KEY (`subjectS_id` )
    REFERENCES `admin_do`.`subjects` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_subgroupS_teacherS1`
    FOREIGN KEY (`teacherS_id` )
    REFERENCES `admin_do`.`teachers` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_subgroupS_materialS1`
    FOREIGN KEY (`materialS_id` )
    REFERENCES `admin_do`.`materials` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`spisoklearnergroups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`spisoklearnergroups` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`spisoklearnergroups` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `subgroupS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id1` INT UNSIGNED NOT NULL ,
  `countmark` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countabsent` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `averagemark` FLOAT UNSIGNED NOT NULL DEFAULT '0' ,
  `summark` INT UNSIGNED NOT NULL DEFAULT '0' ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  `datestart` DATE NULL DEFAULT NULL ,
  `datefinish` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisoklearnergroupS_subgroupS1_idx` (`subgroupS_id` ASC) ,
  INDEX `fk_spisoklearnergroupS_learnerS1_idx` (`learnerS_id1` ASC) ,
  CONSTRAINT `fk_spisoklearnergroupS_subgroupS1`
    FOREIGN KEY (`subgroupS_id` )
    REFERENCES `admin_do`.`subgroups` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisoklearnergroupS_learnerS1`
    FOREIGN KEY (`learnerS_id1` )
    REFERENCES `admin_do`.`learners` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`timetables`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`timetables` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`timetables` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `number` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `dayweek` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `timestart` TIME NOT NULL ,
  `timefinish` TIME NOT NULL ,
  `subgroupS_id1` INT UNSIGNED NOT NULL ,
  `classroomS_id1` INT UNSIGNED NULL DEFAULT NULL ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_timetableS_subgroupS1_idx1` (`subgroupS_id1` ASC) ,
  INDEX `fk_timetableS_classroomS1_idx1` (`classroomS_id1` ASC) ,
  INDEX `fk_timetableS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_timetableS_subgroupS1`
    FOREIGN KEY (`subgroupS_id1` )
    REFERENCES `admin_do`.`subgroups` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_timetableS_classroomS1`
    FOREIGN KEY (`classroomS_id1` )
    REFERENCES `admin_do`.`classrooms` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_timetableS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`spisokteachersubjectsubgroups`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`spisokteachersubjectsubgroups` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`spisokteachersubjectsubgroups` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datestart` DATE NOT NULL ,
  `datefinish` DATE NULL DEFAULT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `subgroupS_id1` INT UNSIGNED NOT NULL ,
  `teachersubjectS_id1` INT UNSIGNED NOT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisokteachersubjectsubgroupS_subgroupS1_idx1` (`subgroupS_id1` ASC) ,
  INDEX `fk_spisokteachersubjectsubgroupS_teachersubjectS1_idx1` (`teachersubjectS_id1` ASC) ,
  CONSTRAINT `fk_spisokteachersubjectsubgroupS_subgroupS1`
    FOREIGN KEY (`subgroupS_id1` )
    REFERENCES `admin_do`.`subgroups` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokteachersubjectsubgroupS_teachersubjectS1`
    FOREIGN KEY (`teachersubjectS_id1` )
    REFERENCES `admin_do`.`teachersubjects` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Kakim  grupam prepodaet ';


-- -----------------------------------------------------
-- Table `admin_do`.`lessontypes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`lessontypes` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`lessontypes` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(10) NOT NULL ,
  `description` VARCHAR(256) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`lessons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`lessons` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`lessons` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `number` TINYINT UNSIGNED NOT NULL ,
  `date` DATETIME NOT NULL ,
  `hometask` VARCHAR(256) NULL DEFAULT NULL ,
  `deleted` TINYINT NULL DEFAULT '0' ,
  `subgroupS_id1` INT UNSIGNED NOT NULL ,
  `classroomS_id1` INT UNSIGNED NULL DEFAULT NULL ,
  `teacherS_id1` INT UNSIGNED NULL DEFAULT NULL ,
  `subjectS_id1` INT UNSIGNED NOT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_lessonS_subgroupS1_idx` (`subgroupS_id1` ASC) ,
  INDEX `fk_lessonS_classroomS1_idx` (`classroomS_id1` ASC) ,
  INDEX `fk_lessonS_teacherS1_idx` (`teacherS_id1` ASC) ,
  INDEX `fk_lessonS_subjectS1_idx` (`subjectS_id1` ASC) ,
  CONSTRAINT `fk_lessonS_subgroupS1`
    FOREIGN KEY (`subgroupS_id1` )
    REFERENCES `admin_do`.`subgroups` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_classroomS1`
    FOREIGN KEY (`classroomS_id1` )
    REFERENCES `admin_do`.`classrooms` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_teacherS1`
    FOREIGN KEY (`teacherS_id1` )
    REFERENCES `admin_do`.`teachers` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_subjectS1`
    FOREIGN KEY (`subjectS_id1` )
    REFERENCES `admin_do`.`subjects` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`spisoklessontypes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`spisoklessontypes` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`spisoklessontypes` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `lessonS_id` INT UNSIGNED NOT NULL ,
  `lessontypeS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_lessonS_has_lessontypeS_lessontypeS1_idx` (`lessontypeS_id` ASC) ,
  INDEX `fk_lessonS_has_lessontypeS_lessonS1_idx` (`lessonS_id` ASC) ,
  CONSTRAINT `fk_lessonS_has_lessontypeS_lessonS1`
    FOREIGN KEY (`lessonS_id` )
    REFERENCES `admin_do`.`lessons` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_has_lessontypeS_lessontypeS1`
    FOREIGN KEY (`lessontypeS_id` )
    REFERENCES `admin_do`.`lessontypes` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`absents`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`absents` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`absents` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`schoolmarks`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`schoolmarks` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`schoolmarks` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `value` TINYINT UNSIGNED NULL DEFAULT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `spisoklessontypeS_id1` INT UNSIGNED NULL DEFAULT NULL ,
  `learnerS_id1` INT UNSIGNED NOT NULL ,
  `absentS_id` INT UNSIGNED NULL DEFAULT NULL ,
  `lessonS_id` INT UNSIGNED NULL DEFAULT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_schoolmarkS_spisoklessontypeS1_idx1` (`spisoklessontypeS_id1` ASC) ,
  INDEX `fk_schoolmarkS_learnerS1_idx1` (`learnerS_id1` ASC) ,
  INDEX `fk_schoolmarkS_absentS1_idx` (`absentS_id` ASC) ,
  INDEX `fk_schoolmarkS_lessonS1_idx` (`lessonS_id` ASC) ,
  CONSTRAINT `fk_schoolmarkS_spisoklessontypeS1`
    FOREIGN KEY (`spisoklessontypeS_id1` )
    REFERENCES `admin_do`.`spisoklessontypes` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_learnerS1`
    FOREIGN KEY (`learnerS_id1` )
    REFERENCES `admin_do`.`learners` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_absentS1`
    FOREIGN KEY (`absentS_id` )
    REFERENCES `admin_do`.`absents` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_lessonS1`
    FOREIGN KEY (`lessonS_id` )
    REFERENCES `admin_do`.`lessons` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`relations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`relations` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`relations` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`spisokresponsiblelearners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`spisokresponsiblelearners` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`spisokresponsiblelearners` (
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
    REFERENCES `admin_do`.`relations` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokresponsiblelearnerS_learnerS1`
    FOREIGN KEY (`learnerS_id1` )
    REFERENCES `admin_do`.`learners` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokresponsiblelearnerS_responsibleS1`
    FOREIGN KEY (`responsibleS_id1` )
    REFERENCES `admin_do`.`responsibles` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`sections`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`sections` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`sections` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `number` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `subjectS_id1` INT UNSIGNED NOT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_sectionS_subjectS1_idx1` (`subjectS_id1` ASC) ,
  CONSTRAINT `fk_sectionS_subjectS1`
    FOREIGN KEY (`subjectS_id1` )
    REFERENCES `admin_do`.`subjects` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`paragraphs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`paragraphs` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`paragraphs` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NOT NULL ,
  `number` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `state` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countquestion` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countpart` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `datecreate` DATETIME NOT NULL ,
  `dateupdate` DATETIME NOT NULL ,
  `notstudy` TINYINT(1) NOT NULL DEFAULT '1' ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `countdiscussion` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countextention` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `materialS_id1` INT UNSIGNED NOT NULL ,
  `sectionS_id1` INT UNSIGNED NOT NULL ,
  `valid` TINYINT(1) NOT NULL DEFAULT '0' ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_paragraphS_materialS1_idx1` (`materialS_id1` ASC) ,
  INDEX `fk_paragraphS_sectionS1_idx1` (`sectionS_id1` ASC) ,
  CONSTRAINT `fk_paragraphS_materialS1`
    FOREIGN KEY (`materialS_id1` )
    REFERENCES `admin_do`.`materials` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_paragraphS_sectionS1`
    FOREIGN KEY (`sectionS_id1` )
    REFERENCES `admin_do`.`sections` (`id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`partparagraphs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`partparagraphs` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`partparagraphs` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` TEXT NULL DEFAULT NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `number` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `datecreate` DATETIME NOT NULL ,
  `dateupdate` DATETIME NOT NULL ,
  `countquestion` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  `paragraphS_id1` INT UNSIGNED NOT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_partparagraphS_partparagraphS1_idx` (`extension` ASC) ,
  INDEX `fk_partparagraphS_paragraphS1_idx1` (`paragraphS_id1` ASC) ,
  CONSTRAINT `fk_partparagraphS_paragraphS1`
    FOREIGN KEY (`paragraphS_id1` )
    REFERENCES `admin_do`.`paragraphs` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`questions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`questions` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`questions` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  `complexity` TINYINT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'сложность' ,
  `countanswer` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `countrightanswer` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  `partparagraphS_id1` INT UNSIGNED NOT NULL ,
  `valid` TINYINT(1) NOT NULL DEFAULT '0' ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_questionS_questionS1_idx` (`extension` ASC) ,
  INDEX `fk_questionS_partparagraphS1_idx1` (`partparagraphS_id1` ASC) ,
  CONSTRAINT `fk_questionS_partparagraphS1`
    FOREIGN KEY (`partparagraphS_id1` )
    REFERENCES `admin_do`.`partparagraphs` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`answers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`answers` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`answers` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  `right` TINYINT NOT NULL DEFAULT '0' ,
  `deleted` TINYINT NULL DEFAULT '0' ,
  `questionS_id1` INT UNSIGNED NOT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_answerS_questionS1_idx1` (`questionS_id1` ASC) ,
  CONSTRAINT `fk_answerS_questionS1`
    FOREIGN KEY (`questionS_id1` )
    REFERENCES `admin_do`.`questions` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`spisokpartparagraphlessons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`spisokpartparagraphlessons` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`spisokpartparagraphlessons` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `lessonS_id1` INT UNSIGNED NOT NULL ,
  `partparagraphS_id1` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisokpartparagraphlessonS_lessonS1_idx1` (`lessonS_id1` ASC) ,
  INDEX `fk_spisokpartparagraphlessonS_partparagraphS1_idx` (`partparagraphS_id1` ASC) ,
  CONSTRAINT `fk_spisokpartparagraphlessonS_lessonS1`
    FOREIGN KEY (`lessonS_id1` )
    REFERENCES `admin_do`.`lessons` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokpartparagraphlessonS_partparagraphS1`
    FOREIGN KEY (`partparagraphS_id1` )
    REFERENCES `admin_do`.`partparagraphs` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`discussions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`discussions` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`discussions` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `paragraphS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `countlike` SMALLINT NULL DEFAULT '0' ,
  `contcomment` SMALLINT NULL DEFAULT '0' ,
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
-- Table `admin_do`.`commentdiscussions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`commentdiscussions` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`commentdiscussions` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `discussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `countlike` INT NULL DEFAULT '0' ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentdiscussionS_discussionS1_idx` (`discussionS_id` ASC) ,
  INDEX `fk_commentdiscussionS_commentdiscussionS1_idx` (`extension` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`likedislikediscussions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`likedislikediscussions` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`likedislikediscussions` (
  `discussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  INDEX `fk_likedislikediscussionS_discussionS1_idx` (`discussionS_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`likedislikecommentdiscussions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`likedislikecommentdiscussions` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`likedislikecommentdiscussions` (
  `commentdiscussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  INDEX `fk_likedislikediscussionS_commentdiscussionS1_idx` (`commentdiscussionS_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`paragraphextensions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`paragraphextensions` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`paragraphextensions` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `paragraphS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `extension` INT UNSIGNED NULL DEFAULT NULL ,
  `countcomment` INT NULL DEFAULT '0' ,
  `countlike` INT NULL DEFAULT '0' ,
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
-- Table `admin_do`.`commentparagraphextensions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`commentparagraphextensions` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`commentparagraphextensions` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datetime` DATETIME NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `countlike` INT NOT NULL DEFAULT '0' ,
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
-- Table `admin_do`.`likedislikecommentparagraphextensions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`likedislikecommentparagraphextensions` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`likedislikecommentparagraphextensions` (
  `commentparagraphextensionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  INDEX `fk_likedislikecommentparagraphextensionS_commentparagraphex_idx` (`commentparagraphextensionS_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`tests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`tests` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`tests` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `mark` TINYINT UNSIGNED NOT NULL DEFAULT '0' ,
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
    REFERENCES `admin_do`.`paragraphs` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_testS_learnerS1`
    FOREIGN KEY (`learnerS_id1` )
    REFERENCES `admin_do`.`learners` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`likedislikeparagraphextensions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`likedislikeparagraphextensions` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`likedislikeparagraphextensions` (
  `paragraphextensionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL DEFAULT NULL ,
  INDEX `fk_likedislikeparagraphextensionS_paragraphextensionS1_idx` (`paragraphextensionS_id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`spisokclassyodas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`spisokclassyodas` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`spisokclassyodas` (
  `classS_id` INT UNSIGNED NOT NULL ,
  `yodaS_id` INT UNSIGNED NOT NULL ,
  `datestart` DATE NOT NULL ,
  `datefinish` DATE NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`yodaS_id`, `classS_id`) ,
  INDEX `fk_classS_has_yodaS_yodaS1_idx` (`yodaS_id` ASC) ,
  INDEX `fk_classS_has_yodaS_classS1_idx` (`classS_id` ASC) ,
  CONSTRAINT `fk_spisokclassyodaS_classS1`
    FOREIGN KEY (`classS_id` )
    REFERENCES `admin_do`.`classs` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokclassyodaS_yodaS1`
    FOREIGN KEY (`yodaS_id` )
    REFERENCES `admin_do`.`yodas` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`spisokclassslearners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`spisokclassslearners` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`spisokclassslearners` (
  `classS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `datestart` DATE NULL DEFAULT NULL ,
  `datefinish` DATE NULL DEFAULT NULL ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  INDEX `fk_spisokclassSlearnerS_learnerS1_idx` (`learnerS_id` ASC) ,
  INDEX `fk_spisokclassSlearnerS_classS1_idx` (`classS_id` ASC) ,
  PRIMARY KEY (`classS_id`, `learnerS_id`) ,
  CONSTRAINT `fk_spisokclassSlearnerS_classS1`
    FOREIGN KEY (`classS_id` )
    REFERENCES `admin_do`.`classs` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokclassSlearnerS_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `admin_do`.`learners` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`schedulerings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`schedulerings` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`schedulerings` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `schoolS_id` INT UNSIGNED NOT NULL ,
  `shift` TINYINT NOT NULL DEFAULT '1' ,
  `number` TINYINT NOT NULL ,
  `timestart` TIME NOT NULL ,
  `timefinish` TIME NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_scheduleringS_schoolS1_idx` (`schoolS_id` ASC) ,
  CONSTRAINT `fk_scheduleringS_schoolS1`
    FOREIGN KEY (`schoolS_id` )
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`studyduration`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`studyduration` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`studyduration` (
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
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `admin_do`.`spisoksubjectschools`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `admin_do`.`spisoksubjectschools` ;

CREATE  TABLE IF NOT EXISTS `admin_do`.`spisoksubjectschools` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `subjects_id` INT UNSIGNED NOT NULL ,
  `schools_id` INT UNSIGNED NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT '0' ,
  `datedeleted` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisoksubjectschools_subjects1_idx` (`subjects_id` ASC) ,
  INDEX `fk_spisoksubjectschools_schools1_idx` (`schools_id` ASC) ,
  CONSTRAINT `fk_spisoksubjectschools_subjects1`
    FOREIGN KEY (`subjects_id` )
    REFERENCES `admin_do`.`subjects` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisoksubjectschools_schools1`
    FOREIGN KEY (`schools_id` )
    REFERENCES `admin_do`.`schools` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `admin_do` ;

-- -----------------------------------------------------
-- procedure cAbsent
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cAbsent`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cAbsent` (
	IN name VARCHAR(256)
)
BEGIN
	INSERT INTO `admin_do`.`absents`(`id`,`text`)
	VALUES(NULL,name);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rAbsent
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rAbsent`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rAbsent` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cAnswerQuestion
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cAnswerQuestion`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cAnswerQuestion` (
	IN text TEXT, 
	IN rightA BOOL, 
	IN idQuestion INT UNSIGNED
)
BEGIN
	IF text IS NOT NULL AND idQuestion IS NOT NULL THEN
		IF rightA IS NULL THEN SET rightA = FALSE; END IF;
		INSERT INTO `admin_do`.`answers`(`text`,`right`,`questionS_id1`)
		VALUES(text, rightA, idQuestion);
		
		CALL checkValidQuestion(idQuestion);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dAnswerOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dAnswerOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `dAnswerOne`(
	IN idAnswer INT UNSIGNED
)
BEGIN
	DECLARE idQuestion INT UNSIGNED;
	DECLARE isRight BOOL;
	SELECT `questionS_id1` INTO idQuestion 
	FROM `admin_do`.`answers`
	WHERE `id` = idAnswer;
	SELECT `right` INTO isRight FROM `admin_do`.`answers` WHERE `id` = idAnswer;
	IF isRight THEN
		UPDATE `admin_do`.`questions`
		SET `countanswer` = `countanswer`-1,
			`countrightanswer` = `countrightanswer` -1
		WHERE `id` = idQuestion AND `deleted` = 0;
	ELSE
		UPDATE `admin_do`.`questions`
		SET `countanswer` = `countanswer`-1
		WHERE `id` = idQuestion AND `deleted` = 0;
	END IF;
	UPDATE `admin_do`.`answers` SET `deleted` = 1 WHERE `deleted` = 0 AND `id` = idAnswer;
	CALL checkValidQuestion(idQuestion);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rAnswerQuestion
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rAnswerQuestion`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rAnswerQuestion` (
	IN idAnswer INT UNSIGNED
)
BEGIN
	DELETE FROM `admin_do`.`answers` WHERE `id` = idAnswer AND `deleteed` = 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cLearner
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cLearner`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cLearner` 
(
	IN iduser INT UNSIGNED,
	IN firstname VARCHAR(256),
	IN lastname VARCHAR(256),
	IN middlename VARCHAR(256),
	IN idschool INT UNSIGNED,
	IN idclass INT UNSIGNED
)
BEGIN
INSERT INTO `admin_do`.`learners`(
`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`,`classS_id`)VALUES(
 iduser, firstname, lastname, middlename, idschool, idclass);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cLesson
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cLesson`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cLesson` (
	idSubgroup INT UNSIGNED,
	idSubject INT UNSIGNED,
	idTeacher INT UNSIGNED,
	idClassroom INT UNSIGNED,
	number INT UNSIGNED,
	date DATETIME
)
BEGIN
	INSERT INTO `admin_do`.`lessons`
	(`number`,`date`,`subgroupS_id1`,`classroomS_id1`,`teacherS_id1`,`subjectS_id1`)
	VALUES(number, date, idSubgroup, idClassroom, idTeacher, idSubject);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dParagraphOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dParagraphOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dParagraphOne` (
	IN idParagraph INT UNSIGNED
)
BEGIN
	DECLARE notstudy BOOL;
	DECLARE countSection INT UNSIGNED;
	DECLARE idSection INT UNSIGNED;
	DECLARE idMaterial INT UNSIGNED;

	SELECT `paragraphs`.`notstudy`, `paragraphs`.`sectionS_id1`, `paragraphs`.`materialS_id1`
		INTO notstudy, idSection, idMaterial
	FROM `admin_do`.`paragraphs`
	WHERE `deleted` = 0 AND `id` = idParagraph;

	SELECT count(`paragraphs`.`id`)	INTO countSection
	FROM `admin_do`.`paragraphs`
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
		UPDATE `admin_do`.`materials`
		SET `countparagraph` = `countparagraph`-1,
			`countparagraphactive` = `countparagraphactive`-1,
			`countsection` = `countsection`-1
		WHERE `id` = idMaterial AND `deleted` = 0;
	ELSEIF notstudy = 1 AND countSection > 1 THEN
		UPDATE `admin_do`.`materials`
		SET `countparagraph` = `countparagraph`-1,
			`countsection` = `countsection`-1
		WHERE `id` = idMaterial AND `deleted` = 0;
	ELSEIF notstudy = 0 AND countSection = 1 THEN
		UPDATE `admin_do`.`materials`
		SET `countparagraph` = `countparagraph`-1,
			`countparagraphactive` = `countparagraphactive`-1
		WHERE `id` = idMaterial AND `deleted` = 0;
	ELSE
		UPDATE `admin_do`.`materials`
		SET `countparagraph` = `countparagraph`-1
		WHERE `id` = idMaterial AND `deleted` = 0;
	END IF;
	
	UPDATE `admin_do`.`paragraphs`
	SET	`deleted` = 1
	WHERE `id` = idParagraph AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dPartparagraphCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dPartparagraphCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dPartparagraphCascade` (
	IN idParagraph INT UNSIGNED
)
BEGIN
	DECLARE idPartparagraph INT UNSIGNED;
	DECLARE done integer default 0;

	DECLARE CURS CURSOR FOR
		SELECT `partparagraphs`.`id`
		FROM `admin_do`.`partparagraphs`
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
	
	UPDATE `admin_do`.`partparagraphs`
	SET	`deleted` = 1
	WHERE `paragraphS_id1` = idParagraph AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cQuestionPartparagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cQuestionPartparagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cQuestionPartparagraph` (
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
				INSERT INTO `admin_do`.`questions`(`text`,`complexity`,`extension`,`partparagraphS_id1`)      
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
				INSERT INTO `admin_do`.`questions`(`text`,`complexity`,`extension`,`partparagraphS_id1`) 
				VALUES(partTEXT, complexity, idRoot, idPartparargraph);    
			END IF;    
			SET @i = @i +1;
		END WHILE;    
		#SELECT lenTEXT, countPartFullTEXT, constPart, lenTEXT%constPart;
		#SELECT * FROM `do`.`questions`;   
		# , SUBSTRING(text,((@i*constPart)+1),constPart)  
	ELSE   
		INSERT INTO `admin_do`.`questions`(`text`,`complexity`,`extension`,`partparagraphS_id1`)   
		VALUES(text, complexity, NULL, idPartparargraph);  
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dQuestionOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dQuestionOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dQuestionOne` (
	IN idQuestion INT UNSIGNED
)
BEGIN
	DECLARE idPartParagraph INT UNSIGNED;
	DECLARE idParagraph INT UNSIGNED;
	CALL dAnswerCascade(idQuestion);
	
	SELECT `questions`.`partparagraphS_id1` INTO idPartParagraph
	FROM `admin_do`.`questions`
	WHERE `id` = idQuestion AND `deleted` = 0;

	SELECT `partparagraphs`.`paragraphS_id1` INTO idParagraph
	FROM `admin_do`.`partparagraphs`
	WHERE `id` = idPartParagraph AND `deleted` = 0;

	UPDATE `admin_do`.`partparagraphs`
	SET `countquestion` = `countquestion` - 1
	WHERE `deleted` = 0 AND `id` = idPartParagraph;

	UPDATE `admin_do`.`paragraphs`
	SET `countextention` = `countquestion` - 1
	WHERE `deleted` = 0 AND `id` = idParagraph;

	UPDATE `admin_do`.`questions`
	SET `deleted` = 1
	WHERE `deleted` = 0 AND `id` = idQuestion;

	CALL checkValidParagraph(idParagraph);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rQuestion
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rQuestion`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rQuestion` (
	IN idQuestion INT UNSIGNED
)
BEGIN
	DELETE FROM `admin_do`.`questions` WHERE `id` = idQuestion AND `deleted` = 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dQuestionCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dQuestionCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dQuestionCascade` (
	IN idPartParagraph INT UNSIGNED
)
BEGIN
	DECLARE idQuestion INT UNSIGNED;
	DECLARE done integer default 0;

	DECLARE CURS CURSOR FOR 
		SELECT `questions`.`id` FROM `admin_do`.`questions` 
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
	
	UPDATE `admin_do`.`questions`
	SET `deleted` = 1
	WHERE `deleted` = 0 AND `partparagraphS_id1` = idPartParagraph;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dAnswerCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dAnswerCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dAnswerCascade` (
	IN idQuestion INT UNSIGNED
)
BEGIN
	UPDATE `admin_do`.`answers` SET `deleted` = 1 
	WHERE `questionS_id1` = idQuestion AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cClass
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cClass`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cClass` 
(
	IN level TINYINT UNSIGNED,
	IN entryyear SMALLINT UNSIGNED,
	IN idschool INT UNSIGNED,
	IN letter VARCHAR(2)
)
BEGIN
	INSERT INTO `admin_do`.`classs`(`name`,`level`,`entryyear`,`schoolS_id`,`letter`)
	VALUES( CONCAT(level, "-", letter), level, entryyear, idschool, letter);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dClassOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dClassOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dClassOne` (
	IN idClass INT UNSIGNED
)
BEGIN
	DECLARE idSubgroup INT UNSIGNED;
	DECLARE idYoda INT UNSIGNED;
	DECLARE idSchool INT UNSIGNED;
	DECLARE idLearner INT UNSIGNED;
	DECLARE done INTEGER DEFAULT 0;
	DECLARE CURS_SUBGROUPS CURSOR FOR
		SELECT `id`
		FROM `admin_do`.`subgroups`
		WHERE `classS_id1` = idClass AND `deleted` = 0;

	DECLARE CURS_LEARNERS CURSOR FOR
		SELECT `learnerS_id`
		FROM `admin_do`.`spisokclassslearners`
		WHERE `classS_id` = idClass AND `deleted` = 0;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;

	
	-- DELETE ALL SUBGROUPS OF THIS CLASS
	OPEN CURS_SUBGROUPS;
	WHILE done = 0 DO
		FETCH CURS_SUBGROUPS INTO idSubgroup;
		IF !done THEN
			CALL dSubgroupOne(idSubgroup);
		END IF;
	END WHILE;
	CLOSE CURS_SUBGROUPS;
		
	SET done = 0;
	
	OPEN CURS_LEARNERS;
	WHILE done = 0 DO
		FETCH CURS_LEARNERS INTO idLearner;
		IF !done THEN
			CALL dClassLearnerOne(idClass, idLearner);
		END IF;
	END WHILE;
	CLOSE CURS_LEARNERS;
	
	-- GET ID SCHOOL BY ID CLASS
	SELECT `schoolS_id` INTO idSchool FROM `classs` WHERE `deleted` = 0 AND `id` = idClass;

	-- UPDATE COUNT OF CLASSES IN SCHOOL
	UPDATE `admin_do`.`schools` SET `countclass` = `countclass` - 1 WHERE `id` = idSchool;

	-- UNSET YODA IN CLASS
		-- GET CURRENT YODA
	SELECT `yodaS_id` INTO idYoda FROM `spisokclassyodas` WHERE `classS_id` = idClass AND `deleted` = 0;
		-- UNSET CURRENT YODA
	CALL setYodaClass(idClass, idYoda, NULL);

	-- DELETE TO HISTORY
	UPDATE `admin_do`.`classs` SET `deleted` = 1, `endyear` = YEAR(NOW()) 
	WHERE `id` = idClass AND `deleted` = 0;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dClassCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dClassCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dClassCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rClassSchool
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rClassSchool`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rClassSchool` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rClassroom
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rClassroom`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rClassroom` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cKo
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cKo`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cKo` (
	iduser INT UNSIGNED,
	firstname VARCHAR(256),
	lastname VARCHAR(256),
	middlename VARCHAR(256),
	idSchool INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`kos`(`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`)
	VALUES(iduser, firstname, lastname, middlename, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dKoOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dKoOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dKoOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dKoCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dKoCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dKoCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rKo
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rKo`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rKo` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLearnerOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dLearnerOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dLearnerOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLearnerCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dLearnerCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dLearnerCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLearner
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rLearner`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rLearner` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLessonOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dLessonOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dLessonOne` (
	IN idLesson INT UNSIGNED
)
BEGIN

DECLARE idSpisokLessonTypeLesson INT UNSIGNED;
DECLARE idSpisokPartparagraphLesson INT UNSIGNED;
DECLARE done INTEGER DEFAULT 0;

	-- DELETE ALL LESSONTYPES OF THIS LESSON
	DECLARE CURS_SPISOKLESSONTYPE CURSOR FOR
		SELECT `id`
		FROM `admin_do`.`spisoklessontypes`
		WHERE `lessonS_id` = idLesson;
	DECLARE CURS_SPISOKPARTPARAGRAPHLESSON CURSOR FOR
		SELECT `id`
		FROM `admin_do`.`spisokpartparagraphlessons`
		WHERE `lessonS_id1` = idLesson;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;
	OPEN CURS_SPISOKLESSONTYPE;
	WHILE done = 0 DO
		FETCH CURS_SPISOKLESSONTYPE INTO idSpisokLessonTypeLesson;
		IF !done THEN
			CALL rLessontypeLessson(idSpisokLessonTypeLesson);
		END IF;
	END WHILE;
	CLOSE CURS_SPISOKLESSONTYPE;


	SET done = 0;
	-- DELETE ALL PARTPARAGRAPHS ON THIS LESSON
	OPEN CURS_SPISOKPARTPARAGRAPHLESSON;
	WHILE done = 0 DO
		FETCH CURS_SPISOKPARTPARAGRAPHLESSON INTO idSpisokPartparagraphLesson;
		IF !done THEN
			DELETE FROM `admin_do`.`spisokpartparagraphlessons` WHERE `id` = idSpisokPartparagraphLesson;
		END IF;
	END WHILE;
	CLOSE CURS_SPISOKPARTPARAGRAPHLESSON;
	
	-- DELETE TO HISTORY
	UPDATE `admin_do`.`lessons` 
	SET `deleted` = 1, `datedeleted` = NOW() 
	WHERE `id` = idLesson AND `deleted` = 0;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLesson
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rLesson`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rLesson` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cLessontype
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cLessontype`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cLessontype` (
	IN name VARCHAR(10),
	IN description VARCHAR(256)
)
BEGIN
	INSERT INTO `admin_do`.`lessontypes`(`name`, `description`)
	VALUES(name, description);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLessontype
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rLessontype`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rLessontype` (
	
)
BEGIN
	
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cMaterialTeacher
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cMaterialTeacher`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cMaterialTeacher` (
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
		SELECT `admin_do`.`subjects`.`name`, `admin_do`.`subjects`.`level` 
		INTO sub_name, sub_level 
		FROM `admin_do`.`subjects` WHERE `admin_do`.`subjects`.`id`=idSubject;
		SET def_name := concat(sub_name, " ", sub_level, "-", prefix);

		SELECT count(*) INTO name_auto 
		FROM `admin_do`.`materials` 
		WHERE `admin_do`.`materials`.`teacherS_id1`=idTeacher 
			AND `admin_do`.`materials`.`subjectS_id1`=idSubject 
			AND `admin_do`.`materials`.`name` LIKE CONCAT(def_name,'%');
		IF name_auto != 0 THEN SET name_auto := concat(def_name, " (", name_auto, ")");
		ELSE SET name_auto := def_name; END IF;
	ELSE SET name_auto := name;
	END IF;
	INSERT INTO `admin_do`.`materials`(`state`,`notstudy`,`datecreate`,`dateupdate`,`teacherS_id1`,`subjectS_id1`,`name`)
	VALUES(state, notstudy, now(), now(), idTeacher, idSubject, name_auto);	
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dMaterialOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dMaterialOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dMaterialOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rMaterialteacher
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rMaterialteacher`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rMaterialteacher` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cParagraphInSection
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cParagraphInSection`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cParagraphInSection` (
	number TINYINT UNSIGNED,
	name VARCHAR(256),
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`paragraphs`(`name`,`number`,`datecreate`,`dateupdate`,`materialS_id1`,`sectionS_id1`)
	VALUES(name, number, now(), now(), idMaterial, idSection);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rParagraphMaterial
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rParagraphMaterial`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rParagraphMaterial` (
	IN idParagraph INT UNSIGNED
)
BEGIN
	DELETE FROM `admin_do`.`paragraphs` WHERE `id` = idParagraph AND `deleted` = 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dParagraphCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dParagraphCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dParagraphCascade` (
	IN idMaterial INT UNSIGNED
)
BEGIN
	DECLARE idParagraph INT UNSIGNED;
	DECLARE done integer default 0;

	DECLARE CURS CURSOR FOR
		SELECT `paragraphs`.`id`
		FROM `admin_do`.`paragraphs`
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
		
	UPDATE `admin_do`.`paragraphs`
	SET	`deleted` = 1
	WHERE `materialS_id1` = idMaterial AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cPartparagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cPartparagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cPartparagraph` (
	number TINYINT UNSIGNED,
	name VARCHAR(256),
	text TEXT,
	idParagraph INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`partparagraphs`(`text`,`name`,`number`,`datecreate`,`dateupdate`,`paragraphS_id1`)
	VALUES(text, name, number, now(), now(),idParagraph);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dPartparagraphOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dPartparagraphOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dPartparagraphOne` (
	IN idPartParagraph INT UNSIGNED
)
BEGIN
	DECLARE idParagraph INT UNSIGNED;
	DECLARE countQuestion INT UNSIGNED;
	
	SELECT `partparagraphs`.`paragraphS_id1`, `partparagraphs`.`countquestion` 
		INTO idParagraph, countQuestion
	FROM `admin_do`.`partparagraphs` 
	WHERE `id` = idPartParagraph AND `deleted` = 0;

	UPDATE `admin_do`.`paragraphs`
	SET `countquestion` = `countquestion` - countQuestion, 
		`countpart` = `countpart` - 1
	WHERE `id` = idParagraph AND `deleted` = 0;

	CALL resetNumberPartparagraphInParagraph(idParagraph, idPartParagraph, -1);

	CALL dQuestionCascade(idPartParagraph);
	
	CALL rPartparagraphLessonByPartparagraph(idPartParagraph);

	UPDATE `admin_do`.`partparagraphs`
	SET `deleted` = 1
	WHERE `deleted` = 0 AND `id` = idPartParagraph;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rPartparagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rPartparagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rPartparagraph` (
	IN idPartParagraph INT UNSIGNED
)
BEGIN
	DELETE FROM `admin_do`.`partparagraphs` WHERE `id` = idPartParagraph;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cClassroom
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cClassroom`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cClassroom` (
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
	INSERT INTO `admin_do`.`classrooms`(`name`,`abbreviation`,`number`,`description`,`schoolS_id`)
	VALUES(name, abbreviation, number, description, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cRelation
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cRelation`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cRelation` (
	name VARCHAR(256)
)
BEGIN
	INSERT INTO `admin_do`.`relations`(`name`)
	VALUES(name);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSection
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rSection`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rSection` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLearnerSubgroup
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rLearnerSubgroup`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rLearnerSubgroup` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cTeacher
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cTeacher`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cTeacher`
(
	IN iduser INT UNSIGNED,
	IN firstname VARCHAR(256),
	IN lastname VARCHAR(256),
	IN middlename VARCHAR(256),
	IN idschool INT UNSIGNED,
	IN category TINYINT UNSIGNED
)
BEGIN
INSERT INTO `admin_do`.`teachers`(
`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`,`category`)VALUES(
iduser,firstname,lastname,middlename,idschool,category);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cYoda
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cYoda`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cYoda` (
	IN idSchool INT UNSIGNED,
	IN idUser INT UNSIGNED,
	IN firstname VARCHAR(256),
	IN lastname VARCHAR(256),	
	IN middlename VARCHAR(256)
	
)
BEGIN
	INSERT INTO `admin_do`.`yodas`(`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`)
	VALUES(idUser, firstname, lastname, middlename, idSchool);

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dYodaCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dYodaCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dYodaCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rYoda
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rYoda`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rYoda` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rRealation
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rRealation`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rRealation` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSchool
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cSchool`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cSchool` 
(
	IN number INT UNSIGNED,
	IN name VARCHAR(256),
	IN directoruser INT UNSIGNED,
	IN description TEXT
)
BEGIN
INSERT INTO `admin_do`.`schools`(
`number`,`name`,`directoruser`,`description`)VALUES(
 number, name, directoruser, description);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSchool
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rSchool`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rSchool` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cAbsentLesson
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cAbsentLesson`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cAbsentLesson` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSchoolmark
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cSchoolmark`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cSchoolmark` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSchoolmarkOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dSchoolmarkOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dSchoolmarkOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSchoolmark
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rSchoolmark`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rSchoolmark` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSection
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cSection`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cSection` (
	IN name VARCHAR(256),
	IN number TINYINT(1) UNSIGNED,
	IN idSubject INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`sections` (`name`,`number`,`subjectS_id1`)
	VALUES(name, number, idSubject);

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSectionOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dSectionOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dSectionOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSectionCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dSectionCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dSectionCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dClassLearnerOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dClassLearnerOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dClassLearnerOne` (
	IN idClass INT UNSIGNED,
	IN idLearner INT UNSIGNED
)
BEGIN
	DECLARE idSubgroup INT UNSIGNED;
	DECLARE done INTEGER DEFAULT 0;

	DECLARE CURS_LESSONS CURSOR FOR
	SELECT `id` 
	FROM `admin_do`.`subgroups` 
	WHERE `classS_id1` = idClass;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

	OPEN CURS_LESSONS;
	WHILE done = 0 DO
	FETCH CURS_LESSONS INTO idSubgroup;
	IF !done THEN
	CALL dLearnerSubgroup(idSubgroup, idLearner);
	END IF;
	END WHILE;
	CLOSE CURS_LESSONS;


	UPDATE `admin_do`.`spisokclassslearners` 
	SET `spisokclassslearners`.`deleted` = 1,
	`datefinish` = NOW(),
	`datedeleted` = NOW()
	WHERE `classS_id` = idClass
	AND `learnerS_id` = idLearner;

	UPDATE `admin_do`.`learners` SET `learners`.`classS_id` = NULL
	WHERE `learners`.`id` = idLearner;

	UPDATE `admin_do`.`classs` SET `classs`.`countlearner` = `classs`.`countlearner` - 1
	WHERE `classs`.`id` = idClass;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dClassLearnerCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dClassLearnerCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dClassLearnerCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setSpisokClassLearner
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setSpisokClassLearner`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setSpisokClassLearner` (
	IN idClass INT UNSIGNED,
	IN idLearner INT UNSIGNED
)
BEGIN
	DECLARE csubgroup INT UNSIGNED;
	DECLARE idOldClass INT UNSIGNED;
	# add learner in class
	INSERT INTO `admin_do`.`spisokclassslearners`(`classS_id`,`learnerS_id`)
	VALUES(idClass, idLearner);
	# increment number of learners in class
	UPDATE `admin_do`.`classs` SET `countlearner` = `countlearner` + 1 WHERE `id` = idClass;
	# add Learner in ALL exist default group
	SELECT count(id) INTO csubgroup FROM `admin_do`.`subgroups` WHERE `isdefault`= true AND `classS_id1`=idClass;
	IF csubgroup > 0 THEN 
		CALL setLearnerToDefaultSubgroupAll(idLearner, idClass);
	END IF;
	SELECT `classS_id` INTO idOldClass FROM `admin_do`.`learners` 
	WHERE `deleted` = 0 AND `id` = idLearner;
	IF idOldClass IS NULL THEN
	UPDATE `admin_do`.`learners` SET `classS_id` = idClass
	WHERE `id` = idLearner AND `deleted` = 0;
	END IF;
	
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure transferToAnotherClass
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`transferToAnotherClass`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`transferToAnotherClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rClassLearner
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rClassLearner`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rClassLearner` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rYodaClass
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rYodaClass`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rYodaClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setYodaClass
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setYodaClass`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setYodaClass` (
	IN idClass INT UNSIGNED,
	IN idOldYoda INT UNSIGNED,
	IN idNewYoda INT UNSIGNED
)
BEGIN
	IF idOldYoda IS NOT NULL THEN
	-- SET DATE FINISH TO OLD YODA
	UPDATE `admin_do`.`spisokclassyodas` 
	SET `datefinish` = NOW(), `deleted` = 1 , `datedeleted` = NOW()
	WHERE `classS_id` = idClass AND `yodaS_id` = idOldYoda;
	END IF;
	
	IF idNewYoda IS NOT NULL THEN
	-- SET DATESTART TO NEW YODA
	INSERT INTO `admin_do`.`spisokclassyodas`(`classS_id`,`yodaS_id`,`datestart`)
	VALUES(idClass, idNewYoda, NOW());
	END IF;

	-- UPDATE ID YODA IN CLASS
	UPDATE `admin_do`.`classs` SET `yodaS_id` =  idNewYoda WHERE `id` = idClass;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure unsetYodaClass
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`unsetYodaClass`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`unsetYodaClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLearnerSubgroup
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dLearnerSubgroup`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dLearnerSubgroup` (
	IN idSubgroup INT UNSIGNED,
	IN idLearner INT UNSIGNED
)
BEGIN
	IF idSubgroup IS NOT NULL AND idLearner IS NOT NULL THEN 

	UPDATE `admin_do`.`spisoklearnergroups` 
	SET `deleted` = 1, `datefinish` = NOW(), `datedeleted` = NOW()
	WHERE `spisoklearnergroups`.`subgroupS_id` = idSubgroup
	AND `spisoklearnergroups`.`learnerS_id1` = idLearner;

	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dLearnerSubgroupAll
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dLearnerSubgroupAll`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dLearnerSubgroupAll` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setLearnerToDefaultSubgroupAll
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setLearnerToDefaultSubgroupAll`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setLearnerToDefaultSubgroupAll` (
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

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setLearnerToSubgroup`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setLearnerToSubgroup` (
	idLearner INT UNSIGNED,
	idSubgroup INT UNSIGNED
)
BEGIN
	IF idLearner IS NOT NULL AND idSubgroup IS NOT NULL THEN
		INSERT INTO `admin_do`.`spisoklearnergroups`(`subgroupS_id`,`learnerS_id1`)
		VALUES(idSubgroup, idLearner);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rLessontypeLessson
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rLessontypeLessson`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rLessontypeLessson` (
	IN idSpisokLessonType INT UNSIGNED
)
BEGIN
	DELETE FROM `admin_do`.`spisoklessontypes` WHERE `id` = idSpisokLessonType;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setLessontype
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setLessontype`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setLessontype` (
	idLesson INT UNSIGNED,
	idLessontype INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`spisoklessontypes`(`lessonS_id`,`lessontypeS_id`)
	VALUES(idLesson, idLessontype);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rPartparagraphLessonByPartparagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rPartparagraphLessonByPartparagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rPartparagraphLessonByPartparagraph` (
	IN idPartParagraph INT UNSIGNED
)
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setPartparagraphLesson
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setPartparagraphLesson`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setPartparagraphLesson` (
	idLesson INT UNSIGNED,
	idPartparagraph INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`spisokpartparagraphlessons`(`lessonS_id1`,`partparagraphS_id1`)
	VALUES(idLesson, idPartparagraph);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setResponsible
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setResponsible`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setResponsible` (
	idRelation INT UNSIGNED,
	idLearner INT UNSIGNED,
	idResponsible INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`spisokresponsiblelearners`(`relationS_id`,`learnerS_id1`,`responsibleS_id1`)
	VALUES(idRelation, idLearner, idResponsible);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure unsetResponsible
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`unsetResponsible`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`unsetResponsible` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setSubjectClass
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setSubjectClass`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setSubjectClass` (
	IN idClass INT UNSIGNED,
	IN idSubject INT UNSIGNED,
	IN idTeacher INT UNSIGNED
)
BEGIN
	DECLARE idTeacherSubject INT UNSIGNED DEFAULT NULL;
	DECLARE idGroup INT UNSIGNED;
	IF idTeacher IS NOT NULL THEN

	# idTeacherSubject
	SELECT id INTO idTeacherSubject 
	FROM `admin_do`.`teachersubjects` 
	WHERE `teacherS_id1`=idTeacher AND `subjectS_id1`=idSubject;

	IF idTeacherSubject IS NOT NULL THEN
	# create default subgroup for subject
	CALL cSubgroupDefault(idClass, idSubject, true, idGroup, idTeacher);
	# insert start teach teacher
	INSERT INTO `admin_do`.`spisokteachersubjectsubgroups`(`datestart`,`subgroupS_id1`,`teachersubjectS_id1`)
	VALUES(NOW(), idGroup, idTeacherSubject);
	END IF;
	# add all learner in new default group for subject
	CALL setLearnerAllToSubgroupDefault(idGroup,idClass);
	END IF;
	IF idTeacher IS NULL THEN
	CALL cSubgroupDefault(idClass, idSubject, true, idGroup, idTeacher);
	CALL setLearnerAllToSubgroupDefault(idGroup,idClass);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSubjectClass
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rSubjectClass`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rSubjectClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSubgroup
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cSubgroup`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cSubgroup` (
	IN name VARCHAR(256),
	IN idClass INT UNSIGNED,
	IN idSubject INT UNSIGNED,
	IN isdefault BOOL,
	INOUT idGroup INT UNSIGNED,
	IN idTeacher INT UNSIGNED
)
BEGIN
	IF isdefault THEN
		UPDATE `admin_do`.`subgroups` SET `isdefault` = false 
		WHERE `subjectS_id`=idSubject AND `classS_id1`=idClass AND `isdefault` = true;
	END IF;

	INSERT INTO `admin_do`.`subgroups`(`name`,`classS_id1`,`subjectS_id`,`isdefault`, `teacherS_id`)
	VALUES(name, idClass, idSubject, isdefault, idTeacher);

	SET idGroup = last_insert_id();
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSubgroupDefault
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cSubgroupDefault`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cSubgroupDefault` (
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
	SELECT count(*) INTO count_subgroup FROM `admin_do`.`subgroups`
	WHERE `classS_id1` = idClass AND `subjectS_id` = idSubject AND `name` LIKE CONCAT(prefix,'%');
	
	IF prefix >= 0 THEN SET prefix = CONCAT(prefix, " ", (count_subgroup+1)); END IF;
	IF isdefault THEN
		UPDATE `admin_do`.`subgroups` SET `isdefault` = false 
		WHERE `classS_id1` = idClass AND `subjectS_id` = idSubject AND `isdefault` = true;
	END IF;
	CALL cSubgroup( prefix, idClass, idSubject, isdefault, idGroupDef, idTeacher);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSubgroupOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dSubgroupOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dSubgroupOne` (
	IN idSubgroup INT UNSIGNED
)
BEGIN
	DECLARE idLesson INT UNSIGNED;
	DECLARE idLearner INT UNSIGNED;
	DECLARE done INTEGER DEFAULT 0;
	
	DECLARE CURS_LESSONS CURSOR FOR
		SELECT `id`
		FROM `admin_do`.`lessons`
		WHERE `subgroupS_id1` = idSubgroup AND `deleted` = 0;

	DECLARE CURS_LEARNERS CURSOR FOR
		SELECT `learnerS_id1`
		FROM `admin_do`.`spisoklearnergroups`
		WHERE `subgroupS_id` = idSubgroup AND `deleted` = 0;

	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;

	-- DELETE ALL LESSONS OF THIS SUBRGROUP
	OPEN CURS_LESSONS;
	WHILE done = 0 DO
		FETCH CURS_LESSONS INTO idLesson;
		IF !done THEN
			CALL dLessonOne(idLesson);
		END IF;
	END WHILE;
	CLOSE CURS_LESSONS;
	
	SET done = 0;

	-- DELETE ALL ROWS THAT LEARNER IS IN GROUP
	OPEN CURS_LEARNERS;
	WHILE done = 0 DO
		FETCH CURS_LEARNERS INTO idLearner;
		IF !done THEN
			CALL dLearnerSubgroup(idSubgroup, idLearner);
		END IF;
	END WHILE;
	CLOSE CURS_LEARNERS;


	-- MOVE TO HISTORY ROW FROM SPISOKTEACHERSUBJECTSUBGROUPS
	UPDATE `admin_do`.`spisokteachersubjectsubgroups` 
	SET `deleted` = 1, `datefinish` = NOW(), `datedeleted` = NOW() 
	WHERE `subgroupS_id1` = idSubgroup AND `deleted` = 0;

	-- MOVE TO HISTORY
	UPDATE `admin_do`.`subgroups` 
	SET `deleted` = 1, `datedeleted` = NOW() 
	WHERE `id` = idSubgroup AND `deleted` = 0;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSubgroup
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rSubgroup`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rSubgroup` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setMaterialSubgroup
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setMaterialSubgroup`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setMaterialSubgroup` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSubject
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cSubject`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cSubject` (IN name VARCHAR(256), IN level TINYINT, IN color VARCHAR(9))
BEGIN
	INSERT INTO `admin_do`.`subjects`(`name`,`level`, `color`) VALUES(name, level, color);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSubjectOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dSubjectOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dSubjectOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSubject
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rSubject`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rSubject` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dTeacherOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dTeacherOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dTeacherOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dTeacherCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dTeacherCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dTeacherCascade` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rTeacher
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rTeacher`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rTeacher` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rTeachersubject
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rTeachersubject`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rTeachersubject` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setTeachersubject
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setTeachersubject`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `setTeachersubject`(
	IN idTeacher INT UNSIGNED,
	IN idSubject INT UNSIGNED
)
BEGIN
	DECLARE cexist INT DEFAULT 0;
	SELECT count(*) into cexist 
	FROM `admin_do`.`teachersubjects` WHERE teacherS_id1=idTeacher AND subjectS_id1=idSubject;
	IF cexist = 0 THEN
		INSERT INTO `admin_do`.`teachersubjects`(`teacherS_id1`,`subjectS_id1`)
		VALUES(idTeacher, idSubject);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure unsetTeachersubject
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`unsetTeachersubject`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`unsetTeachersubject` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cTest
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cTest`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cTest` (
	idLearner INT UNSIGNED,
	idParagraph INT UNSIGNED,
	mark TINYINT UNSIGNED,
	countquestion SMALLINT UNSIGNED,
	correctanswer SMALLINT UNSIGNED
)
BEGIN
	IF mark IS NOT NULL AND idLearner IS NOT NULL AND idParagraph IS NOT NULL THEN
		INSERT INTO `admin_do`.`tests`(`mark`,`datetime`,`countquestion`,`correctanswer`,`paragraphS_id1`,`learnerS_id1`)
		VALUES(mark, now(), countquestion, correctanswer, idParagraph, idLearner);
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rTest
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rTest`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rTest` (
	IN idParagraph INT UNSIGNED
)
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cTimetable
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cTimetable`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cTimetable` (
	idSchool INT UNSIGNED,
	idClassroom INT UNSIGNED,
	idSubgroup INT UNSIGNED,
	number INT UNSIGNED,
	dayweek INT UNSIGNED,
	timestart INT UNSIGNED,
	timefinish INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`timetables`(
		`number`,`dayweek`, `timestart`,`timefinish`,
		`subgroupS_id1`,`classroomS_id1`,`schoolS_id`)
	VALUES(number, dayweek, timestart, timefinish, idSubgroup, idClassroom, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rTimetable
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rTimetable`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rTimetable` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dYodaOne
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dYodaOne`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dYodaOne` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cResponsible
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cResponsible`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cResponsible` (
	iduser INT UNSIGNED,
	firstname VARCHAR(256),
	lastname VARCHAR(256),
	middlename VARCHAR(256),
	idSchool INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`responsibles`(`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`)
	VALUES(iduser, firstname, lastname, middlename, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rResponsible
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rResponsible`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rResponsible` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure unsetSubjectClass
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`unsetSubjectClass`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`unsetSubjectClass` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setLearnerAllToSubgroupDefault
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setLearnerAllToSubgroupDefault`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setLearnerAllToSubgroupDefault` (
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

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`insParagraphInSection`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`insParagraphInSection` (
	name VARCHAR(256),
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED
)
BEGIN
	DECLARE count_paragraph SMALLINT UNSIGNED;
	IF idMaterial IS NOT NULL AND idSection IS NOT NULL THEN		
		SELECT count(*) INTO count_paragraph 
		FROM `admin_do`.`paragraphs` 
		WHERE `admin_do`.`paragraphs`.`materialS_id1`=idMaterial
			AND `admin_do`.`paragraphs`.`sectionS_id1` <= idSection;
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

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`moveParagraphInSection`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`moveParagraphInSection` (
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED,
	idMove INT UNSIGNED,
	NNP TINYINT UNSIGNED
)
BEGIN
	IF idMaterial IS NOT NULL AND idSection IS NOT NULL AND idMove IS NOT NULL AND NNP IS NOT NULL THEN
		IF NNP IS NULL THEN
			SELECT count(*) INTO NNP 
			FROM `admin_do`.`paragraphs` 
			WHERE `admin_do`.`paragraphs`.`materialS_id1`=idMaterial
				AND `admin_do`.`paragraphs`.`sectionS_id1` < (idSection+1);
		END IF;
		# reset all number paragraph
		CALL resetNumberParagraphInMaterial(idMaterial, idSection, idMove, NNP, false);
		# update mark paragraph for move
		UPDATE `admin_`.`paragraphs`
		SET `admin_do`.`paragraphs`.`number` = NNP , `admin_do`.`paragraphs`.`dateupdate` = now()
		WHERE `admin_do`.`paragraphs`.`id` = idMove;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure moveParagraphInMaterial
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`moveParagraphInMaterial`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`moveParagraphInMaterial` (
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
			FROM `admin_do`.`paragraphs` 
			WHERE `admin_do`.`paragraphs`.`materialS_id1`=idMaterial
				AND `admin_do`.`paragraphs`.`sectionS_id1` < (idSection+1);
		END IF;

		# reset number without cur paragraph
		CALL resetNumberParagraphInMaterial(idMaterial, idSection, idMove, NNP, true);
		
		IF (NSP NOT IN ( SELECT sectionS_id1 FROM `admin_do`.`paragraphs` WHERE materialS_id1 = idMaterial)) THEN
			UPDATE `admin_do`.`materials` SET countsection = countsection + 1 WHERE id = idMaterial;
		END IF;

		# update cur paragraph in NSP,NNP
		UPDATE `admin_do`.`paragraphs`
		SET `admin_do`.`paragraphs`.`number` = NNP, 
			`admin_do`.`paragraphs`.`sectionS_id1` = NSP, 
			`admin_do`.`paragraphs`.`dateupdate` = now()
		WHERE `admin_do`.`paragraphs`.`id` = idMove;

		IF (idSection NOT IN ( SELECT sectionS_id1 FROM `admin_do`.`paragraphs` WHERE materialS_id1 = idMaterial)) THEN
			UPDATE `admin_do`.`materials` SET countsection = countsection - 1 WHERE id = idMaterial;
		END IF;

	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure resetNumberParagraphInMaterial
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`resetNumberParagraphInMaterial`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`resetNumberParagraphInMaterial` (
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
			UPDATE `admin_do`.`paragraphs`
			SET `admin_do`.`paragraphs`.`number` = `admin_do`.`paragraphs`.`number` + 1 , `admin_do`.`paragraphs`.`dateupdate` = now()
			WHERE `admin_do`.`paragraphs`.`materialS_id1` = idMaterial AND `number` >= NNP;
		ELSEIF idMove IS NOT NULL THEN
			SELECT `admin_do`.`paragraphs`.`number` INTO CNP 
			FROM `admin_do`.`paragraphs` WHERE `admin_do`.`paragraphs`.`id` = idMove;

			IF global THEN
				# reset in this section of material with mark moved paragraph
				IF NNP = -1 THEN # move to end !!! REMOVE AFTER
					SET direction := -1;
					UPDATE `admin_do`.`paragraphs`
					SET `admin_do`.`paragraphs`.`number` = `admin_do`.`paragraphs`.`number` + (direction) , `admin_do`.`paragraphs`.`dateupdate` = now()
					WHERE `admin_do`.`paragraphs`.`materialS_id1` = idMaterial 
						AND `admin_do`.`paragraphs`.`id` != idMove AND `number` > CNP;
				ELSEIF NNP > CNP THEN # move down
					SET direction := -1;
					UPDATE `admin_do`.`paragraphs`
					SET `admin_do`.`paragraphs`.`number` = `admin_do`.`paragraphs`.`number` + (direction) , `admin_do`.`paragraphs`.`dateupdate` = now()
					WHERE `admin_do`.`paragraphs`.`materialS_id1` = idMaterial 
						AND `admin_do`.`paragraphs`.`id` != idMove AND `number` > CNP AND `number` <= NNP;
				ELSEIF NNP < CNP THEN # move up
					SET direction := +1;
					UPDATE `admin_do`.`paragraphs`
					SET `admin_do`.`paragraphs`.`number` = `admin_do`.`paragraphs`.`number` + (direction) , `admin_do`.`paragraphs`.`dateupdate` = now()
					WHERE `admin_do`.`paragraphs`.`materialS_id1` = idMaterial 
						AND `admin_do`.`paragraphs`.`id` != idMove AND `number` >= NNP AND `number` < CNP;
				END IF; 
			ELSE
				# reset in this section of material with mark moved paragraph
				IF NNP > CNP THEN # move down
					SET direction := -1;
					UPDATE `admin_do`.`paragraphs`
					SET `admin_do`.`paragraphs`.`number` = `admin_do`.`paragraphs`.`number` + (direction) , `admin_do`.`paragraphs`.`dateupdate` = now()
					WHERE `admin_do`.`paragraphs`.`materialS_id1` = idMaterial AND `admin_do`.`paragraphs`.`sectionS_id1` = idSection
						AND `admin_do`.`paragraphs`.`id` != idMove AND `number` > CNP AND `number` <= NNP;
				ELSEIF NNP < CNP THEN # move up
					SET direction := +1;
					UPDATE `admin_do`.`paragraphs`
					SET `admin_do`.`paragraphs`.`number` = `admin_do`.`paragraphs`.`number` + (direction) , `admin_do`.`paragraphs`.`dateupdate` = now()
					WHERE `admin_do`.`paragraphs`.`materialS_id1` = idMaterial AND `admin_do`.`paragraphs`.`sectionS_id1` = idSection 
						AND `admin_do`.`paragraphs`.`id` != idMove AND `number` >= NNP AND `number` < CNP;
				END IF;
			END IF;
		END IF;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure switchNotstudyParagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`switchNotstudyParagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`switchNotstudyParagraph` (
	idParagraph INT UNSIGNED,
	notstudy BOOL
)
BEGIN
	UPDATE `admin_do`.`paragraphs` SET `notstudy` = notstudy WHERE `admin_do`.`paragraphs`.`id` = idParagraph;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure insPartparagraphInParagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`insPartparagraphInParagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`insPartparagraphInParagraph` (
	name VARCHAR(256),
	idParagraph INT UNSIGNED
)
BEGIN
	DECLARE count_partparagraph SMALLINT UNSIGNED;
	IF idParagraph IS NOT NULL THEN		
		SELECT count(*) INTO count_partparagraph 
		FROM `admin_do`.`partparagraphs` 
		WHERE `admin_do`.`partparagraphs`.`paragraphS_id1`=idParagraph;
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

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`resetNumberPartparagraphInParagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`resetNumberPartparagraphInParagraph` (
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
			UPDATE `admin_do`.`partparagraphs`
			SET `admin_do`.`partparagraphs`.`number` = `admin_do`.`partparagraphs`.`number` + 1 , 
				`admin_do`.`partparagraphs`.`dateupdate` = now()
			WHERE `admin_do`.`partparagraphs`.`paragraphS_id1` = idParagraph AND `number` >= NNP;
		ELSEIF idMove IS NOT NULL THEN
			SELECT `admin_do`.`partparagraphs`.`number` INTO CNP FROM `admin_do`.`partparagraphs` 
			WHERE `admin_do`.`partparagraphs`.`id` = idMove;
			# reset in this paragraph with mark moved partparagraph
			IF NNP = -1 THEN # move full down !!! AFTER DELETE NECESSARILY
				SET direction := -1;
				UPDATE `admin_do`.`partparagraphs`
				SET `admin_do`.`partparagraphs`.`number` = `admin_do`.`partparagraphs`.`number` + (direction) , 
					`admin_do`.`partparagraphs`.`dateupdate` = now()
				WHERE `admin_do`.`partparagraphs`.`paragraphS_id1` = idParagraph
					AND `admin_do`.`partparagraphs`.`id` != idMove
					AND `number` > CNP;
			ELSEIF NNP > CNP THEN # move down
				SET direction := -1;
				UPDATE `admin_do`.`partparagraphs`
				SET `admin_do`.`partparagraphs`.`number` = `admin_do`.`partparagraphs`.`number` + (direction) , 
					`admin_do`.`partparagraphs`.`dateupdate` = now()
				WHERE `admin_do`.`partparagraphs`.`paragraphS_id1` = idParagraph
					AND `admin_do`.`partparagraphs`.`id` != idMove 
					AND `number` > CNP AND `number` <= NNP;
			ELSEIF NNP < CNP THEN # move up
				SET direction := +1;
				UPDATE `admin_do`.`partparagraphs`
				SET `admin_do`.`partparagraphs`.`number` = `admin_do`.`partparagraphs`.`number` + (direction) , 
					`admin_do`.`partparagraphs`.`dateupdate` = now()
				WHERE `admin_do`.`partparagraphs`.`paragraphS_id1` = idParagraph
					AND `admin_do`.`partparagraphs`.`id` != idMove 
					AND `number` >= NNP AND `number` < CNP;
			END IF;
		END IF;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure movePartparagraphInParagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`movePartparagraphInParagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`movePartparagraphInParagraph` (
	idParagraph INT UNSIGNED,
	idMove INT UNSIGNED,
	NNP TINYINT UNSIGNED
)
BEGIN
	IF idParagraph IS NOT NULL AND idMove IS NOT NULL THEN
		IF NNP IS NULL THEN
			SELECT count(*) INTO NNP 
			FROM `admin_do`.`partparagraphs` 
			WHERE `admin_do`.`partparagraphs`.`paragraphS_id1`=idParagraph;
		END IF;
		# reset all number partparagraph
		CALL resetNumberPartparagraphInParagraph(idParagraph, idMove, NNP);
		# update mark partparagraph for move
		UPDATE `admin_do`.`partparagraphs`
		SET `admin_do`.`partparagraphs`.`number` = NNP , `admin_do`.`partparagraphs`.`dateupdate` = now()
		WHERE `admin_do`.`partparagraphs`.`id` = idMove;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure switchNotstudyMaterial
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`switchNotstudyMaterial`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`switchNotstudyMaterial` (
	idMaterial INT UNSIGNED,
	notstudy BOOL
)
BEGIN
	UPDATE `admin_do`.`materials` SET `notstudy` = notstudy WHERE `admin_do`.`materials`.`id` = idMaterial;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure moveQuestionInPartparagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`moveQuestionInPartparagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`moveQuestionInPartparagraph` (
	idPartparagraph INT UNSIGNED,
	idMove INT UNSIGNED
)
BEGIN
	UPDATE `admin_do`.`questions`	SET	`partparagraphS_id1` = idPartparagraph WHERE `admin_do`.`questions`.`id`=idMove;	
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure cSchedulering
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`cSchedulering`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`cSchedulering` (
	idSchool INT UNSIGNED,
	shift TINYINT UNSIGNED,
	number TINYINT UNSIGNED,
	timestart TIME,
	timefinsh TIME
)
BEGIN
	INSERT INTO `admin_do`.`schedulerings`(`timestart`,`timefinish`,`number`,`shift`,`schoolS_id`)
	VALUES(timestart, timefinsh, number, shift, idSchool);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure rSchedulering
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`rSchedulering`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`rSchedulering` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure resetVisitaverage
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`resetVisitaverage`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`resetVisitaverage` (
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
		FROM `admin_do`.`spisoklearnergroups`
		WHERE `subgroupS_id` = idSubgroup AND `learnerS_id1` = idLearner;

		SET sum_mark_new = sum_mark_old + value;
		SET count_mark_new = sum_mark_old + 1;
		SET average_mark_new = sum_mark_new / count_mark_new;

		UPDATE `admin_do`.`spisoklearnergroups`
		SET `countmark` = count_mark_new,
			`summark` = sum_mark_new,
			`averagemark` = average_mark_new
		WHERE `subgroupS_id` = idSubgroup AND `learnerS_id1` = idLearner;
	ELSEIF visit IS NOT NULL THEN # absent
		UPDATE `admin_do`.`spisoklearnergroups`
		SET `countvisit` = `countvisit` + 1
		WHERE `subgroupS_id` = idSubgroup AND `learnerS_id1` = idLearner;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure getNextPrevIdClass
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`getNextPrevIdClass`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`getNextPrevIdClass` (
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

	SELECT `admin_do`.`classs`.`letter`, `admin_do`.`classs`.`level` INTO letter, level 
	FROM `admin_do`.`classs` 
	WHERE `admin_do`.`classs`.`id`= curclass 
		AND `admin_do`.`classs`.`schoolS_id`= idSchool;
	#NEXT
	SELECT count(*) INTO cInLevel FROM `admin_do`.`classs` 
	WHERE `admin_do`.`classs`.`level`=level 
		AND `admin_do`.`classs`.`letter` > letter
		AND `admin_do`.`classs`.`schoolS_id`= idSchool;
	
	IF cInLevel > 0 THEN
		SELECT id, name INTO idNEXTClass, nameNEXTClass  FROM `admin_do`.`classs` 
		WHERE `admin_do`.`classs`.`letter` > letter
			AND `admin_do`.`classs`.`level` = level 
			AND `admin_do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `admin_do`.`classs`.`level`,`admin_do`.`classs`.`letter` LIMIT 0,1;
	ELSE
		SELECT id, name INTO idNEXTClass, nameNEXTClass FROM `admin_do`.`classs` 
		WHERE `admin_do`.`classs`.`level` > level 
			AND `admin_do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `admin_do`.`classs`.`level`,`admin_do`.`classs`.`letter` LIMIT 0,1;
	END IF;
	IF idNEXTClass IS NULL THEN # FIRST
		SELECT id, name INTO idNEXTClass, nameNEXTClass FROM `admin_do`.`classs`
		WHERE `admin_do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `admin_do`.`classs`.`level`,`admin_do`.`classs`.`letter` LIMIT 0,1;
	END IF;
	#PREV
	SELECT count(*) INTO cInLevel FROM `admin_do`.`classs` 
	WHERE `admin_do`.`classs`.`level`=level 
		AND `admin_do`.`classs`.`letter` < letter
		AND `admin_do`.`classs`.`schoolS_id`= idSchool;
	
	IF cInLevel > 0 THEN
		SELECT id, name INTO idPREVClass, namePREVClass FROM `admin_do`.`classs` 
		WHERE `admin_do`.`classs`.`letter` < letter
			AND `admin_do`.`classs`.`level` = level
			AND `admin_do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `admin_do`.`classs`.`level` DESC,`admin_do`.`classs`.`letter` DESC LIMIT 0,1;
	ELSE
		SELECT id, name INTO idPREVClass, namePREVClass FROM `admin_do`.`classs` 
		WHERE `admin_do`.`classs`.`level` < level 
			AND `admin_do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `admin_do`.`classs`.`level` DESC,`admin_do`.`classs`.`letter` DESC LIMIT 0,1;
	END IF;
	IF idPREVClass IS NULL THEN # LAST
		SELECT id, name INTO idPREVClass, namePREVClass FROM `admin_do`.`classs`
		WHERE `admin_do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `admin_do`.`classs`.`level` DESC,`admin_do`.`classs`.`letter` DESC LIMIT 0,1;
	END IF;
	SELECT idPREVClass, namePREVClass, idNEXTClass, nameNEXTClass;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure checkValidQuestion
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`checkValidQuestion`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `checkValidQuestion`(
	IN idQuestion INT UNSIGNED
)
BEGIN
	DECLARE valid BOOL;
	DECLARE countAll INT UNSIGNED;
	DECLARE countRight INT UNSIGNED;
	DECLARE idParagraph INT UNSIGNED;

	SELECT count(`answers`.`id`) INTO countAll
	FROM `admin_do`.`answers`
	WHERE `answers`.`questionS_id1` = idQuestion AND `deleted` = 0;

	SELECT count(`answers`.`id`) INTO countRight
	FROM `admin_do`.`answers`
	WHERE `answers`.`questionS_id1` = idQuestion AND `deleted` = 0 AND `answers`.`right` = 1;
	
	IF countAll >= 4 AND countRight >= 1 THEN SET valid = 1; ELSE SET valid = 0; END IF;

	UPDATE `admin_do`.`questions` SET `valid` = valid WHERE `id` = idQuestion;
	
	SELECT `partparagraphs`.`paragraphS_id1` INTO idParagraph
	FROM `admin_do`.`partparagraphs` 
	WHERE `id` = (
		SELECT `questions`.`partparagraphS_id1` 
		FROM `admin_do`.`questions` 
		WHERE `id`=idQuestion
	);

	CALL checkValidParagraph(idParagraph);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dAnswersCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dAnswersCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dAnswersCascade` (
	IN idQuestion INT UNSIGNED
)
BEGIN
	UPDATE `admin_do`.`answers` SET `deleted` = 1 
	WHERE `questionS_id1` = idQuestion AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure checkValidParagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`checkValidParagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`checkValidParagraph` (
	IN idParagraph INT UNSIGNED
)
BEGIN
	DECLARE countQuestion INT UNSIGNED;
	SELECT count(id) INTO countQuestion FROM
	(
		(
			SELECT * FROM `admin_do`.`questions` WHERE `partparagraphS_id1` IN 
			(
				SELECT `id` FROM `admin_do`.`partparagraphs` WHERE `paragraphS_id1` = idParagraph
			) 
			AND `complexity` = 1 AND `valid` = 1 AND `extension` IS NULL AND `deleted` = 0 ORDER BY RAND() LIMIT 0,3 
		) 
		UNION (
			SELECT * FROM `admin_do`.`questions` WHERE `partparagraphS_id1` IN 
			(
				SELECT `id` FROM `admin_do`.`partparagraphs` WHERE `paragraphS_id1` = idParagraph) 
				AND `complexity` = 2 AND `valid` = 1 AND `extension` IS NULL AND `deleted` = 0 ORDER BY RAND() LIMIT 0,2
			) 
		UNION (
			SELECT * FROM `admin_do`.`questions` where `partparagraphS_id1` IN 
			(
				SELECT `id` FROM `admin_do`.`partparagraphs` WHERE `paragraphS_id1` = idParagraph
			) 
			AND `complexity` = 3 AND `valid` = 1 AND `extension` IS NULL AND `deleted` = 0 ORDER BY RAND() LIMIT 0,1
		)
	) AS B;
	IF countQuestion >= 6 THEN
		UPDATE `admin_do`.`paragraphs` SET `valid` = 1 WHERE `id` = idParagraph;
	ELSE
		UPDATE `admin_do`.`paragraphs` SET `valid` = 0 WHERE `id` = idParagraph;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure changeStudyStateParagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`changeStudyStateParagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`changeStudyStateParagraph` (
	IN idParagraph INT UNSIGNED,
	IN notstudy BOOL
)
BEGIN
	DECLARE idMaterial INT UNSIGNED;

	SELECT `paragraphs`.`materialS_id1` INTO idMaterial
	FROM `admin_do`.`paragraphs`
	WHERE `id` = idParagraph;

	UPDATE `admin_do`.`paragraphs` 
	SET `notstudy` = notstudy 
	WHERE `id` = idParagraph AND `deleted` = 0;
	
	IF notstudy = 0 THEN
		UPDATE `admin_do`.`materials`
		SET `countparagraphactive` = `countparagraphactive`+1
		WHERE `deleted` = '0' AND `notstudy` = '0' AND `id` = idMaterial;
	ELSE
		UPDATE `admin_do`.`materials`
		SET `countparagraphactive` = `countparagraphactive`-1
		WHERE `deleted` = '0' AND `notstudy` = '0' AND `id` = idMaterial;
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure changeStudyStateMaterial
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`changeStudyStateMaterial`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`changeStudyStateMaterial` (
	IN idMaterial INT UNSIGNED,
	IN notstudy BOOL
)
BEGIN
	UPDATE `admin_do`.`materials` 
	SET `notstudy` = notstudy
	WHERE `id` = idMaterial AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure uPartparagraph
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`uPartparagraph`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`uPartparagraph` (
	name VARCHAR(256),
	text TEXT,
	idParagraph INT UNSIGNED
)
BEGIN
	UPDATE `admin_do`.`partparagraphs` 
	SET `text`= text, `name`= name, `dateupdate`= now() 
	WHERE id = idParagraph;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure switchRightIncorrectAnswer
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`switchRightIncorrectAnswer`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `switchRightIncorrectAnswer` (
IN idAnswer INT UNSIGNED,
IN idQuestion INT UNSIGNED
)
BEGIN
	DECLARE rightA INT UNSIGNED;
	UPDATE `admin_do`.`answers` SET `right` = not `right` WHERE `id` = idAnswer;
	SELECT `right` INTO @rightA FROM `admin_do`.`answers` WHERE `id` = idAnswer;
	IF @rightA THEN
	UPDATE `admin_do`.`questions` SET `countrightanswer` = `countrightanswer` + 1 WHERE `id` = idQuestion;
	ELSE 
	UPDATE `admin_do`.`questions` SET `countrightanswer` = `countrightanswer` - 1 WHERE `id` = idQuestion;
	END IF;

	IF idQuestion IS NULL THEN 
	SELECT `answers`.`questionS_id1` INTO idQuestion 
	FROM `admin_do`.`answers` 
	WHERE `answers`.`id` = idAnswer;
	END IF;

	CALL checkValidQuestion(idQuestion);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure dSubgroupCascade
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`dSubgroupCascade`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`dSubgroupCascade` (
	IN idSubgroup INT UNSIGNED
)
BEGIN
	DECLARE idLesson INT UNSIGNED;
	DECLARE done INTEGER DEFAULT 0;
	DECLARE CURS_LESSONS CURSOR FOR
		SELECT `id`
		FROM `admin_do`.`lessons`
		WHERE `subgroupS_id1` = idSubgroup AND `deleted` = 0;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;

	-- DELETE ALL LESSONS OF THIS SUBRGROUP	
	OPEN CURS_LESSONS;
	WHILE done = 0 DO
		FETCH CURS_LESSONS INTO idLesson;
		IF !done THEN
			CALL dLessonOne(idLesson);
		END IF;
	END WHILE;
	CLOSE CURS_LESSONS;
			
	-- MOVE TO HISTORY ROW FROM SPISOKTEACHERSUBJECTSUBGROUPS
	UPDATE `admin_do`.`spisokteachersubjectsubgroups` SET `deleted` = 1, `datefinish` = NOW() 
	WHERE `subgroupS_id1` = idSubgroup AND `deleted` = 0;

	-- MOVE TO HISTORY
	UPDATE `admin_do`.`subgroups` SET `deleted` = 1 WHERE `id` = idSubgroup AND `deleted` = 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure setSubjectSchool
-- -----------------------------------------------------

USE `admin_do`;
DROP procedure IF EXISTS `admin_do`.`setSubjectSchool`;

DELIMITER $$
USE `admin_do`$$
CREATE PROCEDURE `admin_do`.`setSubjectSchool` (
	IN idSubject INT UNSIGNED,
	IN idSchool INT UNSIGNED
)
BEGIN
	INSERT INTO `admin_do`.`spisoksubjectschools`(`subjects_id`, `schools_id`) 
	VALUES(idSubject, idSchool);
END$$

DELIMITER ;
USE `admin_do`;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`classs_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `classs_AINS` AFTER INSERT ON `classs` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE `admin_do`.`schools` SET `countclass` = `countclass` + 1 WHERE `id` = NEW.`schoolS_id`;
END
$$


DELIMITER ;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`learners_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `learners_AINS` AFTER INSERT ON `learners` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE `admin_do`.`schools` SET `countlearner` = `countlearner` + 1 WHERE `id` = NEW.`schoolS_id`;
END
$$


DELIMITER ;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`teachers_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `teachers_AINS` AFTER INSERT ON `teachers` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE `admin_do`.`schools` SET `countteacher` = `countteacher` + 1 WHERE `id` = NEW.`schoolS_id`;
END
$$


DELIMITER ;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`kos_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `kos_AINS` AFTER INSERT ON `kos` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE `admin_do`.`schools` SET `countko` = `countko` + 1 WHERE `id` = NEW.`schoolS_id`;
END
$$


DELIMITER ;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`classrooms_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `classrooms_AINS` AFTER INSERT ON `classrooms` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE `admin_do`.`schools` SET `countclassroom` = `countclassroom` + 1 WHERE `id` = NEW.`schoolS_id`;
END
$$


DELIMITER ;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`schoolmarks_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `schoolmarks_AINS` AFTER INSERT ON `schoolmarks` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	
	CALL resetVisitaverage(
		(SELECT `subgroupS_id1` FROM `admin_do`.`lessons` WHERE `id` = NEW.`lessonS_id`), 
		NEW.`learnerS_id1`, NEW.`value`, NEW.`absentS_id`
	);
END
$$


DELIMITER ;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`paragraphs_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `paragraphs_AINS` AFTER INSERT ON `paragraphs` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE `admin_do`.`materials` SET `countparagraph` = `countparagraph` + 1 WHERE `id` = NEW.`materialS_id1`;
END
$$


USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`paragraphs_BINS` $$
USE `admin_do`$$


CREATE TRIGGER `paragraphs_BINS` BEFORE INSERT ON `paragraphs` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	IF (NEW.`sectionS_id1` NOT IN (
						SELECT `sectionS_id1` 
						FROM `admin_do`.`paragraphs` 
						WHERE `materialS_id1` = NEW.`materialS_id1`)) THEN
		UPDATE `admin_do`.`materials` SET `countsection` = `countsection` + 1 WHERE `id` = NEW.`materialS_id1`;
	END IF;
END
$$


DELIMITER ;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`partparagraphs_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `partparagraphs_AINS` AFTER INSERT ON `partparagraphs` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE `admin_do`.`paragraphs` SET `countpart` = `countpart` + 1 WHERE `id` = NEW.`paragraphS_id1`;
END
$$


DELIMITER ;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`questions_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `questions_AINS` AFTER INSERT ON `questions` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	DECLARE tempparagraphS_id INTEGER;

	UPDATE `admin_do`.`partparagraphs` SET `countquestion` = `countquestion` + 1 WHERE `id` = NEW.`partparagraphS_id1`;
	
	SET @tempparagraphS_id := (SELECT `paragraphS_id1` FROM `admin_do`.`partparagraphs` WHERE `id` = NEW.`partparagraphS_id1`);
	
	UPDATE `admin_do`.`paragraphs` SET `countquestion` = `countquestion` + 1 WHERE `id` = @tempparagraphS_id;
END
$$


DELIMITER ;

DELIMITER $$

USE `admin_do`$$
DROP TRIGGER IF EXISTS `admin_do`.`answers_AINS` $$
USE `admin_do`$$


CREATE TRIGGER `answers_AINS` AFTER INSERT ON `answers` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	UPDATE `admin_do`.`questions` SET `countanswer` = `countanswer` + 1 WHERE `id` = NEW.`questionS_id1`;
	IF (NEW.`right`) THEN
		UPDATE `admin_do`.`questions` SET `countrightanswer` = `countrightanswer` + 1 WHERE `id` = NEW.`questionS_id1`;
	END IF;
END
$$


DELIMITER ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
