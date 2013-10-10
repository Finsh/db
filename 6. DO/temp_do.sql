SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `DO` DEFAULT CHARACTER SET utf8 ;
USE `DO` ;

-- -----------------------------------------------------
-- Table `DO`.`school`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`school` (
  `id` INT NOT NULL ,
  `number` SMALLINT UNSIGNED NULL ,
  `name` VARCHAR(256) NULL ,
  `directoruser` INT UNSIGNED NOT NULL COMMENT 'id пользователя выполняющий роль директора' ,
  `countclass` SMALLINT NULL DEFAULT 0 ,
  `countlearner` SMALLINT NULL DEFAULT 0 ,
  `countteacher` SMALLINT NULL DEFAULT 0 ,
  `countko` SMALLINT NULL DEFAULT 0 ,
  `countclassroom` SMALLINT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `description` TEXT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`classS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`classS` (
  `id` INT UNSIGNED NOT NULL ,
  `school_id` INT NOT NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `level` SMALLINT NOT NULL ,
  `entryyear` SMALLINT NULL ,
  `endyear` SMALLINT NULL ,
  `countlearner` SMALLINT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_ClassS_Shool1_idx` (`school_id` ASC) ,
  CONSTRAINT `fk_ClassS_Shool1`
    FOREIGN KEY (`school_id` )
    REFERENCES `DO`.`school` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`learnerS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`learnerS` (
  `id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL ,
  `classS_id` INT UNSIGNED NOT NULL ,
  `school_id` INT NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LearnerS_ClassS_idx` (`classS_id` ASC) ,
  INDEX `fk_learnerS_school1_idx` (`school_id` ASC) ,
  CONSTRAINT `fk_LearnerS_ClassS`
    FOREIGN KEY (`classS_id` )
    REFERENCES `DO`.`classS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_learnerS_school1`
    FOREIGN KEY (`school_id` )
    REFERENCES `DO`.`school` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`teacherS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`teacherS` (
  `id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `school_id` INT NOT NULL ,
  `absentstart` DATETIME NULL ,
  `absentfinish` DATETIME NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_teacherS_school1_idx` (`school_id` ASC) ,
  CONSTRAINT `fk_teacherS_school1`
    FOREIGN KEY (`school_id` )
    REFERENCES `DO`.`school` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`responsibleS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`responsibleS` (
  `id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL ,
  `school_id` INT NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_responsibleS_school1_idx` (`school_id` ASC) ,
  CONSTRAINT `fk_responsibleS_school1`
    FOREIGN KEY (`school_id` )
    REFERENCES `DO`.`school` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`subjectS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`subjectS` (
  `id` INT UNSIGNED NOT NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `level` SMALLINT NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`koS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`koS` (
  `id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL ,
  `shool_id` INT NOT NULL ,
  `level` INT NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_koS_Shool1_idx` (`shool_id` ASC) ,
  CONSTRAINT `fk_koS_Shool1`
    FOREIGN KEY (`shool_id` )
    REFERENCES `DO`.`school` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`teachersubjectS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`teachersubjectS` (
  `id` INT UNSIGNED NOT NULL ,
  `subjectS_id` INT UNSIGNED NOT NULL ,
  `teacherS_id` INT UNSIGNED NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_ClassS_has_SubjectS_SubjectS1_idx` (`subjectS_id` ASC) ,
  INDEX `fk_SpisokClassSubject_TeacherS1_idx` (`teacherS_id` ASC) ,
  CONSTRAINT `fk_ClassS_has_SubjectS_SubjectS1`
    FOREIGN KEY (`subjectS_id` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokClassSubject_TeacherS1`
    FOREIGN KEY (`teacherS_id` )
    REFERENCES `DO`.`teacherS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Chto  on  prepodaet';


-- -----------------------------------------------------
-- Table `DO`.`spisokteachersubjectS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`spisokteachersubjectS` (
  `teacherS_id` INT UNSIGNED NOT NULL ,
  `subjectS_id` INT UNSIGNED NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  INDEX `fk_TeacherS_has_SubjectS_SubjectS1_idx` (`subjectS_id` ASC) ,
  INDEX `fk_TeacherS_has_SubjectS_TeacherS1_idx` (`teacherS_id` ASC) ,
  CONSTRAINT `fk_TeacherS_has_SubjectS_TeacherS1`
    FOREIGN KEY (`teacherS_id` )
    REFERENCES `DO`.`teacherS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_TeacherS_has_SubjectS_SubjectS1`
    FOREIGN KEY (`subjectS_id` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Chto moget prepodavat ';


-- -----------------------------------------------------
-- Table `DO`.`classroomS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`classroomS` (
  `id` INT UNSIGNED NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `school_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_classroomS_school1_idx` (`school_id` ASC) ,
  CONSTRAINT `fk_classroomS_school1`
    FOREIGN KEY (`school_id` )
    REFERENCES `DO`.`school` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`subgroupS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`subgroupS` (
  `id` INT NOT NULL ,
  `classS_id` INT UNSIGNED NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_subgroupS_classS1_idx` (`classS_id` ASC) ,
  CONSTRAINT `fk_subgroupS_classS1`
    FOREIGN KEY (`classS_id` )
    REFERENCES `DO`.`classS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisoklearnergroupS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`spisoklearnergroupS` (
  `id` VARCHAR(45) NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `subgroup_id` INT NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  INDEX `fk_learnergroup_learnerS1_idx` (`learnerS_id` ASC) ,
  INDEX `fk_learnergroup_subgroup1_idx` (`subgroup_id` ASC) ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_learnergroup_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_learnergroup_subgroup1`
    FOREIGN KEY (`subgroup_id` )
    REFERENCES `DO`.`subgroupS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`timetableS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`timetableS` (
  `id` INT UNSIGNED NOT NULL ,
  `subgroupS_id` INT NOT NULL ,
  `classroomS_id` INT UNSIGNED NOT NULL ,
  `number` SMALLINT NOT NULL ,
  `dayweek` SMALLINT NOT NULL ,
  `teachersubjectS_id` INT UNSIGNED NOT NULL ,
  `timestart` TIME NOT NULL ,
  `timefinish` TIME NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_timetableS_subgroupS1_idx` (`subgroupS_id` ASC) ,
  INDEX `fk_timetableS_classroomS1_idx` (`classroomS_id` ASC) ,
  INDEX `fk_timetableS_teachersubjectS1_idx` (`teachersubjectS_id` ASC) ,
  CONSTRAINT `fk_timetableS_subgroupS1`
    FOREIGN KEY (`subgroupS_id` )
    REFERENCES `DO`.`subgroupS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_timetableS_classroomS1`
    FOREIGN KEY (`classroomS_id` )
    REFERENCES `DO`.`classroomS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_timetableS_teachersubjectS1`
    FOREIGN KEY (`teachersubjectS_id` )
    REFERENCES `DO`.`teachersubjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisokteachersubjectsubgroupS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`spisokteachersubjectsubgroupS` (
  `date` DATE NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `teachersubjectS_id` INT UNSIGNED NOT NULL ,
  `subgroupS_id` INT NOT NULL ,
  INDEX `fk_spisokteachersubjectsubgroupS_teachersubjectS1_idx` (`teachersubjectS_id` ASC) ,
  INDEX `fk_spisokteachersubjectsubgroupS_subgroupS1_idx` (`subgroupS_id` ASC) ,
  CONSTRAINT `fk_spisokteachersubjectsubgroupS_teachersubjectS1`
    FOREIGN KEY (`teachersubjectS_id` )
    REFERENCES `DO`.`teachersubjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokteachersubjectsubgroupS_subgroupS1`
    FOREIGN KEY (`subgroupS_id` )
    REFERENCES `DO`.`subgroupS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Kakim  grupam prepodaet ';


-- -----------------------------------------------------
-- Table `DO`.`lessontype`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`lessontype` (
  `id` INT UNSIGNED NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`lessonS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`lessonS` (
  `id` INT NOT NULL ,
  `number` SMALLINT NULL ,
  `date` DATE NULL ,
  `kodelete` SMALLINT NULL ,
  `hometask` VARCHAR(45) NULL ,
  `deleted` TINYINT(1) NULL ,
  `classroomS_id` INT UNSIGNED NOT NULL ,
  `subgroupS_id` INT NOT NULL ,
  `teacherS_id` INT UNSIGNED NOT NULL ,
  `subjectS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_lessonS_classroomS2_idx` (`classroomS_id` ASC) ,
  INDEX `fk_lessonS_subgroupS2_idx` (`subgroupS_id` ASC) ,
  INDEX `fk_lessonS_teacherS2_idx` (`teacherS_id` ASC) ,
  INDEX `fk_lessonS_subjectS2_idx` (`subjectS_id` ASC) ,
  CONSTRAINT `fk_lessonS_classroomS2`
    FOREIGN KEY (`classroomS_id` )
    REFERENCES `DO`.`classroomS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_subgroupS2`
    FOREIGN KEY (`subgroupS_id` )
    REFERENCES `DO`.`subgroupS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_teacherS2`
    FOREIGN KEY (`teacherS_id` )
    REFERENCES `DO`.`teacherS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_subjectS2`
    FOREIGN KEY (`subjectS_id` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisoklessontypeS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`spisoklessontypeS` (
  `id` VARCHAR(45) NOT NULL ,
  `lessontype_id` INT UNSIGNED NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `lessonS_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_lessonS_has_lessontype_lessontype1_idx` (`lessontype_id` ASC) ,
  INDEX `fk_spisoklessontypeS_lessonS1_idx` (`lessonS_id` ASC) ,
  CONSTRAINT `fk_lessonS_has_lessontype_lessontype1`
    FOREIGN KEY (`lessontype_id` )
    REFERENCES `DO`.`lessontype` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisoklessontypeS_lessonS1`
    FOREIGN KEY (`lessonS_id` )
    REFERENCES `DO`.`lessonS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`schoolmarkS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`schoolmarkS` (
  `id` INT UNSIGNED NOT NULL ,
  `spisoklessontypeS_id` VARCHAR(45) NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `value` SMALLINT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_schoolmarkS_spisoklessontypeS1_idx` (`spisoklessontypeS_id` ASC) ,
  INDEX `fk_schoolmarkS_learnerS1_idx` (`learnerS_id` ASC) ,
  CONSTRAINT `fk_schoolmarkS_spisoklessontypeS1`
    FOREIGN KEY (`spisoklessontypeS_id` )
    REFERENCES `DO`.`spisoklessontypeS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`relation`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`relation` (
  `id` INT UNSIGNED NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisokresponsiblelearnerS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`spisokresponsiblelearnerS` (
  `id` VARCHAR(45) NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `responsibleS_id` INT UNSIGNED NOT NULL ,
  `relation_id` INT UNSIGNED NULL ,
  INDEX `fk_learnerS_has_responsibleS_responsibleS1_idx` (`responsibleS_id` ASC) ,
  INDEX `fk_learnerS_has_responsibleS_learnerS1_idx` (`learnerS_id` ASC) ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisokresponsiblelearnerS_relation1_idx` (`relation_id` ASC) ,
  CONSTRAINT `fk_learnerS_has_responsibleS_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_learnerS_has_responsibleS_responsibleS1`
    FOREIGN KEY (`responsibleS_id` )
    REFERENCES `DO`.`responsibleS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokresponsiblelearnerS_relation1`
    FOREIGN KEY (`relation_id` )
    REFERENCES `DO`.`relation` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`sectionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`sectionS` (
  `id` INT UNSIGNED NOT NULL ,
  `subjectS_id` INT UNSIGNED NOT NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `number` SMALLINT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_sectionS_subjectS1_idx` (`subjectS_id` ASC) ,
  CONSTRAINT `fk_sectionS_subjectS1`
    FOREIGN KEY (`subjectS_id` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`materialS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`materialS` (
  `id` INT UNSIGNED NOT NULL ,
  `teacherS_id` INT UNSIGNED NOT NULL ,
  `subjectS_id` INT UNSIGNED NOT NULL ,
  `state` SMALLINT NULL ,
  `countparagraph` SMALLINT NULL DEFAULT 0 ,
  `datecreate` DATE NULL ,
  `dateupdate` DATE NULL ,
  `notstudy` TINYINT(1) NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_materialS_teacherS1_idx` (`teacherS_id` ASC) ,
  INDEX `fk_materialS_subjectS1_idx` (`subjectS_id` ASC) ,
  CONSTRAINT `fk_materialS_teacherS1`
    FOREIGN KEY (`teacherS_id` )
    REFERENCES `DO`.`teacherS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_materialS_subjectS1`
    FOREIGN KEY (`subjectS_id` )
    REFERENCES `DO`.`subjectS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`paragraphS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`paragraphS` (
  `id` INT UNSIGNED NOT NULL ,
  `materialS_id` INT NOT NULL ,
  `sectionS_id` INT UNSIGNED NOT NULL ,
  `state` SMALLINT NULL ,
  `countquestion` INT NULL DEFAULT 0 ,
  `countpart` SMALLINT NULL DEFAULT 0 ,
  `datecreate` DATE NULL ,
  `dateupdate` DATE NULL ,
  `notstudy` TINYINT(1) NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `countdescussion` SMALLINT NULL DEFAULT 0 ,
  `countextention` SMALLINT NULL DEFAULT 0 ,
  INDEX `fk_paragraphS_materialS1_idx` (`materialS_id` ASC) ,
  INDEX `fk_paragraphS_sectionS1_idx` (`sectionS_id` ASC) ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_paragraphS_materialS1`
    FOREIGN KEY (`materialS_id` )
    REFERENCES `DO`.`materialS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_paragraphS_sectionS1`
    FOREIGN KEY (`sectionS_id` )
    REFERENCES `DO`.`sectionS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`partparagraphS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`partparagraphS` (
  `id` INT UNSIGNED NOT NULL ,
  `paragraphS_id` INT UNSIGNED NOT NULL ,
  `text` VARCHAR(256) NULL ,
  `number` SMALLINT NOT NULL ,
  `datecreate` DATE NULL ,
  `dateupdate` DATE NULL ,
  `countquestion` SMALLINT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `extention` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_partparagraphS_paragraphS1_idx` (`paragraphS_id` ASC) ,
  INDEX `fk_partparagraphS_partparagraphS1_idx` (`extention` ASC) ,
  CONSTRAINT `fk_partparagraphS_paragraphS1`
    FOREIGN KEY (`paragraphS_id` )
    REFERENCES `DO`.`paragraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_partparagraphS_partparagraphS1`
    FOREIGN KEY (`extention` )
    REFERENCES `DO`.`partparagraphS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`questionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`questionS` (
  `id` INT UNSIGNED NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `complexity` SMALLINT NULL COMMENT 'сложность' ,
  `partparagraphS_id` INT UNSIGNED NOT NULL ,
  `countanswers` SMALLINT NULL DEFAULT 0 ,
  `countrightanswers` SMALLINT NULL DEFAULT 0 ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  `exteion` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_questionS_partparagraphS1_idx` (`partparagraphS_id` ASC) ,
  INDEX `fk_questionS_questionS1_idx` (`exteion` ASC) ,
  CONSTRAINT `fk_questionS_partparagraphS1`
    FOREIGN KEY (`partparagraphS_id` )
    REFERENCES `DO`.`partparagraphS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_questionS_questionS1`
    FOREIGN KEY (`exteion` )
    REFERENCES `DO`.`questionS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`answerS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`answerS` (
  `id` INT UNSIGNED NOT NULL ,
  `text` VARCHAR(256) NULL ,
  `right` TINYINT(1) NULL ,
  `questionS_id` INT UNSIGNED NOT NULL ,
  `extension` INT UNSIGNED NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_answerS_questionS1_idx` (`questionS_id` ASC) ,
  CONSTRAINT `fk_answerS_questionS1`
    FOREIGN KEY (`questionS_id` )
    REFERENCES `DO`.`questionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`spisokpartparagraphlessonS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`spisokpartparagraphlessonS` (
  `partparagraphS_id` INT UNSIGNED NOT NULL ,
  `lessonS_id` INT NOT NULL ,
  INDEX `fk_lessonS_has_partparagraphS_partparagraphS1_idx` (`partparagraphS_id` ASC) ,
  INDEX `fk_spisokpartparagraphlessonS_lessonS1_idx` (`lessonS_id` ASC) ,
  CONSTRAINT `fk_lessonS_has_partparagraphS_partparagraphS1`
    FOREIGN KEY (`partparagraphS_id` )
    REFERENCES `DO`.`partparagraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokpartparagraphlessonS_lessonS1`
    FOREIGN KEY (`lessonS_id` )
    REFERENCES `DO`.`lessonS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`discussionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`discussionS` (
  `id` INT UNSIGNED NOT NULL ,
  `paragraphS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `countlike` SMALLINT NULL DEFAULT 0 ,
  `contcomment` SMALLINT NULL DEFAULT 0 ,
  `text` VARCHAR(256) NOT NULL ,
  `extention` INT UNSIGNED NULL ,
  `iduser` INT UNSIGNED NULL ,
  INDEX `fk_discussionS_paragraphS1_idx` (`paragraphS_id` ASC) ,
  INDEX `fk_discussionS_learnerS1_idx` (`learnerS_id` ASC) ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_discussionS_discussionS1_idx` (`extention` ASC) ,
  CONSTRAINT `fk_discussionS_paragraphS1`
    FOREIGN KEY (`paragraphS_id` )
    REFERENCES `DO`.`paragraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_discussionS_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_discussionS_discussionS1`
    FOREIGN KEY (`extention` )
    REFERENCES `DO`.`discussionS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`commentdiscussionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`commentdiscussionS` (
  `id` INT UNSIGNED NOT NULL ,
  `discussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `countlike` INT NULL DEFAULT 0 ,
  `extention` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentdiscussionS_discussionS1_idx` (`discussionS_id` ASC) ,
  INDEX `fk_commentdiscussionS_commentdiscussionS1_idx` (`extention` ASC) ,
  CONSTRAINT `fk_commentdiscussionS_discussionS1`
    FOREIGN KEY (`discussionS_id` )
    REFERENCES `DO`.`discussionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentdiscussionS_commentdiscussionS1`
    FOREIGN KEY (`extention` )
    REFERENCES `DO`.`commentdiscussionS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`likedislikediscussionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`likedislikediscussionS` (
  `discussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL ,
  INDEX `fk_likedislikediscussionS_discussionS1_idx` (`discussionS_id` ASC) ,
  CONSTRAINT `fk_likedislikediscussionS_discussionS1`
    FOREIGN KEY (`discussionS_id` )
    REFERENCES `DO`.`discussionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`likedislikecommentdiscussionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`likedislikecommentdiscussionS` (
  `commentdiscussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL ,
  INDEX `fk_likedislikediscussionS_commentdiscussionS1_idx` (`commentdiscussionS_id` ASC) ,
  CONSTRAINT `fk_likedislikediscussionS_commentdiscussionS1`
    FOREIGN KEY (`commentdiscussionS_id` )
    REFERENCES `DO`.`commentdiscussionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`paragraphextensionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`paragraphextensionS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `paragraphS_id` INT UNSIGNED NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `extension` INT UNSIGNED NULL ,
  `countcomment` INT NULL DEFAULT 0 ,
  `countlike` INT NULL DEFAULT 0 ,
  `lastname` VARCHAR(256) NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `iduser` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_paragraphextensionS_paragraphS1_idx` (`paragraphS_id` ASC) ,
  INDEX `fk_paragraphextensionS_learnerS1_idx` (`learnerS_id` ASC) ,
  INDEX `fk_paragraphextensionS_paragraphextensionS1_idx` (`extension` ASC) ,
  CONSTRAINT `fk_paragraphextensionS_paragraphS1`
    FOREIGN KEY (`paragraphS_id` )
    REFERENCES `DO`.`paragraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_paragraphextensionS_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_paragraphextensionS_paragraphextensionS1`
    FOREIGN KEY (`extension` )
    REFERENCES `DO`.`paragraphextensionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`commentparagraphextensionS`
-- -----------------------------------------------------
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
  `extention` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_commentparagraphextensionS_paragraphextensionS1_idx` (`paragraphextensionS_id` ASC) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentparagraphextensionS_commentparagraphextensionS1_idx` (`extention` ASC) ,
  CONSTRAINT `fk_commentparagraphextensionS_paragraphextensionS1`
    FOREIGN KEY (`paragraphextensionS_id` )
    REFERENCES `DO`.`paragraphextensionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentparagraphextensionS_commentparagraphextensionS1`
    FOREIGN KEY (`extention` )
    REFERENCES `DO`.`commentparagraphextensionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`likedislikecommentparagraphextensionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`likedislikecommentparagraphextensionS` (
  `commentparagraphextensionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT NULL ,
  INDEX `fk_likedislikecommentparagraphextensionS_commentparagraphex_idx` (`commentparagraphextensionS_id` ASC) ,
  CONSTRAINT `fk_likedislikecommentparagraphextensionS_commentparagraphexte1`
    FOREIGN KEY (`commentparagraphextensionS_id` )
    REFERENCES `DO`.`commentparagraphextensionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`testS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`testS` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `mark` INT NOT NULL ,
  `learnerS_id` INT UNSIGNED NOT NULL ,
  `datetime` DATETIME NOT NULL ,
  `countquestions` SMALLINT NULL DEFAULT 0 ,
  `correctanswers` SMALLINT NULL DEFAULT 0 ,
  `paragraphS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_testS_learnerS1_idx` (`learnerS_id` ASC) ,
  INDEX `fk_testS_paragraphS1_idx` (`paragraphS_id` ASC) ,
  CONSTRAINT `fk_testS_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `DO`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_testS_paragraphS1`
    FOREIGN KEY (`paragraphS_id` )
    REFERENCES `DO`.`paragraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`yoda`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`yoda` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `classS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NOT NULL ,
  `school_id` INT NOT NULL ,
  `firstname` VARCHAR(256) NOT NULL ,
  `lastname` VARCHAR(256) NOT NULL ,
  `middlename` VARCHAR(256) NOT NULL ,
  `deleted` TINYINT(1) NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_Yoda_classS1_idx` (`classS_id` ASC) ,
  INDEX `fk_Yoda_school1_idx` (`school_id` ASC) ,
  CONSTRAINT `fk_Yoda_classS1`
    FOREIGN KEY (`classS_id` )
    REFERENCES `DO`.`classS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Yoda_school1`
    FOREIGN KEY (`school_id` )
    REFERENCES `DO`.`school` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DO`.`likedislikeparagraphextensionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DO`.`likedislikeparagraphextensionS` (
  `iduser` INT UNSIGNED NULL ,
  `paragraphextensionS_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likedislikeparagraphextensionS_paragraphextensionS1_idx` (`paragraphextensionS_id` ASC) ,
  CONSTRAINT `fk_likedislikeparagraphextensionS_paragraphextensionS1`
    FOREIGN KEY (`paragraphextensionS_id` )
    REFERENCES `DO`.`paragraphextensionS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `DO` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
