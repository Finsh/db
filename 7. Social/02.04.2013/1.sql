SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Profile`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Profile` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `login` VARCHAR(20) NOT NULL ,
  `pswd` VARCHAR(32) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  `FirstName` VARCHAR(25) NOT NULL ,
  `MiddleName` VARCHAR(25) NOT NULL ,
  `LastName` VARCHAR(25) NULL ,
  `telephone` VARCHAR(15) NULL ,
  `mobile` VARCHAR(45) NULL ,
  `email2` VARCHAR(45) NULL ,
  `city` VARCHAR(20) NULL ,
  `country` VARCHAR(20) NULL ,
  `birthday` DATE NULL ,
  `online` TINYINT(1) NOT NULL ,
  `Deleted` TINYINT(1) NOT NULL DEFAULT 0 ,
  `CountSubscribes` INT NOT NULL DEFAULT 0 ,
  `CountSpisokPhotoBig` INT NOT NULL DEFAULT 0 ,
  `PathAvatar` VARCHAR(256) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`School`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`School` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `SchoolName` VARCHAR(45) NOT NULL ,
  `Description` TEXT NULL ,
  `Number` INT UNSIGNED NULL ,
  `PhotoPath` VARCHAR(256) NULL ,
  `CountMember` INT UNSIGNED NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Wall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Wall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `countRecord` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Wall_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Wall_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Group`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Group` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `Name` VARCHAR(45) NOT NULL ,
  `Description` VARCHAR(256) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Group_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Group_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`News`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`News` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Type` INT NOT NULL ,
  `Text` TEXT NOT NULL ,
  `DataTime` DATETIME NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_News_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_News_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Blog`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Blog` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `countRecord` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Blog_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Blog_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Subject`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Subject` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `Level` INT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Organizer`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Organizer` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`Id`) ,
  INDEX `fk_Organizer_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Organizer_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Room`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Room` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  `Number` INT UNSIGNED NOT NULL ,
  `Title` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Room_Shool1_idx` (`School_id` ASC) ,
  CONSTRAINT `fk_Room_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Class`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Class` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  `Symbol` VARCHAR(45) NOT NULL ,
  `Level` INT NOT NULL ,
  `EntryYear` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Class_Shool1_idx` (`School_id` ASC) ,
  CONSTRAINT `fk_Class_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`WorkerSchool`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`WorkerSchool` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Worker_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_WorkerSchool_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SubGroup`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SubGroup` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TimeTable`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`TimeTable` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  `Room_id` INT UNSIGNED NULL ,
  `Class_id` INT UNSIGNED NOT NULL ,
  `WorkerSchool_id` INT UNSIGNED NULL ,
  `Subject_id` INT UNSIGNED NOT NULL ,
  `SubGroup_id` INT UNSIGNED NULL ,
  `Time` TIME NOT NULL ,
  `DayOfWeek` INT NOT NULL ,
  `StartDate` DATETIME NOT NULL ,
  `FinishDate` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_TimeTable_Shool1_idx` (`School_id` ASC) ,
  INDEX `fk_TimeTable_Room1_idx` (`Room_id` ASC) ,
  INDEX `fk_TimeTable_Class1_idx` (`Class_id` ASC) ,
  INDEX `fk_TimeTable_WorkerSchool1_idx` (`WorkerSchool_id` ASC) ,
  INDEX `fk_TimeTable_Subject1_idx` (`Subject_id` ASC) ,
  INDEX `fk_TimeTable_SubGroup1_idx` (`SubGroup_id` ASC) ,
  CONSTRAINT `fk_TimeTable_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_TimeTable_Room1`
    FOREIGN KEY (`Room_id` )
    REFERENCES `mydb`.`Room` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_TimeTable_Class1`
    FOREIGN KEY (`Class_id` )
    REFERENCES `mydb`.`Class` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_TimeTable_WorkerSchool1`
    FOREIGN KEY (`WorkerSchool_id` )
    REFERENCES `mydb`.`WorkerSchool` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_TimeTable_Subject1`
    FOREIGN KEY (`Subject_id` )
    REFERENCES `mydb`.`Subject` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_TimeTable_SubGroup1`
    FOREIGN KEY (`SubGroup_id` )
    REFERENCES `mydb`.`SubGroup` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Lesson`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Lesson` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `hometask` VARCHAR(45) NULL ,
  `Room_id` INT UNSIGNED NULL ,
  `Class_id` INT UNSIGNED NOT NULL ,
  `Subject_id` INT UNSIGNED NOT NULL ,
  `WorkerSchool_id` INT UNSIGNED NULL ,
  `Datetime` DATETIME NOT NULL ,
  `TimeTable_id` INT UNSIGNED NOT NULL ,
  `SubGroup_id` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Lesson_Room1_idx` (`Room_id` ASC) ,
  INDEX `fk_Lesson_Class1_idx` (`Class_id` ASC) ,
  INDEX `fk_Lesson_Subject1_idx` (`Subject_id` ASC) ,
  INDEX `fk_Lesson_Worker1_idx` (`WorkerSchool_id` ASC) ,
  INDEX `fk_Lesson_TimeTable1_idx` (`TimeTable_id` ASC) ,
  INDEX `fk_Lesson_SubGroup1_idx` (`SubGroup_id` ASC) ,
  CONSTRAINT `fk_Lesson_Room1`
    FOREIGN KEY (`Room_id` )
    REFERENCES `mydb`.`Room` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Lesson_Class1`
    FOREIGN KEY (`Class_id` )
    REFERENCES `mydb`.`Class` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Lesson_Subject1`
    FOREIGN KEY (`Subject_id` )
    REFERENCES `mydb`.`Subject` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Lesson_WorkerSchool1`
    FOREIGN KEY (`WorkerSchool_id` )
    REFERENCES `mydb`.`WorkerSchool` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Lesson_TimeTable1`
    FOREIGN KEY (`TimeTable_id` )
    REFERENCES `mydb`.`TimeTable` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Lesson_SubGroup1`
    FOREIGN KEY (`SubGroup_id` )
    REFERENCES `mydb`.`SubGroup` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SchoolEvent`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SchoolEvent` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SchoolEvent_School1_idx` (`School_id` ASC) ,
  CONSTRAINT `fk_SchoolEvent_School1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Task`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Task` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Text` TEXT NOT NULL ,
  `DataTimeBegin` DATETIME NULL ,
  `DataTimeEnd` DATETIME NULL ,
  `Type` INT NULL ,
  `Lesson_id` INT UNSIGNED NULL DEFAULT NULL ,
  `Profile_id` INT UNSIGNED NULL DEFAULT NULL ,
  `SchoolEvent_id` INT UNSIGNED NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Task_Lesson1_idx` (`Lesson_id` ASC) ,
  INDEX `fk_Task_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_Task_SchoolEvent1_idx` (`SchoolEvent_id` ASC) ,
  CONSTRAINT `fk_Task_Lesson1`
    FOREIGN KEY (`Lesson_id` )
    REFERENCES `mydb`.`Lesson` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Task_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Task_SchoolEvent1`
    FOREIGN KEY (`SchoolEvent_id` )
    REFERENCES `mydb`.`SchoolEvent` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Learner`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Learner` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `EntryYear` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Learner_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Learner_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LessonType`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LessonType` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SchoolJournal`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SchoolJournal` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Value` INT NOT NULL ,
  `Description` VARCHAR(256) NULL ,
  `Date` DATE NOT NULL ,
  `Learner_id` INT UNSIGNED NOT NULL ,
  `Lesson_id` INT UNSIGNED NULL ,
  `LessonType_id` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SchoolJournal_Learner1_idx` (`Learner_id` ASC) ,
  INDEX `fk_SchoolJournal_Lesson1_idx` (`Lesson_id` ASC) ,
  INDEX `fk_SchoolJournal_LessonType1_idx` (`LessonType_id` ASC) ,
  CONSTRAINT `fk_SchoolJournal_Learner1`
    FOREIGN KEY (`Learner_id` )
    REFERENCES `mydb`.`Learner` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SchoolJournal_Lesson1`
    FOREIGN KEY (`Lesson_id` )
    REFERENCES `mydb`.`Lesson` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SchoolJournal_LessonType1`
    FOREIGN KEY (`LessonType_id` )
    REFERENCES `mydb`.`LessonType` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RecordWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`RecordWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Wall_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NULL ,
  `text` TEXT NOT NULL ,
  `DateTime` DATETIME NOT NULL ,
  `CountComment` INT NOT NULL DEFAULT 0 ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Record_Wall1_idx` (`Wall_id` ASC) ,
  INDEX `fk_RecordWall_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Record_Wall1`
    FOREIGN KEY (`Wall_id` )
    REFERENCES `mydb`.`Wall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_RecordWall_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CommentRecordWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`CommentRecordWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Record_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NULL ,
  `CommentRecordWall_id` INT UNSIGNED NULL ,
  `Text` VARCHAR(256) NOT NULL ,
  `DateTime` DATETIME NOT NULL ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Comme_Record1_idx` (`Record_id` ASC) ,
  INDEX `fk_Comment_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_CommentRecordWall_CommentRecordWall1_idx` (`CommentRecordWall_id` ASC) ,
  CONSTRAINT `fk_Comme_Record1`
    FOREIGN KEY (`Record_id` )
    REFERENCES `mydb`.`RecordWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Comment_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentRecordWall_CommentRecordWall1`
    FOREIGN KEY (`CommentRecordWall_id` )
    REFERENCES `mydb`.`CommentRecordWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokSchool`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokSchool` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `School_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_spisok_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_spisok_Shool1_idx` (`School_id` ASC) ,
  CONSTRAINT `fk_spisok_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisok_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokSubjectWorker`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokSubjectWorker` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Subject_id` INT UNSIGNED NOT NULL ,
  `WorkerSchool_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokSubject_Subject1_idx` (`Subject_id` ASC) ,
  INDEX `fk_SpisokSubject_Worker1_idx` (`WorkerSchool_id` ASC) ,
  CONSTRAINT `fk_SpisokSubject_Subject1`
    FOREIGN KEY (`Subject_id` )
    REFERENCES `mydb`.`Subject` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokSubject_WorkerSchool1`
    FOREIGN KEY (`WorkerSchool_id` )
    REFERENCES `mydb`.`WorkerSchool` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FavoriteRoom`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`FavoriteRoom` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Room_id` INT UNSIGNED NOT NULL ,
  `WorkerSchool_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_FavoriteRoom_Room1_idx` (`Room_id` ASC) ,
  INDEX `fk_FavoriteRoom_Worker1_idx` (`WorkerSchool_id` ASC) ,
  CONSTRAINT `fk_FavoriteRoom_Room1`
    FOREIGN KEY (`Room_id` )
    REFERENCES `mydb`.`Room` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_FavoriteRoom_WorkerSchool1`
    FOREIGN KEY (`WorkerSchool_id` )
    REFERENCES `mydb`.`WorkerSchool` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Graduate`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Graduate` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `School_id` INT UNSIGNED NOT NULL ,
  `Year` INT NOT NULL ,
  `Symbol` VARCHAR(45) NOT NULL ,
  `OutLevel` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Graduate_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_Graduate_Shool1_idx` (`School_id` ASC) ,
  CONSTRAINT `fk_Graduate_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Graduate_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokGroup`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokGroup` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Group_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_ContactType_Contact1_idx` (`Group_id` ASC) ,
  INDEX `fk_ContactType_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_ContactType_Contact1`
    FOREIGN KEY (`Group_id` )
    REFERENCES `mydb`.`Group` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ContactType_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeCommentRecordWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeCommentRecordWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentRecordWall_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeCommentRecordWall_CommentRecordWall1_idx` (`CommentRecordWall_id` ASC) ,
  INDEX `fk_LikeDislikeCommentRecordWall_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeCommentRecordWall_CommentRecordWall1`
    FOREIGN KEY (`CommentRecordWall_id` )
    REFERENCES `mydb`.`CommentRecordWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeCommentRecordWall_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Part`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Part` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Subject_id` INT UNSIGNED NOT NULL ,
  `Name` VARCHAR(400) NOT NULL ,
  `Number` INT UNSIGNED NOT NULL ,
  `MarkerStudy` TINYINT(1) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Part_Subject1_idx` (`Subject_id` ASC) ,
  CONSTRAINT `fk_Part_Subject1`
    FOREIGN KEY (`Subject_id` )
    REFERENCES `mydb`.`Subject` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Material`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Material` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Part_id` INT UNSIGNED NULL ,
  `text` TEXT NOT NULL ,
  `name` TEXT NOT NULL ,
  `Author_id` INT UNSIGNED NOT NULL ,
  `CountComment` INT NOT NULL DEFAULT 0 ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_material_Part1_idx` (`Part_id` ASC) ,
  INDEX `fk_Material_Worker1_idx` (`Author_id` ASC) ,
  CONSTRAINT `fk_material_Part1`
    FOREIGN KEY (`Part_id` )
    REFERENCES `mydb`.`Part` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Material_Worker1`
    FOREIGN KEY (`Author_id` )
    REFERENCES `mydb`.`WorkerSchool` (`id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RecordMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`RecordMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `additional` TINYINT(1) NOT NULL ,
  `material_id` INT UNSIGNED NOT NULL ,
  `Text` TEXT NOT NULL ,
  `Date` DATETIME NOT NULL ,
  `Author_id` INT UNSIGNED NULL ,
  `Verification` TINYINT(1) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_RecordMaterial_material1_idx` (`material_id` ASC) ,
  INDEX `fk_RecordMaterial_Learner1_idx` (`Author_id` ASC) ,
  CONSTRAINT `fk_RecordMaterial_material1`
    FOREIGN KEY (`material_id` )
    REFERENCES `mydb`.`Material` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_RecordMaterial_Learner1`
    FOREIGN KEY (`Author_id` )
    REFERENCES `mydb`.`Learner` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CommentMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`CommentMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `RecordMaterial_id` INT UNSIGNED NOT NULL ,
  `CommentMaterial_id` INT UNSIGNED NULL ,
  `Profile_id` INT UNSIGNED NULL ,
  `Text` VARCHAR(256) NOT NULL ,
  `DateTime` DATETIME NOT NULL ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_CommentMaterial_RecordMaterial1_idx` (`RecordMaterial_id` ASC) ,
  INDEX `fk_CommentMaterial_CommentMaterial1_idx` (`CommentMaterial_id` ASC) ,
  INDEX `fk_CommentMaterial_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_CommentMaterial_RecordMaterial1`
    FOREIGN KEY (`RecordMaterial_id` )
    REFERENCES `mydb`.`RecordMaterial` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentMaterial_CommentMaterial1`
    FOREIGN KEY (`CommentMaterial_id` )
    REFERENCES `mydb`.`CommentMaterial` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentMaterial_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeCommentMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeCommentMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentMaterial_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeMaterial_CommentMaterial1_idx` (`CommentMaterial_id` ASC) ,
  INDEX `fk_LikeDislikeMaterial_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeMaterial_CommentMaterial1`
    FOREIGN KEY (`CommentMaterial_id` )
    REFERENCES `mydb`.`CommentMaterial` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeMaterial_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Question`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Question` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `material_id` INT UNSIGNED NOT NULL ,
  `Text` TEXT NOT NULL ,
  `Date` DATETIME NULL ,
  `Complexity` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Question_material1_idx` (`material_id` ASC) ,
  CONSTRAINT `fk_Question_material1`
    FOREIGN KEY (`material_id` )
    REFERENCES `mydb`.`Material` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Answer`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Answer` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Question_id` INT UNSIGNED NOT NULL ,
  `true` TINYINT(1) NOT NULL ,
  `number` INT NOT NULL ,
  `text` TEXT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Answer_Question1_idx` (`Question_id` ASC) ,
  CONSTRAINT `fk_Answer_Question1`
    FOREIGN KEY (`Question_id` )
    REFERENCES `mydb`.`Question` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TestMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`TestMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Learner_id` INT UNSIGNED NOT NULL ,
  `Material_id` INT UNSIGNED NOT NULL ,
  `MinMark` INT NOT NULL ,
  `MarkerReady` TINYINT(1) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_TestMaterial_Learner1_idx` (`Learner_id` ASC) ,
  INDEX `fk_TestMaterial_Material1_idx` (`Material_id` ASC) ,
  CONSTRAINT `fk_TestMaterial_Learner1`
    FOREIGN KEY (`Learner_id` )
    REFERENCES `mydb`.`Learner` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_TestMaterial_Material1`
    FOREIGN KEY (`Material_id` )
    REFERENCES `mydb`.`Material` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokLessonType`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokLessonType` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Lesson_id` INT UNSIGNED NOT NULL ,
  `Type_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LessonType_Lesson1_idx` (`Lesson_id` ASC) ,
  INDEX `fk_LessonType_Type1_idx` (`Type_id` ASC) ,
  CONSTRAINT `fk_LessonType_Lesson1`
    FOREIGN KEY (`Lesson_id` )
    REFERENCES `mydb`.`Lesson` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LessonType_Type1`
    FOREIGN KEY (`Type_id` )
    REFERENCES `mydb`.`LessonType` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Holiday`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Holiday` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Date` DATE NOT NULL ,
  `Name` TEXT NOT NULL ,
  `Description` TEXT NOT NULL ,
  `System` TINYINT(1) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokSubjectLearner`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokSubjectLearner` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Learner_id` INT UNSIGNED NOT NULL ,
  `Subject_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokSubject_Learner1_idx` (`Learner_id` ASC) ,
  INDEX `fk_SpisokSubject_Subject2_idx` (`Subject_id` ASC) ,
  CONSTRAINT `fk_SpisokSubject_Learner1`
    FOREIGN KEY (`Learner_id` )
    REFERENCES `mydb`.`Learner` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokSubject_Subject2`
    FOREIGN KEY (`Subject_id` )
    REFERENCES `mydb`.`Subject` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Log`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Log` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `text` TEXT NOT NULL ,
  `datetime` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Log_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Log_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Organization`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Organization` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(50) NOT NULL ,
  `OwnerFirstName` VARCHAR(15) NOT NULL ,
  `OwnerLastSurname` VARCHAR(15) NOT NULL ,
  `OwnerSecondName` VARCHAR(15) NOT NULL ,
  `Number` INT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Activity`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Activity` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `number` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokActivity`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokActivity` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Organization_id` INT UNSIGNED NOT NULL ,
  `Activity_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokActivity_Organization1_idx` (`Organization_id` ASC) ,
  INDEX `fk_SpisokActivity_Activity1_idx` (`Activity_id` ASC) ,
  CONSTRAINT `fk_SpisokActivity_Organization1`
    FOREIGN KEY (`Organization_id` )
    REFERENCES `mydb`.`Organization` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokActivity_Activity1`
    FOREIGN KEY (`Activity_id` )
    REFERENCES `mydb`.`Activity` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Acheive`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Acheive` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `Text` TEXT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Acheive_Shool1_idx` (`School_id` ASC) ,
  CONSTRAINT `fk_Acheive_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokAcheive`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokAcheive` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `Acheive_id` INT UNSIGNED NOT NULL ,
  `Date` DATE NOT NULL ,
  `Description` TEXT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokAcheive_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_SpisokAcheive_Acheive1_idx` (`Acheive_id` ASC) ,
  CONSTRAINT `fk_SpisokAcheive_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokAcheive_Acheive1`
    FOREIGN KEY (`Acheive_id` )
    REFERENCES `mydb`.`Acheive` (`id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Award`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Award` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Acheive_id` INT UNSIGNED NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `Text` TEXT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Nagrada_Acheive1_idx` (`Acheive_id` ASC) ,
  CONSTRAINT `fk_Nagrada_Acheive1`
    FOREIGN KEY (`Acheive_id` )
    REFERENCES `mydb`.`Acheive` (`id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokAward`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokAward` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NULL ,
  `Nagrada_id` INT UNSIGNED NULL ,
  `Date` DATE NOT NULL ,
  `Description` TEXT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNagrada_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_SpisokNagrada_Nagrada1_idx` (`Nagrada_id` ASC) ,
  CONSTRAINT `fk_SpisokNagrada_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNagrada_Nagrada1`
    FOREIGN KEY (`Nagrada_id` )
    REFERENCES `mydb`.`Award` (`id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`PhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `SpisokPhotoBig_id` INT UNSIGNED NOT NULL ,
  `Date` DATETIME NOT NULL ,
  `path` VARCHAR(256) NOT NULL ,
  `CountComment` INT NOT NULL DEFAULT 0 ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  `name` VARCHAR(256) NULL ,
  `Description` VARCHAR(256) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_PhotoBig_SpisokPhotoBig1_idx` (`SpisokPhotoBig_id` ASC) ,
  CONSTRAINT `fk_PhotoBig_SpisokPhotoBig1`
    FOREIGN KEY (`SpisokPhotoBig_id` )
    REFERENCES `mydb`.`SpisokPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `Name` VARCHAR(150) NOT NULL ,
  `Description` TEXT NULL ,
  `CoverPage` INT UNSIGNED NULL ,
  `CountPhoto` INT NOT NULL DEFAULT 0 ,
  `CountComment` INT NOT NULL DEFAULT 0 ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPhoto_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_SpisokPhotoBig_PhotoBig1_idx` (`CoverPage` ASC) ,
  CONSTRAINT `fk_SpisokPhoto_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPhotoBig_PhotoBig1`
    FOREIGN KEY (`CoverPage` )
    REFERENCES `mydb`.`PhotoBig` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CommentPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`CommentPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PhotoBig_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NULL ,
  `CommentPhotoBig_id` INT UNSIGNED NULL ,
  `DateTime` DATETIME NOT NULL ,
  `Text` VARCHAR(256) NOT NULL ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_CommentPhotoBig_PhotoBig1_idx` (`PhotoBig_id` ASC) ,
  INDEX `fk_CommentPhotoBig_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_CommentPhotoBig_CommentPhotoBig1_idx` (`CommentPhotoBig_id` ASC) ,
  CONSTRAINT `fk_CommentPhotoBig_PhotoBig1`
    FOREIGN KEY (`PhotoBig_id` )
    REFERENCES `mydb`.`PhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentPhotoBig_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentPhotoBig_CommentPhotoBig1`
    FOREIGN KEY (`CommentPhotoBig_id` )
    REFERENCES `mydb`.`CommentPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RecordBlog`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`RecordBlog` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Blog_id` INT UNSIGNED NOT NULL ,
  `Text` TEXT NOT NULL ,
  `Date` DATETIME NOT NULL ,
  `Source` VARCHAR(256) NULL ,
  `CountComment` INT NOT NULL DEFAULT 0 ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  `RecordName` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_RecordBlog_Blog1_idx` (`Blog_id` ASC) ,
  CONSTRAINT `fk_RecordBlog_Blog1`
    FOREIGN KEY (`Blog_id` )
    REFERENCES `mydb`.`Blog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CommentRecordBlog`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`CommentRecordBlog` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `RecordBlog_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NULL ,
  `CommentRecordBlog_id` INT UNSIGNED NULL ,
  `Text` VARCHAR(256) NOT NULL ,
  `DateTime` DATETIME NOT NULL ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_CommentRecordBlog_RecordBlog1_idx` (`RecordBlog_id` ASC) ,
  INDEX `fk_CommentRecordBlog_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_CommentRecordBlog_CommentRecordBlog1_idx` (`CommentRecordBlog_id` ASC) ,
  CONSTRAINT `fk_CommentRecordBlog_RecordBlog1`
    FOREIGN KEY (`RecordBlog_id` )
    REFERENCES `mydb`.`RecordBlog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentRecordBlog_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentRecordBlog_CommentRecordBlog1`
    FOREIGN KEY (`CommentRecordBlog_id` )
    REFERENCES `mydb`.`CommentRecordBlog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeCommentRecordBlog`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeCommentRecordBlog` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentRecordBlog_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeCommentRecordBlog_CommentRecordBlog1_idx` (`CommentRecordBlog_id` ASC) ,
  INDEX `fk_LikeDislikeCommentRecordBlog_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeCommentRecordBlog_CommentRecordBlog1`
    FOREIGN KEY (`CommentRecordBlog_id` )
    REFERENCES `mydb`.`CommentRecordBlog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeCommentRecordBlog_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeRecordBlog`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeRecordBlog` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `RecordBlog_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeRecordBlog_RecordBlog1_idx` (`RecordBlog_id` ASC) ,
  INDEX `fk_LikeDislikeRecordBlog_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeRecordBlog_RecordBlog1`
    FOREIGN KEY (`RecordBlog_id` )
    REFERENCES `mydb`.`RecordBlog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeRecordBlog_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikePhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikePhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PhotoBig_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikePhotoBig_PhotoBig1_idx` (`PhotoBig_id` ASC) ,
  INDEX `fk_LikeDislikePhotoBig_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikePhotoBig_PhotoBig1`
    FOREIGN KEY (`PhotoBig_id` )
    REFERENCES `mydb`.`PhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikePhotoBig_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeRecordWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeRecordWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `RecordWall_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeRecordWall_RecordWall1_idx` (`RecordWall_id` ASC) ,
  INDEX `fk_LikeDislikeRecordWall_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeRecordWall_RecordWall1`
    FOREIGN KEY (`RecordWall_id` )
    REFERENCES `mydb`.`RecordWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeRecordWall_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeCommentPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeCommentPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentPhotoBig_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeCommentPhotoBig_CommentPhotoBig1_idx` (`CommentPhotoBig_id` ASC) ,
  INDEX `fk_LikeDislikeCommentPhotoBig_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeCommentPhotoBig_CommentPhotoBig1`
    FOREIGN KEY (`CommentPhotoBig_id` )
    REFERENCES `mydb`.`CommentPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeCommentPhotoBig_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CommentSpisokPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`CommentSpisokPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `SpisokPhotoBig_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NULL ,
  `CommentSpisokPhotoBig_id` INT UNSIGNED NULL ,
  `Text` VARCHAR(256) NOT NULL ,
  `DateTime` DATETIME NOT NULL ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeSpisokPhotoBig_SpisokPhotoBig1_idx` (`SpisokPhotoBig_id` ASC) ,
  INDEX `fk_LikeDislikeSpisokPhotoBig_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_CommentSpisokPhotoBig_CommentSpisokPhotoBig1_idx` (`CommentSpisokPhotoBig_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeSpisokPhotoBig_SpisokPhotoBig1`
    FOREIGN KEY (`SpisokPhotoBig_id` )
    REFERENCES `mydb`.`SpisokPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeSpisokPhotoBig_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentSpisokPhotoBig_CommentSpisokPhotoBig1`
    FOREIGN KEY (`CommentSpisokPhotoBig_id` )
    REFERENCES `mydb`.`CommentSpisokPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeCommentSpisokPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeCommentSpisokPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentSpisokPhotoBig_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeCommentSpisokPhotoBig_CommentSpisokPhotoBig1_idx` (`CommentSpisokPhotoBig_id` ASC) ,
  INDEX `fk_LikeDislikeCommentSpisokPhotoBig_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeCommentSpisokPhotoBig_CommentSpisokPhotoBig1`
    FOREIGN KEY (`CommentSpisokPhotoBig_id` )
    REFERENCES `mydb`.`CommentSpisokPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeCommentSpisokPhotoBig_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Parent`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Parent` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Parent_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Parent_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ParentLearner`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`ParentLearner` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Parent_id` INT UNSIGNED NOT NULL ,
  `Learner_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_ParentLearner_Parent1_idx` (`Parent_id` ASC) ,
  INDEX `fk_ParentLearner_Learner1_idx` (`Learner_id` ASC) ,
  CONSTRAINT `fk_ParentLearner_Parent1`
    FOREIGN KEY (`Parent_id` )
    REFERENCES `mydb`.`Parent` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ParentLearner_Learner1`
    FOREIGN KEY (`Learner_id` )
    REFERENCES `mydb`.`Learner` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SchoolAdministrator`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SchoolAdministrator` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SchoolAdministrator_Shool1_idx` (`School_id` ASC) ,
  INDEX `fk_SchoolAdministrator_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_SchoolAdministrator_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SchoolAdministrator_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SchoolWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SchoolWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_ShoolWall_Shool1_idx` (`School_id` ASC) ,
  CONSTRAINT `fk_ShoolWall_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RecordSchoolWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`RecordSchoolWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `SchoolWall_id` INT UNSIGNED NOT NULL ,
  `WorkerSchool_id` INT UNSIGNED NULL ,
  `Text` TEXT NOT NULL ,
  `Date` DATETIME NOT NULL ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_RecordSchoolWall_ShoolWall1_idx` (`SchoolWall_id` ASC) ,
  INDEX `fk_RecordSchoolWall_Worker1_idx` (`WorkerSchool_id` ASC) ,
  CONSTRAINT `fk_RecordSchoolWall_ShoolWall1`
    FOREIGN KEY (`SchoolWall_id` )
    REFERENCES `mydb`.`SchoolWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_RecordSchoolWall_WorkerSchool1`
    FOREIGN KEY (`WorkerSchool_id` )
    REFERENCES `mydb`.`WorkerSchool` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PositionSchool`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`PositionSchool` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokWorkerSchool`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokWorkerSchool` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  `WorkerSchool_id` INT UNSIGNED NOT NULL ,
  `PositionSchool_id` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokWorker_Shool1_idx` (`School_id` ASC) ,
  INDEX `fk_SpisokWorker_Worker1_idx` (`WorkerSchool_id` ASC) ,
  INDEX `fk_SpisokWorkerSchool_PositionSchool1_idx` (`PositionSchool_id` ASC) ,
  CONSTRAINT `fk_SpisokWorker_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokWorker_WorkerSchool1`
    FOREIGN KEY (`WorkerSchool_id` )
    REFERENCES `mydb`.`WorkerSchool` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokWorkerSchool_PositionSchool1`
    FOREIGN KEY (`PositionSchool_id` )
    REFERENCES `mydb`.`PositionSchool` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokLerner`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokLerner` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Class_id` INT UNSIGNED NOT NULL ,
  `Learner_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokLerner_Class1_idx` (`Class_id` ASC) ,
  INDEX `fk_SpisokLerner_Learner1_idx` (`Learner_id` ASC) ,
  CONSTRAINT `fk_SpisokLerner_Class1`
    FOREIGN KEY (`Class_id` )
    REFERENCES `mydb`.`Class` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokLerner_Learner1`
    FOREIGN KEY (`Learner_id` )
    REFERENCES `mydb`.`Learner` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokSubscriber`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokSubscriber` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokSubscriber_Shool1_idx` (`School_id` ASC) ,
  INDEX `fk_SpisokSubscriber_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_SpisokSubscriber_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokSubscriber_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeRecordMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeRecordMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `RecordMaterial_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeRecordMaterial_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_LikeDislikeRecordMaterial_RecordMaterial1_idx` (`RecordMaterial_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeRecordMaterial_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeRecordMaterial_RecordMaterial1`
    FOREIGN KEY (`RecordMaterial_id` )
    REFERENCES `mydb`.`RecordMaterial` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeRecordSchoolWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeRecordSchoolWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `RecordSchoolWall_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeRecordSchoolWall_RecordSchoolWall1_idx` (`RecordSchoolWall_id` ASC) ,
  INDEX `fk_LikeDislikeRecordSchoolWall_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeRecordSchoolWall_RecordSchoolWall1`
    FOREIGN KEY (`RecordSchoolWall_id` )
    REFERENCES `mydb`.`RecordSchoolWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeRecordSchoolWall_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Message`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Message` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id_sender` INT UNSIGNED NULL ,
  `datetime` DATETIME NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `Deleted_by_sender` TINYINT(1) NULL ,
  `groupID` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Message_Profile1_idx` (`Profile_id_sender` ASC) ,
  CONSTRAINT `fk_Message_Profile1`
    FOREIGN KEY (`Profile_id_sender` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recipient`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Recipient` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Message_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `readen` TINYINT(1) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Recipient_Message1_idx` (`Message_id` ASC) ,
  INDEX `fk_Recipient_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Recipient_Message1`
    FOREIGN KEY (`Message_id` )
    REFERENCES `mydb`.`Message` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Recipient_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Discuss`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Discuss` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  `countRecord` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Discuss_Shool1_idx` (`School_id` ASC) ,
  CONSTRAINT `fk_Discuss_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RecordDiscuss`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`RecordDiscuss` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Discuss_id` INT UNSIGNED NOT NULL ,
  `SchoolAdministrator_id` INT UNSIGNED NOT NULL ,
  `Text` TEXT NOT NULL ,
  `Date` DATETIME NOT NULL ,
  `CountComment` INT NOT NULL DEFAULT 0 ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Record_Discuss1_idx` (`Discuss_id` ASC) ,
  INDEX `fk_RecordDiscuss_SchoolAdministrator1_idx` (`SchoolAdministrator_id` ASC) ,
  CONSTRAINT `fk_Record_Discuss1`
    FOREIGN KEY (`Discuss_id` )
    REFERENCES `mydb`.`Discuss` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_RecordDiscuss_SchoolAdministrator1`
    FOREIGN KEY (`SchoolAdministrator_id` )
    REFERENCES `mydb`.`SchoolAdministrator` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CommentRecordDiscuss`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`CommentRecordDiscuss` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `RecordDiscuss_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NULL ,
  `CommentRecordDiscuss_id` INT UNSIGNED NULL ,
  `Text` VARCHAR(256) NOT NULL ,
  `DateTime` DATETIME NOT NULL ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_CommentRecordDiscuss_RecordDiscuss1_idx` (`RecordDiscuss_id` ASC) ,
  INDEX `fk_CommentRecordDiscuss_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_CommentRecordDiscuss_CommentRecordDiscuss1_idx` (`CommentRecordDiscuss_id` ASC) ,
  CONSTRAINT `fk_CommentRecordDiscuss_RecordDiscuss1`
    FOREIGN KEY (`RecordDiscuss_id` )
    REFERENCES `mydb`.`RecordDiscuss` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentRecordDiscuss_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentRecordDiscuss_CommentRecordDiscuss1`
    FOREIGN KEY (`CommentRecordDiscuss_id` )
    REFERENCES `mydb`.`CommentRecordDiscuss` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeCommentRecordDiscuss`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeCommentRecordDiscuss` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentRecordDiscuss_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeCommentRecordDiscuss_CommentRecordDiscuss1_idx` (`CommentRecordDiscuss_id` ASC) ,
  INDEX `fk_LikeDislikeCommentRecordDiscuss_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeCommentRecordDiscuss_CommentRecordDiscuss1`
    FOREIGN KEY (`CommentRecordDiscuss_id` )
    REFERENCES `mydb`.`CommentRecordDiscuss` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeCommentRecordDiscuss_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeRecordDiscuss`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeRecordDiscuss` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `RecordDiscuss_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeRecordDiscuss_RecordDiscuss1_idx` (`RecordDiscuss_id` ASC) ,
  INDEX `fk_LikeDislikeRecordDiscuss_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeRecordDiscuss_RecordDiscuss1`
    FOREIGN KEY (`RecordDiscuss_id` )
    REFERENCES `mydb`.`RecordDiscuss` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeRecordDiscuss_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UserSubscriber`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`UserSubscriber` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id_kto` INT UNSIGNED NOT NULL ,
  `Profile_id_na_kogo` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_UserSubscriber_Profile1_idx` (`Profile_id_kto` ASC) ,
  INDEX `fk_UserSubscriber_Profile2_idx` (`Profile_id_na_kogo` ASC) ,
  CONSTRAINT `fk_UserSubscriber_Profile1`
    FOREIGN KEY (`Profile_id_kto` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_UserSubscriber_Profile2`
    FOREIGN KEY (`Profile_id_na_kogo` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BlackList`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`BlackList` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_BlackList_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_BlackList_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Privilegies`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Privilegies` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Name` TEXT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNews`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNews` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `News_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNews_News1_idx` (`News_id` ASC) ,
  INDEX `fk_SpisokNews_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_SpisokNews_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNews_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNewsPhoto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNewsPhoto` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PhotoBig_id` INT UNSIGNED NOT NULL ,
  `News_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNewsPhoto_PhotoBig1_idx` (`PhotoBig_id` ASC) ,
  INDEX `fk_SpisokNewsPhoto_News1_idx` (`News_id` ASC) ,
  CONSTRAINT `fk_SpisokNewsPhoto_PhotoBig1`
    FOREIGN KEY (`PhotoBig_id` )
    REFERENCES `mydb`.`PhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNewsPhoto_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNewsSchool`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNewsSchool` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `School_id` INT UNSIGNED NOT NULL ,
  `News_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNewsSchool_Shool1_idx` (`School_id` ASC) ,
  INDEX `fk_SpisokNewsSchool_News1_idx` (`News_id` ASC) ,
  CONSTRAINT `fk_SpisokNewsSchool_Shool1`
    FOREIGN KEY (`School_id` )
    REFERENCES `mydb`.`School` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNewsSchool_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNewsRecordBlog`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNewsRecordBlog` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `News_id` INT UNSIGNED NOT NULL ,
  `RecordBlog_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNewsRecordBlog_News1_idx` (`News_id` ASC) ,
  INDEX `fk_SpisokNewsRecordBlog_RecordBlog1_idx` (`RecordBlog_id` ASC) ,
  CONSTRAINT `fk_SpisokNewsRecordBlog_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNewsRecordBlog_RecordBlog1`
    FOREIGN KEY (`RecordBlog_id` )
    REFERENCES `mydb`.`RecordBlog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNewsRecordDiskuss`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNewsRecordDiskuss` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Discuss_id` INT UNSIGNED NOT NULL ,
  `News_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNewsRecordDiskuss_Discuss1_idx` (`Discuss_id` ASC) ,
  INDEX `fk_SpisokNewsRecordDiskuss_News1_idx` (`News_id` ASC) ,
  CONSTRAINT `fk_SpisokNewsRecordDiskuss_Discuss1`
    FOREIGN KEY (`Discuss_id` )
    REFERENCES `mydb`.`Discuss` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNewsRecordDiskuss_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNewsRecordMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNewsRecordMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `News_id` INT UNSIGNED NOT NULL ,
  `RecordMaterial_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNewsRecordMaterial_News1_idx` (`News_id` ASC) ,
  INDEX `fk_SpisokNewsRecordMaterial_RecordMaterial1_idx` (`RecordMaterial_id` ASC) ,
  CONSTRAINT `fk_SpisokNewsRecordMaterial_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNewsRecordMaterial_RecordMaterial1`
    FOREIGN KEY (`RecordMaterial_id` )
    REFERENCES `mydb`.`RecordMaterial` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNewsRecordSchoolWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNewsRecordSchoolWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `News_id` INT UNSIGNED NOT NULL ,
  `SchoolWall_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNewsRecordSchoolWall_News1_idx` (`News_id` ASC) ,
  INDEX `fk_SpisokNewsRecordSchoolWall_ShoolWall1_idx` (`SchoolWall_id` ASC) ,
  CONSTRAINT `fk_SpisokNewsRecordSchoolWall_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNewsRecordSchoolWall_ShoolWall1`
    FOREIGN KEY (`SchoolWall_id` )
    REFERENCES `mydb`.`SchoolWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNewsRecordWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNewsRecordWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `RecordWall_id` INT UNSIGNED NOT NULL ,
  `News_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNewsRecordWall_RecordWall1_idx` (`RecordWall_id` ASC) ,
  INDEX `fk_SpisokNewsRecordWall_News1_idx` (`News_id` ASC) ,
  CONSTRAINT `fk_SpisokNewsRecordWall_RecordWall1`
    FOREIGN KEY (`RecordWall_id` )
    REFERENCES `mydb`.`RecordWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNewsRecordWall_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNewsMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNewsMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Material_id` INT UNSIGNED NOT NULL ,
  `News_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNewsMaterial_Material1_idx` (`Material_id` ASC) ,
  INDEX `fk_SpisokNewsMaterial_News1_idx` (`News_id` ASC) ,
  CONSTRAINT `fk_SpisokNewsMaterial_Material1`
    FOREIGN KEY (`Material_id` )
    REFERENCES `mydb`.`Material` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNewsMaterial_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PersonalNews`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`PersonalNews` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `type` INT NOT NULL ,
  `Text` TEXT NOT NULL ,
  `Author` INT UNSIGNED NOT NULL ,
  `DateTime` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_PersonalNews_Profile1_idx` (`Author` ASC) ,
  CONSTRAINT `fk_PersonalNews_Profile1`
    FOREIGN KEY (`Author` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokNewsProfile`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokNewsProfile` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `News_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokNewsProfile_News1_idx` (`News_id` ASC) ,
  INDEX `fk_SpisokNewsProfile_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_SpisokNewsProfile_News1`
    FOREIGN KEY (`News_id` )
    REFERENCES `mydb`.`News` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokNewsProfile_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokTask`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokTask` (
  `idSpisokTask` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Organizer_Id` INT UNSIGNED NOT NULL ,
  `Task_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`idSpisokTask`) ,
  INDEX `fk_SpisokTask_Organizer1_idx` (`Organizer_Id` ASC) ,
  INDEX `fk_SpisokTask_Task1_idx` (`Task_id` ASC) ,
  CONSTRAINT `fk_SpisokTask_Organizer1`
    FOREIGN KEY (`Organizer_Id` )
    REFERENCES `mydb`.`Organizer` (`Id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokTask_Task1`
    FOREIGN KEY (`Task_id` )
    REFERENCES `mydb`.`Task` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsTask`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsTask` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  `Task_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsTask_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsTask_Task1_idx` (`Task_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsTask_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsTask_Task1`
    FOREIGN KEY (`Task_id` )
    REFERENCES `mydb`.`Task` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Avatar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Avatar` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `path` VARCHAR(256) NOT NULL ,
  `isAvatar` TINYINT(1) NOT NULL ,
  `CountComment` INT NOT NULL DEFAULT 0 ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Avatar_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_Avatar_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CommentAvatar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`CommentAvatar` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Avatar_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NULL ,
  `CommentAvatar_id` INT UNSIGNED NULL ,
  `Text` VARCHAR(256) NOT NULL ,
  `DateTime` DATETIME NOT NULL ,
  `CountLikeDislike` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_CommentAvatar_Avatar1_idx` (`Avatar_id` ASC) ,
  INDEX `fk_CommentAvatar_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_CommentAvatar_CommentAvatar1_idx` (`CommentAvatar_id` ASC) ,
  CONSTRAINT `fk_CommentAvatar_Avatar1`
    FOREIGN KEY (`Avatar_id` )
    REFERENCES `mydb`.`Avatar` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentAvatar_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CommentAvatar_CommentAvatar1`
    FOREIGN KEY (`CommentAvatar_id` )
    REFERENCES `mydb`.`CommentAvatar` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeCommentAvatar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeCommentAvatar` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `CommentAvatar_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikkeDislikeCommentAvatar_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_LikkeDislikeCommentAvatar_CommentAvatar1_idx` (`CommentAvatar_id` ASC) ,
  CONSTRAINT `fk_LikkeDislikeCommentAvatar_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikkeDislikeCommentAvatar_CommentAvatar1`
    FOREIGN KEY (`CommentAvatar_id` )
    REFERENCES `mydb`.`CommentAvatar` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeAvatar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeAvatar` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `Avatar_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeAvatar_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_LikeDislikeAvatar_Avatar1_idx` (`Avatar_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeAvatar_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeAvatar_Avatar1`
    FOREIGN KEY (`Avatar_id` )
    REFERENCES `mydb`.`Avatar` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`HeadBand`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`HeadBand` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `path` VARCHAR(256) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ProfileHeadBand`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`ProfileHeadBand` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `HeadBand_id` INT UNSIGNED NOT NULL ,
  `Current` TINYINT(1) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_ProfileHeadBand_Profile1_idx` (`Profile_id` ASC) ,
  INDEX `fk_ProfileHeadBand_HeadBand1_idx` (`HeadBand_id` ASC) ,
  CONSTRAINT `fk_ProfileHeadBand_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ProfileHeadBand_HeadBand1`
    FOREIGN KEY (`HeadBand_id` )
    REFERENCES `mydb`.`HeadBand` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsCommentAvatar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsCommentAvatar` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentAvatar_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsCommentAvatar_CommentAvatar1_idx` (`CommentAvatar_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsCommentAvatar_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsCommentAvatar_CommentAvatar1`
    FOREIGN KEY (`CommentAvatar_id` )
    REFERENCES `mydb`.`CommentAvatar` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsCommentAvatar_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsCommentMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsCommentMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentMaterial_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsCommentMaterial_CommentMaterial1_idx` (`CommentMaterial_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsCommentMaterial_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsCommentMaterial_CommentMaterial1`
    FOREIGN KEY (`CommentMaterial_id` )
    REFERENCES `mydb`.`CommentMaterial` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsCommentMaterial_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsCommentPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsCommentPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentPhotoBig_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsCommentPhotoBig_CommentPhotoBig1_idx` (`CommentPhotoBig_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsCommentPhotoBig_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsCommentPhotoBig_CommentPhotoBig1`
    FOREIGN KEY (`CommentPhotoBig_id` )
    REFERENCES `mydb`.`CommentPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsCommentPhotoBig_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsCommentRecordBlog`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsCommentRecordBlog` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentRecordBlog_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsCommentRecordBlog_CommentRecordBlog1_idx` (`CommentRecordBlog_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsCommentRecordBlog_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsCommentRecordBlog_CommentRecordBlog1`
    FOREIGN KEY (`CommentRecordBlog_id` )
    REFERENCES `mydb`.`CommentRecordBlog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsCommentRecordBlog_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsCommentRecordDiscuss`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsCommentRecordDiscuss` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentRecordDiscuss_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsCommentRecordDiscuss_CommentRecordDisc_idx` (`CommentRecordDiscuss_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsCommentRecordDiscuss_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsCommentRecordDiscuss_CommentRecordDiscuss1`
    FOREIGN KEY (`CommentRecordDiscuss_id` )
    REFERENCES `mydb`.`CommentRecordDiscuss` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsCommentRecordDiscuss_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsCommentRecordWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsCommentRecordWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  `CommentRecordWall_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsCommentRecordWall_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsCommentRecordWall_CommentRecordWall1_idx` (`CommentRecordWall_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsCommentRecordWall_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsCommentRecordWall_CommentRecordWall1`
    FOREIGN KEY (`CommentRecordWall_id` )
    REFERENCES `mydb`.`CommentRecordWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsSpisokPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsSpisokPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentSpisokPhotoBig_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsSpisokPhotoBig_CommentSpisokPhotoBig1_idx` (`CommentSpisokPhotoBig_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsSpisokPhotoBig_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsSpisokPhotoBig_CommentSpisokPhotoBig1`
    FOREIGN KEY (`CommentSpisokPhotoBig_id` )
    REFERENCES `mydb`.`CommentSpisokPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsSpisokPhotoBig_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeAvatar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeAvatar` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `LikeDislikeAvatar_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLokeDoslikeAvatar_LikeDislikeAvatar1_idx` (`LikeDislikeAvatar_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLokeDoslikeAvatar_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLokeDoslikeAvatar_LikeDislikeAvatar1`
    FOREIGN KEY (`LikeDislikeAvatar_id` )
    REFERENCES `mydb`.`LikeDislikeAvatar` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLokeDoslikeAvatar_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeCommentAvatar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeCommentAvatar` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `LikkeDislikeCommentAvatar_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentAvatar_LikkeDislikeC_idx` (`LikkeDislikeCommentAvatar_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentAvatar_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentAvatar_LikkeDislikeCom1`
    FOREIGN KEY (`LikkeDislikeCommentAvatar_id` )
    REFERENCES `mydb`.`LikeDislikeCommentAvatar` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentAvatar_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeCommentMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeCommentMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `CommentMaterial_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentMaterial_CommentMate_idx` (`CommentMaterial_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentMaterial_PersonalNew_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentMaterial_CommentMateri1`
    FOREIGN KEY (`CommentMaterial_id` )
    REFERENCES `mydb`.`CommentMaterial` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentMaterial_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `LikeDislikeMaterial_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeMaterial_LikeDislikeMateria_idx` (`LikeDislikeMaterial_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeMaterial_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeMaterial_LikeDislikeMaterial1`
    FOREIGN KEY (`LikeDislikeMaterial_id` )
    REFERENCES `mydb`.`LikeDislikeCommentMaterial` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeMaterial_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikePhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikePhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  `LikeDislikePhotoBig_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikePhotoBig_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikePhotoBig_LikeDislikePhotoBi_idx` (`LikeDislikePhotoBig_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikePhotoBig_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikePhotoBig_LikeDislikePhotoBig1`
    FOREIGN KEY (`LikeDislikePhotoBig_id` )
    REFERENCES `mydb`.`LikeDislikePhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeCommentPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeCommentPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  `LikeDislikeCommentPhotoBig_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentPhotoBig_PersonalNew_idx` (`PersonalNews_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentPhotoBig_LikeDislike_idx` (`LikeDislikeCommentPhotoBig_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentPhotoBig_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentPhotoBig_LikeDislikeCo1`
    FOREIGN KEY (`LikeDislikeCommentPhotoBig_id` )
    REFERENCES `mydb`.`LikeDislikeCommentPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeRecordBlog`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeRecordBlog` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `LikeDislikeRecordBlog_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeRecordBlog_LikeDislikeRecor_idx` (`LikeDislikeRecordBlog_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeRecordBlog_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeRecordBlog_LikeDislikeRecordB1`
    FOREIGN KEY (`LikeDislikeRecordBlog_id` )
    REFERENCES `mydb`.`LikeDislikeRecordBlog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeRecordBlog_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeCommentRecordBlog`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeCommentRecordBlog` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `LikeDislikeCommentRecordBlog_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentRecordBlog_LikeDisli_idx` (`LikeDislikeCommentRecordBlog_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentRecordBlog_PersonalN_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentRecordBlog_LikeDislike1`
    FOREIGN KEY (`LikeDislikeCommentRecordBlog_id` )
    REFERENCES `mydb`.`LikeDislikeCommentRecordBlog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentRecordBlog_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeCommentRecordDiscuss`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeCommentRecordDiscuss` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `LikeDislikeCommentRecordDiscuss_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentRecordDiscuss_LikeDi_idx` (`LikeDislikeCommentRecordDiscuss_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentRecordDiscuss_Person_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentRecordDiscuss_LikeDisl1`
    FOREIGN KEY (`LikeDislikeCommentRecordDiscuss_id` )
    REFERENCES `mydb`.`LikeDislikeCommentRecordDiscuss` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentRecordDiscuss_Personal1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeRecordDiscuss`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeRecordDiscuss` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `RecordDiscuss_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeRecordDiscuss_RecordDiscuss_idx` (`RecordDiscuss_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeRecordDiscuss_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeRecordDiscuss_RecordDiscuss1`
    FOREIGN KEY (`RecordDiscuss_id` )
    REFERENCES `mydb`.`RecordDiscuss` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeRecordDiscuss_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeRecordWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeRecordWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  `LikeDislikeRecordWall_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeRecordWall_PersonalNews1_idx` (`PersonalNews_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeRecordWall_LikeDislikeRecor_idx` (`LikeDislikeRecordWall_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeRecordWall_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeRecordWall_LikeDislikeRecordW1`
    FOREIGN KEY (`LikeDislikeRecordWall_id` )
    REFERENCES `mydb`.`LikeDislikeRecordWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeCommentRecordWall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeCommentRecordWall` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `LikeDislikeCommentRecordWall_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentRecordWall_LikeDisli_idx` (`LikeDislikeCommentRecordWall_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentRecordWall_PersonalN_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentRecordWall_LikeDislike1`
    FOREIGN KEY (`LikeDislikeCommentRecordWall_id` )
    REFERENCES `mydb`.`LikeDislikeCommentRecordWall` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentRecordWall_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LikeDislikeSpisokPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LikeDislikeSpisokPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  `SpisokPhotoBig_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LikeDislikeSpisokPhotoBig_Profile2_idx` (`Profile_id` ASC) ,
  INDEX `fk_LikeDislikeSpisokPhotoBig_SpisokPhotoBig2_idx` (`SpisokPhotoBig_id` ASC) ,
  CONSTRAINT `fk_LikeDislikeSpisokPhotoBig_Profile2`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LikeDislikeSpisokPhotoBig_SpisokPhotoBig2`
    FOREIGN KEY (`SpisokPhotoBig_id` )
    REFERENCES `mydb`.`SpisokPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeSpisokPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeSpisokPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `LikeDislikeSpisokPhotoBig_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeSpisokPhotoBig_LikeDislikeS_idx` (`LikeDislikeSpisokPhotoBig_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeSpisokPhotoBig_PersonalNews_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeSpisokPhotoBig_LikeDislikeSpi1`
    FOREIGN KEY (`LikeDislikeSpisokPhotoBig_id` )
    REFERENCES `mydb`.`LikeDislikeSpisokPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeSpisokPhotoBig_PersonalNews1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokPersonalNewsLikeDislikeCommentSpisokPhotoBig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokPersonalNewsLikeDislikeCommentSpisokPhotoBig` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `LikeDislikeCommentSpisokPhotoBig_id` INT UNSIGNED NOT NULL ,
  `PersonalNews_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentSpisokPhotoBig_LikeD_idx` (`LikeDislikeCommentSpisokPhotoBig_id` ASC) ,
  INDEX `fk_SpisokPersonalNewsLikeDislikeCommentSpisokPhotoBig_Perso_idx` (`PersonalNews_id` ASC) ,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentSpisokPhotoBig_LikeDis1`
    FOREIGN KEY (`LikeDislikeCommentSpisokPhotoBig_id` )
    REFERENCES `mydb`.`LikeDislikeCommentSpisokPhotoBig` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokPersonalNewsLikeDislikeCommentSpisokPhotoBig_Persona1`
    FOREIGN KEY (`PersonalNews_id` )
    REFERENCES `mydb`.`PersonalNews` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MaterialLesson`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`MaterialLesson` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Lesson_id` INT UNSIGNED NOT NULL ,
  `Material_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_MaterialLesson_Lesson1_idx` (`Lesson_id` ASC) ,
  INDEX `fk_MaterialLesson_Material1_idx` (`Material_id` ASC) ,
  CONSTRAINT `fk_MaterialLesson_Lesson1`
    FOREIGN KEY (`Lesson_id` )
    REFERENCES `mydb`.`Lesson` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_MaterialLesson_Material1`
    FOREIGN KEY (`Material_id` )
    REFERENCES `mydb`.`Material` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokBlackList`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokBlackList` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `BlackList_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokBlackList_BlackList1_idx` (`BlackList_id` ASC) ,
  INDEX `fk_SpisokBlackList_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_SpisokBlackList_BlackList1`
    FOREIGN KEY (`BlackList_id` )
    REFERENCES `mydb`.`BlackList` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokBlackList_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokBlackListPrivilegies`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokBlackListPrivilegies` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Privilegies_id` INT UNSIGNED NOT NULL ,
  `BlackList_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokBlackListPrivilegies_Privilegies1_idx` (`Privilegies_id` ASC) ,
  INDEX `fk_SpisokBlackListPrivilegies_BlackList1_idx` (`BlackList_id` ASC) ,
  CONSTRAINT `fk_SpisokBlackListPrivilegies_Privilegies1`
    FOREIGN KEY (`Privilegies_id` )
    REFERENCES `mydb`.`Privilegies` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokBlackListPrivilegies_BlackList1`
    FOREIGN KEY (`BlackList_id` )
    REFERENCES `mydb`.`BlackList` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokGroupPrivilegies`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokGroupPrivilegies` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Group_id` INT UNSIGNED NOT NULL ,
  `Privilegies_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokGroupPrivilegies_Group1_idx` (`Group_id` ASC) ,
  INDEX `fk_SpisokGroupPrivilegies_Privilegies1_idx` (`Privilegies_id` ASC) ,
  CONSTRAINT `fk_SpisokGroupPrivilegies_Group1`
    FOREIGN KEY (`Group_id` )
    REFERENCES `mydb`.`Group` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokGroupPrivilegies_Privilegies1`
    FOREIGN KEY (`Privilegies_id` )
    REFERENCES `mydb`.`Privilegies` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ProfilePrivilegies`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`ProfilePrivilegies` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Privilegies_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_ProfilePrivilegies_Privilegies1_idx` (`Privilegies_id` ASC) ,
  INDEX `fk_ProfilePrivilegies_Profile1_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_ProfilePrivilegies_Privilegies1`
    FOREIGN KEY (`Privilegies_id` )
    REFERENCES `mydb`.`Privilegies` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ProfilePrivilegies_Profile1`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokProfilePrivilegies`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokProfilePrivilegies` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `ProfilePrivilegies_id` INT UNSIGNED NOT NULL ,
  `Profile_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokProfilePrivilegies_ProfilePrivilegies2_idx` (`ProfilePrivilegies_id` ASC) ,
  INDEX `fk_SpisokProfilePrivilegies_Profile2_idx` (`Profile_id` ASC) ,
  CONSTRAINT `fk_SpisokProfilePrivilegies_ProfilePrivilegies2`
    FOREIGN KEY (`ProfilePrivilegies_id` )
    REFERENCES `mydb`.`ProfilePrivilegies` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokProfilePrivilegies_Profile2`
    FOREIGN KEY (`Profile_id` )
    REFERENCES `mydb`.`Profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LearnerGroup`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LearnerGroup` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `SubGroup_id` INT UNSIGNED NOT NULL ,
  `Learner_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_LearnerGroup_SubGroup1_idx` (`SubGroup_id` ASC) ,
  INDEX `fk_LearnerGroup_Learner1_idx` (`Learner_id` ASC) ,
  CONSTRAINT `fk_LearnerGroup_SubGroup1`
    FOREIGN KEY (`SubGroup_id` )
    REFERENCES `mydb`.`SubGroup` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_LearnerGroup_Learner1`
    FOREIGN KEY (`Learner_id` )
    REFERENCES `mydb`.`Learner` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PhotoMaterial`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`PhotoMaterial` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Material_id` INT UNSIGNED NOT NULL ,
  `path` VARCHAR(256) NOT NULL ,
  `name` VARCHAR(256) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_PhotoMaterial_Material1_idx` (`Material_id` ASC) ,
  CONSTRAINT `fk_PhotoMaterial_Material1`
    FOREIGN KEY (`Material_id` )
    REFERENCES `mydb`.`Material` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokHoliday`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokHoliday` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Holiday_id` INT UNSIGNED NOT NULL ,
  `Organizer_Id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_SpisokHoliday_Holiday1_idx` (`Holiday_id` ASC) ,
  INDEX `fk_SpisokHoliday_Organizer1_idx` (`Organizer_Id` ASC) ,
  CONSTRAINT `fk_SpisokHoliday_Holiday1`
    FOREIGN KEY (`Holiday_id` )
    REFERENCES `mydb`.`Holiday` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_SpisokHoliday_Organizer1`
    FOREIGN KEY (`Organizer_Id` )
    REFERENCES `mydb`.`Organizer` (`Id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tema`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Tema` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpisokRecordTema`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SpisokRecordTema` (
  `idRecordTema` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Tema_id` INT UNSIGNED NOT NULL ,
  `RecordBlog_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`idRecordTema`) ,
  INDEX `fk_RecordTema_RecordBlog1_idx` (`RecordBlog_id` ASC) ,
  CONSTRAINT `fk_RecordTema_RecordBlog1`
    FOREIGN KEY (`RecordBlog_id` )
    REFERENCES `mydb`.`RecordBlog` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
