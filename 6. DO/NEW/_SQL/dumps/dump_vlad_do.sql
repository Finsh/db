/*
Navicat MySQL Data Transfer

Source Server         : connection1
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : do

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2013-07-31 13:18:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `absents`
-- ----------------------------
DROP TABLE IF EXISTS `absents`;
CREATE TABLE `absents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of absents
-- ----------------------------
INSERT INTO `absents` VALUES ('1', 'Absent 1');
INSERT INTO `absents` VALUES ('2', 'Absent 1');
INSERT INTO `absents` VALUES ('3', 'Absent 1');
INSERT INTO `absents` VALUES ('4', 'Absent 1');
INSERT INTO `absents` VALUES ('5', 'Absent 1');
INSERT INTO `absents` VALUES ('6', 'Absent 1');

-- ----------------------------
-- Table structure for `answers`
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `right` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `questionS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_answerS_questionS1_idx1` (`questionS_id1`),
  CONSTRAINT `fk_answerS_questionS1` FOREIGN KEY (`questionS_id1`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answers
-- ----------------------------

-- ----------------------------
-- Table structure for `classrooms`
-- ----------------------------
DROP TABLE IF EXISTS `classrooms`;
CREATE TABLE `classrooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `abbreviation` varchar(5) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `schoolS_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_classroomS_schoolS1_idx` (`schoolS_id`),
  CONSTRAINT `fk_classroomS_schoolS1` FOREIGN KEY (`schoolS_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classrooms
-- ----------------------------
INSERT INTO `classrooms` VALUES ('1', 'Кабинет', 'Каб', '202', 'Кабинет Физики', '1');

-- ----------------------------
-- Table structure for `classs`
-- ----------------------------
DROP TABLE IF EXISTS `classs`;
CREATE TABLE `classs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `entryyear` smallint(5) unsigned NOT NULL,
  `endyear` smallint(5) unsigned DEFAULT NULL,
  `countlearner` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `schoolS_id` int(10) unsigned NOT NULL,
  `yodaS_id` int(10) unsigned DEFAULT NULL,
  `letter` varchar(2) DEFAULT 'А',
  PRIMARY KEY (`id`),
  KEY `fk_classS_schoolS1_idx` (`schoolS_id`),
  KEY `fk_classS_yodaS1_idx` (`yodaS_id`),
  CONSTRAINT `fk_classS_schoolS1` FOREIGN KEY (`schoolS_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_classS_yodaS1` FOREIGN KEY (`yodaS_id`) REFERENCES `yodas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classs
-- ----------------------------
INSERT INTO `classs` VALUES ('1', '7 A', '7', '1990', null, '0', '0', '1', '1', 'A');
INSERT INTO `classs` VALUES ('3', '7 Б', '7', '1990', null, '0', '0', '1', '2', 'Б');
INSERT INTO `classs` VALUES ('4', '8 А', '8', '1989', null, '0', '0', '2', null, 'А');
INSERT INTO `classs` VALUES ('5', '8 Б', '8', '1989', null, '0', '0', '2', null, 'Б');

-- ----------------------------
-- Table structure for `commentdiscussions`
-- ----------------------------
DROP TABLE IF EXISTS `commentdiscussions`;
CREATE TABLE `commentdiscussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discussionS_id` int(10) unsigned NOT NULL,
  `iduser` int(10) unsigned DEFAULT NULL,
  `text` varchar(256) NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `middlename` varchar(256) NOT NULL,
  `countlike` int(11) DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentdiscussionS_discussionS1_idx` (`discussionS_id`),
  KEY `fk_commentdiscussionS_commentdiscussionS1_idx` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commentdiscussions
-- ----------------------------

-- ----------------------------
-- Table structure for `commentparagraphextensions`
-- ----------------------------
DROP TABLE IF EXISTS `commentparagraphextensions`;
CREATE TABLE `commentparagraphextensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `text` varchar(256) NOT NULL,
  `countlike` int(11) NOT NULL DEFAULT '0',
  `paragraphextensionS_id` int(10) unsigned NOT NULL,
  `iduser` int(10) unsigned NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `middlename` varchar(256) NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_commentparagraphextensionS_paragraphextensionS1_idx` (`paragraphextensionS_id`),
  KEY `fk_commentparagraphextensionS_commentparagraphextensionS1_idx` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commentparagraphextensions
-- ----------------------------

-- ----------------------------
-- Table structure for `discussions`
-- ----------------------------
DROP TABLE IF EXISTS `discussions`;
CREATE TABLE `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paragraphS_id` int(10) unsigned NOT NULL,
  `learnerS_id` int(10) unsigned NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `middlename` varchar(256) NOT NULL,
  `countlike` smallint(6) DEFAULT '0',
  `contcomment` smallint(6) DEFAULT '0',
  `text` varchar(256) NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  `iduser` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_discussionS_paragraphS1_idx` (`paragraphS_id`),
  KEY `fk_discussionS_learnerS1_idx` (`learnerS_id`),
  KEY `fk_discussionS_discussionS1_idx` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussions
-- ----------------------------

-- ----------------------------
-- Table structure for `kos`
-- ----------------------------
DROP TABLE IF EXISTS `kos`;
CREATE TABLE `kos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iduser` int(10) unsigned NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `middlename` varchar(256) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `schoolS_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_koS_schoolS1_idx` (`schoolS_id`),
  CONSTRAINT `fk_koS_schoolS1` FOREIGN KEY (`schoolS_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kos
-- ----------------------------
INSERT INTO `kos` VALUES ('1', '2', '1', '2', '3', '0', '1');

-- ----------------------------
-- Table structure for `learners`
-- ----------------------------
DROP TABLE IF EXISTS `learners`;
CREATE TABLE `learners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iduser` int(10) unsigned NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `middlename` varchar(256) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `schoolS_id` int(10) unsigned NOT NULL,
  `classS_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_learnerS_schoolS1_idx` (`schoolS_id`),
  CONSTRAINT `fk_learnerS_schoolS1` FOREIGN KEY (`schoolS_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of learners
-- ----------------------------
INSERT INTO `learners` VALUES ('1', '1001', 'Владислав', 'Шульгин', 'Александрович', '0', '1', '1');
INSERT INTO `learners` VALUES ('2', '1002', 'Александр', 'Аратовский', 'Сергеевич', '0', '1', '1');
INSERT INTO `learners` VALUES ('3', '1004', 'Александр', 'Козак', 'Николаевич', '0', '1', '3');
INSERT INTO `learners` VALUES ('4', '1005', 'Глеб', 'Романов', 'Романович', '0', '2', '4');
INSERT INTO `learners` VALUES ('5', '1006', 'Роман', 'Васильев', 'Андреевич', '0', '2', '5');
INSERT INTO `learners` VALUES ('6', '1007', 'Денис', 'Кущевой', 'Иванович', '0', '2', '5');

-- ----------------------------
-- Table structure for `lessons`
-- ----------------------------
DROP TABLE IF EXISTS `lessons`;
CREATE TABLE `lessons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` tinyint(3) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `hometask` varchar(256) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `subgroupS_id1` int(10) unsigned NOT NULL,
  `classroomS_id1` int(10) unsigned DEFAULT NULL,
  `teacherS_id1` int(10) unsigned DEFAULT NULL,
  `subjectS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lessonS_subgroupS1_idx` (`subgroupS_id1`),
  KEY `fk_lessonS_classroomS1_idx` (`classroomS_id1`),
  KEY `fk_lessonS_teacherS1_idx` (`teacherS_id1`),
  KEY `fk_lessonS_subjectS1_idx` (`subjectS_id1`),
  CONSTRAINT `fk_lessonS_classroomS1` FOREIGN KEY (`classroomS_id1`) REFERENCES `classrooms` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_subgroupS1` FOREIGN KEY (`subgroupS_id1`) REFERENCES `subgroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_subjectS1` FOREIGN KEY (`subjectS_id1`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_teacherS1` FOREIGN KEY (`teacherS_id1`) REFERENCES `teachers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lessons
-- ----------------------------
INSERT INTO `lessons` VALUES ('1', '1', '2013-09-02 01:06:05', 'нет', '0', '3', '1', '1', '2');
INSERT INTO `lessons` VALUES ('2', '2', '2013-09-03 11:18:39', 'нет', '0', '3', '1', '1', '2');
INSERT INTO `lessons` VALUES ('3', '1', '2013-09-03 18:36:56', 'нет', '0', '6', '1', '1', '3');
INSERT INTO `lessons` VALUES ('4', '2', '2013-09-04 18:36:17', 'нет', '0', '6', '1', '1', '3');
INSERT INTO `lessons` VALUES ('5', '1', '2013-09-04 18:38:18', 'нет', '0', '9', '1', '1', '4');
INSERT INTO `lessons` VALUES ('6', '2', '2013-09-05 18:39:05', 'нет', '0', '9', '1', '1', '4');
INSERT INTO `lessons` VALUES ('7', '1', '2013-09-05 18:39:30', 'нет', '0', '12', '1', '1', '5');
INSERT INTO `lessons` VALUES ('8', '3', '2013-07-29 02:43:06', 'нет', '0', '1', '1', '1', '1');
INSERT INTO `lessons` VALUES ('9', '4', '2013-07-29 02:43:44', 'нет', '0', '2', '1', '1', '1');

-- ----------------------------
-- Table structure for `lessontypes`
-- ----------------------------
DROP TABLE IF EXISTS `lessontypes`;
CREATE TABLE `lessontypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lessontypes
-- ----------------------------
INSERT INTO `lessontypes` VALUES ('1', 'Вводный урок');
INSERT INTO `lessontypes` VALUES ('2', 'Диктант');
INSERT INTO `lessontypes` VALUES ('3', 'Контрольная');
INSERT INTO `lessontypes` VALUES ('4', 'Упражнения');

-- ----------------------------
-- Table structure for `likedislikecommentdiscussions`
-- ----------------------------
DROP TABLE IF EXISTS `likedislikecommentdiscussions`;
CREATE TABLE `likedislikecommentdiscussions` (
  `commentdiscussionS_id` int(10) unsigned NOT NULL,
  `iduser` int(10) unsigned DEFAULT NULL,
  KEY `fk_likedislikediscussionS_commentdiscussionS1_idx` (`commentdiscussionS_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likedislikecommentdiscussions
-- ----------------------------

-- ----------------------------
-- Table structure for `likedislikecommentparagraphextensions`
-- ----------------------------
DROP TABLE IF EXISTS `likedislikecommentparagraphextensions`;
CREATE TABLE `likedislikecommentparagraphextensions` (
  `commentparagraphextensionS_id` int(10) unsigned NOT NULL,
  `iduser` int(10) unsigned DEFAULT NULL,
  KEY `fk_likedislikecommentparagraphextensionS_commentparagraphex_idx` (`commentparagraphextensionS_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likedislikecommentparagraphextensions
-- ----------------------------

-- ----------------------------
-- Table structure for `likedislikediscussions`
-- ----------------------------
DROP TABLE IF EXISTS `likedislikediscussions`;
CREATE TABLE `likedislikediscussions` (
  `discussionS_id` int(10) unsigned NOT NULL,
  `iduser` int(10) unsigned DEFAULT NULL,
  KEY `fk_likedislikediscussionS_discussionS1_idx` (`discussionS_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likedislikediscussions
-- ----------------------------

-- ----------------------------
-- Table structure for `likedislikeparagraphextensions`
-- ----------------------------
DROP TABLE IF EXISTS `likedislikeparagraphextensions`;
CREATE TABLE `likedislikeparagraphextensions` (
  `paragraphextensionS_id` int(10) unsigned NOT NULL,
  `iduser` int(10) unsigned DEFAULT NULL,
  KEY `fk_likedislikeparagraphextensionS_paragraphextensionS1_idx` (`paragraphextensionS_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likedislikeparagraphextensions
-- ----------------------------

-- ----------------------------
-- Table structure for `materials`
-- ----------------------------
DROP TABLE IF EXISTS `materials`;
CREATE TABLE `materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `countparagraph` smallint(5) unsigned NOT NULL DEFAULT '0',
  `countparagraphactive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `countsection` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `datecreate` datetime NOT NULL,
  `dateupdate` datetime NOT NULL,
  `notstudy` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `teacherS_id1` int(10) unsigned NOT NULL,
  `subjectS_id1` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_materialS_teacherS1_idx1` (`teacherS_id1`),
  KEY `fk_materialS_subjectS1_idx1` (`subjectS_id1`),
  CONSTRAINT `fk_materialS_subjectS1` FOREIGN KEY (`subjectS_id1`) REFERENCES `subjects` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_materialS_teacherS1` FOREIGN KEY (`teacherS_id1`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of materials
-- ----------------------------

-- ----------------------------
-- Table structure for `paragraphextensions`
-- ----------------------------
DROP TABLE IF EXISTS `paragraphextensions`;
CREATE TABLE `paragraphextensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paragraphS_id` int(10) unsigned NOT NULL,
  `learnerS_id` int(10) unsigned NOT NULL,
  `text` varchar(256) NOT NULL,
  `extension` int(10) unsigned DEFAULT NULL,
  `countcomment` int(11) DEFAULT '0',
  `countlike` int(11) DEFAULT '0',
  `lastname` varchar(256) NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `middlename` varchar(256) NOT NULL,
  `iduser` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_paragraphextensionS_paragraphS1_idx` (`paragraphS_id`),
  KEY `fk_paragraphextensionS_learnerS1_idx` (`learnerS_id`),
  KEY `fk_paragraphextensionS_paragraphextensionS1_idx` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paragraphextensions
-- ----------------------------

-- ----------------------------
-- Table structure for `paragraphs`
-- ----------------------------
DROP TABLE IF EXISTS `paragraphs`;
CREATE TABLE `paragraphs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `number` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `countquestion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `countpart` smallint(5) unsigned NOT NULL DEFAULT '0',
  `datecreate` datetime NOT NULL,
  `dateupdate` datetime NOT NULL,
  `notstudy` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `countdiscussion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `countextention` smallint(5) unsigned NOT NULL DEFAULT '0',
  `materialS_id1` int(10) unsigned NOT NULL,
  `sectionS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_paragraphS_materialS1_idx1` (`materialS_id1`),
  KEY `fk_paragraphS_sectionS1_idx1` (`sectionS_id1`),
  CONSTRAINT `fk_paragraphS_materialS1` FOREIGN KEY (`materialS_id1`) REFERENCES `materials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_paragraphS_sectionS1` FOREIGN KEY (`sectionS_id1`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paragraphs
-- ----------------------------

-- ----------------------------
-- Table structure for `partparagraphs`
-- ----------------------------
DROP TABLE IF EXISTS `partparagraphs`;
CREATE TABLE `partparagraphs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text,
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `datecreate` datetime NOT NULL,
  `dateupdate` datetime NOT NULL,
  `countquestion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `paragraphS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_partparagraphS_partparagraphS1_idx` (`extension`),
  KEY `fk_partparagraphS_paragraphS1_idx1` (`paragraphS_id1`),
  CONSTRAINT `fk_partparagraphS_paragraphS1` FOREIGN KEY (`paragraphS_id1`) REFERENCES `paragraphs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of partparagraphs
-- ----------------------------

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(256) NOT NULL,
  `complexity` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'сложность',
  `countanswer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `countrightanswer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `extension` int(10) unsigned DEFAULT NULL,
  `partparagraphS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_questionS_questionS1_idx` (`extension`),
  KEY `fk_questionS_partparagraphS1_idx1` (`partparagraphS_id1`),
  CONSTRAINT `fk_questionS_partparagraphS1` FOREIGN KEY (`partparagraphS_id1`) REFERENCES `partparagraphs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------

-- ----------------------------
-- Table structure for `relations`
-- ----------------------------
DROP TABLE IF EXISTS `relations`;
CREATE TABLE `relations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relations
-- ----------------------------
INSERT INTO `relations` VALUES ('1', 'Father');
INSERT INTO `relations` VALUES ('2', 'Mother');

-- ----------------------------
-- Table structure for `responsibles`
-- ----------------------------
DROP TABLE IF EXISTS `responsibles`;
CREATE TABLE `responsibles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iduser` int(10) unsigned NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `middlename` varchar(256) NOT NULL,
  `schoolS_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_responsibleS_schoolS1_idx` (`schoolS_id`),
  CONSTRAINT `fk_responsibleS_schoolS1` FOREIGN KEY (`schoolS_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of responsibles
-- ----------------------------
INSERT INTO `responsibles` VALUES ('1', '2', '1', '2', '3', '1');

-- ----------------------------
-- Table structure for `schedulerings`
-- ----------------------------
DROP TABLE IF EXISTS `schedulerings`;
CREATE TABLE `schedulerings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schoolS_id` int(10) unsigned NOT NULL,
  `shift` tinyint(4) NOT NULL DEFAULT '1',
  `number` tinyint(4) NOT NULL,
  `timestart` time NOT NULL,
  `timefinish` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_scheduleringS_schoolS1_idx` (`schoolS_id`),
  CONSTRAINT `fk_scheduleringS_schoolS1` FOREIGN KEY (`schoolS_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedulerings
-- ----------------------------

-- ----------------------------
-- Table structure for `schoolmarks`
-- ----------------------------
DROP TABLE IF EXISTS `schoolmarks`;
CREATE TABLE `schoolmarks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` tinyint(3) unsigned DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `spisoklessontypeS_id1` int(10) unsigned DEFAULT NULL,
  `learnerS_id1` int(10) unsigned NOT NULL,
  `absentS_id` int(10) unsigned DEFAULT NULL,
  `lessonS_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_schoolmarkS_spisoklessontypeS1_idx1` (`spisoklessontypeS_id1`),
  KEY `fk_schoolmarkS_learnerS1_idx1` (`learnerS_id1`),
  KEY `fk_schoolmarkS_absentS1_idx` (`absentS_id`),
  KEY `fk_schoolmarkS_lessonS1_idx` (`lessonS_id`),
  CONSTRAINT `fk_schoolmarkS_absentS1` FOREIGN KEY (`absentS_id`) REFERENCES `absents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_learnerS1` FOREIGN KEY (`learnerS_id1`) REFERENCES `learners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_lessonS1` FOREIGN KEY (`lessonS_id`) REFERENCES `lessons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_schoolmarkS_spisoklessontypeS1` FOREIGN KEY (`spisoklessontypeS_id1`) REFERENCES `spisoklessontypes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schoolmarks
-- ----------------------------
INSERT INTO `schoolmarks` VALUES ('10', '5', '0', '1', '1', null, '1');
INSERT INTO `schoolmarks` VALUES ('11', '4', '0', '2', '1', null, '1');
INSERT INTO `schoolmarks` VALUES ('12', '2', '0', '1', '2', null, '1');

-- ----------------------------
-- Table structure for `schools`
-- ----------------------------
DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` int(10) unsigned DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `directoruser` int(10) unsigned NOT NULL COMMENT 'id пользователя выполняющий роль директора',
  `countclass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `countlearner` smallint(5) unsigned NOT NULL DEFAULT '0',
  `countteacher` smallint(5) unsigned NOT NULL DEFAULT '0',
  `countko` smallint(5) unsigned NOT NULL DEFAULT '0',
  `countclassroom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `description` text,
  `countresponsible` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schools
-- ----------------------------
INSERT INTO `schools` VALUES ('1', '117', 'ОСШ', '1', '2', '3', '1', '1', '1', '0', 'description', '0');
INSERT INTO `schools` VALUES ('2', '121', 'СШ', '1', '2', '3', '0', '0', '0', '0', 'description2', '0');

-- ----------------------------
-- Table structure for `sections`
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `number` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `subjectS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sectionS_subjectS1_idx1` (`subjectS_id1`),
  CONSTRAINT `fk_sectionS_subjectS1` FOREIGN KEY (`subjectS_id1`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sections
-- ----------------------------
INSERT INTO `sections` VALUES ('1', 'SOME 1', '1', '0', '1');
INSERT INTO `sections` VALUES ('2', 'SOMRE 2', '2', '0', '1');
INSERT INTO `sections` VALUES ('3', 'SOMRE 3', '3', '0', '1');
INSERT INTO `sections` VALUES ('4', 'SOMRE 4', '4', '0', '1');
INSERT INTO `sections` VALUES ('5', 'SOMRE 5', '5', '0', '1');
INSERT INTO `sections` VALUES ('6', 'SOME 6', '6', '0', '1');

-- ----------------------------
-- Table structure for `spisokclassslearners`
-- ----------------------------
DROP TABLE IF EXISTS `spisokclassslearners`;
CREATE TABLE `spisokclassslearners` (
  `classS_id` int(10) unsigned NOT NULL,
  `learnerS_id` int(10) unsigned NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`classS_id`,`learnerS_id`),
  KEY `fk_spisokclassSlearnerS_learnerS1_idx` (`learnerS_id`),
  KEY `fk_spisokclassSlearnerS_classS1_idx` (`classS_id`),
  CONSTRAINT `fk_spisokclassSlearnerS_classS1` FOREIGN KEY (`classS_id`) REFERENCES `classs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokclassSlearnerS_learnerS1` FOREIGN KEY (`learnerS_id`) REFERENCES `learners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spisokclassslearners
-- ----------------------------
INSERT INTO `spisokclassslearners` VALUES ('1', '1', '0');

-- ----------------------------
-- Table structure for `spisokclassyodas`
-- ----------------------------
DROP TABLE IF EXISTS `spisokclassyodas`;
CREATE TABLE `spisokclassyodas` (
  `classS_id` int(10) unsigned NOT NULL,
  `yodaS_id` int(10) unsigned NOT NULL,
  `datestart` datetime NOT NULL,
  `datefinish` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`yodaS_id`,`classS_id`),
  KEY `fk_classS_has_yodaS_yodaS1_idx` (`yodaS_id`),
  KEY `fk_classS_has_yodaS_classS1_idx` (`classS_id`),
  CONSTRAINT `fk_spisokclassyodaS_classS1` FOREIGN KEY (`classS_id`) REFERENCES `classs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokclassyodaS_yodaS1` FOREIGN KEY (`yodaS_id`) REFERENCES `yodas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spisokclassyodas
-- ----------------------------
INSERT INTO `spisokclassyodas` VALUES ('1', '1', '2012-06-06 00:00:00', null, '0');

-- ----------------------------
-- Table structure for `spisoklearnergroups`
-- ----------------------------
DROP TABLE IF EXISTS `spisoklearnergroups`;
CREATE TABLE `spisoklearnergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) DEFAULT '0',
  `subgroupS_id` int(10) unsigned NOT NULL,
  `learnerS_id1` int(10) unsigned NOT NULL,
  `countmark` smallint(5) unsigned NOT NULL DEFAULT '0',
  `countabsent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `averagemark` float unsigned NOT NULL DEFAULT '0',
  `summark` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_spisoklearnergroupS_subgroupS1_idx` (`subgroupS_id`),
  KEY `fk_spisoklearnergroupS_learnerS1_idx` (`learnerS_id1`),
  CONSTRAINT `fk_spisoklearnergroupS_learnerS1` FOREIGN KEY (`learnerS_id1`) REFERENCES `learners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisoklearnergroupS_subgroupS1` FOREIGN KEY (`subgroupS_id`) REFERENCES `subgroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spisoklearnergroups
-- ----------------------------
INSERT INTO `spisoklearnergroups` VALUES ('1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `spisoklearnergroups` VALUES ('2', '0', '2', '2', '0', '0', '0', '0');
INSERT INTO `spisoklearnergroups` VALUES ('3', '0', '3', '1', '0', '0', '0', '0');
INSERT INTO `spisoklearnergroups` VALUES ('4', '0', '3', '2', '0', '0', '0', '0');
INSERT INTO `spisoklearnergroups` VALUES ('7', '0', '13', '1', '0', '0', '0', '0');
INSERT INTO `spisoklearnergroups` VALUES ('8', '0', '13', '2', '0', '0', '0', '0');
INSERT INTO `spisoklearnergroups` VALUES ('9', '0', '4', '3', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `spisoklessontypes`
-- ----------------------------
DROP TABLE IF EXISTS `spisoklessontypes`;
CREATE TABLE `spisoklessontypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lessonS_id` int(10) unsigned NOT NULL,
  `lessontypeS_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lessonS_has_lessontypeS_lessontypeS1_idx` (`lessontypeS_id`),
  KEY `fk_lessonS_has_lessontypeS_lessonS1_idx` (`lessonS_id`),
  CONSTRAINT `fk_lessonS_has_lessontypeS_lessonS1` FOREIGN KEY (`lessonS_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lessonS_has_lessontypeS_lessontypeS1` FOREIGN KEY (`lessontypeS_id`) REFERENCES `lessontypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spisoklessontypes
-- ----------------------------
INSERT INTO `spisoklessontypes` VALUES ('1', '1', '1');
INSERT INTO `spisoklessontypes` VALUES ('2', '2', '2');
INSERT INTO `spisoklessontypes` VALUES ('3', '3', '1');
INSERT INTO `spisoklessontypes` VALUES ('4', '4', '2');
INSERT INTO `spisoklessontypes` VALUES ('5', '5', '1');
INSERT INTO `spisoklessontypes` VALUES ('6', '6', '2');
INSERT INTO `spisoklessontypes` VALUES ('7', '7', '1');
INSERT INTO `spisoklessontypes` VALUES ('8', '8', '3');
INSERT INTO `spisoklessontypes` VALUES ('9', '9', '4');

-- ----------------------------
-- Table structure for `spisokpartparagraphlessons`
-- ----------------------------
DROP TABLE IF EXISTS `spisokpartparagraphlessons`;
CREATE TABLE `spisokpartparagraphlessons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lessonS_id1` int(10) unsigned NOT NULL,
  `partparagraphS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_spisokpartparagraphlessonS_lessonS1_idx1` (`lessonS_id1`),
  KEY `fk_spisokpartparagraphlessonS_partparagraphS1_idx` (`partparagraphS_id1`),
  CONSTRAINT `fk_spisokpartparagraphlessonS_lessonS1` FOREIGN KEY (`lessonS_id1`) REFERENCES `lessons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokpartparagraphlessonS_partparagraphS1` FOREIGN KEY (`partparagraphS_id1`) REFERENCES `partparagraphs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spisokpartparagraphlessons
-- ----------------------------

-- ----------------------------
-- Table structure for `spisokresponsiblelearners`
-- ----------------------------
DROP TABLE IF EXISTS `spisokresponsiblelearners`;
CREATE TABLE `spisokresponsiblelearners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relationS_id` int(10) unsigned DEFAULT NULL,
  `learnerS_id1` int(10) unsigned NOT NULL,
  `responsibleS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_spisokresponsiblelearnerS_relationS1_idx` (`relationS_id`),
  KEY `fk_spisokresponsiblelearnerS_learnerS1_idx` (`learnerS_id1`),
  KEY `fk_spisokresponsiblelearnerS_responsibleS1_idx` (`responsibleS_id1`),
  CONSTRAINT `fk_spisokresponsiblelearnerS_learnerS1` FOREIGN KEY (`learnerS_id1`) REFERENCES `learners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokresponsiblelearnerS_relationS1` FOREIGN KEY (`relationS_id`) REFERENCES `relations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokresponsiblelearnerS_responsibleS1` FOREIGN KEY (`responsibleS_id1`) REFERENCES `responsibles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spisokresponsiblelearners
-- ----------------------------
INSERT INTO `spisokresponsiblelearners` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for `spisokteachersubjectsubgroups`
-- ----------------------------
DROP TABLE IF EXISTS `spisokteachersubjectsubgroups`;
CREATE TABLE `spisokteachersubjectsubgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datestart` date NOT NULL,
  `datefinish` date DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `subgroupS_id1` int(10) unsigned NOT NULL,
  `teachersubjectS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_spisokteachersubjectsubgroupS_subgroupS1_idx1` (`subgroupS_id1`),
  KEY `fk_spisokteachersubjectsubgroupS_teachersubjectS1_idx1` (`teachersubjectS_id1`),
  CONSTRAINT `fk_spisokteachersubjectsubgroupS_subgroupS1` FOREIGN KEY (`subgroupS_id1`) REFERENCES `subgroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_spisokteachersubjectsubgroupS_teachersubjectS1` FOREIGN KEY (`teachersubjectS_id1`) REFERENCES `teachersubjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Kakim  grupam prepodaet ';

-- ----------------------------
-- Records of spisokteachersubjectsubgroups
-- ----------------------------
INSERT INTO `spisokteachersubjectsubgroups` VALUES ('1', '2013-07-25', null, '0', '1', '1');

-- ----------------------------
-- Table structure for `subgroups`
-- ----------------------------
DROP TABLE IF EXISTS `subgroups`;
CREATE TABLE `subgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `classS_id1` int(10) unsigned NOT NULL,
  `subjectS_id` int(10) unsigned NOT NULL,
  `teacherS_id` int(10) unsigned DEFAULT NULL,
  `materialS_id` int(10) unsigned DEFAULT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_subgroupS_classS1_idx1` (`classS_id1`),
  KEY `fk_subgroupS_subjectS1_idx` (`subjectS_id`),
  KEY `fk_subgroupS_teacherS1_idx` (`teacherS_id`),
  KEY `fk_subgroupS_materialS1_idx` (`materialS_id`),
  CONSTRAINT `fk_subgroupS_classS1` FOREIGN KEY (`classS_id1`) REFERENCES `classs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_subgroupS_materialS1` FOREIGN KEY (`materialS_id`) REFERENCES `materials` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_subgroupS_subjectS1` FOREIGN KEY (`subjectS_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_subgroupS_teacherS1` FOREIGN KEY (`teacherS_id`) REFERENCES `teachers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subgroups
-- ----------------------------
INSERT INTO `subgroups` VALUES ('1', 'Группа 1', '0', '1', '1', null, null, '0');
INSERT INTO `subgroups` VALUES ('2', 'Группа 2', '0', '1', '1', null, null, '1');
INSERT INTO `subgroups` VALUES ('3', 'Группа', '0', '1', '2', null, null, '0');
INSERT INTO `subgroups` VALUES ('4', 'Группа 1', '0', '3', '1', null, null, '1');
INSERT INTO `subgroups` VALUES ('5', 'Группа 2', '0', '3', '1', null, null, '1');
INSERT INTO `subgroups` VALUES ('6', 'Группа', '0', '3', '3', null, null, '1');
INSERT INTO `subgroups` VALUES ('7', 'Группа 1', '0', '4', '1', null, null, '1');
INSERT INTO `subgroups` VALUES ('8', 'Группа 2', '0', '4', '1', null, null, '1');
INSERT INTO `subgroups` VALUES ('9', 'Группа ', '0', '4', '4', null, null, '1');
INSERT INTO `subgroups` VALUES ('10', 'Группа 1', '0', '5', '1', null, null, '1');
INSERT INTO `subgroups` VALUES ('11', 'Группа 2', '0', '5', '1', null, null, '1');
INSERT INTO `subgroups` VALUES ('12', 'Группа', '0', '5', '5', null, null, '1');
INSERT INTO `subgroups` VALUES ('13', 'Группа', '0', '1', '6', null, null, '1');

-- ----------------------------
-- Table structure for `subjects`
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `color` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subjects
-- ----------------------------
INSERT INTO `subjects` VALUES ('1', 'Математика', '5', '0', null);
INSERT INTO `subjects` VALUES ('2', 'Физика', '5', '0', null);
INSERT INTO `subjects` VALUES ('3', 'Химия', '5', '0', null);
INSERT INTO `subjects` VALUES ('4', 'Биология', '5', '0', null);
INSERT INTO `subjects` VALUES ('5', 'Литература', '5', '0', null);
INSERT INTO `subjects` VALUES ('6', 'Физкультура', '5', '0', null);

-- ----------------------------
-- Table structure for `teachers`
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iduser` int(10) unsigned NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `middlename` varchar(256) NOT NULL,
  `absentstart` date DEFAULT NULL,
  `absentfinish` date DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `schoolS_id` int(10) unsigned NOT NULL,
  `category` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_teacherS_schoolS1_idx` (`schoolS_id`),
  CONSTRAINT `fk_teacherS_schoolS1` FOREIGN KEY (`schoolS_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('1', '1', 'Татьяна', 'Викторовна', 'Онищенко', null, null, '0', '1', '1');

-- ----------------------------
-- Table structure for `teachersubjects`
-- ----------------------------
DROP TABLE IF EXISTS `teachersubjects`;
CREATE TABLE `teachersubjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) DEFAULT '0',
  `teacherS_id1` int(10) unsigned NOT NULL,
  `subjectS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teachersubjectS_teacherS1_idx` (`teacherS_id1`),
  KEY `fk_teachersubjectS_subjectS1_idx` (`subjectS_id1`),
  CONSTRAINT `fk_teachersubjectS_subjectS1` FOREIGN KEY (`subjectS_id1`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_teachersubjectS_teacherS1` FOREIGN KEY (`teacherS_id1`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Chto  on  prepodaet';

-- ----------------------------
-- Records of teachersubjects
-- ----------------------------
INSERT INTO `teachersubjects` VALUES ('1', '0', '1', '1');

-- ----------------------------
-- Table structure for `tests`
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mark` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  `countquestion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `correctanswer` smallint(5) unsigned NOT NULL DEFAULT '0',
  `paragraphS_id1` int(10) unsigned NOT NULL,
  `learnerS_id1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_testS_paragraphS1_idx1` (`paragraphS_id1`),
  KEY `fk_testS_learnerS1_idx1` (`learnerS_id1`),
  CONSTRAINT `fk_testS_learnerS1` FOREIGN KEY (`learnerS_id1`) REFERENCES `learners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_testS_paragraphS1` FOREIGN KEY (`paragraphS_id1`) REFERENCES `paragraphs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tests
-- ----------------------------

-- ----------------------------
-- Table structure for `timetables`
-- ----------------------------
DROP TABLE IF EXISTS `timetables`;
CREATE TABLE `timetables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dayweek` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timestart` time NOT NULL,
  `timefinish` time NOT NULL,
  `subgroupS_id1` int(10) unsigned NOT NULL,
  `classroomS_id1` int(10) unsigned DEFAULT NULL,
  `schoolS_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_timetableS_subgroupS1_idx1` (`subgroupS_id1`),
  KEY `fk_timetableS_classroomS1_idx1` (`classroomS_id1`),
  KEY `fk_timetableS_schoolS1_idx` (`schoolS_id`),
  CONSTRAINT `fk_timetableS_classroomS1` FOREIGN KEY (`classroomS_id1`) REFERENCES `classrooms` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_timetableS_schoolS1` FOREIGN KEY (`schoolS_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_timetableS_subgroupS1` FOREIGN KEY (`subgroupS_id1`) REFERENCES `subgroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetables
-- ----------------------------

-- ----------------------------
-- Table structure for `yodas`
-- ----------------------------
DROP TABLE IF EXISTS `yodas`;
CREATE TABLE `yodas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iduser` int(10) unsigned NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `middlename` varchar(256) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `schoolS_id` int(10) unsigned NOT NULL,
  `classS_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_yodaS_schoolS1_idx` (`schoolS_id`),
  KEY `fk_yodaS_classS1_idx` (`classS_id`),
  CONSTRAINT `fk_yodaS_classS1` FOREIGN KEY (`classS_id`) REFERENCES `classs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_yodaS_schoolS1` FOREIGN KEY (`schoolS_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yodas
-- ----------------------------
INSERT INTO `yodas` VALUES ('1', '1', 'Ручка', 'Лидия', 'Васильевна', '0', '1', '1');
INSERT INTO `yodas` VALUES ('2', '2', 'Карандаш', 'Иванна', 'Ивановна', '0', '1', '3');

-- ----------------------------
-- Procedure structure for `cAbsent`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cAbsent`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cAbsent`(
	IN name VARCHAR(256)
)
BEGIN
	INSERT INTO `do`.`absents`(`id`,`text`)
	VALUES(NULL,name);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cAbsentLesson`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cAbsentLesson`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cAbsentLesson`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cAnswerQuestion`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cAnswerQuestion`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cAnswerQuestion`(
	IN text TEXT, 
	IN rightA BOOL, 
	IN idQuestion INT UNSIGNED
)
BEGIN
	IF text IS NOT NULL AND idQuestion IS NOT NULL THEN
		IF rightA IS NULL THEN SET rightA = FALSE; END IF;
		INSERT INTO `do`.`answers`(`text`,`right`,`questionS_id1`)
		VALUES(text, rightA, idQuestion);
	END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cClass`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cClass`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cClass`(
	IN level TINYINT UNSIGNED,
	IN entryyear SMALLINT UNSIGNED,
	IN idschool INT UNSIGNED,
	IN letter VARCHAR(2)
)
BEGIN
	INSERT INTO `DO`.`classs`(`name`,`level`,`entryyear`,`schoolS_id`,`letter`)
	VALUES( CONCAT(level, " ", letter), level, entryyear, idschool, letter);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cClassroom`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cClassroom`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cClassroom`(
	idSchool INT UNSIGNED,
	number INT,
	abbreviation VARCHAR(5),
	description VARCHAR(256)
)
BEGIN
	DECLARE name VARCHAR(45);
	IF abbreviation IS NOT NULL THEN
		SET name = CONCAT(nuber, " ", abbreviation);
	END IF;
	INSERT INTO `do`.`classrooms`(`name`,`abbreviation`,`number`,`description`,`schoolS_id`)
	VALUES(name, abbreviation, number, description, idSchool);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cKo`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cKo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cKo`(
	iduser INT UNSIGNED,
	firstname VARCHAR(256),
	lastname VARCHAR(256),
	middlename VARCHAR(256),
	idSchool INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`kos`(`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`)
	VALUES(iduser, firstname, lastname, middlename, idSchool);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cLearner`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cLearner`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cLearner`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cLesson`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cLesson`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cLesson`(
	idSubgroup INT UNSIGNED,
	idSubject INT UNSIGNED,
	idTeacher INT UNSIGNED,
	idClassroom INT UNSIGNED,
	number INT UNSIGNED,
	date INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`lessons`
	(`number`,`date`,`subgroupS_id1`,`classroomS_id1`,`teacherS_id1`,`subjectS_id1`)
	VALUES(number, date, idSubgroup, idClassroom, idTeacher, idSubject);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cLessontype`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cLessontype`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cLessontype`(
	name VARCHAR(256)
)
BEGIN
	INSERT INTO `do`.`lessontypes`(`name`)
	VALUES(name);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cMaterialTeacher`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cMaterialTeacher`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cMaterialTeacher`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cParagraphInSection`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cParagraphInSection`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cParagraphInSection`(
	number TINYINT UNSIGNED,
	name VARCHAR(256),
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`paragraphs`(`name`,`number`,`datecreate`,`dateupdate`,`materialS_id1`,`sectionS_id1`)
	VALUES(name, number, now(), now(), idMaterial, idSection);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cPartparagraph`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cPartparagraph`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cPartparagraph`(
	number TINYINT UNSIGNED,
	text TEXT,
	idParagraph INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`partparagraphs`(`text`,`number`,`datecreate`,`dateupdate`,`paragraphS_id1`)
	VALUES(text, number, now(), now(),idParagraph);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cQuestionPartparagraph`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cQuestionPartparagraph`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cQuestionPartparagraph`(
	IN text TEXT, 
	IN complexity TINYINT UNSIGNED, 
	IN idPartparargraph INT UNSIGNED
)
BEGIN
	DECLARE idRoot INT UNSIGNED DEFAULT NULL;  
	DECLARE lenTEXT INT UNSIGNED;  
	DECLARE countPartFullTEXT INT UNSIGNED; 
	DECLARE constPart TINYINT UNSIGNED DEFAULT 10;  
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cRelation`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cRelation`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cRelation`(
	name VARCHAR(256)
)
BEGIN
	INSERT INTO `do`.`relations`(`name`)
	VALUES(name);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cResponsible`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cResponsible`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cResponsible`(
	iduser INT UNSIGNED,
	firstname VARCHAR(256),
	lastname VARCHAR(256),
	middlename VARCHAR(256),
	idSchool INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`responsibles`(`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`)
	VALUES(iduser, firstname, lastname, middlename, idSchool);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cSchedulering`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cSchedulering`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cSchedulering`(
	idSchool INT UNSIGNED,
	shift TINYINT UNSIGNED,
	number TINYINT UNSIGNED,
	timestart TIME,
	timefinsh TIME
)
BEGIN
	INSERT INTO `do`.`schedulerings`(`timestart`,`timefinsh`,`number`,`shift`,`schoolS_id`)
	VALUES(timestart, timefinsh, number, shift, idSchool);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cSchool`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cSchool`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cSchool`(
	IN number INT UNSIGNED,
	IN name VARCHAR(256),
	IN directoruser INT UNSIGNED,
	IN description TEXT
)
BEGIN
INSERT INTO `DO`.`schools`(
`number`,`name`,`directoruser`,`description`)VALUES(
 number, name, directoruser, description);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cSchoolmark`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cSchoolmark`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cSchoolmark`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cSection`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cSection`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cSection`(
	IN name VARCHAR(256),
	IN number TINYINT(1) UNSIGNED,
	IN idSubject INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`sections` (`name`,`number`,`subjectS_id1`)
	VALUES(name, number, idSubject);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cSubgroup`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cSubgroup`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cSubgroup`(
	IN name VARCHAR(256),
	IN idClass INT UNSIGNED,
	IN idSubject INT UNSIGNED,
	IN isdefault BOOL,
	INOUT idGroup INT UNSIGNED
)
BEGIN
	IF isdefault THEN
		UPDATE `do`.`subgroups` SET `isdefault` = false 
		WHERE `subjectS_id`=idSubject AND `classS_id1`=idClass AND `isdefault` = true;
	END IF;

	INSERT INTO `do`.`subgroups`(`name`,`classS_id1`,`subjectS_id`,`isdefault`)
	VALUES(name, idClass, idSubject, isdefault);

	SET idGroup = last_insert_id();
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cSubgroupDefault`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cSubgroupDefault`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cSubgroupDefault`(
	IN idClass INT UNSIGNED,
	IN idSubject INT UNSIGNED,
	IN isdefault BOOL,
	OUT idGroupDef INT UNSIGNED
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
	CALL cSubgroup( prefix, idClass, idSubject, isdefault, idGroupDef);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cSubject`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cSubject`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cSubject`(IN name VARCHAR(256), IN level TINYINT)
BEGIN
	INSERT INTO `DO`.`subjects`(`name`,`level`) VALUES(name, level);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cTeacher`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cTeacher`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cTeacher`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cTest`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cTest`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cTest`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cTimetable`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cTimetable`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cTimetable`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cYoda`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cYoda`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cYoda`(
	IN idSchool INT UNSIGNED,
	IN idUser INT UNSIGNED,
	IN firstname VARCHAR(256),
	IN lastname VARCHAR(256),	
	IN middlename VARCHAR(256)
	
)
BEGIN
	INSERT INTO `do`.`yodas`(`iduser`,`firstname`,`lastname`,`middlename`,`schoolS_id`)
	VALUES(idUser, firstname, lastname, middlename, idSchool);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dAnswerCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dAnswerCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dAnswerCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dAnswerOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dAnswerOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dAnswerOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dClassCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dClassCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dClassCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dClassLearnerCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dClassLearnerCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dClassLearnerCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dClassLearnerOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dClassLearnerOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dClassLearnerOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dClassOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dClassOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dClassOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dKoCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dKoCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dKoCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dKoOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dKoOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dKoOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dLearnerCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dLearnerCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dLearnerCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dLearnerOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dLearnerOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dLearnerOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dLearnerSubgroup`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dLearnerSubgroup`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dLearnerSubgroup`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dLearnerSubgroupAll`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dLearnerSubgroupAll`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dLearnerSubgroupAll`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dLessonOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dLessonOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dLessonOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dMaterialOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dMaterialOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dMaterialOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dParagraphCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dParagraphCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dParagraphCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dParagraphOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dParagraphOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dParagraphOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dPartparagraphCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dPartparagraphCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dPartparagraphCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dPartparagraphOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dPartparagraphOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dPartparagraphOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dQuestionCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dQuestionCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dQuestionCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dQuestionOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dQuestionOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dQuestionOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dSchoolmarkOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dSchoolmarkOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dSchoolmarkOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dSectionCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dSectionCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dSectionCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dSectionOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dSectionOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dSectionOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dSubgroupOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dSubgroupOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dSubgroupOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dSubjectOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dSubjectOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dSubjectOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dTeacherCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dTeacherCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dTeacherCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dTeacherOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dTeacherOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dTeacherOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dYodaCascade`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dYodaCascade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dYodaCascade`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `dYodaOne`
-- ----------------------------
DROP PROCEDURE IF EXISTS `dYodaOne`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dYodaOne`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `getNextPrevIdClass`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getNextPrevIdClass`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getNextPrevIdClass`(
	IN curclass INT UNSIGNED,
	IN idSchool INT UNSIGNED
)
BEGIN
	DECLARE letter VARCHAR(2);
	DECLARE level TINYINT UNSIGNED;	
	DECLARE cInLevel TINYINT UNSIGNED;
	DECLARE idNEXTClass INT UNSIGNED DEFAULT NULL;
	DECLARE idPREVClass INT UNSIGNED DEFAULT NULL;

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
		SELECT id INTO idNEXTClass FROM `do`.`classs` 
		WHERE `do`.`classs`.`letter` > letter
			AND `do`.`classs`.`level` = level 
			AND `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level`,`do`.`classs`.`letter` LIMIT 0,1;
	ELSE
		SELECT id INTO idNEXTClass FROM `do`.`classs` 
		WHERE `do`.`classs`.`level` > level 
			AND `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level`,`do`.`classs`.`letter` LIMIT 0,1;
	END IF;
	IF idNEXTClass IS NULL THEN # FIRST
		SELECT id INTO idNEXTClass FROM `do`.`classs`
		WHERE `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level`,`do`.`classs`.`letter` LIMIT 0,1;
	END IF;
	#PREV
	SELECT count(*) INTO cInLevel FROM `do`.`classs` 
	WHERE `do`.`classs`.`level`=level 
		AND `do`.`classs`.`letter` < letter
		AND `do`.`classs`.`schoolS_id`= idSchool;
	
	IF cInLevel > 0 THEN
		SELECT id INTO idPREVClass FROM `do`.`classs` 
		WHERE `do`.`classs`.`letter` < letter
			AND `do`.`classs`.`level` = level
			AND `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level` DESC,`do`.`classs`.`letter` DESC LIMIT 0,1;
	ELSE
		SELECT id INTO idPREVClass FROM `do`.`classs` 
		WHERE `do`.`classs`.`level` < level 
			AND `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level` DESC,`do`.`classs`.`letter` DESC LIMIT 0,1;
	END IF;
	IF idPREVClass IS NULL THEN # LAST
		SELECT id INTO idPREVClass FROM `do`.`classs`
		WHERE `do`.`classs`.`schoolS_id`= idSchool
		ORDER BY `do`.`classs`.`level` DESC,`do`.`classs`.`letter` DESC LIMIT 0,1;
	END IF;
	SELECT idPREVClass, idNEXTClass;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `insParagraphInSection`
-- ----------------------------
DROP PROCEDURE IF EXISTS `insParagraphInSection`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insParagraphInSection`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `insPartparagraphInParagraph`
-- ----------------------------
DROP PROCEDURE IF EXISTS `insPartparagraphInParagraph`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insPartparagraphInParagraph`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `moveParagraphInMaterial`
-- ----------------------------
DROP PROCEDURE IF EXISTS `moveParagraphInMaterial`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `moveParagraphInMaterial`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `moveParagraphInSection`
-- ----------------------------
DROP PROCEDURE IF EXISTS `moveParagraphInSection`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `moveParagraphInSection`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `movePartparagraphInParagraph`
-- ----------------------------
DROP PROCEDURE IF EXISTS `movePartparagraphInParagraph`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movePartparagraphInParagraph`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `moveQuestionInPartparagraph`
-- ----------------------------
DROP PROCEDURE IF EXISTS `moveQuestionInPartparagraph`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `moveQuestionInPartparagraph`(
	idPartparagraph INT UNSIGNED,
	idMove INT UNSIGNED
)
BEGIN
	UPDATE `do`.`questions`	SET	`partparagraphS_id1` = idPartparagraph WHERE `do`.`questions`.`id`=idMove;	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rAbsent`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rAbsent`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rAbsent`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rAnswerQuestion`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rAnswerQuestion`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rAnswerQuestion`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rClassLearner`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rClassLearner`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rClassLearner`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rClassroom`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rClassroom`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rClassroom`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rClassSchool`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rClassSchool`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rClassSchool`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `resetNumberParagraphInMaterial`
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetNumberParagraphInMaterial`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetNumberParagraphInMaterial`(
	idMaterial INT UNSIGNED,
	idSection INT UNSIGNED,
	idMove INT UNSIGNED,
	NNP TINYINT UNSIGNED,
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
			SELECT `do`.`paragraphs`.`number` INTO CNP FROM `do`.`paragraphs` WHERE `do`.`paragraphs`.`id` = idMove;
			IF global THEN
				# reset in this section of material with mark moved paragraph
				IF NNP > CNP THEN # move down
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `resetNumberPartparagraphInParagraph`
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetNumberPartparagraphInParagraph`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetNumberPartparagraphInParagraph`(
	idParagraph INT UNSIGNED,
	idMove INT UNSIGNED,
	NNP TINYINT UNSIGNED
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
			IF NNP > CNP THEN # move down
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `resetVisitaverage`
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetVisitaverage`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetVisitaverage`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rKo`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rKo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rKo`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rLearner`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rLearner`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rLearner`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rLearnerSubgroup`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rLearnerSubgroup`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rLearnerSubgroup`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rLesson`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rLesson`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rLesson`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rLessontype`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rLessontype`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rLessontype`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rLessontypeLessson`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rLessontypeLessson`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rLessontypeLessson`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rMaterialteacher`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rMaterialteacher`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rMaterialteacher`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rParagraphMaterial`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rParagraphMaterial`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rParagraphMaterial`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rPartparagraph`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rPartparagraph`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rPartparagraph`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rPartparagraphLesson`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rPartparagraphLesson`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rPartparagraphLesson`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rQuestion`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rQuestion`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rQuestion`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rRealation`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rRealation`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rRealation`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rResponsible`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rResponsible`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rResponsible`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rSchedulering`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rSchedulering`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rSchedulering`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rSchool`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rSchool`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rSchool`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rSchoolmark`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rSchoolmark`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rSchoolmark`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rSection`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rSection`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rSection`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rSubgroup`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rSubgroup`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rSubgroup`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rSubject`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rSubject`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rSubject`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rSubjectClass`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rSubjectClass`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rSubjectClass`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rTeacher`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rTeacher`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rTeacher`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rTeachersubject`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rTeachersubject`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rTeachersubject`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rTest`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rTest`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rTest`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rTimetable`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rTimetable`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rTimetable`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rYoda`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rYoda`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rYoda`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `rYodaClass`
-- ----------------------------
DROP PROCEDURE IF EXISTS `rYodaClass`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rYodaClass`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setLearnerAllToSubgroupDefault`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setLearnerAllToSubgroupDefault`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setLearnerAllToSubgroupDefault`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setLearnerToDefaultSubgroupAll`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setLearnerToDefaultSubgroupAll`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setLearnerToDefaultSubgroupAll`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setLearnerToSubgroup`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setLearnerToSubgroup`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setLearnerToSubgroup`(
	idLearner INT UNSIGNED,
	idSubgroup INT UNSIGNED
)
BEGIN
	IF idLearner IS NOT NULL AND idSubgroup IS NOT NULL THEN
		INSERT INTO `do`.`spisoklearnergroups`(`subgroupS_id`,`learnerS_id1`)
		VALUES(idSubgroup, idLearner);
	END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setLessontype`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setLessontype`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setLessontype`(
	idLesson INT UNSIGNED,
	idLessontype INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`spisoklessontypes`(`lessonS_id`,`lessontypeS_id`)
	VALUES(idLesson, idLessontype);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setMaterialSubgroup`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setMaterialSubgroup`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setMaterialSubgroup`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setPartparagraphLesson`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setPartparagraphLesson`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setPartparagraphLesson`(
	idLesson INT UNSIGNED,
	idPartparagraph INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`spisokpartparagraphlessons`(`lessonS_id1`,`partparagraphS_id1`)
	VALUES(idLesson, idPartparagraph);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setResponsible`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setResponsible`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setResponsible`(
	idRelation INT UNSIGNED,
	idLearner INT UNSIGNED,
	idResponsible INT UNSIGNED
)
BEGIN
	INSERT INTO `do`.`spisokresponsiblelearners`(`relationS_id`,`learnerS_id1`,`responsibleS_id1`)
	VALUES(idRelation, idLearner, idResponsible);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setSpisokClassLearner`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setSpisokClassLearner`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setSpisokClassLearner`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setSubjectClass`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setSubjectClass`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setSubjectClass`(
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
		CALL cSubgroupDefault(idClass, idSubject, true, idGroup);
		# insert start teach teacher
		INSERT INTO `do`.`spisokteachersubjectsubgroups`(`datestart`,`subgroupS_id1`,`teachersubjectS_id1`)
		VALUES(NOW(), idGroup, idTeacherSubject);
	END IF;
	# add all learner in new default group for subject
	CALL setLearnerAllToSubgroupDefault(idGroup,idClass);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setTeachersubject`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setTeachersubject`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setTeachersubject`(
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
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setYodaClass`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setYodaClass`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setYodaClass`(
	IN idClass INT UNSIGNED,
	IN idYoda INT UNSIGNED,
	IN datestart DATETIME
)
BEGIN
	INSERT INTO `do`.`spisokclassyodas`(`classS_id`,`yodaS_id`,`datestart`)
	VALUES(idClass, idYoda, datestart);
	
	UPDATE `do`.`yodas` SET `classS_id` = idClass WHERE `id` =  idYoda;
	UPDATE `do`.`classs` SET`yodaS_id` =  idYoda WHERE `id` = idClass;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `switchNotstudyMaterial`
-- ----------------------------
DROP PROCEDURE IF EXISTS `switchNotstudyMaterial`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `switchNotstudyMaterial`(
	idMaterial INT UNSIGNED,
	notstudy BOOL
)
BEGIN
	UPDATE `do`.`materials` SET `notstudy` = notstudy WHERE `do`.`materials`.`id` = idMaterial;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `switchNotstudyParagraph`
-- ----------------------------
DROP PROCEDURE IF EXISTS `switchNotstudyParagraph`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `switchNotstudyParagraph`(
	idParagraph INT UNSIGNED,
	notstudy BOOL
)
BEGIN
	UPDATE `do`.`paragraphs` SET `notstudy` = notstudy WHERE `do`.`paragraphs`.`id` = idParagraph;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `transferToAnotherClass`
-- ----------------------------
DROP PROCEDURE IF EXISTS `transferToAnotherClass`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `transferToAnotherClass`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `unsetResponsible`
-- ----------------------------
DROP PROCEDURE IF EXISTS `unsetResponsible`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `unsetResponsible`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `unsetSubjectClass`
-- ----------------------------
DROP PROCEDURE IF EXISTS `unsetSubjectClass`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `unsetSubjectClass`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `unsetTeachersubject`
-- ----------------------------
DROP PROCEDURE IF EXISTS `unsetTeachersubject`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `unsetTeachersubject`()
BEGIN

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `unsetYodaClass`
-- ----------------------------
DROP PROCEDURE IF EXISTS `unsetYodaClass`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `unsetYodaClass`()
BEGIN

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `answerS_AINS`;
DELIMITER ;;
CREATE TRIGGER `answerS_AINS` AFTER INSERT ON `answers` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	UPDATE questionS SET countanswer = countanswer + 1 WHERE id = NEW.questionS_id1;
	IF (NEW.`right`) THEN
		UPDATE questionS SET countrightanswer = countrightanswer + 1 WHERE id = NEW.questionS_id1;
	END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `classroomS_AINS`;
DELIMITER ;;
CREATE TRIGGER `classroomS_AINS` AFTER INSERT ON `classrooms` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one

BEGIN
UPDATE schoolS SET countclassroom = countclassroom + 1 WHERE id = NEW.schoolS_id;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `classS_AINS`;
DELIMITER ;;
CREATE TRIGGER `classS_AINS` AFTER INSERT ON `classs` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE schoolS SET countclass = countclass + 1 WHERE id = NEW.schoolS_id;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `koS_AINS`;
DELIMITER ;;
CREATE TRIGGER `koS_AINS` AFTER INSERT ON `kos` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE schoolS SET countko = countko + 1 WHERE id = NEW.schoolS_id;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `learnerS_AINS`;
DELIMITER ;;
CREATE TRIGGER `learnerS_AINS` AFTER INSERT ON `learners` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE schoolS SET countlearner = countlearner + 1 WHERE id = NEW.schoolS_id;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `paragraphS_BINS`;
DELIMITER ;;
CREATE TRIGGER `paragraphS_BINS` BEFORE INSERT ON `paragraphs` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	IF (NEW.sectionS_id1 NOT IN (
						SELECT sectionS_id1 
						FROM paragraphS 
						WHERE materialS_id1 = NEW.materialS_id1)) THEN
		UPDATE materialS SET countsection = countsection + 1 WHERE id = NEW.materialS_id1;
	END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `paragraphS_AINS`;
DELIMITER ;;
CREATE TRIGGER `paragraphS_AINS` AFTER INSERT ON `paragraphs` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE materialS SET countparagraph = countparagraph + 1 WHERE id = NEW.materialS_id1;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `paragraphS_BUPD`;
DELIMITER ;;
CREATE TRIGGER `paragraphS_BUPD` BEFORE UPDATE ON `paragraphs` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	IF (OLD.notstudy=true AND NEW.notstudy=false) THEN
		UPDATE materialS SET countparagraphactive = countparagraphactive + 1 WHERE id = NEW.materialS_id1;
	END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `partparagraphS_AINS`;
DELIMITER ;;
CREATE TRIGGER `partparagraphS_AINS` AFTER INSERT ON `partparagraphs` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE paragraphS SET countpart = countpart + 1 WHERE id = NEW.paragraphS_id1;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `questionS_AINS`;
DELIMITER ;;
CREATE TRIGGER `questionS_AINS` AFTER INSERT ON `questions` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	DECLARE tempparagraphS_id INTEGER;

	UPDATE partparagraphS SET countquestion = countquestion + 1 WHERE id = NEW.partparagraphS_id1;
	
	SET @tempparagraphS_id := (SELECT paragraphS_id1 FROM partparagraphS WHERE id = NEW.partparagraphS_id1);
	
	UPDATE paragraphS SET countquestion = countquestion + 1 WHERE id = @tempparagraphS_id;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `schoolmarkS_AINS`;
DELIMITER ;;
CREATE TRIGGER `schoolmarkS_AINS` AFTER INSERT ON `schoolmarks` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	
	CALL resetVisitaverage(
		(SELECT `subgroupS_id1` FROM `do`.`lessonS` WHERE `id` = NEW.`lessonS_id`), 
		NEW.learnerS_id1, NEW.value, NEW.absentS_id
	);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `teacherS_AINS`;
DELIMITER ;;
CREATE TRIGGER `teacherS_AINS` AFTER INSERT ON `teachers` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
UPDATE schoolS SET countteacher = countteacher + 1 WHERE id = NEW.schoolS_id;
END
;;
DELIMITER ;
