SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`profile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`profile` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`profile` (
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
-- Table `mydb`.`messagegroup`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`messagegroup` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`messagegroup` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`meassageN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`meassageN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`meassageN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  `datetime` DATETIME NOT NULL ,
  `messagegroup_id` INT UNSIGNED NULL ,
  `idrecepient` INT UNSIGNED NULL ,
  `idsender` INT UNSIGNED NULL ,
  `extension` INT UNSIGNED NULL ,
  `new` TINYINT(1) NOT NULL DEFAULT 1 ,
  INDEX `fk_MeassageN_messagegroup_idx` (`messagegroup_id` ASC) ,
  INDEX `fk_meassageN_profile1_idx` (`idrecepient` ASC) ,
  INDEX `fk_meassageN_profile2_idx` (`idsender` ASC) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_meassageN_meassageN1_idx` (`extension` ASC) ,
  CONSTRAINT `fk_MeassageN_messagegroup`
    FOREIGN KEY (`messagegroup_id` )
    REFERENCES `mydb`.`messagegroup` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_meassageN_profile1`
    FOREIGN KEY (`idrecepient` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_meassageN_profile2`
    FOREIGN KEY (`idsender` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_meassageN_meassageN1`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`meassageN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`spisokmessagegroupuser`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`spisokmessagegroupuser` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`spisokmessagegroupuser` (
  `messagegroup_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_spisokmessagegroupuser_messagegroup1_idx` (`messagegroup_id` ASC) ,
  INDEX `fk_spisokmessagegroupuser_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_spisokmessagegroupuser_messagegroup1`
    FOREIGN KEY (`messagegroup_id` )
    REFERENCES `mydb`.`messagegroup` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokmessagegroupuser_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`avatarN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`avatarN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`avatarN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `isavatar` TINYINT(1) NOT NULL ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countcomment` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `datetime` DATETIME NOT NULL ,
  `prev` INT UNSIGNED NULL ,
  `update` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`contactgroupN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`contactgroupN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`contactgroupN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `countuser` INT UNSIGNED NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`spisokcontactgroupuserN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`spisokcontactgroupuserN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`spisokcontactgroupuserN` (
  `iduser` INT UNSIGNED NOT NULL ,
  `contactgroupN_id` INT UNSIGNED NULL ,
  `state` INT UNSIGNED NOT NULL ,
  INDEX `fk_spisokkontaktgroupuserN_contactgroupN1_idx` (`contactgroupN_id` ASC) ,
  INDEX `fk_spisokcontactgroupuserN_profile1_idx` (`iduser` ASC) ,
  CONSTRAINT `fk_spisokkontaktgroupuserN_contactgroupN1`
    FOREIGN KEY (`contactgroupN_id` )
    REFERENCES `mydb`.`contactgroupN` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokcontactgroupuserN_profile1`
    FOREIGN KEY (`iduser` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`wallN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`wallN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`wallN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  `datetime` DATETIME NOT NULL ,
  `idauthor` INT UNSIGNED NOT NULL ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countcomment` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `extension` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_wallN_wallN1_idx` (`extension` ASC) ,
  CONSTRAINT `fk_wallN_wallN1`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`wallN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`blogN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`blogN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`blogN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datetime` DATETIME NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countcomment` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `extension` INT UNSIGNED NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `source` TEXT NULL ,
  `idauthor` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_blogN_blogN1_idx` (`extension` ASC) ,
  CONSTRAINT `fk_blogN_blogN1`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`blogN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`blogmetka`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`blogmetka` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`blogmetka` (
  `idblogmetka` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `color` VARCHAR(9) NOT NULL ,
  PRIMARY KEY (`idblogmetka`) ,
  UNIQUE INDEX `idblogmetka_UNIQUE` (`idblogmetka` ASC) ,
  UNIQUE INDEX `color_UNIQUE` (`color` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`spisokblogmetkaN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`spisokblogmetkaN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`spisokblogmetkaN` (
  `blogN_id` INT UNSIGNED NOT NULL ,
  `blogmetka_idblogmetka` INT UNSIGNED NOT NULL ,
  INDEX `fk_spisokblogmetkaN_blogN1_idx` (`blogN_id` ASC) ,
  INDEX `fk_spisokblogmetkaN_blogmetka1_idx` (`blogmetka_idblogmetka` ASC) ,
  CONSTRAINT `fk_spisokblogmetkaN_blogN1`
    FOREIGN KEY (`blogN_id` )
    REFERENCES `mydb`.`blogN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokblogmetkaN_blogmetka1`
    FOREIGN KEY (`blogmetka_idblogmetka` )
    REFERENCES `mydb`.`blogmetka` (`idblogmetka` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`albumN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`albumN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`albumN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(150) NOT NULL ,
  `description` VARCHAR(256) NULL ,
  `countphoto` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countcomment` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `coverpagephoto` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`spisokalbumphotoN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`spisokalbumphotoN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`spisokalbumphotoN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NOT NULL ,
  `albumN_id` INT UNSIGNED NOT NULL ,
  `countcomment` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `name` VARCHAR(256) NULL ,
  `description` VARCHAR(256) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_spisokalbumphotoN_albumN1_idx` (`albumN_id` ASC) ,
  CONSTRAINT `fk_spisokalbumphotoN_albumN1`
    FOREIGN KEY (`albumN_id` )
    REFERENCES `mydb`.`albumN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`commentavatarN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`commentavatarN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`commentavatarN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datetime` DATETIME NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `avatarN_id` INT UNSIGNED NOT NULL ,
  `commentavatarN_id` INT UNSIGNED NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  `extension` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentavatarN_avatarN1_idx` (`avatarN_id` ASC) ,
  INDEX `fk_commentavatarN_commentavatarN1_idx` (`commentavatarN_id` ASC) ,
  INDEX `fk_commentavatarN_profile1_idx` (`profile_id` ASC) ,
  INDEX `fk_commentavatarN_commentavatarN2_idx` (`extension` ASC) ,
  CONSTRAINT `fk_commentavatarN_avatarN1`
    FOREIGN KEY (`avatarN_id` )
    REFERENCES `mydb`.`avatarN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentavatarN_commentavatarN1`
    FOREIGN KEY (`commentavatarN_id` )
    REFERENCES `mydb`.`commentavatarN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentavatarN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentavatarN_commentavatarN2`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`commentavatarN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`commentwallN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`commentwallN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`commentwallN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datetime` DATETIME NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `wallN_id` INT UNSIGNED NOT NULL ,
  `commentwallN_id` INT UNSIGNED NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  `extension` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentwallN_wallN1_idx` (`wallN_id` ASC) ,
  INDEX `fk_commentwallN_commentwallN1_idx` (`commentwallN_id` ASC) ,
  INDEX `fk_commentwallN_profile1_idx` (`profile_id` ASC) ,
  INDEX `fk_commentwallN_commentwallN2_idx` (`extension` ASC) ,
  CONSTRAINT `fk_commentwallN_wallN1`
    FOREIGN KEY (`wallN_id` )
    REFERENCES `mydb`.`wallN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwallN_commentwallN1`
    FOREIGN KEY (`commentwallN_id` )
    REFERENCES `mydb`.`commentwallN` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwallN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentwallN_commentwallN2`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`commentwallN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`commentblogN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`commentblogN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`commentblogN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datetime` DATETIME NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `blogN_id` INT UNSIGNED NOT NULL ,
  `commentblogN_id` INT UNSIGNED NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  `extension` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentblogN_blogN1_idx` (`blogN_id` ASC) ,
  INDEX `fk_commentblogN_commentblogN1_idx` (`commentblogN_id` ASC) ,
  INDEX `fk_commentblogN_profile1_idx` (`profile_id` ASC) ,
  INDEX `fk_commentblogN_commentblogN2_idx` (`extension` ASC) ,
  CONSTRAINT `fk_commentblogN_blogN1`
    FOREIGN KEY (`blogN_id` )
    REFERENCES `mydb`.`blogN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentblogN_commentblogN1`
    FOREIGN KEY (`commentblogN_id` )
    REFERENCES `mydb`.`commentblogN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentblogN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentblogN_commentblogN2`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`commentblogN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`commentalbumN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`commentalbumN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`commentalbumN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datetime` DATETIME NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `albumN_id` INT UNSIGNED NOT NULL ,
  `commentalbumN_id` INT UNSIGNED NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  `extension` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentalbumN_albumN1_idx` (`albumN_id` ASC) ,
  INDEX `fk_commentalbumN_commentalbumN1_idx` (`commentalbumN_id` ASC) ,
  INDEX `fk_commentalbumN_profile1_idx` (`profile_id` ASC) ,
  INDEX `fk_commentalbumN_commentalbumN2_idx` (`extension` ASC) ,
  CONSTRAINT `fk_commentalbumN_albumN1`
    FOREIGN KEY (`albumN_id` )
    REFERENCES `mydb`.`albumN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentalbumN_commentalbumN1`
    FOREIGN KEY (`commentalbumN_id` )
    REFERENCES `mydb`.`commentalbumN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentalbumN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentalbumN_commentalbumN2`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`commentalbumN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`commentspisokalbumphotoN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`commentspisokalbumphotoN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`commentspisokalbumphotoN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `datetime` DATETIME NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `countlike` INT UNSIGNED NOT NULL DEFAULT 0 ,
  `spisokalbumphotoN_id` INT UNSIGNED NOT NULL ,
  `commentspisokalbumphotoN_id` INT UNSIGNED NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  `extension` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_commentspisokalbumphotoN_spisokalbumphotoN1_idx` (`spisokalbumphotoN_id` ASC) ,
  INDEX `fk_commentspisokalbumphotoN_commentspisokalbumphotoN1_idx` (`commentspisokalbumphotoN_id` ASC) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_commentspisokalbumphotoN_profile1_idx` (`profile_id` ASC) ,
  INDEX `fk_commentspisokalbumphotoN_commentspisokalbumphotoN2_idx` (`extension` ASC) ,
  CONSTRAINT `fk_commentspisokalbumphotoN_spisokalbumphotoN1`
    FOREIGN KEY (`spisokalbumphotoN_id` )
    REFERENCES `mydb`.`spisokalbumphotoN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentspisokalbumphotoN_commentspisokalbumphotoN1`
    FOREIGN KEY (`commentspisokalbumphotoN_id` )
    REFERENCES `mydb`.`commentspisokalbumphotoN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentspisokalbumphotoN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_commentspisokalbumphotoN_commentspisokalbumphotoN2`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`commentspisokalbumphotoN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likeavatarN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likeavatarN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likeavatarN` (
  `avatarN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_countlikeavatarN_avatarN1_idx` (`avatarN_id` ASC) ,
  INDEX `fk_likeavatarN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_countlikeavatarN_avatarN1`
    FOREIGN KEY (`avatarN_id` )
    REFERENCES `mydb`.`avatarN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likeavatarN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likewallN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likewallN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likewallN` (
  `wallN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likewallN_wallN1_idx` (`wallN_id` ASC) ,
  INDEX `fk_likewallN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_likewallN_wallN1`
    FOREIGN KEY (`wallN_id` )
    REFERENCES `mydb`.`wallN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likewallN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likeblogN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likeblogN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likeblogN` (
  `blogN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likeblogN_blogN1_idx` (`blogN_id` ASC) ,
  INDEX `fk_likeblogN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_likeblogN_blogN1`
    FOREIGN KEY (`blogN_id` )
    REFERENCES `mydb`.`blogN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likeblogN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likealbumN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likealbumN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likealbumN` (
  `albumN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likealbumN_albumN1_idx` (`albumN_id` ASC) ,
  INDEX `fk_likealbumN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_likealbumN_albumN1`
    FOREIGN KEY (`albumN_id` )
    REFERENCES `mydb`.`albumN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likealbumN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likespisokalbumphotoN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likespisokalbumphotoN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likespisokalbumphotoN` (
  `spisokalbumphotoN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likespisokalbumphotoN_spisokalbumphotoN1_idx` (`spisokalbumphotoN_id` ASC) ,
  INDEX `fk_likespisokalbumphotoN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_likespisokalbumphotoN_spisokalbumphotoN1`
    FOREIGN KEY (`spisokalbumphotoN_id` )
    REFERENCES `mydb`.`spisokalbumphotoN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likespisokalbumphotoN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likecommentavatarN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likecommentavatarN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likecommentavatarN` (
  `commentavatarN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likecommentavatarN_commentavatarN1_idx` (`commentavatarN_id` ASC) ,
  INDEX `fk_likecommentavatarN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_likecommentavatarN_commentavatarN1`
    FOREIGN KEY (`commentavatarN_id` )
    REFERENCES `mydb`.`commentavatarN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentavatarN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likecommentwallN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likecommentwallN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likecommentwallN` (
  `commentwallN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likecommentwallN_commentwallN1_idx` (`commentwallN_id` ASC) ,
  INDEX `fk_likecommentwallN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_likecommentwallN_commentwallN1`
    FOREIGN KEY (`commentwallN_id` )
    REFERENCES `mydb`.`commentwallN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentwallN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likecommentblogN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likecommentblogN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likecommentblogN` (
  `commentblogN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likecommentblogN_commentblogN1_idx` (`commentblogN_id` ASC) ,
  INDEX `fk_likecommentblogN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_likecommentblogN_commentblogN1`
    FOREIGN KEY (`commentblogN_id` )
    REFERENCES `mydb`.`commentblogN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentblogN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likecommentalbumN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likecommentalbumN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likecommentalbumN` (
  `commentalbumN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likecommentalbumN_commentalbumN1_idx` (`commentalbumN_id` ASC) ,
  INDEX `fk_likecommentalbumN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_likecommentalbumN_commentalbumN1`
    FOREIGN KEY (`commentalbumN_id` )
    REFERENCES `mydb`.`commentalbumN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentalbumN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`likecommentspisokalbumphotoN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`likecommentspisokalbumphotoN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`likecommentspisokalbumphotoN` (
  `commentspisokalbumphotoN_id` INT UNSIGNED NOT NULL ,
  `profile_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_likecommentspisokalbumphotoN_commentspisokalbumphotoN1_idx` (`commentspisokalbumphotoN_id` ASC) ,
  INDEX `fk_likecommentspisokalbumphotoN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_likecommentspisokalbumphotoN_commentspisokalbumphotoN1`
    FOREIGN KEY (`commentspisokalbumphotoN_id` )
    REFERENCES `mydb`.`commentspisokalbumphotoN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_likecommentspisokalbumphotoN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`holliday`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`holliday` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`holliday` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `date` DATE NOT NULL ,
  `name` VARCHAR(256) NOT NULL ,
  `descriptor` TEXT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`newsN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`newsN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`newsN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `type` INT NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `datetime` DATETIME NOT NULL ,
  `extension` INT UNSIGNED NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_newsN_newsN1_idx` (`extension` ASC) ,
  CONSTRAINT `fk_newsN_newsN1`
    FOREIGN KEY (`extension` )
    REFERENCES `mydb`.`newsN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`spisoknewsphotoN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`spisoknewsphotoN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`spisoknewsphotoN` (
  `newsN_id` INT UNSIGNED NOT NULL ,
  `spisokalbumphotoN_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_spisoknewsphotoN_newsN1_idx` (`newsN_id` ASC) ,
  INDEX `fk_spisoknewsphotoN_spisokalbumphotoN1_idx` (`spisokalbumphotoN_id` ASC) ,
  CONSTRAINT `fk_spisoknewsphotoN_newsN1`
    FOREIGN KEY (`newsN_id` )
    REFERENCES `mydb`.`newsN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisoknewsphotoN_spisokalbumphotoN1`
    FOREIGN KEY (`spisokalbumphotoN_id` )
    REFERENCES `mydb`.`spisokalbumphotoN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`spisoknewsavatarN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`spisoknewsavatarN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`spisoknewsavatarN` (
  `newsN_id` INT UNSIGNED NOT NULL ,
  `avatarN_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_spisoknewsavatarN_newsN1_idx` (`newsN_id` ASC) ,
  INDEX `fk_spisoknewsavatarN_avatarN1_idx` (`avatarN_id` ASC) ,
  CONSTRAINT `fk_spisoknewsavatarN_newsN1`
    FOREIGN KEY (`newsN_id` )
    REFERENCES `mydb`.`newsN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisoknewsavatarN_avatarN1`
    FOREIGN KEY (`avatarN_id` )
    REFERENCES `mydb`.`avatarN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`spisoknewsblogN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`spisoknewsblogN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`spisoknewsblogN` (
  `newsN_id` INT UNSIGNED NOT NULL ,
  `blogN_id` INT UNSIGNED NOT NULL ,
  INDEX `fk_spisoknewsblogN_newsN1_idx` (`newsN_id` ASC) ,
  INDEX `fk_spisoknewsblogN_blogN1_idx` (`blogN_id` ASC) ,
  CONSTRAINT `fk_spisoknewsblogN_newsN1`
    FOREIGN KEY (`newsN_id` )
    REFERENCES `mydb`.`newsN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_spisoknewsblogN_blogN1`
    FOREIGN KEY (`blogN_id` )
    REFERENCES `mydb`.`blogN` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`systemnews`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`systemnews` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`systemnews` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `type` INT NOT NULL ,
  `text` TEXT NOT NULL ,
  `datetime` DATETIME NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`personalnewsN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`personalnewsN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`personalnewsN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `type` INT NOT NULL ,
  `author` INT UNSIGNED NOT NULL ,
  `text` VARCHAR(256) NOT NULL ,
  `datetime` DATETIME NOT NULL ,
  `idnewsobject` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`organizerN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`organizerN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`organizerN` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `text` VARCHAR(256) NOT NULL ,
  `detatimestart` DATETIME NOT NULL ,
  `datetimefinish` DATETIME NULL ,
  `type` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`spisoksubscriberN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`spisoksubscriberN` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`spisoksubscriberN` (
  `profile_id` INT UNSIGNED NOT NULL ,
  `state` INT UNSIGNED NOT NULL ,
  INDEX `fk_spisoksubscriberN_profile1_idx` (`profile_id` ASC) ,
  CONSTRAINT `fk_spisoksubscriberN_profile1`
    FOREIGN KEY (`profile_id` )
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`notificationerror`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`notificationerror` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`notificationerror` (
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
-- Table `mydb`.`roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`roles` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`roles` (
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
    REFERENCES `mydb`.`profile` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `mydb` ;

-- -----------------------------------------------------
-- procedure cRole
-- -----------------------------------------------------

USE `mydb`;
DROP procedure IF EXISTS `mydb`.`cRole`;

DELIMITER $$
USE `mydb`$$
CREATE PROCEDURE `mydb`.`cRole` (
	idProfile INT UNSIGNED,
	role TINYINT UNSIGNED,
	idAdress INT UNSIGNED,
	idSchool INT UNSIGNED,
	info VARCHAR(256)
)
BEGIN
	INSERT INTO `mydb`.`roles`(`profile_id`,`role`,`idadress`,`idschool`,`info`,`datestart`)
	VALUES(idProfile, role, idAdress, idSchool, info, now());
END$$

DELIMITER ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
