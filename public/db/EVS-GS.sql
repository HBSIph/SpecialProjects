/*
Navicat MySQL Data Transfer

Source Server         : scotchbox
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : evs-gs

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2017-08-06 12:38:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_group`;
CREATE TABLE `tbl_group` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `desc` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_group
-- ----------------------------
INSERT INTO `tbl_group` VALUES ('1', 'C.O.U.R.A.G.E', '');
INSERT INTO `tbl_group` VALUES ('2', 'ONE VOICE', '');
INSERT INTO `tbl_group` VALUES ('3', 'A.R.T.S', '');

-- ----------------------------
-- Table structure for `tbl_person`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_person`;
CREATE TABLE `tbl_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(25) CHARACTER SET latin1 NOT NULL,
  `first_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `middle_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `suffix` varchar(25) CHARACTER SET latin1 NOT NULL,
  `avatar` varchar(100) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(10) CHARACTER SET latin1 NOT NULL,
  `role_id` tinyint(1) NOT NULL DEFAULT '2',
  `is_validated` tinyint(1) NOT NULL DEFAULT '0',
  `is_voted` tinyint(1) NOT NULL DEFAULT '0',
  `is_candidate` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(1) NOT NULL DEFAULT '0',
  `position_id` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `access_code` varchar(64) CHARACTER SET latin1 NOT NULL,
  `dt_updated` datetime NOT NULL,
  `dt_registered` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_person
-- ----------------------------
INSERT INTO `tbl_person` VALUES ('1', '', 'John', '', 'Doe', '', '', '', '1', '0', '0', '0', '0', '0', '0', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '0000-00-00 00:00:00', '2016-08-09 18:02:35');
INSERT INTO `tbl_person` VALUES ('2', '', 'Aaliyah Dominique', 'Ibasan', 'Pamintuan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('3', '', 'Aaron James', '', 'Calimoso', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('4', '', 'Aaron Piolo', 'A.', 'Rosagaso', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('5', '', 'Abbey Sophia', 'V.', 'Sapla', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('6', '', 'Ace Martin', 'Santiago', 'Bacani', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('7', '', 'Adonis Alleseir', 'E.', 'Fuentes', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('8', '', 'Adriel Maximus', 'F.', 'Pi?on', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('9', '', 'Ahmad', 'C.', 'Shekanie', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('10', '', 'Aiane Daniel', 'Espejo', 'Delos Angeles', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('11', '', 'Aira Jane', 'T.', 'Plantilla', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('12', '', 'Airish', 'V.', 'Macalindong', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('13', '', 'Aisha Mikylla', 'M.', 'Alzona', '', '', '', '2', '0', '0', '1', '1', '6', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('14', '', 'Aj', 'Martinez', 'Ibangga', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('15', '', 'Akia Charlize', 'J.', 'Martinez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('16', '', 'Akilah Vielle', 'C.', 'Brul', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('17', '', 'Akisha Jerrynne', 'Dela Cruz', 'Santos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('18', '', 'Alaizah Marie', '', 'Gacilo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('19', '', 'Alexandra Nicole', 'Roman', 'Reyes', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('20', '', 'Alexandra Ysabelle', 'Seming', 'Andaya', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('21', '', 'Alisa Gabriel', 'E.', 'Francisco', '', '', '', '2', '0', '0', '1', '2', '3', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('22', '', 'Alisha', 'B.', 'Velasquez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('23', '', 'Aliyah', 'B.', 'Cabrera', '', '', '', '2', '0', '0', '1', '2', '1', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('24', '', 'Aliza Chelsea', 'O.', 'Ong', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('25', '', 'Allen Dwayne', 'A.', 'Maranan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('26', '', 'Alliyah Mae', 'M.', 'Casala', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('27', '', 'Alliza', 'De Leon', 'Jose', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('28', '', 'Amanda Jane', 'C.', 'Malaluan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('29', '', 'Amiel Jacob', 'S.', 'Conchada', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('30', '', 'Amrie Shantei', 'A.', 'Almosa', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('31', '', 'Andrea', 'Rodriguez', 'Santos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('32', '', 'Andrea', 'R.', 'Beri?a', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('33', '', 'Andrea', 'H.', 'Matutis', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('34', '', 'Andrew Erickson', 'C.', 'Cabarlo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('35', '', 'Angel May', 'R.', 'Madria', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('36', '', 'Angela Nicole', 'Ocay', 'Dimaandal', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('37', '', 'Angielo', 'Javier', 'Busmente', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('38', '', 'Anne Laley', '', 'Obenita', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('39', '', 'Antonio Khyle', 'Llorente', 'Alonso', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('40', '', 'Arc Mikell', 'Lipata', 'Atienza', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('41', '', 'Ariel Sebastienne', 'D.', 'San Luis', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('42', '', 'Aron Syd', 'R.', 'Casa', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('43', '', 'Arthur Lucas', '', 'Tan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('44', '', 'Arvy Karlson', 'C.', 'Dabasol', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('45', '', 'Ashley Gail', 'C.', 'Malaluan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('46', '', 'Ashton Clyde', 'T.', 'De Guzman', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('47', '', 'Athena Xielly Angela', 'L.', 'Gayo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('48', '', 'Ayesa Coline', 'M.', 'Rivera', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('49', '', 'Aylwin', 'F.', 'Danao', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('50', '', 'Benedict', 'Villamero', 'Bustillo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('51', '', 'Bherl Maene', 'Sison', 'Mallari', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('52', '', 'Carian Jamir', 'A.', 'Guevarra', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('53', '', 'Carl Kenneth', 'S.', 'Salimbagat', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('54', '', 'Carl Ysaac', 'C.', 'Perez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('55', '', 'Carlos Christopher', 'C.', 'Dela Cueva', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('56', '', 'Carlos Jose', 'R.', 'Esperanza', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('57', '', 'Carlos Mhiguelle', 'Bulanadi', 'Herrero', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('58', '', 'Cassandra Jaslene', 'B.', 'Salgado', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('59', '', 'Catherine Mae', 'G.', 'Avila', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('60', '', 'Celine Amber', 'R.', 'Ramirez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('61', '', 'Chanelle Lian', 'L.', 'Arizala', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('62', '', 'Charles Gerard', 'P.', 'Rabuya', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('63', '', 'Charles Klyde', 'R.', 'Oril', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('64', '', 'Charlize Jasmine', '', 'Panlaque', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('65', '', 'Charlize Julienne', 'S.', 'Ancan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('66', '', 'Charmaine Allyson', 'V.', 'Ferreria', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('67', '', 'Chasing Blaze', 'Abayao', 'Baguilat', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('68', '', 'Chelouis', 'G.', 'Felipe', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('69', '', 'Chelsey Coleen', 'D.', 'Lingad', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('70', '', 'Chesca Elysse', 'S.', 'Remulta', '', '', '', '2', '0', '0', '1', '1', '5', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('71', '', 'Chloe Bernadette', 'C.', 'Alicante', '', '', '', '2', '0', '0', '1', '1', '1', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('72', '', 'Chloelly Zandra', 'Viray', 'Bustillos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('73', '', 'Chrystianne Claire', 'V.', 'Paguia', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('74', '', 'Clarence Bernard', 'Faigao', 'Fernandez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('75', '', 'Clark Darwin', 'Y.', 'Cruz', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('76', '', 'Czerin Yzekiel', 'M.', 'Relleve', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('77', '', 'Daniel Angelo', 'S.', 'Santos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('78', '', 'Daniel Marty', 'D.', 'Gaston', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('79', '', 'Darla Sophia', 'H.', 'Del Pilar', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('80', '', 'Deanne Valeri', 'A.', 'Aldaya', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('81', '', 'Den Mark', 'C.', 'Masangya', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('82', '', 'Dennis', 'A.', 'Evangelista', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('83', '', 'Derick Andree', 'R.', 'Chan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('84', '', 'Dwayne Lestat', 'Martin', 'Malabanan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('85', '', 'Ealdred Jaiden', 'A.', 'Aguilar', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('86', '', 'Efren', 'Q.', 'Gorospe', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('87', '', 'Eleina Amor', 'M.', 'San Pedro', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('88', '', 'Elijah', 'M.', 'Nery', '', '', '', '2', '0', '0', '1', '2', '7', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('89', '', 'Ellaine', 'B.', 'Velasquez', '', '', '', '2', '0', '0', '1', '1', '11', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('90', '', 'Elton Renz', 'C.', 'Manongsong', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('91', '', 'Emerald Constance Sophie', 'G.', 'Martinez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('92', '', 'Emmanuelle John', 'A.', 'Veñales', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('93', '', 'Erah', 'Marcelino', 'Salimbagat', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('94', '', 'Erian Blake', 'Cuyugan', 'Samia', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('95', '', 'Ericka Gabrielle', 'B.', 'Zamora', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('96', '', 'Estiven', 'M.', 'Caducio', 'II', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('97', '', 'Ethan Matthew', 'A.', 'Loyola', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('98', '', 'Eunice Althea', 'Crisostomo', 'Santiago', '', '', '', '2', '0', '0', '1', '3', '5', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('99', '', 'Ezekiel', 'Mercado', 'Nery', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('100', '', 'Ezekiel', 'Alayon', 'Ba?ez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('101', '', 'Faith', 'Pagador', 'Lajato', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('102', '', 'Fiona Janel', 'Bisled', 'Peralta', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('103', '', 'Francesca Danielle', 'G.', 'Valle', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('104', '', 'Francesca Gabrielle', 'I.', 'Pamintuan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('105', '', 'Franchesca Vianney', 'Cosculla', 'Esguerra', '', '', '', '2', '0', '0', '1', '3', '3', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('106', '', 'Francine Nicole', 'Z.', 'Amistad', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('107', '', 'Gabriel Sherwin', 'V.', 'Barrio', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('108', '', 'Gabrielle Pauleen', 'G.', 'Alzona', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('109', '', 'Genevieve Renei', 'P.', 'Evaristo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('110', '', 'George', 'B.', 'Santiago', '', '', '', '2', '0', '0', '1', '1', '8', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('111', '', 'Gian Carlo', 'R.', 'Mali?ana', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('112', '', 'Giann Jewel', 'T.', 'Braza', '', '', '', '2', '0', '0', '1', '2', '4', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('113', '', 'Gianna Izhey', 'Adarlo', 'Cari?o', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('114', '', 'Giro', 'Y.', 'Valmeo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('115', '', 'Giuliane Dawn Amanda', 'M.', 'Cumagun', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('116', '', 'Greggory', 'Yu', 'Valmeo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('117', '', 'Gregorio', 'P.', 'Delos Reyes', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('118', '', 'Hanna Valerie', 'G.', 'Amongkaya', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('119', '', 'Hannah Ruth', 'V.', 'Babaran', '', '', '', '2', '0', '0', '1', '2', '9', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('120', '', 'Hanrick John', 'F.', 'Alcantara', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('121', '', 'Harley', 'G.', 'Balotro', '', '', '', '2', '0', '0', '1', '3', '7', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('122', '', 'Harvey', 'G.', 'Balotro', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('123', '', 'Heinrich', 'C.', 'Milan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('124', '', 'Herb Vincent', 'G.', 'Hernandez', '', '', '', '2', '0', '0', '1', '2', '5', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('125', '', 'Humprey Godwin', 'Bugarin', 'Altuna', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('126', '', 'Hyans George', 'Bautista', 'Decena', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('127', '', 'Ikea Dorothy', 'Martinez', 'Perez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('128', '', 'Jace Eira', 'A.', 'Echegoren', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('129', '', 'Jace Kieon', 'S.', 'Cadang', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('130', '', 'Jacob Dylan', 'G.', 'Amongkaya', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('131', '', 'Jacob Ryan', 'Concha', 'Musnit', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('132', '', 'Jad Vincent', 'De Leon', 'Emnace', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('133', '', 'James Ethan Alister', 'A.', 'Penada', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('134', '', 'Jamila Lei', 'F.', 'Dela Pe?a', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('135', '', 'Jan Allysandra', 'D.', 'Galang', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('136', '', 'Jan Benedict', 'Acuesta', 'Pingol', '', '', '', '2', '0', '0', '1', '2', '10', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('137', '', 'Jan Carlo', 'M.', 'Vicencio', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('138', '', 'Jan Cedric', 'C.', 'Faller', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('139', '', 'Jan Stephen Christian', 'Galanza', 'Santiago', '', '', '', '2', '0', '0', '1', '3', '4', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('140', '', 'Janna Victoria', 'R.', 'Icaonapo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('141', '', 'Jascha Helena', 'Bustamante', 'Corpuz', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('142', '', 'Jasz Melvin', 'B.', 'Endaya', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('143', '', 'Jazmine', 'Galsim', 'Diaz', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('144', '', 'Jazminne Anne Mariel', 'Ramilo', 'Molinar', '', '', '', '2', '0', '0', '1', '3', '10', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('145', '', 'Jean Pauleen', 'G.', 'Almendras', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('146', '', 'Jedric Athan Rasheid', 'Mallonga', 'Nisperos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('147', '', 'Jeffrey', 'E.', 'Rillera', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('148', '', 'Jen Raina', 'R.', 'Teodoro', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('149', '', 'Jennifer Louise', 'S.', 'Abis', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('150', '', 'Jerome Allene', 'Quezon', 'Salom', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('151', '', 'Jessie James', 'M.', 'Mapanao', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('152', '', 'Jeyle Mirrphi', 'V.', 'Martino', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('153', '', 'Jezreel Isaiah', 'V.', 'Buga-Ay', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('154', '', 'Jezrene Christian', 'G.', 'Santiago', '', '', '', '2', '0', '0', '1', '3', '12', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('155', '', 'Jobert Jouquin', 'N.', 'Acevedo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('156', '', 'Johann Sebastian', 'U.', 'Ballesteros', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('157', '', 'John Albert', 'Baltazar', 'Abdon', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('158', '', 'John Aries', 'B.', 'Talana', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('159', '', 'John Gabriel', 'T.', 'Muñoz', '', '', '', '2', '0', '0', '1', '2', '2', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('160', '', 'John Maxime', 'Abendan', 'Rabang', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('161', '', 'John Paul', 'B.', 'Delos Reyes', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('162', '', 'John Paul', 'Ronquillo', 'Beri?a', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('163', '', 'John Robert', 'L.', 'Tizon', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('164', '', 'John Theo', 'Z.', 'Patanao', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('165', '', 'Jonas', 'B.', 'Cachero', '', '', '', '2', '0', '0', '1', '1', '7', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('166', '', 'Jonas Adriane', 'M.', 'Escopete', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('167', '', 'Jonikka', 'Maravilla', 'Duyan', '', '', '', '2', '0', '0', '1', '1', '10', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('168', '', 'Jorelle Duane', 'D.', 'Martinez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('169', '', 'Jose Rommell', 'Flores', 'Liwanag', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('170', '', 'Joseph', 'A.', 'Legaspi', 'Jr.', '', '', '2', '0', '0', '1', '1', '3', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('171', '', 'Joseph Antonio', 'V.', 'Garcia', '', '', '', '2', '0', '0', '1', '1', '12', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('172', '', 'Josephine Grace', 'T.', 'Indefenso', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('173', '', 'Joshua', 'L.', 'Llovit', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('174', '', 'Joyce Allyson', 'A.', 'Balcera', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('175', '', 'Jude Aidan', 'Villanueva', 'Daet', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('176', '', 'Judhea Rhael', 'A.', 'Catapang', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('177', '', 'Julianna Marie', 'Pones', 'Ponferrada', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('178', '', 'Julianne Desirei', 'Y.', 'España', '', '', '', '2', '0', '0', '1', '3', '6', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('179', '', 'Julianne Gabrielle', 'M.', 'Ritamar', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('180', '', 'Juris Li', 'T.', 'Bautista', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('181', '', 'Justin Daniel', 'Balite', 'Laynesa', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('182', '', 'Justin Florenz', 'S.', 'Bagallon', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('183', '', 'Justin Kharl', 'M.', 'Fernandez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('184', '', 'Kaiser', 'M.', 'Castillo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('185', '', 'Kaisha Eunice', 'M.', 'Flores', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('186', '', 'Karl Justin', 'M.', 'Cordero', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('187', '', 'Karl Shyrainne', 'B.', 'Paz', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('188', '', 'Karylle Leigh', 'Edejer', 'Gonzales', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('189', '', 'Kate Ashley', 'Caritativo', 'Santos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('190', '', 'Katherine Aubrey', 'Cajan', 'Ricaborda', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('191', '', 'Katherine Imarie', 'Berango', 'Alandy-Dy', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('192', '', 'Katlene', 'C.', 'Jaen', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('193', '', 'Keannedra', 'G.', 'Elequin', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('194', '', 'Keavelle', 'A.', 'Matutina', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('195', '', 'Keem Kaiser', 'Y.', 'Brual', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('196', '', 'Keizer Trian John', 'M.', 'Navarro', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('197', '', 'Kenjii Luke', 'I.', 'Chua', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('198', '', 'Kersten', 'N.', 'Garcia', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('199', '', 'Khian Jorge', 'Tuazon', 'Villanueva', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('200', '', 'Khrystalle Angela', '', 'Taberna', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('201', '', 'Khurt Lorence', 'P.', 'Roman', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('202', '', 'Khurt Szymon', 'C.', 'Cabael', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('203', '', 'Kiara Dior', 'G.', 'Dizol', 'III', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('204', '', 'Kim Justine', 'E.', 'Mercado', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('205', '', 'Kirsten', 'A.', 'Santos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('206', '', 'Kirsten Jerrica', 'Q.', 'Bautista', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('207', '', 'Kobe', 'G.', 'Endaya', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('208', '', 'Kristoff Aidan', 'E.', 'Canoza', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('209', '', 'Krizark Derek', 'G.', 'Fernando', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('210', '', 'Kylie Shannel', 'Cortez', 'Ocampo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('211', '', 'Lady Anne Dore', 'A.', 'Daoa', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('212', '', 'Lance Anselm', 'A.', 'Pe?aflorida', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('213', '', 'Lars Dwayne', 'P.', 'Mananghaya', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('214', '', 'Lawrence Christian', 'A.', 'Panlaque', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('215', '', 'Leanne Isabel', 'H.', 'Geronimo', '', '', '', '2', '0', '0', '1', '2', '11', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('216', '', 'Lemuel Rommel', 'T.', 'Javier', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('217', '', 'Lerinne', 'M.', 'Dilinila', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('218', '', 'Lesley', 'Dasig', 'Guerrero', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('219', '', 'Lian Andrei', 'G.', 'Tolentino', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('220', '', 'Lindsay Marie', 'Villafuerte', 'Salma', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('221', '', 'Lloyd Anderson', 'D.', 'Legaspi', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('222', '', 'Lois Alexia', 'A.', 'Pe?aflorida', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('223', '', 'Loraine Jessica', 'Vicente', 'Gabriel', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('224', '', 'Lord Xandrei', 'Mata', 'Bermudez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('225', '', 'Loreign', 'M.', 'Ferrer', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('226', '', 'Lourd Wesley', 'O.', 'Morilla', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('227', '', 'Lucy Miyabi', 'Vergabera', 'Lu', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('228', '', 'Luis Gabriel', '', 'Marcelo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('229', '', 'Ma. Ayra', 'Dones', 'Estoquia', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('230', '', 'Ma. Jemima Ashley', 'B.', 'Punzalan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('231', '', 'Mae Yesha Denyze', 'C.', 'Pablo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('232', '', 'Maia Sophia', 'L.', 'Garcia', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('233', '', 'Manuel Viel', 'M.', 'Aggari', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('234', '', 'Marc Andres', 'Camacho', 'Asuncion', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('235', '', 'Marc Daryll', 'C.', 'Pablo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('236', '', 'Marcia Quintin', 'M.', 'Santiago', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('237', '', 'Marco Antonio', 'D.', 'Herrera', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('238', '', 'Marco Rafael', 'V.', 'Tiongco', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('239', '', 'Maria Arth Paulyn', 'L.', 'Lagunsad', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('240', '', 'Marian', 'Pancho', 'Cambal', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('241', '', 'Marianella Roshan Zoe', 'S.', 'Arguelles', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('242', '', 'Mariel Shayne', 'T.', 'Manzan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('243', '', 'Marius Tracy', 'J.', 'Daza', 'II', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('244', '', 'Mark Anthony', 'J.', 'Guevarra', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('245', '', 'Mark Carlos', 'T.', 'Angoluan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('246', '', 'Mark Chester', 'E.', 'Mozo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('247', '', 'Mark Vincent', 'C.', 'Gagam', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('248', '', 'Markus Enzo', 'G.', 'Pulgado', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('249', '', 'Marky', 'Q.', 'Custodio', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('250', '', 'Marky', 'S.', 'Manio', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('251', '', 'Martina Lyka', 'Galvan', 'Tolentino', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('252', '', 'Marvene Schneider', 'O.', 'Salcedo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('253', '', 'Mary Asthine', 'S.', 'Gatchalian', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('254', '', 'Mary Danica Gianne', 'N.', 'Alagban', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('255', '', 'Mary Denise Gail', 'N.', 'Alagban', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('256', '', 'Mary Grace', 'C.', 'Castillejos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('257', '', 'Mary Gwyneth', 'G.', 'Diocson', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('258', '', 'Mary Kathlene', 'Iliscupidez', 'Lozada', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('259', '', 'Mary Lou', 'Cabangisan', 'Castillejos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('260', '', 'Maverikk Daniel', 'P.', 'Sibug', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('261', '', 'Michael', 'A.', 'Ba?ez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('262', '', 'Miguel Lorenzo', 'Porras', 'Jacobo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('263', '', 'Mikaela Angela', 'R.', 'Concepcion', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('264', '', 'Mikaela Gabrielle', 'A.', 'Dollente', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('265', '', 'Mikaela Louise', 'Luna', 'Gulles', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('266', '', 'Mikaella Rainh', '', 'Manzan', '', '', '', '2', '0', '0', '1', '2', '12', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('267', '', 'Mike Kobe', 'Teoxon', 'Dalin', 'Jr.', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('268', '', 'Mikhail Alijah', 'L.', 'Palacio', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('269', '', 'Milagros Rowiza', 'T.', 'Nablo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('270', '', 'Mireya', 'A.', 'Tolentino', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('271', '', 'Mishia Patrice', 'S.', 'Tesalona', '', '', '', '2', '0', '0', '1', '3', '9', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('272', '', 'Moja Angel', 'F.', 'Acierto', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('273', '', 'Myka Jeanelle', 'J.', 'Esguerra', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('274', '', 'Nate Llijah', 'A.', 'Benavides', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('275', '', 'Nathan Josiah', 'R.', 'Pascua', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('276', '', 'Nathan Paulo', 'J.', 'Marcellana', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('277', '', 'Neza', 'L.', 'Cruz', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('278', '', 'Nheo', 'L.', 'Cruz', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('279', '', 'Nick Angelo', 'Gutierrez', 'Hibo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('280', '', 'Nylan Gwyneth', 'L.', 'Guillermo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('281', '', 'Nyx Raleigh', '', 'Oprecio', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('282', '', 'Patrhyze Marie', 'A.', 'Veñales', '', '', '', '2', '0', '0', '1', '3', '8', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('283', '', 'Paula Bianca Faye', 'T.', 'Oxales', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('284', '', 'Penney', 'T.', 'Del Rosario', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('285', '', 'Prince Luis', 'D.', 'Balbago', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('286', '', 'Princess Angellie', 'A.', 'Gallego', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('287', '', 'Quinn Uriel', 'B.', 'Altuna', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('288', '', 'Qwyncy Mytch', 'Yere', 'Medina', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('289', '', 'Rafa Claire Anaya', 'Bisenio', 'Marquinez', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('290', '', 'Raia Abigail', 'M.', 'Garrido', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('291', '', 'Rain Danielle', 'Hernandez', 'Cruz', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('292', '', 'Raine Marie', 'Ginga', 'Garduque', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('293', '', 'Raj Kenley', 'V.', 'Villar', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('294', '', 'Ralph Louine', 'A.', 'Barnachea', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('295', '', 'Reanna Kaye', 'D.', 'Azura', '', '', '', '2', '0', '0', '1', '3', '11', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('296', '', 'Rhaemone Tracy', 'Mackay', 'Baylon', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('297', '', 'Rhian Faith', 'B.', 'Constantino', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('298', '', 'Rhiana Angel', 'M.', 'Aquino', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('299', '', 'Rhoan Nazarea', 'B.', 'Constantino', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('300', '', 'Rhod Wayne', 'Gerardo', 'Caraig', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('301', '', 'Rhyiesha Drew', 'S.', 'Rafon', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('302', '', 'Rhynna Mikaela', 'P.', 'Versoza', '', '', '', '2', '0', '0', '1', '2', '8', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('303', '', 'Richie Ann', 'B.', 'Coniza', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('304', '', 'Richmond Clark', 'Romero', 'Joseph', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('305', '', 'Rieane Ezkhiel', 'D.', 'Nabor', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('306', '', 'Rob Leighton', 'A.', 'Reyes', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('307', '', 'Robert Cedric', 'B.', 'Torres', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('308', '', 'Robinne Kye Alysa', 'H.', 'Ramos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('309', '', 'Rodel', 'M.', 'Santos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('310', '', 'Rov Jalen', 'T.', 'Villajuan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('311', '', 'Rovic Emmanuel', 'B.', 'Alandy-Dy', '', '', '', '2', '0', '0', '1', '3', '1', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('312', '', 'Rowell Jr.', 'T.', 'Nablo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('313', '', 'Ruby Monroe', 'D.', 'Bangalan', '', '', '', '2', '0', '0', '1', '1', '9', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('314', '', 'Ryan Carlo', 'N.', 'Galamgam', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('315', '', 'Ry–Ann', 'Baltazar', 'Placero', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('316', '', 'Samantha', 'Barlaan', 'Manganti', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('317', '', 'Samantha Ericka', 'C.', 'Gabuat', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('318', '', 'Santino Miguel', 'Macatimpang', 'Marciano', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('319', '', 'Sean Andrei', 'C.', 'Resurreccion', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('320', '', 'Sean Lexis', 'G.', 'Dela Cruz', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('321', '', 'Sean Orlando', 'C.', 'Sengseng', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('322', '', 'Sean Preston', 'C.', 'Buenaflor', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('323', '', 'Sean Tristan', 'A.', 'Dimatulac', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('324', '', 'Sebastian Roy', 'G.', 'Reyes', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('325', '', 'Shannel Anne', '', 'Aguirre', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('326', '', 'Sharmaine Lucille', 'P.', 'Nolasco', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('327', '', 'Shawn Derek', 'Flores', 'Capulong', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('328', '', 'Shea Abigail', 'G.', 'Marcelino', '', '', '', '2', '0', '0', '1', '1', '2', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('329', '', 'Shekhinah Ryanne', 'F.', 'Guevarra', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('330', '', 'Sir Christian', 'V.', 'Claudio', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('331', '', 'Sixela Nixel', 'Y.', 'Magsino', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('332', '', 'Sophia Andrea', 'O.', 'Ramilo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('333', '', 'Sophia Arianne', 'A.', 'Acob', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('334', '', 'Sophia Louise', 'Sangahin', 'Gagan', '', '', '', '2', '0', '0', '1', '1', '4', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('335', '', 'Steven Hanz', 'E.', 'De Guzman', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('336', '', 'Syrin Joshua', 'P.', 'Sosa', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('337', '', 'Tayshaun Maxine', 'M.', 'Guittap', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('338', '', 'Tim Ezekiel', 'Ansagay', 'Reyes', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('339', '', 'Treise Chandele Amiel', 'C.', 'Montes', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('340', '', 'Trisha Lara Antonette', 'Della', 'Malaluan', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('341', '', 'Tristan Nash', 'U.', 'Mendoza', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('342', '', 'Vanisha Amber', 'Q.', 'Armada', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('343', '', 'Vea Annegeline', 'C.', 'Gepty', '', '', '', '2', '0', '0', '1', '3', '2', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('344', '', 'Venn Andrei', 'A.', 'Aguilar', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('345', '', 'Vien Ellise', 'G.', 'Dela Pe?a', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('346', '', 'Viviene', 'Angeles', 'Satur', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('347', '', 'Von Gabriel', 'L.', 'Villamayor', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('348', '', 'Wayne Francis', 'Casintahan', 'Bernabe', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('349', '', 'William Shawn', 'F.', 'Lattao', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('350', '', 'Winzelle Chrystel', 'C.', 'Santiago', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('351', '', 'Wynona Trish', 'Usman', 'Mendoza', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('352', '', 'Xamantha Fei', 'M.', 'Racho', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('353', '', 'Xyza Ak', 'D.', 'Santos', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('354', '', 'Yaj Adrielle', 'G.', 'Nodalo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('355', '', 'Ysabelle Louiese', 'E.', 'Mercado', '', '', '', '2', '0', '0', '1', '2', '6', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('356', '', 'Yuan Anthony', 'M.', 'Litonjua', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('357', '', 'Yuan Jacob', 'S.', 'Alandy-Dy', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('358', '', 'Yvonne Julienne', 'S.', 'Tiambeng', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_person` VALUES ('359', '', 'Zirk Ethan', 'Valdez', 'Frondozo', '', '', '', '2', '0', '0', '0', '0', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tbl_position`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_position`;
CREATE TABLE `tbl_position` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `max_selection` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_position
-- ----------------------------
INSERT INTO `tbl_position` VALUES ('1', 'President', '1');
INSERT INTO `tbl_position` VALUES ('2', 'Vice President', '1');
INSERT INTO `tbl_position` VALUES ('3', 'Secretary', '1');
INSERT INTO `tbl_position` VALUES ('4', 'Treasurer', '1');
INSERT INTO `tbl_position` VALUES ('5', 'Auditor', '1');
INSERT INTO `tbl_position` VALUES ('6', 'P.R.O', '1');
INSERT INTO `tbl_position` VALUES ('7', 'Peace Officer (Boy)', '1');
INSERT INTO `tbl_position` VALUES ('8', 'Peace Officer (Girl)', '1');
INSERT INTO `tbl_position` VALUES ('9', 'Representative (Grade 3)', '1');
INSERT INTO `tbl_position` VALUES ('10', 'Representative (Grade 4)', '1');
INSERT INTO `tbl_position` VALUES ('11', 'Representative (Grade 5)', '1');
INSERT INTO `tbl_position` VALUES ('12', 'Representative (Grade 6)', '1');

-- ----------------------------
-- Table structure for `tbl_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `desc` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES ('1', 'Admin', 'Administrator');
INSERT INTO `tbl_role` VALUES ('2', 'Voter', 'Voter');

-- ----------------------------
-- Table structure for `tbl_settings`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_settings`;
CREATE TABLE `tbl_settings` (
  `id` tinyint(1) NOT NULL,
  `sys_header` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sys_slogan` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sys_footer` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sys_logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_settings
-- ----------------------------
INSERT INTO `tbl_settings` VALUES ('1', 'EVS<sup>&reg;</sup>', 'Electronic Voting System', '&copy; <?=date(\'Y\')?> RP Creative Studio', '');

-- ----------------------------
-- Table structure for `tbl_tally`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tally`;
CREATE TABLE `tbl_tally` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(9) NOT NULL,
  `candidate_id` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tally
-- ----------------------------

-- ----------------------------
-- Procedure structure for `sp_add_person`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_add_person`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_person`(IN `p1` VARCHAR(25), IN `p2` VARCHAR(100), IN `p3` VARCHAR(100), IN `p4` VARCHAR(100), IN `p5` VARCHAR(25), IN `p6` VARCHAR(6), IN `p7` TINYINT(1), IN `p8` TINYINT(1), IN `p9` TINYINT(1), IN `p10` TINYINT(1), IN `p11` TINYINT(1), IN `p12` TINYINT(1), IN `p13` TINYINT(1), IN `p14` DATETIME)
BEGIN
	INSERT INTO 
		tbl_person(prefix, first_name, middle_name, last_name, suffix, gender, role_id, is_validated, is_voted, is_candidate, group_id, position_id, is_deleted, dt_registered)
	VALUES(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_add_tally`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_add_tally`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_tally`(IN `p1` INT(9), IN `p2` INT(9))
BEGIN
	INSERT INTO 
		tbl_tally(person_id, candidate_id)
	VALUES(p1, p2);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_delete_person`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_person`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_person`(IN `p0` INT(11))
BEGIN
	UPDATE tbl_person
SET 
  is_deleted = 1
WHERE
	id = p0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_get_candidate`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_candidate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_candidate`(IN `p0` INT(11))
BEGIN
	SELECT 
		t1.id,
		t1.prefix,
		t1.first_name, 
		t1.middle_name, 
	  t1.last_name,
		t1.suffix,
		t1.is_candidate,
		t1.position_id,
		t1.group_id,
		t2.id AS p_id,
		t2.name AS position_name,
		t3.id AS g_id,
		t3.name AS group_name
	FROM tbl_person AS t1
	LEFT JOIN tbl_position AS t2 ON t2.id = t1.position_id
	LEFT JOIN tbl_group AS t3 ON t3.id = t1.group_id
	WHERE t1.position_id = p0 AND t1.is_deleted = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_get_group`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_group`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_group`()
BEGIN
	SELECT id, name AS group_name
	FROM tbl_group
	ORDER BY id ASC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_get_password`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_password`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_password`(IN pass VARCHAR(64))
BEGIN
	SELECT *
	FROM tbl_person 
	WHERE access_code = pass AND is_deleted = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_get_person_by_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_person_by_id`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_person_by_id`(IN `p0` INT(11))
BEGIN
	SELECT 
		t1.id,
		t1.prefix,
		t1.first_name, 
		t1.middle_name, 
	  t1.last_name,
		t1.suffix,
		t1.is_candidate,
		t1.position_id,
		t1.group_id,
		t2.id AS p_id,
		t2.name AS position_name,
		t3.id AS g_id,
		t3.name AS group_name
	FROM tbl_person AS t1
	LEFT JOIN tbl_position AS t2 ON t2.id = t1.position_id
	LEFT JOIN tbl_group AS t3 ON t3.id = t1.group_id
	WHERE t1.id = p0 AND t1.is_deleted = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_get_person_status`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_person_status`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_person_status`(IN `p0`TINYINT(1), IN `p1` VARCHAR(64))
BEGIN
	SELECT *
	FROM tbl_person
	WHERE is_voted = p0 AND access_code = p1 AND is_deleted = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_get_position`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_position`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_position`()
BEGIN
	SELECT id, name AS position_name, max_selection
	FROM tbl_position
	ORDER BY id ASC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_update_person`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_person`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_person`(IN `p0` INT (11), IN `p1` VARCHAR (25), IN `p2` VARCHAR (100), IN `p3` VARCHAR (100), IN `p4` VARCHAR (100), IN `p5` VARCHAR (25), IN `p6` VARCHAR (64), IN `p7` TINYINT (1), IN `p8` DATETIME)
BEGIN
	UPDATE tbl_person
SET 
 prefix = p1,
 first_name = p2,
 middle_name = p3,
 last_name = p4,
 suffix = p5,
 access_code = p6,
 is_validated = p7,
 dt_updated = p8
WHERE
	id = p0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_update_person_status`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_person_status`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_person_status`(IN `p0` INT (11), IN `p1` TINYINT (1), IN `p2` DATETIME)
BEGIN
	UPDATE tbl_person
SET 
 is_voted = p1,
 dt_updated = p2
WHERE
	id = p0;
END
;;
DELIMITER ;
