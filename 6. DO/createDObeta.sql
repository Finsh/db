SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`school`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`school` (
  `id` INT NOT NULL ,
  `countclass` SMALLINT NULL DEFAULT 0 ,
  `countlearner` SMALLINT NULL DEFAULT 0 ,
  `countteacher` SMALLINT NULL DEFAULT 0 ,
  `countko` SMALLINT NULL DEFAULT 0 ,
  `countclassroom` SMALLINT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`classS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`classS` (
  `id` INT UNSIGNED NOT NULL ,
  `school_id` INT NOT NULL ,
  `countlearner` SMALLINT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`learnerS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`learnerS` (
  `id` INT UNSIGNED NOT NULL ,
  `classS_id` INT UNSIGNED NOT NULL ,
  `school_id` INT NOT NULL ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`teacherS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`teacherS` (
  `id` INT UNSIGNED NOT NULL ,
  `school_id` INT NOT NULL ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`koS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`koS` (
  `id` INT UNSIGNED NOT NULL ,
  `school_id` INT NOT NULL ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`classroomS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`classroomS` (
  `id` INT UNSIGNED NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`sectionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`sectionS` (
  `id` INT UNSIGNED NOT NULL ,
  `subjectS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`materialS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`materialS` (
  `id` INT UNSIGNED NOT NULL ,
  `countparagraph` SMALLINT NULL DEFAULT 0 ,
  `countparagraphactiv` SMALLINT NULL DEFAULT 0 ,
  `countsection` SMALLINT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`paragraphS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`paragraphS` (
  `id` INT UNSIGNED NOT NULL ,
  `materialS_id` INT NOT NULL ,
  `sectionS_id` INT UNSIGNED NOT NULL ,
  `state` SMALLINT NULL ,
  `countquestion` INT NULL DEFAULT 0 ,
  `countpart` SMALLINT NULL DEFAULT 0 ,
  `notstudy` TINYINT(1) NULL ,
  `countdiscussion` SMALLINT NULL DEFAULT 0 ,
  `countextension` SMALLINT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`partparagraphS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`partparagraphS` (
  `id` INT UNSIGNED NOT NULL ,
  `paragraphS_id` INT UNSIGNED NOT NULL ,
  `countquestion` SMALLINT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`questionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`questionS` (
  `id` INT UNSIGNED NOT NULL ,
  `partparagraphS_id` INT UNSIGNED NOT NULL ,
  `countanswers` SMALLINT NULL DEFAULT 0 ,
  `countrightanswers` SMALLINT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`answerS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`answerS` (
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
    REFERENCES `mydb`.`questionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`spisokpartparagraphlessonS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`spisokpartparagraphlessonS` (
  `lessonS_id` INT UNSIGNED NOT NULL ,
  `partparagraphS_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`lessonS_id`, `partparagraphS_id`) ,
  INDEX `fk_lessonS_has_partparagraphS_partparagraphS1_idx` (`partparagraphS_id` ASC) ,
  INDEX `fk_lessonS_has_partparagraphS_lessonS1_idx` (`lessonS_id` ASC) ,
  CONSTRAINT `fk_lessonS_has_partparagraphS_lessonS1`
    FOREIGN KEY (`lessonS_id` )
    REFERENCES `mydb`.`lessonS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_has_partparagraphS_partparagraphS1`
    FOREIGN KEY (`partparagraphS_id` )
    REFERENCES `mydb`.`partparagraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`discussionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`discussionS` (
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
    REFERENCES `mydb`.`paragraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_discussionS_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `mydb`.`learnerS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_discussionS_discussionS1`
    FOREIGN KEY (`extention` )
    REFERENCES `mydb`.`discussionS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`commentdiscussionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`commentdiscussionS` (
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
    REFERENCES `mydb`.`discussionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentdiscussionS_commentdiscussionS1`
    FOREIGN KEY (`extention` )
    REFERENCES `mydb`.`commentdiscussionS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likedislikediscussionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`likedislikediscussionS` (
  `commentdiscussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL ,
  INDEX `fk_likedislikediscussionS_commentdiscussionS1_idx` (`commentdiscussionS_id` ASC) ,
  CONSTRAINT `fk_likedislikediscussionS_commentdiscussionS1`
    FOREIGN KEY (`commentdiscussionS_id` )
    REFERENCES `mydb`.`commentdiscussionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likedislikediscussionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`likedislikediscussionS` (
  `commentdiscussionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT UNSIGNED NULL ,
  INDEX `fk_likedislikediscussionS_commentdiscussionS1_idx` (`commentdiscussionS_id` ASC) ,
  CONSTRAINT `fk_likedislikediscussionS_commentdiscussionS1`
    FOREIGN KEY (`commentdiscussionS_id` )
    REFERENCES `mydb`.`commentdiscussionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`paragraphextensionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`paragraphextensionS` (
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
    REFERENCES `mydb`.`paragraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_paragraphextensionS_learnerS1`
    FOREIGN KEY (`learnerS_id` )
    REFERENCES `mydb`.`learnerS` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_paragraphextensionS_paragraphextensionS1`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`paragraphextensionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`commentparagraphextensionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`commentparagraphextensionS` (
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
    REFERENCES `mydb`.`paragraphextensionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentparagraphextensionS_commentparagraphextensionS1`
    FOREIGN KEY (`extention` )
    REFERENCES `mydb`.`commentparagraphextensionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likedislikecommentparagraphextensionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`likedislikecommentparagraphextensionS` (
  `commentparagraphextensionS_id` INT UNSIGNED NOT NULL ,
  `iduser` INT NULL ,
  INDEX `fk_likedislikecommentparagraphextensionS_commentparagraphex_idx` (`commentparagraphextensionS_id` ASC) ,
  CONSTRAINT `fk_likedislikecommentparagraphextensionS_commentparagraphexte1`
    FOREIGN KEY (`commentparagraphextensionS_id` )
    REFERENCES `mydb`.`commentparagraphextensionS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`testS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`testS` (
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
    REFERENCES `mydb`.`learnerS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_testS_paragraphS1`
    FOREIGN KEY (`paragraphS_id` )
    REFERENCES `mydb`.`paragraphS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Yoda`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Yoda` (
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
    REFERENCES `mydb`.`classS` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Yoda_school1`
    FOREIGN KEY (`school_id` )
    REFERENCES `mydb`.`school` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likedislikeparagraphextensionS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`likedislikeparagraphextensionS` (
  `iduser` INT UNSIGNED NULL ,
  `paragraphextensionS_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likedislikeparagraphextensionS_paragraphextensionS1_idx` (`paragraphextensionS_id` ASC) ,
  CONSTRAINT `fk_likedislikeparagraphextensionS_paragraphextensionS1`
    FOREIGN KEY (`paragraphextensionS_id` )
    REFERENCES `mydb`.`paragraphextensionS` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
