/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : appstart

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-01-10 20:44:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `business_type`
-- ----------------------------
DROP TABLE IF EXISTS `business_type`;
CREATE TABLE `business_type` (
  `business_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`business_type_id`),
  UNIQUE KEY `unique_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of business_type
-- ----------------------------
INSERT INTO `business_type` VALUES ('1', 'Tranlation', '1', '2012-09-20 18:39:20', '1', '2012-09-20 12:04:58');
INSERT INTO `business_type` VALUES ('2', 'testing', '1', '2012-10-03 16:57:39', '1', '2012-10-03 16:57:39');
INSERT INTO `business_type` VALUES ('3', 'Learning', '1', '2012-11-02 17:20:48', '1', '2012-11-02 17:20:48');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_access_id` varchar(20) DEFAULT NULL,
  `app_password` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `business_type_id` int(11) DEFAULT NULL,
  `address` varchar(90) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `plz` varchar(30) DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `contact_person_name` varchar(50) DEFAULT NULL,
  `contact_person_email` varchar(60) DEFAULT NULL,
  `contact_person_phone` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `uk_app_access_id` (`app_access_id`) USING BTREE,
  KEY `fk_business_type` (`business_type_id`) USING BTREE,
  KEY `fk_template` (`template_id`) USING BTREE,
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `template` (`template_id`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`business_type_id`) REFERENCES `business_type` (`business_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '121321', '', '1', 'Dharmesh', '1', 'Test', 'test', '', null, null, '', '', '', '', '1', '1', '1', '2012-10-17 16:31:30', '1', '2012-09-20 16:40:21');
INSERT INTO `customer` VALUES ('5', '121322', '', '6', 'birju shah', '1', '', '', '', null, null, '', '', '', '', '1', '1', '1', '2012-10-12 17:22:28', '1', '2012-09-26 18:21:47');
INSERT INTO `customer` VALUES ('8', '121323', '', '9', 'Rose Doson', '3', '', '', '', null, null, '', '', '', '', '1', '1', '1', '2012-11-03 17:04:10', '1', '2012-10-03 17:51:05');
INSERT INTO `customer` VALUES ('17', '121324', '', '29', 'learning birju', '1', '', '', '', null, null, '', '', '', '', '1', '1', '1', '2012-11-06 15:43:20', '1', '2012-11-06 15:43:20');
INSERT INTO `customer` VALUES ('18', '121325', '', '30', 'birjushah', '1', '', '', '', null, null, '', '', '', '', '1', '19', '1', '2012-11-06 19:27:53', '1', '2012-11-06 19:27:53');
INSERT INTO `customer` VALUES ('20', '121326', 'aks@123', '10', 'birju shah', '1', '', 'India', '', null, null, '', '', '', '', '1', '1', '1', '2012-11-21 11:25:36', '1', '2012-11-21 11:25:36');
INSERT INTO `customer` VALUES ('21', '121327', 'aks@123', '11', 'birju shah', '1', '', '', '', null, null, '', '', '', '', '1', '19', '1', '2012-11-21 16:48:11', '1', '2012-11-21 16:48:11');
INSERT INTO `customer` VALUES ('23', '121329', 'aks@123', '13', 'birju shah', '1', '', '', '', null, null, '', '', '', '', '1', '1', '1', '2012-11-22 11:42:34', '1', '2012-11-22 11:42:34');
INSERT INTO `customer` VALUES ('24', '121330', 'aks@123', '14', 'qwe', '1', '', '', '', null, null, '', '', '', '', '1', '1', '1', '2012-12-06 11:40:01', '1', '2012-12-06 11:40:01');
INSERT INTO `customer` VALUES ('25', '121331', 'aks@123', '15', 'Birju sirname', '1', '', '', '', null, null, '', '', '', '', '1', '1', '1', '2012-12-06 15:39:38', '1', '2012-12-06 15:39:38');
INSERT INTO `customer` VALUES ('26', '121332', 'aks@123', '16', 'birjuashah', '1', '', '', '', null, null, '', '', '', '', '1', '1', '1', '2012-12-06 15:54:30', '1', '2012-12-06 15:54:30');
INSERT INTO `customer` VALUES ('27', '121333', 'aks@123', '17', 'birjucshah', '1', '', '', '', '2012-12-21 04:48:00', '21', '', '', '', '', '1', '1', '1', '2012-12-06 16:00:40', '1', '2012-12-06 16:00:40');
INSERT INTO `customer` VALUES ('31', '121334', 'aks@123', '20', 'Birju Only', '1', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', '1', '1', '1', '2012-12-07 12:46:43', '1', '2012-12-07 12:46:43');
INSERT INTO `customer` VALUES ('36', '121335', 'aks@123', '27', 'birju dreamz', '1', '', '', '', '2012-12-13 06:20:00', '0', '', '', '', '', '1', '1', '1', '2012-12-13 15:39:00', '1', '2012-12-13 12:56:42');

-- ----------------------------
-- Table structure for `customer_configuration`
-- ----------------------------
DROP TABLE IF EXISTS `customer_configuration`;
CREATE TABLE `customer_configuration` (
  `customer_configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `font_type` varchar(90) DEFAULT NULL,
  `font_color` varchar(15) DEFAULT NULL,
  `font_size` varchar(15) DEFAULT NULL,
  `spacing` varchar(15) DEFAULT NULL,
  `theme_color` varchar(15) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_configuration_id`),
  UNIQUE KEY `fk_customer_config` (`customer_id`) USING BTREE,
  CONSTRAINT `customer_configuration_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_configuration
-- ----------------------------
INSERT INTO `customer_configuration` VALUES ('1', '1', 'Arial', '296088', '12px', '4px', '540606', '2', '2012-12-07 19:23:29', '1', '2012-10-11 12:33:39');
INSERT INTO `customer_configuration` VALUES ('2', '31', 'Arial', 'f01919', '', '', 'e81212', '1', '2012-12-11 17:05:46', '1', '2012-12-11 17:05:46');

-- ----------------------------
-- Table structure for `customer_language`
-- ----------------------------
DROP TABLE IF EXISTS `customer_language`;
CREATE TABLE `customer_language` (
  `customer_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `is_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`customer_language_id`),
  KEY `fk_customer` (`customer_id`) USING BTREE,
  KEY `fk_language` (`language_id`) USING BTREE,
  CONSTRAINT `customer_language_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `customer_language_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_language
-- ----------------------------
INSERT INTO `customer_language` VALUES ('1', '1', '1', '0');
INSERT INTO `customer_language` VALUES ('2', '1', '2', '1');
INSERT INTO `customer_language` VALUES ('5', '5', '1', '1');
INSERT INTO `customer_language` VALUES ('6', '5', '2', '0');
INSERT INTO `customer_language` VALUES ('7', '5', '3', '0');
INSERT INTO `customer_language` VALUES ('8', '5', '4', '0');
INSERT INTO `customer_language` VALUES ('22', '8', '1', '1');
INSERT INTO `customer_language` VALUES ('25', '8', '2', '0');
INSERT INTO `customer_language` VALUES ('26', '8', '3', '0');
INSERT INTO `customer_language` VALUES ('27', '8', '4', '0');
INSERT INTO `customer_language` VALUES ('36', '17', '1', '1');
INSERT INTO `customer_language` VALUES ('37', '18', '1', '1');
INSERT INTO `customer_language` VALUES ('39', '20', '1', '1');
INSERT INTO `customer_language` VALUES ('43', '21', '1', '1');
INSERT INTO `customer_language` VALUES ('44', '21', '2', '0');
INSERT INTO `customer_language` VALUES ('45', '21', '3', '0');
INSERT INTO `customer_language` VALUES ('46', '21', '4', '0');
INSERT INTO `customer_language` VALUES ('51', '23', '1', '1');
INSERT INTO `customer_language` VALUES ('52', '24', '1', '1');
INSERT INTO `customer_language` VALUES ('53', '24', '2', '0');
INSERT INTO `customer_language` VALUES ('54', '24', '3', '0');
INSERT INTO `customer_language` VALUES ('55', '24', '4', '0');
INSERT INTO `customer_language` VALUES ('56', '25', '1', '1');
INSERT INTO `customer_language` VALUES ('57', '25', '2', '0');
INSERT INTO `customer_language` VALUES ('58', '25', '3', '0');
INSERT INTO `customer_language` VALUES ('59', '25', '4', '0');
INSERT INTO `customer_language` VALUES ('60', '26', '1', '1');
INSERT INTO `customer_language` VALUES ('61', '27', '1', '1');
INSERT INTO `customer_language` VALUES ('65', '31', '1', '1');
INSERT INTO `customer_language` VALUES ('82', '36', '1', '1');
INSERT INTO `customer_language` VALUES ('83', '36', '2', '0');
INSERT INTO `customer_language` VALUES ('84', '36', '3', '0');
INSERT INTO `customer_language` VALUES ('85', '36', '4', '0');

-- ----------------------------
-- Table structure for `customer_module`
-- ----------------------------
DROP TABLE IF EXISTS `customer_module`;
CREATE TABLE `customer_module` (
  `customer_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_number` int(11) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `share` varchar(50) DEFAULT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `sync_date_time` datetime DEFAULT NULL,
  `is_publish` enum('NO','YES') DEFAULT 'NO',
  PRIMARY KEY (`customer_module_id`),
  KEY `fk_customer_id` (`customer_id`) USING BTREE,
  KEY `fk_module_id` (`module_id`) USING BTREE,
  CONSTRAINT `customer_module_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`),
  CONSTRAINT `customer_module_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_module
-- ----------------------------
INSERT INTO `customer_module` VALUES ('1', '1', '1', '1', '1', '1', '', '', '0000-00-00 00:00:00', 'NO');
INSERT INTO `customer_module` VALUES ('2', '2', '1', '2', '1', '1', '', '', '0000-00-00 00:00:00', 'NO');
INSERT INTO `customer_module` VALUES ('9', '1', '5', '1', '0', '1', '', '', '0000-00-00 00:00:00', 'NO');
INSERT INTO `customer_module` VALUES ('10', '2', '5', '2', '0', '1', '', '', '0000-00-00 00:00:00', '');
INSERT INTO `customer_module` VALUES ('11', '3', '5', '3', '0', '1', '', '', '0000-00-00 00:00:00', '');
INSERT INTO `customer_module` VALUES ('36', '3', '1', '3', '1', '1', '', '', '2013-01-03 16:18:12', 'NO');
INSERT INTO `customer_module` VALUES ('37', '3', '1', '3', '1', '1', '', '', '2013-01-03 16:17:59', 'YES');
INSERT INTO `customer_module` VALUES ('38', '2', '1', '2', '1', '1', '', '', '0000-00-00 00:00:00', 'NO');
INSERT INTO `customer_module` VALUES ('39', '5', '1', '5', '1', '1', '', '', '2012-10-15 18:51:20', 'NO');
INSERT INTO `customer_module` VALUES ('52', '4', '1', '4', '1', '1', '', '', '2012-10-15 19:15:41', 'NO');
INSERT INTO `customer_module` VALUES ('53', '4', '5', '4', '0', '1', '', '', '0000-00-00 00:00:00', '');
INSERT INTO `customer_module` VALUES ('54', '5', '5', '5', '0', '1', '', '', '0000-00-00 00:00:00', '');
INSERT INTO `customer_module` VALUES ('55', '6', '1', '6', '0', '1', '', '', '2012-10-15 18:51:20', 'NO');
INSERT INTO `customer_module` VALUES ('104', '7', '1', '7', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('105', '8', '1', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('106', '9', '1', '9', '1', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('123', '6', '5', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('124', '7', '5', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('125', '8', '5', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('126', '9', '5', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('150', '4', '17', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('151', '5', '17', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('152', '6', '17', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('153', '7', '17', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('154', '8', '17', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('155', '9', '17', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('156', '1', '17', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('157', '2', '17', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('158', '3', '17', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('159', '1', '18', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('160', '3', '18', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('161', '4', '18', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('162', '5', '18', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('163', '2', '18', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('164', '6', '18', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('165', '7', '18', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('166', '8', '18', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('167', '9', '18', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('177', '1', '20', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('178', '2', '20', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('179', '3', '20', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('180', '1', '21', '1', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('181', '2', '21', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('182', '3', '21', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('183', '4', '21', '4', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('184', '5', '21', '5', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('185', '6', '21', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('186', '7', '21', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('187', '8', '21', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('188', '9', '21', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('192', '1', '8', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('193', '2', '8', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('194', '3', '8', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('195', '4', '8', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('196', '5', '8', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('197', '6', '8', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('198', '7', '8', '7', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('199', '8', '8', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('200', '9', '8', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('201', '4', '20', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('202', '5', '20', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('203', '6', '20', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('204', '7', '20', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('205', '8', '20', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('206', '9', '20', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('213', '1', '23', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('214', '2', '23', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('215', '3', '23', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('216', '4', '23', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('217', '5', '23', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('218', '6', '23', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('219', '7', '23', '7', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('220', '8', '23', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('221', '9', '23', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('222', '10', '1', '10', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('223', '10', '5', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('224', '10', '8', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('225', '10', '17', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('226', '10', '20', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('228', '10', '23', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('229', '10', '18', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('230', '10', '21', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('231', '11', '18', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('232', '11', '21', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('233', '11', '1', '11', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('234', '11', '5', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('235', '11', '8', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('236', '11', '17', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('237', '11', '20', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('239', '11', '23', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('240', '12', '18', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('241', '12', '21', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('242', '12', '1', '12', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('243', '12', '5', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('244', '12', '8', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('245', '12', '17', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('246', '12', '20', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('248', '12', '23', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('249', '1', '24', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('250', '2', '24', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('251', '3', '24', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('252', '4', '24', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('253', '5', '24', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('254', '6', '24', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('255', '7', '24', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('256', '8', '24', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('257', '9', '24', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('258', '10', '24', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('259', '11', '24', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('260', '12', '24', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('261', '1', '25', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('262', '2', '25', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('263', '3', '25', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('264', '4', '25', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('265', '5', '25', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('266', '6', '25', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('267', '7', '25', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('268', '8', '25', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('269', '9', '25', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('270', '10', '25', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('271', '11', '25', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('272', '12', '25', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('273', '1', '26', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('274', '2', '26', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('275', '3', '26', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('276', '4', '26', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('277', '5', '26', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('278', '6', '26', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('279', '7', '26', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('280', '8', '26', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('281', '9', '26', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('282', '10', '26', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('283', '11', '26', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('284', '12', '26', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('285', '1', '27', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('286', '2', '27', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('287', '3', '27', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('288', '4', '27', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('289', '5', '27', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('290', '6', '27', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('291', '7', '27', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('292', '8', '27', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('293', '9', '27', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('294', '10', '27', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('295', '11', '27', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('296', '12', '27', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('321', '1', '31', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('322', '2', '31', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('323', '3', '31', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('324', '4', '31', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('325', '5', '31', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('326', '6', '31', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('327', '7', '31', '7', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('328', '8', '31', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('329', '9', '31', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('330', '10', '31', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('331', '11', '31', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('332', '12', '31', '12', '0', '1', null, null, null, 'NO');
INSERT INTO `customer_module` VALUES ('333', '13', '18', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('334', '13', '21', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('335', '13', '1', '13', '0', '1', null, 'Winter.jpg', '2012-12-24 13:42:04', 'YES');
INSERT INTO `customer_module` VALUES ('336', '13', '5', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('337', '13', '8', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('338', '13', '17', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('339', '13', '20', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('340', '13', '23', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('341', '13', '24', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('342', '13', '25', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('343', '13', '26', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('344', '13', '27', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('345', '13', '31', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('385', '1', '36', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('386', '2', '36', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('387', '3', '36', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('388', '4', '36', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('389', '5', '36', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('390', '6', '36', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('391', '7', '36', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('392', '8', '36', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('393', '9', '36', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('394', '10', '36', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('395', '11', '36', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('396', '12', '36', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('397', '13', '36', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('398', '1', '36', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('399', '2', '36', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('400', '3', '36', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('401', '4', '36', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('402', '5', '36', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('403', '6', '36', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('404', '7', '36', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('405', '8', '36', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('406', '9', '36', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('407', '10', '36', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('408', '11', '36', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('409', '12', '36', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('410', '13', '36', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('411', '1', '36', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('412', '2', '36', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('413', '3', '36', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('414', '4', '36', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('415', '5', '36', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('416', '6', '36', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('417', '7', '36', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('418', '8', '36', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('419', '9', '36', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('420', '10', '36', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('421', '11', '36', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('422', '12', '36', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('423', '13', '36', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('424', '1', '36', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('425', '2', '36', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('426', '3', '36', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('427', '4', '36', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('428', '5', '36', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('429', '6', '36', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('430', '7', '36', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('431', '8', '36', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('432', '9', '36', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('433', '10', '36', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('434', '11', '36', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('435', '12', '36', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('436', '13', '36', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('437', '1', '36', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('438', '2', '36', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('439', '3', '36', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('440', '4', '36', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('441', '5', '36', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('442', '6', '36', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('443', '7', '36', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('444', '8', '36', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('445', '9', '36', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('446', '10', '36', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('447', '11', '36', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('448', '12', '36', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('449', '13', '36', '13', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('450', '1', '36', '1', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('451', '2', '36', '2', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('452', '3', '36', '3', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('453', '4', '36', '4', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('454', '5', '36', '5', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('455', '6', '36', '6', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('456', '7', '36', '7', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('457', '8', '36', '8', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('458', '9', '36', '9', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('459', '10', '36', '10', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('460', '11', '36', '11', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('461', '12', '36', '12', '0', '1', null, null, null, null);
INSERT INTO `customer_module` VALUES ('462', '13', '36', '13', '0', '1', null, null, null, null);

-- ----------------------------
-- Table structure for `customer_module_detail`
-- ----------------------------
DROP TABLE IF EXISTS `customer_module_detail`;
CREATE TABLE `customer_module_detail` (
  `customer_module_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_module_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `screen_name` varchar(64) DEFAULT NULL,
  `background_image` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_module_detail_id`),
  KEY `fk_cmd_cm` (`customer_module_id`),
  KEY `fk_cmd_lang` (`language_id`),
  CONSTRAINT `fk_cmd_cm` FOREIGN KEY (`customer_module_id`) REFERENCES `customer_module` (`customer_module_id`),
  CONSTRAINT `fk_cmd_lang` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=884 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_module_detail
-- ----------------------------
INSERT INTO `customer_module_detail` VALUES ('1', '9', '1', null, null);
INSERT INTO `customer_module_detail` VALUES ('2', '10', '1', null, null);
INSERT INTO `customer_module_detail` VALUES ('3', '11', '1', null, null);
INSERT INTO `customer_module_detail` VALUES ('67', '36', '1', null, null);
INSERT INTO `customer_module_detail` VALUES ('68', '36', '2', null, null);
INSERT INTO `customer_module_detail` VALUES ('69', '37', '1', null, null);
INSERT INTO `customer_module_detail` VALUES ('70', '37', '2', null, null);
INSERT INTO `customer_module_detail` VALUES ('71', '38', '1', null, null);
INSERT INTO `customer_module_detail` VALUES ('72', '38', '2', null, null);
INSERT INTO `customer_module_detail` VALUES ('73', '39', '1', null, null);
INSERT INTO `customer_module_detail` VALUES ('74', '39', '2', null, null);
INSERT INTO `customer_module_detail` VALUES ('96', '52', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('97', '52', '2', 'module-cms', null);
INSERT INTO `customer_module_detail` VALUES ('98', '53', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('99', '53', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('100', '53', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('101', '53', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('102', '54', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('103', '54', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('104', '54', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('105', '54', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('106', '55', '1', 'Document birju', '125');
INSERT INTO `customer_module_detail` VALUES ('107', '55', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('177', '150', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('178', '151', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('179', '152', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('180', '153', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('181', '154', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('182', '155', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('183', '159', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('184', '160', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('185', '161', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('186', '162', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('187', '163', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('197', '177', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('198', '178', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('199', '179', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('200', '180', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('201', '180', '2', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('202', '180', '3', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('203', '180', '4', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('204', '181', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('205', '181', '2', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('206', '181', '3', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('207', '181', '4', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('208', '182', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('209', '182', '2', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('210', '182', '3', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('211', '182', '4', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('212', '183', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('213', '183', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('214', '183', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('215', '183', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('216', '184', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('217', '184', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('218', '184', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('219', '184', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('220', '185', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('221', '185', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('222', '185', '3', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('223', '185', '4', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('224', '186', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('225', '186', '2', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('226', '186', '3', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('227', '186', '4', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('228', '187', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('229', '187', '2', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('230', '187', '3', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('231', '187', '4', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('232', '188', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('233', '188', '2', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('234', '188', '3', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('235', '188', '4', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('248', '213', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('249', '214', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('250', '215', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('251', '216', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('252', '217', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('253', '218', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('254', '219', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('255', '220', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('256', '221', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('257', '106', '1', 'dreamz112', '123');
INSERT INTO `customer_module_detail` VALUES ('258', '233', '1', 'water lillies', '125');
INSERT INTO `customer_module_detail` VALUES ('259', '249', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('260', '249', '2', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('261', '249', '3', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('262', '249', '4', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('263', '250', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('264', '250', '2', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('265', '250', '3', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('266', '250', '4', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('267', '251', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('268', '251', '2', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('269', '251', '3', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('270', '251', '4', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('271', '252', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('272', '252', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('273', '252', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('274', '252', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('275', '253', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('276', '253', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('277', '253', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('278', '253', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('279', '254', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('280', '254', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('281', '254', '3', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('282', '254', '4', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('283', '255', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('284', '255', '2', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('285', '255', '3', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('286', '255', '4', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('287', '256', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('288', '256', '2', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('289', '256', '3', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('290', '256', '4', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('291', '257', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('292', '257', '2', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('293', '257', '3', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('294', '257', '4', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('295', '258', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('296', '258', '2', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('297', '258', '3', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('298', '258', '4', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('299', '259', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('300', '259', '2', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('301', '259', '3', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('302', '259', '4', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('303', '260', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('304', '260', '2', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('305', '260', '3', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('306', '260', '4', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('307', '261', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('308', '261', '2', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('309', '261', '3', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('310', '261', '4', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('311', '262', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('312', '262', '2', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('313', '262', '3', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('314', '262', '4', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('315', '263', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('316', '263', '2', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('317', '263', '3', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('318', '263', '4', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('319', '264', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('320', '264', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('321', '264', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('322', '264', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('323', '265', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('324', '265', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('325', '265', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('326', '265', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('327', '266', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('328', '266', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('329', '266', '3', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('330', '266', '4', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('331', '267', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('332', '267', '2', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('333', '267', '3', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('334', '267', '4', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('335', '268', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('336', '268', '2', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('337', '268', '3', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('338', '268', '4', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('339', '269', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('340', '269', '2', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('341', '269', '3', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('342', '269', '4', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('343', '270', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('344', '270', '2', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('345', '270', '3', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('346', '270', '4', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('347', '271', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('348', '271', '2', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('349', '271', '3', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('350', '271', '4', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('351', '272', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('352', '272', '2', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('353', '272', '3', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('354', '272', '4', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('355', '273', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('356', '274', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('357', '275', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('358', '276', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('359', '277', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('360', '278', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('361', '279', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('362', '280', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('363', '281', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('364', '282', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('365', '283', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('366', '284', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('367', '285', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('368', '286', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('369', '287', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('370', '288', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('371', '289', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('372', '290', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('373', '291', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('374', '292', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('375', '293', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('376', '294', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('377', '295', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('378', '296', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('403', '321', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('404', '322', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('405', '323', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('406', '324', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('407', '325', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('408', '326', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('409', '327', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('410', '328', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('411', '329', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('412', '330', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('413', '331', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('414', '332', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('571', '385', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('572', '385', '2', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('573', '385', '3', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('574', '385', '4', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('575', '386', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('576', '386', '2', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('577', '386', '3', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('578', '386', '4', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('579', '387', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('580', '387', '2', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('581', '387', '3', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('582', '387', '4', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('583', '388', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('584', '388', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('585', '388', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('586', '388', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('587', '389', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('588', '389', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('589', '389', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('590', '389', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('591', '390', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('592', '390', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('593', '390', '3', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('594', '390', '4', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('595', '391', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('596', '391', '2', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('597', '391', '3', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('598', '391', '4', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('599', '392', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('600', '392', '2', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('601', '392', '3', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('602', '392', '4', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('603', '393', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('604', '393', '2', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('605', '393', '3', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('606', '393', '4', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('607', '394', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('608', '394', '2', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('609', '394', '3', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('610', '394', '4', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('611', '395', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('612', '395', '2', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('613', '395', '3', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('614', '395', '4', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('615', '396', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('616', '396', '2', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('617', '396', '3', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('618', '396', '4', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('619', '397', '1', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('620', '397', '2', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('621', '397', '3', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('622', '397', '4', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('623', '398', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('624', '398', '2', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('625', '398', '3', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('626', '398', '4', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('627', '399', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('628', '399', '2', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('629', '399', '3', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('630', '399', '4', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('631', '400', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('632', '400', '2', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('633', '400', '3', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('634', '400', '4', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('635', '401', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('636', '401', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('637', '401', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('638', '401', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('639', '402', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('640', '402', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('641', '402', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('642', '402', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('643', '403', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('644', '403', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('645', '403', '3', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('646', '403', '4', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('647', '404', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('648', '404', '2', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('649', '404', '3', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('650', '404', '4', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('651', '405', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('652', '405', '2', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('653', '405', '3', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('654', '405', '4', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('655', '406', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('656', '406', '2', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('657', '406', '3', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('658', '406', '4', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('659', '407', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('660', '407', '2', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('661', '407', '3', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('662', '407', '4', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('663', '408', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('664', '408', '2', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('665', '408', '3', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('666', '408', '4', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('667', '409', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('668', '409', '2', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('669', '409', '3', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('670', '409', '4', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('671', '410', '1', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('672', '410', '2', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('673', '410', '3', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('674', '410', '4', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('675', '411', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('676', '411', '2', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('677', '411', '3', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('678', '411', '4', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('679', '412', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('680', '412', '2', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('681', '412', '3', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('682', '412', '4', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('683', '413', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('684', '413', '2', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('685', '413', '3', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('686', '413', '4', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('687', '414', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('688', '414', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('689', '414', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('690', '414', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('691', '415', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('692', '415', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('693', '415', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('694', '415', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('695', '416', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('696', '416', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('697', '416', '3', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('698', '416', '4', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('699', '417', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('700', '417', '2', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('701', '417', '3', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('702', '417', '4', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('703', '418', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('704', '418', '2', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('705', '418', '3', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('706', '418', '4', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('707', '419', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('708', '419', '2', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('709', '419', '3', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('710', '419', '4', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('711', '420', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('712', '420', '2', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('713', '420', '3', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('714', '420', '4', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('715', '421', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('716', '421', '2', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('717', '421', '3', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('718', '421', '4', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('719', '422', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('720', '422', '2', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('721', '422', '3', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('722', '422', '4', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('723', '423', '1', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('724', '423', '2', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('725', '423', '3', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('726', '423', '4', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('727', '424', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('728', '424', '2', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('729', '424', '3', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('730', '424', '4', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('731', '425', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('732', '425', '2', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('733', '425', '3', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('734', '425', '4', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('735', '426', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('736', '426', '2', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('737', '426', '3', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('738', '426', '4', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('739', '427', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('740', '427', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('741', '427', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('742', '427', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('743', '428', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('744', '428', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('745', '428', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('746', '428', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('747', '429', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('748', '429', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('749', '429', '3', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('750', '429', '4', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('751', '430', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('752', '430', '2', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('753', '430', '3', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('754', '430', '4', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('755', '431', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('756', '431', '2', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('757', '431', '3', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('758', '431', '4', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('759', '432', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('760', '432', '2', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('761', '432', '3', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('762', '432', '4', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('763', '433', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('764', '433', '2', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('765', '433', '3', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('766', '433', '4', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('767', '434', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('768', '434', '2', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('769', '434', '3', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('770', '434', '4', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('771', '435', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('772', '435', '2', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('773', '435', '3', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('774', '435', '4', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('775', '436', '1', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('776', '436', '2', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('777', '436', '3', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('778', '436', '4', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('779', '437', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('780', '437', '2', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('781', '437', '3', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('782', '437', '4', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('783', '438', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('784', '438', '2', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('785', '438', '3', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('786', '438', '4', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('787', '439', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('788', '439', '2', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('789', '439', '3', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('790', '439', '4', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('791', '440', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('792', '440', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('793', '440', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('794', '440', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('795', '441', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('796', '441', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('797', '441', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('798', '441', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('799', '442', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('800', '442', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('801', '442', '3', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('802', '442', '4', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('803', '443', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('804', '443', '2', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('805', '443', '3', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('806', '443', '4', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('807', '444', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('808', '444', '2', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('809', '444', '3', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('810', '444', '4', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('811', '445', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('812', '445', '2', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('813', '445', '3', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('814', '445', '4', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('815', '446', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('816', '446', '2', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('817', '446', '3', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('818', '446', '4', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('819', '447', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('820', '447', '2', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('821', '447', '3', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('822', '447', '4', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('823', '448', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('824', '448', '2', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('825', '448', '3', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('826', '448', '4', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('827', '449', '1', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('828', '449', '2', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('829', '449', '3', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('830', '449', '4', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('831', '450', '1', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('832', '450', '2', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('833', '450', '3', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('834', '450', '4', 'Contact', null);
INSERT INTO `customer_module_detail` VALUES ('835', '451', '1', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('836', '451', '2', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('837', '451', '3', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('838', '451', '4', 'Home Wallpaper', null);
INSERT INTO `customer_module_detail` VALUES ('839', '452', '1', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('840', '452', '2', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('841', '452', '3', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('842', '452', '4', 'Push Message', null);
INSERT INTO `customer_module_detail` VALUES ('843', '453', '1', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('844', '453', '2', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('845', '453', '3', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('846', '453', '4', 'Module Cms', null);
INSERT INTO `customer_module_detail` VALUES ('847', '454', '1', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('848', '454', '2', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('849', '454', '3', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('850', '454', '4', 'Events', null);
INSERT INTO `customer_module_detail` VALUES ('851', '455', '1', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('852', '455', '2', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('853', '455', '3', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('854', '455', '4', 'Document', null);
INSERT INTO `customer_module_detail` VALUES ('855', '456', '1', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('856', '456', '2', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('857', '456', '3', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('858', '456', '4', 'Image Gallery', null);
INSERT INTO `customer_module_detail` VALUES ('859', '457', '1', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('860', '457', '2', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('861', '457', '3', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('862', '457', '4', 'Website', null);
INSERT INTO `customer_module_detail` VALUES ('863', '458', '1', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('864', '458', '2', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('865', '458', '3', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('866', '458', '4', 'Social Media', null);
INSERT INTO `customer_module_detail` VALUES ('867', '459', '1', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('868', '459', '2', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('869', '459', '3', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('870', '459', '4', 'Module Cms 1', null);
INSERT INTO `customer_module_detail` VALUES ('871', '460', '1', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('872', '460', '2', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('873', '460', '3', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('874', '460', '4', 'Module Cms 2', null);
INSERT INTO `customer_module_detail` VALUES ('875', '461', '1', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('876', '461', '2', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('877', '461', '3', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('878', '461', '4', 'Image Gallery 1', null);
INSERT INTO `customer_module_detail` VALUES ('879', '462', '1', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('880', '462', '2', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('881', '462', '3', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('882', '462', '4', 'Music', null);
INSERT INTO `customer_module_detail` VALUES ('883', '335', '1', 'birju', '121');

-- ----------------------------
-- Table structure for `customer_payment`
-- ----------------------------
DROP TABLE IF EXISTS `customer_payment`;
CREATE TABLE `customer_payment` (
  `customer_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `invoice_amount` decimal(10,2) DEFAULT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `comments` varchar(90) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_payment_id`),
  KEY `fk_customer` (`customer_id`) USING BTREE,
  CONSTRAINT `customer_payment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_sync`
-- ----------------------------
DROP TABLE IF EXISTS `customer_sync`;
CREATE TABLE `customer_sync` (
  `customer_sync_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `sync_date_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_sync_id`),
  KEY `fk_sync_customer` (`customer_id`) USING BTREE,
  CONSTRAINT `customer_sync_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_sync
-- ----------------------------

-- ----------------------------
-- Table structure for `language`
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(5) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `logo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('1', 'en', 'English', 'us.gif');
INSERT INTO `language` VALUES ('2', 'fr', 'French', 'fr.gif');
INSERT INTO `language` VALUES ('3', 'de', 'German', 'de.gif');
INSERT INTO `language` VALUES ('4', 'it', 'Italian', 'it.gif');

-- ----------------------------
-- Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  `status` smallint(6) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', 'contact', 'Contact', '/', '1', '1', '2012-09-13 20:47:57', '1', '2012-09-13 20:48:02');
INSERT INTO `module` VALUES ('2', 'home-wallpaper', 'Home Wallpaper', '/', '1', '1', '2012-09-13 20:48:00', '1', '2012-09-13 20:48:05');
INSERT INTO `module` VALUES ('3', 'push-message', 'Push Message', '/', '1', '1', '2012-09-26 17:50:24', '1', '2012-09-26 17:34:24');
INSERT INTO `module` VALUES ('4', 'module-cms', 'Module Cms', '/', '1', '1', '2012-10-03 15:57:30', '1', '2012-10-03 15:57:37');
INSERT INTO `module` VALUES ('5', 'events', 'Events', '/', '1', '1', '2012-10-05 19:31:02', '1', '2012-10-05 19:31:07');
INSERT INTO `module` VALUES ('6', 'document', 'Document', '/', '1', '1', '2012-10-16 18:06:14', '1', '2012-10-16 18:06:19');
INSERT INTO `module` VALUES ('7', 'module-image-gallery', 'Image Gallery', '/', '1', '1', '2012-10-19 10:28:47', '1', '2012-10-19 10:28:52');
INSERT INTO `module` VALUES ('8', 'website', 'Website', '/', '1', '1', '2012-10-26 12:39:04', '1', '2012-10-26 12:39:09');
INSERT INTO `module` VALUES ('9', 'social-media', 'Social Media', '/', '1', '1', '2012-10-26 12:39:32', '1', '2012-10-26 12:39:38');
INSERT INTO `module` VALUES ('10', 'module-cms-1', 'Module Cms 1', '/', '1', '1', '2012-12-03 16:27:23', '1', '2012-12-03 16:27:26');
INSERT INTO `module` VALUES ('11', 'module-cms-2', 'Module Cms 2', '/', '1', '1', '2012-12-04 12:32:41', '1', '2012-12-04 12:32:46');
INSERT INTO `module` VALUES ('12', 'module-image-gallery-1', 'Image Gallery 1', '/', '1', '1', '2012-12-04 19:24:32', '1', '2012-12-04 19:24:37');
INSERT INTO `module` VALUES ('13', 'music', 'Music', '/', '1', '1', '2012-12-10 11:29:23', '1', '2012-12-10 11:29:32');

-- ----------------------------
-- Table structure for `module_cms`
-- ----------------------------
DROP TABLE IF EXISTS `module_cms`;
CREATE TABLE `module_cms` (
  `module_cms_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_cms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_cms
-- ----------------------------
INSERT INTO `module_cms` VALUES ('5', '8', '0', '1', '1', '9', '2012-11-09 15:44:44', '9', '2012-11-09 15:44:44');
INSERT INTO `module_cms` VALUES ('6', '8', '0', '1', '2', '9', '2012-11-09 15:45:19', '9', '2012-11-09 15:45:19');
INSERT INTO `module_cms` VALUES ('8', '8', '5', '1', '1', '9', '2012-11-09 15:47:09', '9', '2012-11-09 15:47:09');
INSERT INTO `module_cms` VALUES ('9', '8', '8', '1', '1', '9', '2012-11-09 15:48:05', '9', '2012-11-09 15:48:05');
INSERT INTO `module_cms` VALUES ('11', '1', '0', '1', '3', '2', '2012-12-04 17:03:58', '2', '2012-12-04 17:02:42');
INSERT INTO `module_cms` VALUES ('12', '1', '0', '1', '4', '2', '2012-12-20 18:27:36', '2', '2012-12-20 18:27:36');

-- ----------------------------
-- Table structure for `module_cms_1`
-- ----------------------------
DROP TABLE IF EXISTS `module_cms_1`;
CREATE TABLE `module_cms_1` (
  `module_cms_1_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_cms_1_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_cms_1
-- ----------------------------
INSERT INTO `module_cms_1` VALUES ('14', '1', '0', '1', '1', '2', '2012-12-04 17:15:22', '2', '2012-12-04 16:55:03');
INSERT INTO `module_cms_1` VALUES ('15', '1', '0', '1', '2', '2', '2012-12-04 17:25:33', '2', '2012-12-04 17:25:33');

-- ----------------------------
-- Table structure for `module_cms_2`
-- ----------------------------
DROP TABLE IF EXISTS `module_cms_2`;
CREATE TABLE `module_cms_2` (
  `module_cms_2_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_cms_2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_cms_2
-- ----------------------------
INSERT INTO `module_cms_2` VALUES ('15', '1', '0', '1', '2', '2', '2012-12-04 17:27:54', '2', '2012-12-04 14:45:15');
INSERT INTO `module_cms_2` VALUES ('16', '1', '0', '1', '1', '2', '2012-12-04 17:27:54', '2', '2012-12-04 17:17:18');

-- ----------------------------
-- Table structure for `module_cms_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_cms_detail`;
CREATE TABLE `module_cms_detail` (
  `module_cms_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_cms_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(90) DEFAULT NULL,
  `thumb` varchar(128) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`module_cms_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_cms_detail
-- ----------------------------
INSERT INTO `module_cms_detail` VALUES ('17', '5', '1', 'cars', 'Blue hills_thumb_1.jpg', '<p>parent 1</p>');
INSERT INTO `module_cms_detail` VALUES ('18', '5', '2', 'cars', 'Blue hills_thumb.jpg', '<p>parent 1</p>');
INSERT INTO `module_cms_detail` VALUES ('19', '5', '3', 'cars', 'Blue hills_thumb.jpg', '<p>parent 1</p>');
INSERT INTO `module_cms_detail` VALUES ('20', '5', '4', 'cars', 'Blue hills_thumb.jpg', '<p>parent 1</p>');
INSERT INTO `module_cms_detail` VALUES ('21', '6', '1', 'Animals', 'Sunset_thumb_1.jpg', '<p>I am parent 2</p>');
INSERT INTO `module_cms_detail` VALUES ('22', '6', '2', 'Animals', 'Sunset_thumb.jpg', '<p>I am parent 2</p>');
INSERT INTO `module_cms_detail` VALUES ('23', '6', '3', 'Animals', 'Sunset_thumb.jpg', '<p>I am parent 2</p>');
INSERT INTO `module_cms_detail` VALUES ('24', '6', '4', 'Animals', 'Sunset_thumb.jpg', '<p>I am parent 2</p>');
INSERT INTO `module_cms_detail` VALUES ('29', '8', '1', 'bentley', 'Blue hills_thumb_2.jpg', '<p>I am child of cars</p>');
INSERT INTO `module_cms_detail` VALUES ('30', '8', '2', 'bentley', 'Blue hills_thumb.jpg', '<p>I am child of cars</p>');
INSERT INTO `module_cms_detail` VALUES ('31', '8', '3', 'bentley', 'Blue hills_thumb.jpg', '<p>I am child of cars</p>');
INSERT INTO `module_cms_detail` VALUES ('32', '8', '4', 'bentley', 'Blue hills_thumb.jpg', '<p>I am child of cars</p>');
INSERT INTO `module_cms_detail` VALUES ('33', '9', '1', 'C101 Bentley', 'Blue hills_thumb_3.jpg', '<p>I am child of bentley</p>');
INSERT INTO `module_cms_detail` VALUES ('34', '9', '2', 'C101 Bentley', 'Blue hills_thumb.jpg', '<p>I am child of bentley</p>');
INSERT INTO `module_cms_detail` VALUES ('35', '9', '3', 'C101 Bentley', 'Blue hills_thumb.jpg', '<p>I am child of bentley</p>');
INSERT INTO `module_cms_detail` VALUES ('36', '9', '4', 'C101 Bentley', 'Blue hills_thumb.jpg', '<p>I am child of bentley</p>');
INSERT INTO `module_cms_detail` VALUES ('39', '11', '1', 'qew', 'Winter_6.jpg', '<p>ewq</p>');
INSERT INTO `module_cms_detail` VALUES ('40', '11', '2', 'qew', 'Sunset.jpg', '<p>ewq</p>');
INSERT INTO `module_cms_detail` VALUES ('41', '12', '1', 'I am the king of this wholw whole Whore Whore OMG!\'s!', '', '');
INSERT INTO `module_cms_detail` VALUES ('42', '12', '2', 'I am the king of this wholw whole Whore Whore OMG!\'s!', '', '');

-- ----------------------------
-- Table structure for `module_cms_detail_1`
-- ----------------------------
DROP TABLE IF EXISTS `module_cms_detail_1`;
CREATE TABLE `module_cms_detail_1` (
  `module_cms_detail_1_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_cms_1_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(90) DEFAULT NULL,
  `thumb` varchar(128) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`module_cms_detail_1_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_cms_detail_1
-- ----------------------------
INSERT INTO `module_cms_detail_1` VALUES ('45', '14', '1', 'just checking', 'Sunset_1.jpg', '<p>q23</p>');
INSERT INTO `module_cms_detail_1` VALUES ('46', '14', '2', 'just checking', 'Sunset.jpg', '<p>q23</p>');
INSERT INTO `module_cms_detail_1` VALUES ('47', '15', '1', 'clearvoyant', 'Water lilies.jpg', '<p>qwe</p>');
INSERT INTO `module_cms_detail_1` VALUES ('48', '15', '2', 'clearvoyant', 'Water lilies.jpg', '<p>qwe</p>');

-- ----------------------------
-- Table structure for `module_cms_detail_2`
-- ----------------------------
DROP TABLE IF EXISTS `module_cms_detail_2`;
CREATE TABLE `module_cms_detail_2` (
  `module_cms_detail_2_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_cms_2_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(90) DEFAULT NULL,
  `thumb` varchar(128) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`module_cms_detail_2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_cms_detail_2
-- ----------------------------
INSERT INTO `module_cms_detail_2` VALUES ('47', '15', '1', 'qwe:edited', 'Winter.jpg', '<p>asd</p>');
INSERT INTO `module_cms_detail_2` VALUES ('48', '15', '2', 'qwe', 'Sunset.jpg', '<p>asd</p>');
INSERT INTO `module_cms_detail_2` VALUES ('49', '16', '1', 'blankspot', 'Water lilies.jpg', '<p>poi</p>');
INSERT INTO `module_cms_detail_2` VALUES ('50', '16', '2', 'blankspot', 'Water lilies.jpg', '<p>poi</p>');

-- ----------------------------
-- Table structure for `module_contact`
-- ----------------------------
DROP TABLE IF EXISTS `module_contact`;
CREATE TABLE `module_contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `fk_customer` (`customer_id`),
  KEY `fk_contact_update` (`last_updated_by`),
  KEY `fk_contact_created` (`created_by`),
  CONSTRAINT `fk_contact_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_contact_update` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_contact
-- ----------------------------
INSERT INTO `module_contact` VALUES ('3', '1', '1', '1', '1', '2012-10-04 15:39:43', '1', '2012-09-20 17:25:28');
INSERT INTO `module_contact` VALUES ('4', '1', '1', '2', '1', '2012-10-04 15:39:43', '2', '2012-09-24 17:11:57');
INSERT INTO `module_contact` VALUES ('5', '5', '1', '1', '6', '2012-09-28 18:28:06', '6', '2012-09-28 18:28:06');
INSERT INTO `module_contact` VALUES ('32', '21', '1', '1', '11', '2012-11-21 17:32:30', '11', '2012-11-21 17:28:34');
INSERT INTO `module_contact` VALUES ('49', '1', '1', '3', '2', '2012-12-19 18:26:30', '2', '2012-12-19 18:23:30');
INSERT INTO `module_contact` VALUES ('71', '1', '1', '4', '2', '2012-12-21 18:19:06', '2', '2012-12-21 18:17:36');
INSERT INTO `module_contact` VALUES ('72', '1', '1', '5', '2', '2012-12-21 18:22:15', '2', '2012-12-21 18:22:15');
INSERT INTO `module_contact` VALUES ('73', '1', '1', '6', '2', '2013-01-04 18:09:15', '2', '2012-12-21 18:28:27');
INSERT INTO `module_contact` VALUES ('74', '1', '1', '7', '2', '2013-01-04 18:47:29', '2', '2013-01-04 18:11:09');
INSERT INTO `module_contact` VALUES ('75', '1', '1', '8', '2', '2013-01-08 18:31:53', '2', '2013-01-04 18:48:10');

-- ----------------------------
-- Table structure for `module_contact_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_contact_detail`;
CREATE TABLE `module_contact_detail` (
  `contact_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `location` varchar(60) DEFAULT NULL,
  `address` varchar(180) DEFAULT NULL,
  `plz` varchar(20) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `phone_1` varchar(20) DEFAULT NULL,
  `phone_2` varchar(20) DEFAULT NULL,
  `phone_3` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `email_1` varchar(60) DEFAULT NULL,
  `email_2` varchar(60) DEFAULT NULL,
  `email_3` varchar(60) DEFAULT NULL,
  `website` varchar(180) DEFAULT NULL,
  `timings` text,
  `logo` varchar(256) DEFAULT NULL,
  `information` varchar(256) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`contact_detail_id`),
  KEY `fk_contact` (`contact_id`),
  KEY `fk_cd_language` (`language_id`),
  KEY `fk_cd_updated` (`last_updated_by`),
  KEY `fk_cd_created` (`created_by`),
  CONSTRAINT `fk_cd_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_cd_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  CONSTRAINT `fk_cd_updated` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_contact` FOREIGN KEY (`contact_id`) REFERENCES `module_contact` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_contact_detail
-- ----------------------------
INSERT INTO `module_contact_detail` VALUES ('2', '3', '1', 'Test Location 1', 'Test Location 1', null, null, null, '787878787878', '', '', '', '22.306549', '73.18757599999999', 'test@location1.com', '', '', 'www.location1.com', '1000 to 2000', 'Blue hills.jpg', null, '1', '2012-09-20 17:25:28', '1', '2012-09-20 17:25:28');
INSERT INTO `module_contact_detail` VALUES ('3', '3', '2', 'Lieu du test 1 Test', 'Lieu du test 1', null, null, null, '787878787878', '', '', '', '22.306549', '73.18757599999999', 'test@location1.com', '', '', 'www.location1.com', '1000 to 2000', 'Blue hills.jpg', null, '1', '2012-10-03 15:58:05', '1', '2012-10-03 15:58:05');
INSERT INTO `module_contact_detail` VALUES ('4', '3', '3', 'Test Location 1', 'Test Location 1', null, null, null, '787878787878', '', '', '', '22.306549', '73.18757599999999', 'test@location1.com', '', '', 'www.location1.com', '1000 to 2000', 'Blue hills.jpg', null, '1', '2012-09-20 17:25:28', '1', '2012-09-20 17:25:28');
INSERT INTO `module_contact_detail` VALUES ('5', '4', '1', 'can\'t say anything', 'b-10', null, null, null, '123', '123', '123', '123', '41.3804777', '2.182028100000025', '', '', '', '', '100-5000', null, null, '2', '2012-09-25 17:48:03', '2', '2012-09-25 17:48:03');
INSERT INTO `module_contact_detail` VALUES ('6', '4', '2', 'can\'t say', 'b-10', null, null, null, '123', '123', '123', '123', '41.3804777', '2.182028100000025', '', '', '', '', '100-5000', null, null, '2', '2012-09-24 17:11:57', '2', '2012-09-24 17:11:57');
INSERT INTO `module_contact_detail` VALUES ('7', '5', '1', 'who cares', '', null, null, null, '', '', '', '', '22.299999237061', '73.199996948242', '', '', '', '', '', null, null, '6', '2012-09-28 18:28:06', '6', '2012-09-28 18:28:06');
INSERT INTO `module_contact_detail` VALUES ('8', '5', '2', 'who cares', '', null, null, null, '', '', '', '', '22.299999237061', '73.199996948242', '', '', '', '', '', null, null, '6', '2012-09-28 18:28:06', '6', '2012-09-28 18:28:06');
INSERT INTO `module_contact_detail` VALUES ('95', '32', '1', 'zxc', '', null, null, null, '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node><day0><open_1>09:00 AM</open_1><close_1>06:00 PM</close_1><comment1></comment1><closed_1>0</closed_1></day0><day1><open_2>09:00 AM</open_2><close_2>06:00 PM</close_2><comment2></comment2><closed_2>0</closed_2></day1><day2><open_3>09:00 AM</open_3><close_3>06:00 PM</close_3><comment3></comment3><closed_3>0</closed_3></day2><day3><open_4>09:00 AM</open_4><close_4>06:00 PM</close_4><comment4></comment4><closed_4>0</closed_4></day3><day4><open_5>09:00 AM</open_5><close_5>06:00 PM</close_5><comment5></comment5><closed_5>0</closed_5></day4><day5><open_6>09:00 AM</open_6><close_6>06:00 PM</close_6><comment6></comment6><closed_6>0</closed_6></day5><day6><open_7>09:00 AM</open_7><close_7>06:00 PM</close_7><comment7></comment7><closed_7>0</closed_7></day6></node>', '/appstart/public/resource/contact/images//appstart/public/resource/contact/images/', '', '11', '2012-11-21 17:30:02', '11', '2012-11-21 17:30:02');
INSERT INTO `module_contact_detail` VALUES ('96', '32', '2', 'zxc', '', null, null, null, '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node><day0><open_1>09:00 AM</open_1><close_1>06:00 PM</close_1><comment1></comment1><closed_1>0</closed_1></day0><day1><open_2>09:00 AM</open_2><close_2>06:00 PM</close_2><comment2></comment2><closed_2>0</closed_2></day1><day2><open_3>09:00 AM</open_3><close_3>06:00 PM</close_3><comment3></comment3><closed_3>0</closed_3></day2><day3><open_4>09:00 AM</open_4><close_4>06:00 PM</close_4><comment4></comment4><closed_4>0</closed_4></day3><day4><open_5>09:00 AM</open_5><close_5>06:00 PM</close_5><comment5></comment5><closed_5>0</closed_5></day4><day5><open_6>09:00 AM</open_6><close_6>06:00 PM</close_6><comment6></comment6><closed_6>0</closed_6></day5><day6><open_7>09:00 AM</open_7><close_7>06:00 PM</close_7><comment7></comment7><closed_7>0</closed_7></day6></node>', null, '', '11', '2012-11-21 17:28:34', '11', '2012-11-21 17:28:34');
INSERT INTO `module_contact_detail` VALUES ('97', '32', '3', 'zxc', '', null, null, null, '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node><day0><open_1>09:00 AM</open_1><close_1>06:00 PM</close_1><comment1></comment1><closed_1>0</closed_1></day0><day1><open_2>09:00 AM</open_2><close_2>06:00 PM</close_2><comment2></comment2><closed_2>0</closed_2></day1><day2><open_3>09:00 AM</open_3><close_3>06:00 PM</close_3><comment3></comment3><closed_3>0</closed_3></day2><day3><open_4>09:00 AM</open_4><close_4>06:00 PM</close_4><comment4></comment4><closed_4>0</closed_4></day3><day4><open_5>09:00 AM</open_5><close_5>06:00 PM</close_5><comment5></comment5><closed_5>0</closed_5></day4><day5><open_6>09:00 AM</open_6><close_6>06:00 PM</close_6><comment6></comment6><closed_6>0</closed_6></day5><day6><open_7>09:00 AM</open_7><close_7>06:00 PM</close_7><comment7></comment7><closed_7>0</closed_7></day6></node>', null, '', '11', '2012-11-21 17:28:34', '11', '2012-11-21 17:28:34');
INSERT INTO `module_contact_detail` VALUES ('98', '32', '4', 'zxc', '', null, null, null, '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node><day0><open_1>09:00 AM</open_1><close_1>06:00 PM</close_1><comment1></comment1><closed_1>0</closed_1></day0><day1><open_2>09:00 AM</open_2><close_2>06:00 PM</close_2><comment2></comment2><closed_2>0</closed_2></day1><day2><open_3>09:00 AM</open_3><close_3>06:00 PM</close_3><comment3></comment3><closed_3>0</closed_3></day2><day3><open_4>09:00 AM</open_4><close_4>06:00 PM</close_4><comment4></comment4><closed_4>0</closed_4></day3><day4><open_5>09:00 AM</open_5><close_5>06:00 PM</close_5><comment5></comment5><closed_5>0</closed_5></day4><day5><open_6>09:00 AM</open_6><close_6>06:00 PM</close_6><comment6></comment6><closed_6>0</closed_6></day5><day6><open_7>09:00 AM</open_7><close_7>06:00 PM</close_7><comment7></comment7><closed_7>0</closed_7></day6></node>', null, '', '11', '2012-11-21 17:28:34', '11', '2012-11-21 17:28:34');
INSERT INTO `module_contact_detail` VALUES ('131', '49', '1', 'blankHitler', '', null, null, null, '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node><record><order>7</order><day>7</day><from>07:07</from><to>07:07</to></record><record><order>9</order><day>9</day><from>09:09</from><to>09:26</to></record></node>', '/appstart/public/resource/contact/images/', '', '2', '2012-12-19 18:26:30', '2', '2012-12-19 18:26:30');
INSERT INTO `module_contact_detail` VALUES ('132', '49', '2', 'blankHitler', '', null, null, null, '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node><record><order>1</order><day>1</day><from>01:01</from><to>11:23</to></record></node>', null, '', '2', '2012-12-19 18:23:30', '2', '2012-12-19 18:23:30');
INSERT INTO `module_contact_detail` VALUES ('157', '71', '1', 'asdfgh', '', '', '', '0', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node></node>', '', '', '2', '2012-12-21 18:19:06', '2', '2012-12-21 18:19:06');
INSERT INTO `module_contact_detail` VALUES ('158', '71', '2', 'asdfgh', '', '', '', '0', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node></node>', 'Sunset.jpg', '', '2', '2012-12-21 18:17:36', '2', '2012-12-21 18:17:36');
INSERT INTO `module_contact_detail` VALUES ('159', '72', '1', 'hdfghff', '', '', 'birju', '2', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node></node>', '', '', '2', '2012-12-21 18:22:15', '2', '2012-12-21 18:22:15');
INSERT INTO `module_contact_detail` VALUES ('160', '72', '2', 'hdfghff', '', '', 'birju', '2', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node></node>', '', '', '2', '2012-12-21 18:22:15', '2', '2012-12-21 18:22:15');
INSERT INTO `module_contact_detail` VALUES ('161', '73', '1', '123', '', '380052', 'ahmedabadEdited', 'Angola', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node><record><order>1</order><day>2</day><from>03:18</from><to>03:18</to></record><record><order>2</order><day>3</day><from>06:21</from><to>07:22</to></record></node>', '', '', '2', '2013-01-04 18:09:15', '2', '2013-01-04 18:09:15');
INSERT INTO `module_contact_detail` VALUES ('162', '73', '2', '123', '', '', 'ahmedabad', 'Angola', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node></node>', '', '', '2', '2012-12-21 18:28:27', '2', '2012-12-21 18:28:27');
INSERT INTO `module_contact_detail` VALUES ('163', '74', '1', 'Just a entry', '', '', '', '0', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node></node>', '', '', '2', '2013-01-04 18:47:29', '2', '2013-01-04 18:47:29');
INSERT INTO `module_contact_detail` VALUES ('164', '74', '2', 'Just a entry', '', '', '', 'Afghanistan', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node></node>', '', '', '2', '2013-01-04 18:11:09', '2', '2013-01-04 18:11:09');
INSERT INTO `module_contact_detail` VALUES ('165', '75', '1', 'Just another entry', '', '', '', 'Bahamas', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node></node>', '', '', '2', '2013-01-08 18:31:53', '2', '2013-01-08 18:31:53');
INSERT INTO `module_contact_detail` VALUES ('166', '75', '2', 'Just another entry', '', '', '', '0', '', '', '', '', '22.299999', '73.199997', '', '', '', '', '<node></node>', 'delete.png', '', '2', '2013-01-04 18:48:10', '2', '2013-01-04 18:48:10');

-- ----------------------------
-- Table structure for `module_document`
-- ----------------------------
DROP TABLE IF EXISTS `module_document`;
CREATE TABLE `module_document` (
  `module_document_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_document_category_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `order` int(11) NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_document_id`),
  KEY `fk_md_customer` (`customer_id`),
  CONSTRAINT `fk_md_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_document
-- ----------------------------
INSERT INTO `module_document` VALUES ('1', '0', '1', '1', '2', '1', '2012-10-17 17:06:15', '1', '2012-10-17 16:57:32');
INSERT INTO `module_document` VALUES ('3', '0', '1', '1', '1', '1', '2012-10-17 17:06:15', '1', '2012-10-17 17:04:52');

-- ----------------------------
-- Table structure for `module_document_category`
-- ----------------------------
DROP TABLE IF EXISTS `module_document_category`;
CREATE TABLE `module_document_category` (
  `module_document_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `order` int(11) NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_document_category_id`),
  KEY `fk_mdc_customer` (`customer_id`) USING BTREE,
  CONSTRAINT `fk_mdc_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of module_document_category
-- ----------------------------

-- ----------------------------
-- Table structure for `module_document_category_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_document_category_detail`;
CREATE TABLE `module_document_category_detail` (
  `module_document_category_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_document_category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_document_category_detail_id`),
  KEY `fk_mdc_id` (`module_document_category_id`) USING BTREE,
  KEY `fk_mdc_language` (`language_id`) USING BTREE,
  CONSTRAINT `fk_mdc_id` FOREIGN KEY (`module_document_category_id`) REFERENCES `module_document_category` (`module_document_category_id`),
  CONSTRAINT `fk_mdc_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of module_document_category_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `module_document_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_document_detail`;
CREATE TABLE `module_document_detail` (
  `module_document_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_document_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `document_path` varchar(255) DEFAULT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_document_detail_id`),
  KEY `fk_md_id` (`module_document_id`),
  KEY `fk_md_lang` (`language_id`),
  CONSTRAINT `fk_md_id` FOREIGN KEY (`module_document_id`) REFERENCES `module_document` (`module_document_id`),
  CONSTRAINT `fk_md_lang` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_document_detail
-- ----------------------------
INSERT INTO `module_document_detail` VALUES ('1', '1', '1', 'WSDD (English)', '<p><span style=\"color: #000080;\"><strong>WSDD&nbsp;(English)</strong></span></p>', 'AppStart WSDD.docx', 'wsdd (English)', 'DOCX', '16911', '1', '2012-10-17 17:05:25', '1', '2012-10-17 16:57:32');
INSERT INTO `module_document_detail` VALUES ('2', '1', '2', 'WSDD', '<p><span style=\"color: #000080;\"><strong>WSDD</strong></span></p>', 'AppStart WSDD.docx', 'wsdd', 'DOCX', '16911', '1', '2012-10-17 16:57:32', '1', '2012-10-17 16:57:32');
INSERT INTO `module_document_detail` VALUES ('5', '3', '1', 'Functional Specification 4.0', '<p>Functional Specification 4.0</p>', 'Functional Spec ver4.0.doc', 'Functional, Specification, 4.0', 'DOC', '186368', '1', '2012-10-17 17:04:52', '1', '2012-10-17 17:04:52');
INSERT INTO `module_document_detail` VALUES ('6', '3', '2', 'Functional Specification 4.0', '<p>Functional Specification 4.0</p>', 'Functional Spec ver4.0.doc', 'Functional, Specification, 4.0', 'DOC', '186368', '1', '2012-10-17 17:04:52', '1', '2012-10-17 17:04:52');

-- ----------------------------
-- Table structure for `module_events`
-- ----------------------------
DROP TABLE IF EXISTS `module_events`;
CREATE TABLE `module_events` (
  `module_events_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_events_id`),
  KEY `event_customer` (`customer_id`),
  CONSTRAINT `event_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_events
-- ----------------------------
INSERT INTO `module_events` VALUES ('1', '1', '1', '2', '2', '2012-12-31 10:43:09', '1', '2012-10-08 17:25:36');
INSERT INTO `module_events` VALUES ('2', '1', '1', '1', '1', '2012-10-16 17:32:51', '1', '2012-10-08 17:35:44');
INSERT INTO `module_events` VALUES ('11', '21', '1', '1', '11', '2012-11-21 17:50:30', '11', '2012-11-21 17:50:30');
INSERT INTO `module_events` VALUES ('14', '1', '1', '3', '2', '2013-01-03 13:26:37', '2', '2013-01-03 13:01:43');
INSERT INTO `module_events` VALUES ('15', '1', '1', '4', '2', '2013-01-04 13:09:09', '2', '2013-01-04 12:34:57');
INSERT INTO `module_events` VALUES ('18', '1', '1', '5', '2', '2013-01-08 20:49:32', '2', '2013-01-04 12:42:57');
INSERT INTO `module_events` VALUES ('19', '1', '1', '6', '2', '2013-01-09 18:10:56', '2', '2013-01-09 18:10:23');

-- ----------------------------
-- Table structure for `module_events_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_events_detail`;
CREATE TABLE `module_events_detail` (
  `module_events_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_events_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `title` text,
  `description` text,
  `image` varchar(128) DEFAULT NULL,
  `notes` text,
  `recurrence` varchar(15) DEFAULT NULL,
  `stop_by` tinyint(4) DEFAULT NULL,
  `stop_at` varchar(15) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_events_detail_id`),
  KEY `fk_events` (`module_events_id`),
  KEY `fk_event_lang` (`language_id`),
  CONSTRAINT `fk_events` FOREIGN KEY (`module_events_id`) REFERENCES `module_events` (`module_events_id`),
  CONSTRAINT `fk_event_lang` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_events_detail
-- ----------------------------
INSERT INTO `module_events_detail` VALUES ('1', '1', '1', '2012-10-08 08:00:00', '2012-10-15 08:00:00', 'Test Event In English', '<p>Test Event In English</p>', 'appstart-logo.png', '', 'Daily', '1', '', '2', '2012-12-31 10:43:09', '1', '2012-10-08 17:33:27');
INSERT INTO `module_events_detail` VALUES ('2', '1', '2', '2012-10-08 08:00:00', '2012-10-15 08:00:00', 'Test Event In French', 'Test Event In French', 'appstart-logo.png', null, null, null, null, '1', '2012-10-08 17:34:10', '1', '2012-10-08 17:34:10');
INSERT INTO `module_events_detail` VALUES ('3', '2', '1', '2012-10-08 23:00:00', '2012-10-15 23:00:00', 'Test Event 2 In English', 'Test Event 2 In English', 'appstart-admin.png', null, null, null, null, '1', '2012-10-08 17:36:52', '1', '2012-10-08 17:36:52');
INSERT INTO `module_events_detail` VALUES ('4', '2', '2', '2012-10-08 23:00:00', '2012-10-15 23:00:00', 'Test Event 2 In French', 'Test Event 2 In French', 'appstart-admin.png', null, null, null, null, '1', '2012-10-08 17:35:44', '1', '2012-10-08 17:35:44');
INSERT INTO `module_events_detail` VALUES ('37', '11', '1', '2012-11-21 00:00:00', '2012-11-22 00:00:00', 'asd', '', null, '', null, null, null, '11', '2012-11-21 17:50:30', '11', '2012-11-21 17:50:30');
INSERT INTO `module_events_detail` VALUES ('38', '11', '2', '2012-11-21 00:00:00', '2012-11-22 00:00:00', 'asd', '', null, '', null, null, null, '11', '2012-11-21 17:50:30', '11', '2012-11-21 17:50:30');
INSERT INTO `module_events_detail` VALUES ('39', '11', '3', '2012-11-21 00:00:00', '2012-11-22 00:00:00', 'asd', '', null, '', null, null, null, '11', '2012-11-21 17:50:30', '11', '2012-11-21 17:50:30');
INSERT INTO `module_events_detail` VALUES ('40', '11', '4', '2012-11-21 00:00:00', '2012-11-22 00:00:00', 'asd', '', null, '', null, null, null, '11', '2012-11-21 17:50:30', '11', '2012-11-21 17:50:30');
INSERT INTO `module_events_detail` VALUES ('45', '14', '1', '2013-01-30 00:00:00', '2013-01-31 00:00:00', 'qwe', '', null, '', 'Daily', '1', '1', '2', '2013-01-03 13:26:37', '2', '2013-01-03 13:01:43');
INSERT INTO `module_events_detail` VALUES ('46', '14', '2', null, null, 'qwe', '', null, '', 'Daily', '1', '1', '2', '2013-01-03 13:01:43', '2', '2013-01-03 13:01:43');
INSERT INTO `module_events_detail` VALUES ('47', '15', '1', '2013-01-25 00:00:00', '2013-01-31 00:00:00', 'what is this', '', null, '', 'Daily', '1', '1', '2', '2013-01-04 13:09:09', '2', '2013-01-04 12:34:57');
INSERT INTO `module_events_detail` VALUES ('48', '15', '2', null, null, 'what is this', '', null, '', 'Daily', '1', '1', '2', '2013-01-04 12:34:57', '2', '2013-01-04 12:34:57');
INSERT INTO `module_events_detail` VALUES ('50', '18', '1', null, null, 'I really don\'t understand', '', null, '', 'Daily', '1', '1', '2', '2013-01-08 20:49:32', '2', '2013-01-04 12:42:57');
INSERT INTO `module_events_detail` VALUES ('51', '18', '2', null, null, 'I really don\'t understand', '', null, '', 'Daily', '1', '1', '2', '2013-01-04 12:42:57', '2', '2013-01-04 12:42:57');
INSERT INTO `module_events_detail` VALUES ('52', '19', '1', '2013-01-09 10:00:00', '2013-01-09 08:20:00', 'Nirav', '', null, '', 'Daily', '1', '1', '2', '2013-01-09 18:10:56', '2', '2013-01-09 18:10:23');
INSERT INTO `module_events_detail` VALUES ('53', '19', '2', '2013-01-10 00:00:00', '2013-01-25 00:00:00', 'Nirav', '', null, '', 'Daily', '1', '1', '2', '2013-01-09 18:10:23', '2', '2013-01-09 18:10:23');

-- ----------------------------
-- Table structure for `module_events_location`
-- ----------------------------
DROP TABLE IF EXISTS `module_events_location`;
CREATE TABLE `module_events_location` (
  `module_events_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_events_detail_id` int(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `plz` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `latitude` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `longitude` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`module_events_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of module_events_location
-- ----------------------------
INSERT INTO `module_events_location` VALUES ('7', '1', 'Test Location 1', '', '', null, null, null, null);
INSERT INTO `module_events_location` VALUES ('8', '1', 'b-10', '', '', null, null, null, null);
INSERT INTO `module_events_location` VALUES ('14', '46', '', '', '', null, null, null, null);
INSERT INTO `module_events_location` VALUES ('20', '45', '', '', '', null, null, null, null);
INSERT INTO `module_events_location` VALUES ('22', '48', '', '', '', null, null, null, null);
INSERT INTO `module_events_location` VALUES ('24', '51', '', '', '', null, null, null, null);
INSERT INTO `module_events_location` VALUES ('31', '47', '', '', '', null, null, null, null);
INSERT INTO `module_events_location` VALUES ('71', '50', '', '', '', '', '', '22.299999', '73.199997');
INSERT INTO `module_events_location` VALUES ('73', '53', '', '', '', '', '', '', '');
INSERT INTO `module_events_location` VALUES ('74', '52', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `module_home_wallpaper`
-- ----------------------------
DROP TABLE IF EXISTS `module_home_wallpaper`;
CREATE TABLE `module_home_wallpaper` (
  `home_wallpaper_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `default` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`home_wallpaper_id`),
  KEY `fk_hw_customer` (`customer_id`),
  KEY `fk_hw_updated` (`last_updated_by`),
  KEY `fk_hw_created` (`created_by`),
  CONSTRAINT `fk_hw_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_hw_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_hw_updated` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_home_wallpaper
-- ----------------------------
INSERT INTO `module_home_wallpaper` VALUES ('63', '1', '1', '1', '1', '2', '2012-11-30 18:02:59', '2', '2012-11-30 18:02:59');
INSERT INTO `module_home_wallpaper` VALUES ('64', '1', '1', '1', '2', '2', '2012-11-30 18:03:47', '2', '2012-11-30 18:03:47');
INSERT INTO `module_home_wallpaper` VALUES ('65', '1', '1', '1', '3', '2', '2012-11-30 18:37:07', '2', '2012-11-30 18:37:07');
INSERT INTO `module_home_wallpaper` VALUES ('66', '1', '1', '1', '4', '2', '2012-11-30 18:37:54', '2', '2012-11-30 18:37:54');
INSERT INTO `module_home_wallpaper` VALUES ('67', '1', '1', '1', '5', '2', '2012-11-30 18:42:24', '2', '2012-11-30 18:42:24');
INSERT INTO `module_home_wallpaper` VALUES ('68', '1', '1', '1', '6', '2', '2012-11-30 18:47:37', '2', '2012-11-30 18:47:37');
INSERT INTO `module_home_wallpaper` VALUES ('69', '1', '1', '1', '7', '2', '2012-12-03 11:28:02', '2', '2012-12-03 11:28:02');

-- ----------------------------
-- Table structure for `module_home_wallpaper_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_home_wallpaper_detail`;
CREATE TABLE `module_home_wallpaper_detail` (
  `home_wallpaper_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `home_wallpaper_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `image_title` varchar(60) DEFAULT NULL,
  `link_to_module` varchar(60) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`home_wallpaper_detail_id`),
  KEY `fk_hwd_wallpaper` (`home_wallpaper_id`),
  KEY `fk_hwd_language` (`language_id`),
  KEY `fk_hwd_updated` (`last_updated_by`),
  KEY `fk_hwd_created` (`created_by`),
  CONSTRAINT `fk_hwd_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_hwd_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  CONSTRAINT `fk_hwd_updated` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_hwd_wallpaper` FOREIGN KEY (`home_wallpaper_id`) REFERENCES `module_home_wallpaper` (`home_wallpaper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_home_wallpaper_detail
-- ----------------------------
INSERT INTO `module_home_wallpaper_detail` VALUES ('119', '63', '1', 'birju1', '', '2', '2012-11-30 18:02:59', '2', '2012-11-30 18:02:59');
INSERT INTO `module_home_wallpaper_detail` VALUES ('120', '63', '2', 'birju1', '', '2', '2012-11-30 18:03:00', '2', '2012-11-30 18:03:00');
INSERT INTO `module_home_wallpaper_detail` VALUES ('121', '64', '1', 'birju2', '', '2', '2012-11-30 18:03:47', '2', '2012-11-30 18:03:47');
INSERT INTO `module_home_wallpaper_detail` VALUES ('122', '64', '2', 'birju2', '', '2', '2012-11-30 18:03:48', '2', '2012-11-30 18:03:48');
INSERT INTO `module_home_wallpaper_detail` VALUES ('123', '65', '1', 'birju leaving', '', '2', '2012-11-30 18:37:07', '2', '2012-11-30 18:37:07');
INSERT INTO `module_home_wallpaper_detail` VALUES ('124', '65', '2', 'birju leaving', '', '2', '2012-11-30 18:37:07', '2', '2012-11-30 18:37:07');
INSERT INTO `module_home_wallpaper_detail` VALUES ('125', '66', '1', 'birju again', '', '2', '2012-11-30 18:37:54', '2', '2012-11-30 18:37:54');
INSERT INTO `module_home_wallpaper_detail` VALUES ('126', '66', '2', 'birju again', '', '2', '2012-11-30 18:37:54', '2', '2012-11-30 18:37:54');
INSERT INTO `module_home_wallpaper_detail` VALUES ('127', '67', '1', 'birju is not going anywhere', '', '2', '2012-11-30 18:42:24', '2', '2012-11-30 18:42:24');
INSERT INTO `module_home_wallpaper_detail` VALUES ('128', '67', '2', 'birju is not going anywhere', '', '2', '2012-11-30 18:42:25', '2', '2012-11-30 18:42:25');
INSERT INTO `module_home_wallpaper_detail` VALUES ('129', '68', '1', 'wtffffffffffffffffffffffffffffffffffffffffffffffffffffff', '', '2', '2012-11-30 18:47:37', '2', '2012-11-30 18:47:37');
INSERT INTO `module_home_wallpaper_detail` VALUES ('130', '68', '2', 'wtffffffffffffffffffffffffffffffffffffffffffffffffffffff', '', '2', '2012-11-30 18:47:37', '2', '2012-11-30 18:47:37');
INSERT INTO `module_home_wallpaper_detail` VALUES ('131', '69', '1', 'this is a very very very very very very veryveryvery long te', '', '2', '2012-12-03 11:28:02', '2', '2012-12-03 11:28:02');
INSERT INTO `module_home_wallpaper_detail` VALUES ('132', '69', '2', 'this is a very very very very very very veryveryvery long te', '', '2', '2012-12-03 11:28:02', '2', '2012-12-03 11:28:02');

-- ----------------------------
-- Table structure for `module_home_wallpaper_image`
-- ----------------------------
DROP TABLE IF EXISTS `module_home_wallpaper_image`;
CREATE TABLE `module_home_wallpaper_image` (
  `home_wallpaper_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `home_wallpaper_detail_id` int(11) DEFAULT NULL,
  `resolution_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`home_wallpaper_image_id`),
  KEY `fk_hwid_id` (`home_wallpaper_detail_id`) USING BTREE,
  KEY `fk_hwir_id` (`resolution_id`) USING BTREE,
  CONSTRAINT `fk_hwid_id` FOREIGN KEY (`home_wallpaper_detail_id`) REFERENCES `module_home_wallpaper_detail` (`home_wallpaper_detail_id`),
  CONSTRAINT `fk_hwir_id` FOREIGN KEY (`resolution_id`) REFERENCES `resolution` (`resolution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of module_home_wallpaper_image
-- ----------------------------
INSERT INTO `module_home_wallpaper_image` VALUES ('145', '119', '1', 'Blue hills.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('146', '119', '2', 'Blue hills.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('147', '119', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('148', '119', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('149', '119', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('150', '119', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('151', '119', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('152', '119', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('153', '120', '1', 'Blue hills.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('154', '120', '2', 'Blue hills.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('155', '120', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('156', '120', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('157', '120', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('158', '120', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('159', '120', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('160', '120', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('161', '121', '1', 'Sunset.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('162', '121', '2', 'Sunset.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('163', '121', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('164', '121', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('165', '121', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('166', '121', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('167', '121', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('168', '121', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('169', '122', '1', 'Sunset.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('170', '122', '2', 'Sunset.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('171', '122', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('172', '122', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('173', '122', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('174', '122', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('175', '122', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('176', '122', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('177', '123', '1', 'Sunset.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('178', '123', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('179', '123', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('180', '123', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('181', '123', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('182', '123', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('183', '123', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('184', '123', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('185', '124', '1', 'Sunset.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('186', '124', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('187', '124', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('188', '124', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('189', '124', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('190', '124', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('191', '124', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('192', '124', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('193', '125', '1', 'Water lilies.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('194', '125', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('195', '125', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('196', '125', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('197', '125', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('198', '125', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('199', '125', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('200', '125', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('201', '126', '1', 'Water lilies.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('202', '126', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('203', '126', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('204', '126', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('205', '126', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('206', '126', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('207', '126', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('208', '126', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('209', '127', '1', 'Winter.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('210', '127', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('211', '127', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('212', '127', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('213', '127', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('214', '127', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('215', '127', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('216', '127', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('217', '128', '1', 'Winter.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('218', '128', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('219', '128', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('220', '128', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('221', '128', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('222', '128', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('223', '128', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('224', '128', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('225', '129', '1', 'Sunset.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('226', '129', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('227', '129', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('228', '129', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('229', '129', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('230', '129', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('231', '129', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('232', '129', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('233', '130', '1', 'Sunset.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('234', '130', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('235', '130', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('236', '130', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('237', '130', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('238', '130', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('239', '130', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('240', '130', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('241', '131', '1', 'Winter.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('242', '131', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('243', '131', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('244', '131', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('245', '131', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('246', '131', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('247', '131', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('248', '131', '8', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('249', '132', '1', 'Winter.jpg');
INSERT INTO `module_home_wallpaper_image` VALUES ('250', '132', '2', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('251', '132', '3', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('252', '132', '4', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('253', '132', '5', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('254', '132', '6', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('255', '132', '7', '');
INSERT INTO `module_home_wallpaper_image` VALUES ('256', '132', '8', '');

-- ----------------------------
-- Table structure for `module_image_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `module_image_gallery`;
CREATE TABLE `module_image_gallery` (
  `module_image_gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_image_gallery_category_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_image_gallery_id`),
  KEY `fk_mig_category` (`module_image_gallery_category_id`),
  KEY `fk_mig_created` (`created_by`),
  KEY `fk_img_customer` (`customer_id`),
  KEY `fk_img_updated` (`last_updated_by`),
  CONSTRAINT `fk_img_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_img_updated` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_mig_category` FOREIGN KEY (`module_image_gallery_category_id`) REFERENCES `module_image_gallery_category` (`module_image_gallery_category_id`),
  CONSTRAINT `fk_mig_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_image_gallery
-- ----------------------------
INSERT INTO `module_image_gallery` VALUES ('3', '5', '31', '1', '2', '20', '2012-12-10 19:15:24', '20', '2012-12-10 19:15:24');
INSERT INTO `module_image_gallery` VALUES ('4', '5', '31', '1', '3', '20', '2012-12-10 19:15:24', '20', '2012-12-10 19:15:24');
INSERT INTO `module_image_gallery` VALUES ('5', '7', '1', '1', '1', '2', '2013-01-04 11:22:31', '2', '2012-12-11 15:21:13');
INSERT INTO `module_image_gallery` VALUES ('6', '7', '1', '1', '2', '2', '2012-12-11 15:21:13', '2', '2012-12-11 15:21:13');
INSERT INTO `module_image_gallery` VALUES ('11', '7', '1', '1', '4', '2', '2013-01-02 11:54:20', '2', '2013-01-01 16:10:52');
INSERT INTO `module_image_gallery` VALUES ('12', '7', '1', '1', '5', '2', '2013-01-01 19:13:18', '2', '2013-01-01 16:10:52');
INSERT INTO `module_image_gallery` VALUES ('17', '7', '1', '1', '6', '2', '2013-01-01 18:58:46', '2', '2013-01-01 18:58:46');
INSERT INTO `module_image_gallery` VALUES ('18', '7', '1', '1', '7', '2', '2013-01-01 19:06:56', '2', '2013-01-01 19:06:56');
INSERT INTO `module_image_gallery` VALUES ('19', '7', '1', '1', '8', '2', '2013-01-01 19:21:40', '2', '2013-01-01 19:20:52');
INSERT INTO `module_image_gallery` VALUES ('20', '7', '1', '1', '9', '2', '2013-01-02 11:53:25', '2', '2013-01-01 19:30:14');
INSERT INTO `module_image_gallery` VALUES ('21', '7', '1', '1', '10', '2', '2013-01-02 11:56:36', '2', '2013-01-02 11:55:15');
INSERT INTO `module_image_gallery` VALUES ('22', '7', '1', '1', '11', '2', '2013-01-02 11:55:15', '2', '2013-01-02 11:55:15');
INSERT INTO `module_image_gallery` VALUES ('23', '7', '1', '1', '12', '2', '2013-01-02 11:55:15', '2', '2013-01-02 11:55:15');
INSERT INTO `module_image_gallery` VALUES ('24', '7', '1', '1', '13', '2', '2013-01-02 12:03:45', '2', '2013-01-02 12:03:45');
INSERT INTO `module_image_gallery` VALUES ('25', '7', '1', '1', '14', '2', '2013-01-02 12:03:45', '2', '2013-01-02 12:03:45');
INSERT INTO `module_image_gallery` VALUES ('26', '7', '1', '1', '15', '2', '2013-01-02 12:03:45', '2', '2013-01-02 12:03:45');
INSERT INTO `module_image_gallery` VALUES ('27', '7', '1', '1', '16', '2', '2013-01-02 12:10:24', '2', '2013-01-02 12:10:24');
INSERT INTO `module_image_gallery` VALUES ('28', '7', '1', '1', '17', '2', '2013-01-02 12:10:24', '2', '2013-01-02 12:10:24');
INSERT INTO `module_image_gallery` VALUES ('29', '7', '1', '1', '18', '2', '2013-01-02 12:11:56', '2', '2013-01-02 12:11:56');
INSERT INTO `module_image_gallery` VALUES ('30', '7', '1', '1', '19', '2', '2013-01-02 12:11:56', '2', '2013-01-02 12:11:56');
INSERT INTO `module_image_gallery` VALUES ('31', '7', '1', '1', '20', '2', '2013-01-02 12:13:12', '2', '2013-01-02 12:13:12');
INSERT INTO `module_image_gallery` VALUES ('32', '7', '1', '1', '21', '2', '2013-01-02 12:13:12', '2', '2013-01-02 12:13:12');
INSERT INTO `module_image_gallery` VALUES ('33', '7', '1', '1', '22', '2', '2013-01-04 11:31:29', '2', '2013-01-04 11:30:39');
INSERT INTO `module_image_gallery` VALUES ('34', '7', '1', '1', '23', '2', '2013-01-04 11:31:48', '2', '2013-01-04 11:31:48');

-- ----------------------------
-- Table structure for `module_image_gallery_1`
-- ----------------------------
DROP TABLE IF EXISTS `module_image_gallery_1`;
CREATE TABLE `module_image_gallery_1` (
  `module_image_gallery_1_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_image_gallery_category_1_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_image_gallery_1_id`),
  KEY `fk_mig_category` (`module_image_gallery_category_1_id`),
  KEY `fk_mig_created` (`created_by`),
  KEY `fk_img_customer` (`customer_id`),
  KEY `fk_img_updated` (`last_updated_by`),
  CONSTRAINT `module_image_gallery_1_ibfk_1` FOREIGN KEY (`module_image_gallery_category_1_id`) REFERENCES `module_image_gallery_category_1` (`module_image_gallery_category_1_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_image_gallery_1
-- ----------------------------
INSERT INTO `module_image_gallery_1` VALUES ('11', '13', '1', '1', '2', '2', '2013-01-04 11:20:43', '2', '2012-12-05 14:39:20');
INSERT INTO `module_image_gallery_1` VALUES ('12', '13', '1', '1', '1', '2', '2013-01-04 11:21:03', '2', '2012-12-05 14:39:21');
INSERT INTO `module_image_gallery_1` VALUES ('13', '13', '31', '1', '3', '20', '2012-12-10 19:48:00', '20', '2012-12-10 19:48:00');

-- ----------------------------
-- Table structure for `module_image_gallery_category`
-- ----------------------------
DROP TABLE IF EXISTS `module_image_gallery_category`;
CREATE TABLE `module_image_gallery_category` (
  `module_image_gallery_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_image_gallery_category_id`),
  KEY `fk_migc_created` (`created_by`),
  KEY `fk_migc_customer` (`customer_id`),
  KEY `fk_migc_updated` (`last_updated_by`),
  CONSTRAINT `fk_migc_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_migc_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_migc_updated` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_image_gallery_category
-- ----------------------------
INSERT INTO `module_image_gallery_category` VALUES ('5', '31', '1', '1', '20', '2012-12-10 19:10:35', '20', '2012-12-10 19:10:35');
INSERT INTO `module_image_gallery_category` VALUES ('7', '1', '1', '1', '2', '2012-12-11 15:19:08', '2', '2012-12-11 15:19:08');

-- ----------------------------
-- Table structure for `module_image_gallery_category_1`
-- ----------------------------
DROP TABLE IF EXISTS `module_image_gallery_category_1`;
CREATE TABLE `module_image_gallery_category_1` (
  `module_image_gallery_category_1_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_image_gallery_category_1_id`),
  KEY `fk_migc_created` (`created_by`),
  KEY `fk_migc_customer` (`customer_id`),
  KEY `fk_migc_updated` (`last_updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_image_gallery_category_1
-- ----------------------------
INSERT INTO `module_image_gallery_category_1` VALUES ('13', '1', '1', '1', '2', '2012-12-05 13:01:30', '2', '2012-12-05 13:01:30');
INSERT INTO `module_image_gallery_category_1` VALUES ('15', '1', '1', '2', '2', '2013-01-03 18:09:44', '2', '2013-01-03 18:09:44');

-- ----------------------------
-- Table structure for `module_image_gallery_category_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_image_gallery_category_detail`;
CREATE TABLE `module_image_gallery_category_detail` (
  `module_image_gallery_category_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_image_gallery_category_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_image_gallery_category_detail_id`),
  KEY `fk_migcd_created` (`created_by`),
  KEY `fk_migcd_category` (`module_image_gallery_category_id`),
  KEY `fk_migcd_language` (`language_id`),
  KEY `fk_migcd_updated` (`last_updated_by`),
  CONSTRAINT `fk_migcd_category` FOREIGN KEY (`module_image_gallery_category_id`) REFERENCES `module_image_gallery_category` (`module_image_gallery_category_id`),
  CONSTRAINT `fk_migcd_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_migcd_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  CONSTRAINT `fk_migcd_updated` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_image_gallery_category_detail
-- ----------------------------
INSERT INTO `module_image_gallery_category_detail` VALUES ('1', '5', '1', 'birju ofcourse', '20', '2012-12-10 19:10:35', '20', '2012-12-10 19:10:35');
INSERT INTO `module_image_gallery_category_detail` VALUES ('3', '7', '1', 'just try', '2', '2012-12-11 15:19:08', '2', '2012-12-11 15:19:08');
INSERT INTO `module_image_gallery_category_detail` VALUES ('4', '7', '2', 'just try', '2', '2012-12-11 15:19:08', '2', '2012-12-11 15:19:08');

-- ----------------------------
-- Table structure for `module_image_gallery_category_detail_1`
-- ----------------------------
DROP TABLE IF EXISTS `module_image_gallery_category_detail_1`;
CREATE TABLE `module_image_gallery_category_detail_1` (
  `module_image_gallery_category_detail_1_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_image_gallery_category_1_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_image_gallery_category_detail_1_id`),
  KEY `fk_migcd_created` (`created_by`),
  KEY `fk_migcd_category` (`module_image_gallery_category_1_id`),
  KEY `fk_migcd_language` (`language_id`),
  KEY `fk_migcd_updated` (`last_updated_by`),
  CONSTRAINT `module_image_gallery_category_detail_1_ibfk_1` FOREIGN KEY (`module_image_gallery_category_1_id`) REFERENCES `module_image_gallery_category_1` (`module_image_gallery_category_1_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_image_gallery_category_detail_1
-- ----------------------------
INSERT INTO `module_image_gallery_category_detail_1` VALUES ('23', '13', '1', 'twitter:edited', '2', '2012-12-05 13:01:30', '2', '2012-12-05 13:01:30');
INSERT INTO `module_image_gallery_category_detail_1` VALUES ('24', '13', '2', 'twitter', '2', '2012-12-05 13:01:30', '2', '2012-12-05 13:01:30');
INSERT INTO `module_image_gallery_category_detail_1` VALUES ('28', '15', '1', 'birju category:edited', '2', '2013-01-03 18:09:44', '2', '2013-01-03 18:09:44');
INSERT INTO `module_image_gallery_category_detail_1` VALUES ('29', '15', '2', 'birju category:edited', '2', '2013-01-03 18:09:44', '2', '2013-01-03 18:09:44');

-- ----------------------------
-- Table structure for `module_image_gallery_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_image_gallery_detail`;
CREATE TABLE `module_image_gallery_detail` (
  `module_image_gallery_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_image_gallery_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `image_path` varchar(256) DEFAULT NULL,
  `keywords` varchar(256) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_image_gallery_detail_id`),
  KEY `fk_migd_id` (`module_image_gallery_id`),
  CONSTRAINT `fk_migd_id` FOREIGN KEY (`module_image_gallery_id`) REFERENCES `module_image_gallery` (`module_image_gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_image_gallery_detail
-- ----------------------------
INSERT INTO `module_image_gallery_detail` VALUES ('2', '3', '1', 'wer', '', 'Winter_1.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('3', '4', '1', 'wer', '', 'Blue hills.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('4', '5', '1', 'dream of it', '<p>xcvb</p>', 'Winter_4.jpg', 'wer', null);
INSERT INTO `module_image_gallery_detail` VALUES ('5', '5', '2', 'dream of it', '<p>xcvb</p>', 'Blue hills_11.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('6', '6', '1', 'do whatever', '<p>zvcx</p>', 'Blue hills_12.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('7', '6', '2', 'do whatever', '<p>zvcx</p>', 'Blue hills_12.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('16', '11', '1', '2', '', 'Blue hills.jpg', 'qwe', null);
INSERT INTO `module_image_gallery_detail` VALUES ('17', '11', '2', '2', '', 'Blue hills.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('18', '12', '1', '3', '', 'Sunset_1.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('19', '12', '2', '3', '', 'Sunset_1.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('28', '17', '1', 'qwe', '', '', 'birju,shah', null);
INSERT INTO `module_image_gallery_detail` VALUES ('29', '17', '2', 'qwe', '', '', 'birju,shah', null);
INSERT INTO `module_image_gallery_detail` VALUES ('30', '18', '1', 'dfh', '', '', 'qwe', null);
INSERT INTO `module_image_gallery_detail` VALUES ('31', '18', '2', 'dfh', '', '', 'qwe', null);
INSERT INTO `module_image_gallery_detail` VALUES ('32', '19', '1', 'asd', '', 'Sunset_2.jpg', 'qwe,zxc', null);
INSERT INTO `module_image_gallery_detail` VALUES ('33', '19', '2', 'asd', '', 'Sunset_2.jpg', 'qwe,zxc', null);
INSERT INTO `module_image_gallery_detail` VALUES ('34', '20', '1', 'tired', '', '', '', null);
INSERT INTO `module_image_gallery_detail` VALUES ('35', '20', '2', 'tired', '', '', 'qwe,zxc', null);
INSERT INTO `module_image_gallery_detail` VALUES ('36', '21', '1', 'birju 1', '', 'Water lilies_2.jpg', '', null);
INSERT INTO `module_image_gallery_detail` VALUES ('37', '21', '2', 'birju 1', '', 'Water lilies_2.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('38', '22', '1', 'birju 2', '', 'Blue hills_1.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('39', '22', '2', 'birju 2', '', 'Blue hills_1.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('40', '23', '1', 'birju 3', '', 'Sunset_3.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('41', '23', '2', 'birju 3', '', 'Sunset_3.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('42', '24', '1', null, null, 'Water lilies_3.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('43', '24', '2', null, null, 'Water lilies_3.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('44', '25', '1', null, null, 'Blue hills_2.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('45', '25', '2', null, null, 'Blue hills_2.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('46', '26', '1', null, null, 'Sunset_4.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('47', '26', '2', null, null, 'Sunset_4.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('48', '27', '1', null, null, 'Water lilies_4.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('49', '27', '2', null, null, 'Water lilies_4.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('50', '28', '1', null, null, 'Sunset_5.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('51', '28', '2', null, null, 'Sunset_5.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('52', '29', '1', null, null, 'Water lilies_5.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('53', '29', '2', null, null, 'Water lilies_5.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('54', '30', '1', null, null, 'Winter_2.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('55', '30', '2', null, null, 'Winter_2.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('56', '31', '1', null, null, 'Water lilies_6.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('57', '31', '2', null, null, 'Water lilies_6.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('58', '32', '1', null, null, 'Winter_3.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('59', '32', '2', null, null, 'Winter_3.jpg', null, null);
INSERT INTO `module_image_gallery_detail` VALUES ('60', '33', '1', 'qwe', '<p>asd</p>', 'Water lilies_7.jpg', '', null);
INSERT INTO `module_image_gallery_detail` VALUES ('61', '33', '2', 'qwe', '<p>asd</p>', 'Water lilies_7.jpg', 'qwe,zxc', null);
INSERT INTO `module_image_gallery_detail` VALUES ('62', '34', '1', 'fafaf', '', '', '', null);
INSERT INTO `module_image_gallery_detail` VALUES ('63', '34', '2', 'fafaf', '', '', '', null);

-- ----------------------------
-- Table structure for `module_image_gallery_detail_1`
-- ----------------------------
DROP TABLE IF EXISTS `module_image_gallery_detail_1`;
CREATE TABLE `module_image_gallery_detail_1` (
  `module_image_gallery_detail_1_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_image_gallery_1_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `image_path` varchar(256) DEFAULT NULL,
  `keywords` varchar(256) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_image_gallery_detail_1_id`),
  KEY `fk_migd_id` (`module_image_gallery_1_id`),
  CONSTRAINT `module_image_gallery_detail_1_ibfk_1` FOREIGN KEY (`module_image_gallery_1_id`) REFERENCES `module_image_gallery_1` (`module_image_gallery_1_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_image_gallery_detail_1
-- ----------------------------
INSERT INTO `module_image_gallery_detail_1` VALUES ('19', '11', '1', 'qwe', '<p>zxc</p>', 'Winter_2.jpg', 'qwe', null);
INSERT INTO `module_image_gallery_detail_1` VALUES ('20', '11', '2', 'qwe', '<p>zxc</p>', 'Winter_2.jpg', 'qwe', null);
INSERT INTO `module_image_gallery_detail_1` VALUES ('21', '12', '1', 'qwe1', '<p>xcz</p>', 'Sunset_2.jpg', 'qwe', null);
INSERT INTO `module_image_gallery_detail_1` VALUES ('22', '12', '2', 'qwe1', '<p>xcz</p>', 'Sunset_2.jpg', 'qwe', null);
INSERT INTO `module_image_gallery_detail_1` VALUES ('23', '13', '1', 'qwe', '<p>zxc</p>', 'Winter.jpg', null, null);

-- ----------------------------
-- Table structure for `module_music`
-- ----------------------------
DROP TABLE IF EXISTS `module_music`;
CREATE TABLE `module_music` (
  `module_music_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_music_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of module_music
-- ----------------------------

-- ----------------------------
-- Table structure for `module_music_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_music_detail`;
CREATE TABLE `module_music_detail` (
  `module_music_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_music_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `artist` varchar(120) DEFAULT NULL,
  `album` varchar(120) DEFAULT NULL,
  `track_url` varchar(256) DEFAULT NULL,
  `preview_url` varchar(256) DEFAULT NULL,
  `album_art_url` varchar(256) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`module_music_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of module_music_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `module_push_message`
-- ----------------------------
DROP TABLE IF EXISTS `module_push_message`;
CREATE TABLE `module_push_message` (
  `push_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`push_message_id`),
  KEY `fk_pm_customer` (`customer_id`),
  CONSTRAINT `fk_pm_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_push_message
-- ----------------------------
INSERT INTO `module_push_message` VALUES ('16', '5', '1', '7', '6', '2012-09-27 18:44:57', '6', '2012-09-27 18:44:57');
INSERT INTO `module_push_message` VALUES ('17', '5', '1', '6', '6', '2012-09-28 20:33:31', '6', '2012-09-27 17:36:32');
INSERT INTO `module_push_message` VALUES ('18', '5', '1', '3', '6', '2012-09-27 16:09:17', '6', '2012-09-27 16:09:17');
INSERT INTO `module_push_message` VALUES ('21', '5', '1', '8', '6', '2012-09-27 19:56:20', '6', '2012-09-27 19:56:20');
INSERT INTO `module_push_message` VALUES ('22', '5', '1', '9', '6', '2012-09-28 20:34:13', '6', '2012-09-28 20:34:13');
INSERT INTO `module_push_message` VALUES ('23', '5', '1', '10', '6', '2012-09-28 20:38:19', '6', '2012-09-28 20:36:59');
INSERT INTO `module_push_message` VALUES ('31', '1', '1', '3', '2', '2013-01-03 15:59:50', '1', '2012-10-04 15:13:54');
INSERT INTO `module_push_message` VALUES ('32', '1', '1', '2', '1', '2012-10-04 15:33:02', '1', '2012-10-04 15:16:31');
INSERT INTO `module_push_message` VALUES ('33', '1', '1', '1', '1', '2012-10-04 15:33:02', '1', '2012-10-04 15:16:55');
INSERT INTO `module_push_message` VALUES ('36', '8', '1', '2', '9', '2012-10-31 11:50:15', '9', '2012-10-10 11:36:26');
INSERT INTO `module_push_message` VALUES ('37', '8', '1', '1', '9', '2012-10-31 11:50:15', '9', '2012-10-10 11:37:04');
INSERT INTO `module_push_message` VALUES ('38', '8', '1', '3', '9', '2012-10-31 11:50:15', '9', '2012-10-10 11:37:37');
INSERT INTO `module_push_message` VALUES ('44', '1', null, '8', '2', null, '2', '2013-01-03 11:29:47');
INSERT INTO `module_push_message` VALUES ('45', '1', null, '9', '2', null, '2', '2013-01-03 11:30:38');
INSERT INTO `module_push_message` VALUES ('46', '1', null, '10', '2', '2013-01-03 11:37:12', '2', '2013-01-03 11:37:12');
INSERT INTO `module_push_message` VALUES ('47', '1', null, '11', '2', '2013-01-03 11:42:36', '2', '2013-01-03 11:42:36');
INSERT INTO `module_push_message` VALUES ('62', '1', '1', '12', '2', '2013-01-03 15:59:25', '2', '2013-01-03 12:44:04');
INSERT INTO `module_push_message` VALUES ('63', '1', '1', '13', '2', '2013-01-03 16:27:46', '2', '2013-01-03 16:00:10');

-- ----------------------------
-- Table structure for `module_push_message_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_push_message_detail`;
CREATE TABLE `module_push_message_detail` (
  `push_message_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `push_message_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `message_date` datetime DEFAULT NULL,
  PRIMARY KEY (`push_message_detail_id`),
  KEY `fk_pmd_message` (`push_message_id`),
  CONSTRAINT `fk_pmd_message` FOREIGN KEY (`push_message_id`) REFERENCES `module_push_message` (`push_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_push_message_detail
-- ----------------------------
INSERT INTO `module_push_message_detail` VALUES ('4', '16', '4', 'will it work', 'pingg', '2012-09-27 18:44:57');
INSERT INTO `module_push_message_detail` VALUES ('5', '22', '4', 'This is a Push message - In French', 'You will get this all the time you open your app', '2012-09-28 20:34:13');
INSERT INTO `module_push_message_detail` VALUES ('6', '18', '1', 'Hello Birju', 'dreamz', '2012-09-27 16:09:17');
INSERT INTO `module_push_message_detail` VALUES ('9', '21', '1', 'dreamzx', 'dreamzzz', '2012-09-27 19:56:20');
INSERT INTO `module_push_message_detail` VALUES ('10', '21', '2', 'dreamzx', 'dreamzzz', '2012-09-27 19:56:20');
INSERT INTO `module_push_message_detail` VALUES ('11', '21', '3', 'dreamzx', 'dreamzzz', '2012-09-27 19:56:20');
INSERT INTO `module_push_message_detail` VALUES ('12', '21', '4', 'dreamzx', 'dreamzzz', '2012-09-27 19:56:20');
INSERT INTO `module_push_message_detail` VALUES ('13', '23', '1', 'Testing Push - In English', 'this is test description  English', '2012-09-28 20:36:59');
INSERT INTO `module_push_message_detail` VALUES ('14', '23', '2', 'Testing Push - French', 'this is test description Fench', '2012-09-28 20:36:59');
INSERT INTO `module_push_message_detail` VALUES ('15', '23', '3', 'Testing Push', 'this is test description', '2012-09-28 20:36:59');
INSERT INTO `module_push_message_detail` VALUES ('16', '23', '4', 'Testing Push', 'this is test description', '2012-09-28 20:36:59');
INSERT INTO `module_push_message_detail` VALUES ('36', '31', '1', 'JQuery Banner Rotator', 'JQuery Banner Rotator', '2012-10-04 15:13:54');
INSERT INTO `module_push_message_detail` VALUES ('37', '31', '2', 'JQuery Banner Rotator', 'JQuery Banner Rotator', '2012-10-04 15:13:54');
INSERT INTO `module_push_message_detail` VALUES ('38', '32', '1', 'JQuery Banner Rotator 2', 'JQuery Banner Rotator 2', '2012-10-04 15:16:31');
INSERT INTO `module_push_message_detail` VALUES ('39', '32', '2', 'JQuery Banner Rotator 2', 'JQuery Banner Rotator 2', '2012-10-04 15:16:31');
INSERT INTO `module_push_message_detail` VALUES ('40', '33', '1', 'JQuery Banner Rotator 3', 'JQuery Banner Rotator 3', '2012-10-04 15:16:55');
INSERT INTO `module_push_message_detail` VALUES ('41', '33', '2', 'JQuery Banner Rotator 3', 'JQuery Banner Rotator 3', '2012-10-04 15:16:55');
INSERT INTO `module_push_message_detail` VALUES ('50', '36', '1', 'just checking', 'it\'s a message', '2012-10-10 11:36:26');
INSERT INTO `module_push_message_detail` VALUES ('51', '36', '2', 'just checking', 'it\'s a message', '2012-10-10 11:36:26');
INSERT INTO `module_push_message_detail` VALUES ('52', '36', '3', 'just checking', 'it\'s a message', '2012-10-10 11:36:26');
INSERT INTO `module_push_message_detail` VALUES ('53', '36', '4', 'just checking', 'it\'s a message', '2012-10-10 11:36:26');
INSERT INTO `module_push_message_detail` VALUES ('54', '37', '1', 'another one', '<p>shouldn\'t there b some tool for data</p>', '2012-10-10 19:08:13');
INSERT INTO `module_push_message_detail` VALUES ('55', '37', '2', 'another one', 'shouldn\'t there b some tool for data entry', '2012-10-10 11:37:04');
INSERT INTO `module_push_message_detail` VALUES ('56', '37', '3', 'another one', 'shouldn\'t there b some tool for data entry', '2012-10-10 11:37:04');
INSERT INTO `module_push_message_detail` VALUES ('57', '37', '4', 'another one', 'shouldn\'t there b some tool for data entry', '2012-10-10 11:37:04');
INSERT INTO `module_push_message_detail` VALUES ('58', '38', '1', 'lat one', 'just to check if reorder works properly', '2012-10-10 11:37:37');
INSERT INTO `module_push_message_detail` VALUES ('59', '38', '2', 'lat one', 'just to check if reorder works properly', '2012-10-10 11:37:37');
INSERT INTO `module_push_message_detail` VALUES ('60', '38', '3', 'lat one', 'just to check if reorder works properly', '2012-10-10 11:37:37');
INSERT INTO `module_push_message_detail` VALUES ('61', '38', '4', 'lat one', 'just to check if reorder works properly', '2012-10-10 11:37:37');
INSERT INTO `module_push_message_detail` VALUES ('72', '44', '1', 'time pass', 'Morning Time pass', '0000-00-00 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('73', '44', '2', 'time pass', 'Morning Time pass', '0000-00-00 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('74', '45', '1', '234', 'sdf`', '0000-00-00 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('75', '45', '2', '234', 'sdf`', '0000-00-00 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('76', '46', '1', 'ad', 'erer', '0000-00-00 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('77', '46', '2', 'ad', 'erer', '0000-00-00 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('78', '47', '1', 'qwert', 'asdzcvsfr', '0000-00-00 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('79', '47', '2', 'qwert', 'asdzcvsfr', '0000-00-00 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('108', '62', '1', 'qwe', 'czv', '2013-01-11 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('109', '62', '2', 'qwe', 'czv', null);
INSERT INTO `module_push_message_detail` VALUES ('110', '63', '1', 'qwesdf', 'as', '2013-01-31 00:00:00');
INSERT INTO `module_push_message_detail` VALUES ('111', '63', '2', 'qwe', 'asd', null);

-- ----------------------------
-- Table structure for `module_social_media`
-- ----------------------------
DROP TABLE IF EXISTS `module_social_media`;
CREATE TABLE `module_social_media` (
  `module_social_media_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_social_media_id`),
  KEY `fk_sm_customer_id` (`customer_id`) USING BTREE,
  CONSTRAINT `fk_sm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of module_social_media
-- ----------------------------

-- ----------------------------
-- Table structure for `module_social_media_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_social_media_detail`;
CREATE TABLE `module_social_media_detail` (
  `module_social_media_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_social_media_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `social_media_type_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon_path` varchar(255) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_social_media_detail_id`),
  KEY `fk_smd_media_id` (`module_social_media_id`) USING BTREE,
  KEY `fk_smd_language` (`language_id`) USING BTREE,
  KEY `fk_smd_media_type` (`social_media_type_id`) USING BTREE,
  CONSTRAINT `fk_smd_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  CONSTRAINT `fk_smd_media_id` FOREIGN KEY (`module_social_media_id`) REFERENCES `module_social_media` (`module_social_media_id`),
  CONSTRAINT `fk_smd_media_type` FOREIGN KEY (`social_media_type_id`) REFERENCES `social_media_type` (`social_media_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of module_social_media_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `module_website`
-- ----------------------------
DROP TABLE IF EXISTS `module_website`;
CREATE TABLE `module_website` (
  `module_website_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_website_id`),
  KEY `fk_mw_customer` (`customer_id`),
  KEY `last_updated_by` (`last_updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `fk_mw_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `module_website_ibfk_1` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `module_website_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of module_website
-- ----------------------------
INSERT INTO `module_website` VALUES ('41', '8', '1', '10', '9', '2012-10-30 19:14:08', '9', '2012-10-30 19:14:08');
INSERT INTO `module_website` VALUES ('42', '8', '1', '11', '9', '2012-10-30 19:14:27', '9', '2012-10-30 19:14:27');
INSERT INTO `module_website` VALUES ('43', '8', '1', '12', '9', '2012-10-30 19:18:19', '9', '2012-10-30 19:18:19');
INSERT INTO `module_website` VALUES ('44', '8', '1', '13', '9', '2012-10-30 19:23:46', '9', '2012-10-30 19:23:46');
INSERT INTO `module_website` VALUES ('45', '8', '1', '14', '9', '2012-10-30 19:26:17', '9', '2012-10-30 19:26:17');
INSERT INTO `module_website` VALUES ('46', '8', '1', '15', '9', '2012-10-30 19:26:34', '9', '2012-10-30 19:26:34');
INSERT INTO `module_website` VALUES ('47', '8', '1', '16', '9', '2012-10-30 19:30:31', '9', '2012-10-30 19:30:31');
INSERT INTO `module_website` VALUES ('48', '8', '1', '17', '9', '2012-10-30 19:31:51', '9', '2012-10-30 19:31:51');
INSERT INTO `module_website` VALUES ('49', '8', '1', '18', '9', '2012-10-30 19:33:01', '9', '2012-10-30 19:33:01');
INSERT INTO `module_website` VALUES ('50', '8', '1', '19', '9', '2012-10-30 19:35:03', '9', '2012-10-30 19:35:03');
INSERT INTO `module_website` VALUES ('51', '8', '1', '20', '9', '2012-10-30 19:38:22', '9', '2012-10-30 19:38:22');
INSERT INTO `module_website` VALUES ('52', '8', '1', '21', '9', '2012-10-30 19:40:47', '9', '2012-10-30 19:40:47');

-- ----------------------------
-- Table structure for `module_website_detail`
-- ----------------------------
DROP TABLE IF EXISTS `module_website_detail`;
CREATE TABLE `module_website_detail` (
  `module_website_detail_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_website_id` int(11) unsigned DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `url` varchar(65) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`module_website_detail_id`),
  KEY `module_website_id` (`module_website_id`),
  KEY `language_id` (`language_id`),
  KEY `last_updated_by` (`last_updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `module_website_detail_ibfk_1` FOREIGN KEY (`module_website_id`) REFERENCES `module_website` (`module_website_id`),
  CONSTRAINT `module_website_detail_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  CONSTRAINT `module_website_detail_ibfk_3` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `module_website_detail_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of module_website_detail
-- ----------------------------
INSERT INTO `module_website_detail` VALUES ('116', '41', '1', 'asd', 'http://192.168.3.14', '', '9', '2012-10-30 19:14:08', '9', '2012-10-30 19:14:08');
INSERT INTO `module_website_detail` VALUES ('117', '41', '2', 'asd', 'http://192.168.3.14', '', '9', '2012-10-30 19:14:08', '9', '2012-10-30 19:14:08');
INSERT INTO `module_website_detail` VALUES ('118', '41', '3', 'asd', 'http://192.168.3.14', '', '9', '2012-10-30 19:14:08', '9', '2012-10-30 19:14:08');
INSERT INTO `module_website_detail` VALUES ('119', '41', '4', 'asd', 'http://192.168.3.14', '', '9', '2012-10-30 19:14:08', '9', '2012-10-30 19:14:08');
INSERT INTO `module_website_detail` VALUES ('120', '42', '1', 'asd', 'http://asd', '', '9', '2012-10-30 19:14:27', '9', '2012-10-30 19:14:27');
INSERT INTO `module_website_detail` VALUES ('121', '42', '2', 'asd', 'http://asd', '', '9', '2012-10-30 19:14:27', '9', '2012-10-30 19:14:27');
INSERT INTO `module_website_detail` VALUES ('122', '42', '3', 'asd', 'http://asd', '', '9', '2012-10-30 19:14:27', '9', '2012-10-30 19:14:27');
INSERT INTO `module_website_detail` VALUES ('123', '42', '4', 'asd', 'http://asd', '', '9', '2012-10-30 19:14:27', '9', '2012-10-30 19:14:27');
INSERT INTO `module_website_detail` VALUES ('124', '43', '1', 'asd', 'http://asd', '', '9', '2012-10-30 19:18:19', '9', '2012-10-30 19:18:19');
INSERT INTO `module_website_detail` VALUES ('125', '43', '2', 'asd', 'http://asd', '', '9', '2012-10-30 19:18:19', '9', '2012-10-30 19:18:19');
INSERT INTO `module_website_detail` VALUES ('126', '43', '3', 'asd', 'http://asd', '', '9', '2012-10-30 19:18:19', '9', '2012-10-30 19:18:19');
INSERT INTO `module_website_detail` VALUES ('127', '43', '4', 'asd', 'http://asd', '', '9', '2012-10-30 19:18:19', '9', '2012-10-30 19:18:19');
INSERT INTO `module_website_detail` VALUES ('128', '44', '1', 'asd', 'http://google.com', '', '9', '2012-10-30 19:23:46', '9', '2012-10-30 19:23:46');
INSERT INTO `module_website_detail` VALUES ('129', '44', '2', 'asd', 'http://google.com', '', '9', '2012-10-30 19:23:46', '9', '2012-10-30 19:23:46');
INSERT INTO `module_website_detail` VALUES ('130', '44', '3', 'asd', 'http://google.com', '', '9', '2012-10-30 19:23:46', '9', '2012-10-30 19:23:46');
INSERT INTO `module_website_detail` VALUES ('131', '44', '4', 'asd', 'http://google.com', '', '9', '2012-10-30 19:23:46', '9', '2012-10-30 19:23:46');
INSERT INTO `module_website_detail` VALUES ('132', '45', '1', 'asd', 'http://192.168.3.14', '', '9', '2012-10-30 19:26:17', '9', '2012-10-30 19:26:17');
INSERT INTO `module_website_detail` VALUES ('133', '45', '2', 'asd', 'http://192.168.3.14', '', '9', '2012-10-30 19:26:17', '9', '2012-10-30 19:26:17');
INSERT INTO `module_website_detail` VALUES ('134', '45', '3', 'asd', 'http://192.168.3.14', '', '9', '2012-10-30 19:26:17', '9', '2012-10-30 19:26:17');
INSERT INTO `module_website_detail` VALUES ('135', '45', '4', 'asd', 'http://192.168.3.14', '', '9', '2012-10-30 19:26:17', '9', '2012-10-30 19:26:17');
INSERT INTO `module_website_detail` VALUES ('136', '46', '1', 'asd', 'http://asd', '', '9', '2012-10-30 19:26:34', '9', '2012-10-30 19:26:34');
INSERT INTO `module_website_detail` VALUES ('137', '46', '2', 'asd', 'http://asd', '', '9', '2012-10-30 19:26:34', '9', '2012-10-30 19:26:34');
INSERT INTO `module_website_detail` VALUES ('138', '46', '3', 'asd', 'http://asd', '', '9', '2012-10-30 19:26:34', '9', '2012-10-30 19:26:34');
INSERT INTO `module_website_detail` VALUES ('139', '46', '4', 'asd', 'http://asd', '', '9', '2012-10-30 19:26:34', '9', '2012-10-30 19:26:34');
INSERT INTO `module_website_detail` VALUES ('140', '47', '1', 'asd', 'http://www.google.com', '', '9', '2012-10-30 19:30:31', '9', '2012-10-30 19:30:31');
INSERT INTO `module_website_detail` VALUES ('141', '47', '2', 'asd', 'http://www.google.com', '', '9', '2012-10-30 19:30:31', '9', '2012-10-30 19:30:31');
INSERT INTO `module_website_detail` VALUES ('142', '47', '3', 'asd', 'http://www.google.com', '', '9', '2012-10-30 19:30:31', '9', '2012-10-30 19:30:31');
INSERT INTO `module_website_detail` VALUES ('143', '47', '4', 'asd', 'http://www.google.com', '', '9', '2012-10-30 19:30:31', '9', '2012-10-30 19:30:31');
INSERT INTO `module_website_detail` VALUES ('144', '48', '1', 'qwe', 'http://142.42.1.1/', '', '9', '2012-10-30 19:31:51', '9', '2012-10-30 19:31:51');
INSERT INTO `module_website_detail` VALUES ('145', '48', '2', 'qwe', 'http://142.42.1.1/', '', '9', '2012-10-30 19:31:51', '9', '2012-10-30 19:31:51');
INSERT INTO `module_website_detail` VALUES ('146', '48', '3', 'qwe', 'http://142.42.1.1/', '', '9', '2012-10-30 19:31:51', '9', '2012-10-30 19:31:51');
INSERT INTO `module_website_detail` VALUES ('147', '48', '4', 'qwe', 'http://142.42.1.1/', '', '9', '2012-10-30 19:31:51', '9', '2012-10-30 19:31:51');
INSERT INTO `module_website_detail` VALUES ('148', '49', '1', 'asd', 'http://203.88.158.98', '', '9', '2012-10-30 19:33:01', '9', '2012-10-30 19:33:01');
INSERT INTO `module_website_detail` VALUES ('149', '49', '2', 'asd', 'http://203.88.158.98', '', '9', '2012-10-30 19:33:01', '9', '2012-10-30 19:33:01');
INSERT INTO `module_website_detail` VALUES ('150', '49', '3', 'asd', 'http://203.88.158.98', '', '9', '2012-10-30 19:33:01', '9', '2012-10-30 19:33:01');
INSERT INTO `module_website_detail` VALUES ('151', '49', '4', 'asd', 'http://203.88.158.98', '', '9', '2012-10-30 19:33:01', '9', '2012-10-30 19:33:01');
INSERT INTO `module_website_detail` VALUES ('152', '50', '1', 'asd', 'http://203.88.158.98', '', '9', '2012-10-30 19:35:03', '9', '2012-10-30 19:35:03');
INSERT INTO `module_website_detail` VALUES ('153', '50', '2', 'asd', 'http://203.88.158.98', '', '9', '2012-10-30 19:35:03', '9', '2012-10-30 19:35:03');
INSERT INTO `module_website_detail` VALUES ('154', '50', '3', 'asd', 'http://203.88.158.98', '', '9', '2012-10-30 19:35:03', '9', '2012-10-30 19:35:03');
INSERT INTO `module_website_detail` VALUES ('155', '50', '4', 'asd', 'http://203.88.158.98', '', '9', '2012-10-30 19:35:03', '9', '2012-10-30 19:35:03');
INSERT INTO `module_website_detail` VALUES ('156', '51', '1', 'asd', 'http://192.168.3.40:9090', '', '9', '2012-10-30 19:38:22', '9', '2012-10-30 19:38:22');
INSERT INTO `module_website_detail` VALUES ('157', '51', '2', 'asd', 'http://192.168.3.40:9090', '', '9', '2012-10-30 19:38:22', '9', '2012-10-30 19:38:22');
INSERT INTO `module_website_detail` VALUES ('158', '51', '3', 'asd', 'http://192.168.3.40:9090', '', '9', '2012-10-30 19:38:22', '9', '2012-10-30 19:38:22');
INSERT INTO `module_website_detail` VALUES ('159', '51', '4', 'asd', 'http://192.168.3.40:9090', '', '9', '2012-10-30 19:38:22', '9', '2012-10-30 19:38:22');
INSERT INTO `module_website_detail` VALUES ('160', '52', '1', 'asd', 'http://google.com', '', '9', '2012-10-30 19:40:47', '9', '2012-10-30 19:40:47');
INSERT INTO `module_website_detail` VALUES ('161', '52', '2', 'asd', 'http://google.com', '', '9', '2012-10-30 19:40:47', '9', '2012-10-30 19:40:47');
INSERT INTO `module_website_detail` VALUES ('162', '52', '3', 'asd', 'http://google.com', '', '9', '2012-10-30 19:40:47', '9', '2012-10-30 19:40:47');
INSERT INTO `module_website_detail` VALUES ('163', '52', '4', 'asd', 'http://google.com', '', '9', '2012-10-30 19:40:47', '9', '2012-10-30 19:40:47');

-- ----------------------------
-- Table structure for `resolution`
-- ----------------------------
DROP TABLE IF EXISTS `resolution`;
CREATE TABLE `resolution` (
  `resolution_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`resolution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of resolution
-- ----------------------------
INSERT INTO `resolution` VALUES ('1', '320x480', 'Galaxy Ace, iPhone, iPod Touch', '320', '480');
INSERT INTO `resolution` VALUES ('2', '800x1280', 'Samsung GT-N7000', '800', '1280');
INSERT INTO `resolution` VALUES ('3', '768x1280', null, '768', '1280');
INSERT INTO `resolution` VALUES ('4', '720x1280', 'Galaxy Nexus', '720', '1280');
INSERT INTO `resolution` VALUES ('5', '640x960', 'iPhone 4, iPhone 4S', '640', '960');
INSERT INTO `resolution` VALUES ('6', '1136x640', 'iPhone 5', '1136', '640');
INSERT INTO `resolution` VALUES ('7', '1024x768', 'iPad', '1024', '768');
INSERT INTO `resolution` VALUES ('8', '480x800', 'Galaxy S, Galaxy S II', '480', '800');

-- ----------------------------
-- Table structure for `social_media_icon`
-- ----------------------------
DROP TABLE IF EXISTS `social_media_icon`;
CREATE TABLE `social_media_icon` (
  `social_media_icon_id` int(11) NOT NULL AUTO_INCREMENT,
  `social_media_type_id` int(11) DEFAULT NULL,
  `icon_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`social_media_icon_id`),
  KEY `fk_smt_id` (`social_media_type_id`) USING BTREE,
  CONSTRAINT `fk_smt_id` FOREIGN KEY (`social_media_type_id`) REFERENCES `social_media_type` (`social_media_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of social_media_icon
-- ----------------------------
INSERT INTO `social_media_icon` VALUES ('1', '1', 'facebook/fb_1.png');
INSERT INTO `social_media_icon` VALUES ('2', '1', 'facebook/fb_2.png');
INSERT INTO `social_media_icon` VALUES ('3', '1', 'facebook/fb_3.png');
INSERT INTO `social_media_icon` VALUES ('4', '1', 'facebook/fb_4.png');
INSERT INTO `social_media_icon` VALUES ('5', '1', 'facebook/fb_5.png');
INSERT INTO `social_media_icon` VALUES ('6', '1', 'facebook/fb_6.png');
INSERT INTO `social_media_icon` VALUES ('7', '1', 'facebook/fb_7.png');
INSERT INTO `social_media_icon` VALUES ('8', '1', 'facebook/fb_8.png');
INSERT INTO `social_media_icon` VALUES ('9', '1', 'facebook/fb_9.png');
INSERT INTO `social_media_icon` VALUES ('10', '1', 'facebook/fb_10.png');
INSERT INTO `social_media_icon` VALUES ('11', '1', 'facebook/fb_11.png');
INSERT INTO `social_media_icon` VALUES ('12', '1', 'facebook/fb_12.png');
INSERT INTO `social_media_icon` VALUES ('13', '1', 'facebook/fb_13.png');
INSERT INTO `social_media_icon` VALUES ('14', '1', 'facebook/fb_14.png');
INSERT INTO `social_media_icon` VALUES ('15', '1', 'facebook/fb_15.png');
INSERT INTO `social_media_icon` VALUES ('16', '1', 'facebook/fb_16.png');
INSERT INTO `social_media_icon` VALUES ('17', '1', 'facebook/fb_17.png');
INSERT INTO `social_media_icon` VALUES ('18', '1', 'facebook/fb_18.png');
INSERT INTO `social_media_icon` VALUES ('19', '1', 'facebook/fb_19.png');
INSERT INTO `social_media_icon` VALUES ('20', '1', 'facebook/fb_20.png');
INSERT INTO `social_media_icon` VALUES ('21', '1', 'facebook/fb_21.png');
INSERT INTO `social_media_icon` VALUES ('22', '1', 'facebook/fb_22.png');
INSERT INTO `social_media_icon` VALUES ('23', '2', 'twitter/twitter_1.png');
INSERT INTO `social_media_icon` VALUES ('24', '2', 'twitter/twitter_2.png');
INSERT INTO `social_media_icon` VALUES ('25', '2', 'twitter/twitter_3.png');
INSERT INTO `social_media_icon` VALUES ('26', '2', 'twitter/twitter_4.png');
INSERT INTO `social_media_icon` VALUES ('27', '2', 'twitter/twitter_5.png');
INSERT INTO `social_media_icon` VALUES ('28', '2', 'twitter/twitter_6.png');
INSERT INTO `social_media_icon` VALUES ('29', '2', 'twitter/twitter_7.png');
INSERT INTO `social_media_icon` VALUES ('30', '2', 'twitter/twitter_8.png');
INSERT INTO `social_media_icon` VALUES ('31', '2', 'twitter/twitter_9.png');
INSERT INTO `social_media_icon` VALUES ('32', '2', 'twitter/twitter_10.png');
INSERT INTO `social_media_icon` VALUES ('33', '2', 'twitter/twitter_11.png');
INSERT INTO `social_media_icon` VALUES ('34', '2', 'twitter/twitter_12.png');
INSERT INTO `social_media_icon` VALUES ('35', '2', 'twitter/twitter_13.png');
INSERT INTO `social_media_icon` VALUES ('36', '2', 'twitter/twitter_14.png');
INSERT INTO `social_media_icon` VALUES ('37', '2', 'twitter/twitter_15.png');
INSERT INTO `social_media_icon` VALUES ('38', '2', 'twitter/twitter_16.png');
INSERT INTO `social_media_icon` VALUES ('39', '2', 'twitter/twitter_17.png');
INSERT INTO `social_media_icon` VALUES ('40', '2', 'twitter/twitter_18.png');
INSERT INTO `social_media_icon` VALUES ('41', '2', 'twitter/twitter_19.png');
INSERT INTO `social_media_icon` VALUES ('42', '2', 'twitter/twitter_20.png');
INSERT INTO `social_media_icon` VALUES ('43', '2', 'twitter/twitter_21.png');
INSERT INTO `social_media_icon` VALUES ('44', '2', 'twitter/twitter_22.png');
INSERT INTO `social_media_icon` VALUES ('45', '2', 'twitter/twitter_23.png');
INSERT INTO `social_media_icon` VALUES ('46', '2', 'twitter/twitter_24.png');
INSERT INTO `social_media_icon` VALUES ('47', '2', 'twitter/twitter_25.png');
INSERT INTO `social_media_icon` VALUES ('48', '2', 'twitter/twitter_26.png');
INSERT INTO `social_media_icon` VALUES ('49', '2', 'twitter/twitter_27.png');
INSERT INTO `social_media_icon` VALUES ('50', '2', 'twitter/twitter_28.png');
INSERT INTO `social_media_icon` VALUES ('51', '2', 'twitter/twitter_29.png');
INSERT INTO `social_media_icon` VALUES ('52', '2', 'twitter/twitter_30.png');
INSERT INTO `social_media_icon` VALUES ('53', '3', 'LinkedIn/li_1.png');
INSERT INTO `social_media_icon` VALUES ('54', '3', 'LinkedIn/li_2.png');
INSERT INTO `social_media_icon` VALUES ('55', '3', 'LinkedIn/li_3.png');
INSERT INTO `social_media_icon` VALUES ('56', '3', 'LinkedIn/li_4.png');
INSERT INTO `social_media_icon` VALUES ('57', '3', 'LinkedIn/li_5.png');
INSERT INTO `social_media_icon` VALUES ('58', '3', 'LinkedIn/li_6.png');
INSERT INTO `social_media_icon` VALUES ('59', '3', 'LinkedIn/li_7.png');
INSERT INTO `social_media_icon` VALUES ('60', '3', 'LinkedIn/li_8.png');
INSERT INTO `social_media_icon` VALUES ('61', '3', 'LinkedIn/li_9.png');
INSERT INTO `social_media_icon` VALUES ('62', '3', 'LinkedIn/li_10.png');
INSERT INTO `social_media_icon` VALUES ('63', '3', 'LinkedIn/li_11.png');
INSERT INTO `social_media_icon` VALUES ('64', '3', 'LinkedIn/li_12.png');
INSERT INTO `social_media_icon` VALUES ('65', '3', 'LinkedIn/li_13.png');
INSERT INTO `social_media_icon` VALUES ('66', '3', 'LinkedIn/li_14.png');
INSERT INTO `social_media_icon` VALUES ('67', '3', 'LinkedIn/li_15.png');
INSERT INTO `social_media_icon` VALUES ('68', '4', 'flickr/flickr_1.png');
INSERT INTO `social_media_icon` VALUES ('69', '4', 'flickr/flickr_2.png');
INSERT INTO `social_media_icon` VALUES ('70', '4', 'flickr/flickr_3.png');
INSERT INTO `social_media_icon` VALUES ('71', '4', 'flickr/flickr_4.png');
INSERT INTO `social_media_icon` VALUES ('72', '4', 'flickr/flickr_5.png');
INSERT INTO `social_media_icon` VALUES ('73', '4', 'flickr/flickr_6.png');
INSERT INTO `social_media_icon` VALUES ('74', '4', 'flickr/flickr_7.png');
INSERT INTO `social_media_icon` VALUES ('75', '4', 'flickr/flickr_8.png');
INSERT INTO `social_media_icon` VALUES ('76', '4', 'flickr/flickr_9.png');
INSERT INTO `social_media_icon` VALUES ('77', '4', 'flickr/flickr_10.png');
INSERT INTO `social_media_icon` VALUES ('78', '4', 'flickr/flickr_11.png');
INSERT INTO `social_media_icon` VALUES ('79', '4', 'flickr/flickr_12.png');
INSERT INTO `social_media_icon` VALUES ('80', '4', 'flickr/flickr_13.png');
INSERT INTO `social_media_icon` VALUES ('81', '4', 'flickr/flickr_14.png');
INSERT INTO `social_media_icon` VALUES ('82', '4', 'flickr/flickr_15.png');

-- ----------------------------
-- Table structure for `social_media_type`
-- ----------------------------
DROP TABLE IF EXISTS `social_media_type`;
CREATE TABLE `social_media_type` (
  `social_media_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`social_media_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of social_media_type
-- ----------------------------
INSERT INTO `social_media_type` VALUES ('1', 'Facebook');
INSERT INTO `social_media_type` VALUES ('2', 'Twitter');
INSERT INTO `social_media_type` VALUES ('3', 'LinkedIn');
INSERT INTO `social_media_type` VALUES ('4', 'Flickr');

-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `system_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` smallint(6) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`system_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('1', 'admin@aksystems.com', '1a9a3f07a682f7a266eb25c24f9f39d1', '1', '1', '2012-08-30 08:18:48', '1', '2012-08-23 18:57:41');
INSERT INTO `system_user` VALUES ('2', 'birju112@gmail.com', '9cc05d46f5b7ce9857424d8f8afab77b', '2', '1', '2012-09-20 17:07:10', '1', '2012-09-19 18:49:21');
INSERT INTO `system_user` VALUES ('3', 'birju112@gmail.com', 'cbbf4079764356acdacb8a36b083780d', '2', '1', '2012-09-19 19:04:30', '1', '2012-09-19 19:04:30');
INSERT INTO `system_user` VALUES ('5', 'birju.shah@aksystems-inc.com', '216a79b5dd54873ef061c4fb630b13b2', '1', '1', '2012-12-06 19:45:47', '1', '2012-12-06 19:45:47');

-- ----------------------------
-- Table structure for `template`
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_type_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `IDX_97601F83987F37DE` (`business_type_id`) USING BTREE,
  CONSTRAINT `template_ibfk_1` FOREIGN KEY (`business_type_id`) REFERENCES `business_type` (`business_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('1', '1', 'Birju', '1', '1', '2012-12-11 15:27:53', '1', '2012-09-20 16:13:18');
INSERT INTO `template` VALUES ('4', '1', 'Testing Template', '1', '1', '2012-12-11 15:25:27', '1', '2012-11-05 20:02:04');
INSERT INTO `template` VALUES ('5', '1', 'Testing Template', '1', '1', '2012-11-06 18:31:45', '1', '2012-11-06 18:31:45');
INSERT INTO `template` VALUES ('19', '1', 'Birju\'s Template', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:16:25');
INSERT INTO `template` VALUES ('20', '1', 'Birju\'s Template', '1', '1', '2012-11-06 19:30:07', '1', '2012-11-06 19:30:07');

-- ----------------------------
-- Table structure for `template_module`
-- ----------------------------
DROP TABLE IF EXISTS `template_module`;
CREATE TABLE `template_module` (
  `template_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`template_module_id`),
  KEY `IDX_7CC2FDAAFC2B591` (`module_id`) USING BTREE,
  KEY `IDX_7CC2FDA5DA0FB8` (`template_id`) USING BTREE,
  CONSTRAINT `template_module_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `template_module_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template_module
-- ----------------------------
INSERT INTO `template_module` VALUES ('152', '1', '4', '1', '1', '2012-12-11 15:25:26', '1', '2012-11-06 13:49:09');
INSERT INTO `template_module` VALUES ('192', '2', '4', '1', '1', '2012-12-11 15:25:26', '1', '2012-11-06 18:31:45');
INSERT INTO `template_module` VALUES ('193', '3', '4', '1', '1', '2012-12-11 15:25:26', '1', '2012-11-06 18:31:45');
INSERT INTO `template_module` VALUES ('194', '4', '4', '1', '1', '2012-12-11 15:25:26', '1', '2012-11-06 18:31:45');
INSERT INTO `template_module` VALUES ('195', '5', '4', '1', '1', '2012-12-11 15:25:26', '1', '2012-11-06 18:31:45');
INSERT INTO `template_module` VALUES ('196', '6', '4', '1', '1', '2012-12-11 15:25:26', '1', '2012-11-06 18:31:45');
INSERT INTO `template_module` VALUES ('197', '7', '4', '1', '1', '2012-12-11 15:25:27', '1', '2012-11-06 18:31:45');
INSERT INTO `template_module` VALUES ('198', '8', '4', '1', '1', '2012-12-11 15:25:27', '1', '2012-11-06 18:31:45');
INSERT INTO `template_module` VALUES ('199', '9', '4', '1', '1', '2012-12-11 15:25:27', '1', '2012-11-06 18:31:45');
INSERT INTO `template_module` VALUES ('203', '1', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:16:25');
INSERT INTO `template_module` VALUES ('211', '2', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:38:49');
INSERT INTO `template_module` VALUES ('212', '3', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:38:49');
INSERT INTO `template_module` VALUES ('213', '4', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:38:49');
INSERT INTO `template_module` VALUES ('214', '5', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:38:49');
INSERT INTO `template_module` VALUES ('215', '6', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:38:49');
INSERT INTO `template_module` VALUES ('216', '7', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:38:49');
INSERT INTO `template_module` VALUES ('217', '8', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:38:49');
INSERT INTO `template_module` VALUES ('218', '9', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-11-06 19:38:49');
INSERT INTO `template_module` VALUES ('219', '1', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-11-07 13:11:18');
INSERT INTO `template_module` VALUES ('220', '2', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-11-07 13:11:19');
INSERT INTO `template_module` VALUES ('221', '3', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-11-07 13:11:19');
INSERT INTO `template_module` VALUES ('222', '4', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-11-22 11:23:53');
INSERT INTO `template_module` VALUES ('223', '5', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-11-22 11:23:53');
INSERT INTO `template_module` VALUES ('224', '6', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-11-22 11:23:53');
INSERT INTO `template_module` VALUES ('225', '7', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-11-22 11:23:53');
INSERT INTO `template_module` VALUES ('226', '8', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-11-22 11:23:53');
INSERT INTO `template_module` VALUES ('227', '9', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-11-22 11:23:53');
INSERT INTO `template_module` VALUES ('228', '10', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-12-03 16:29:08');
INSERT INTO `template_module` VALUES ('229', '10', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-12-03 16:30:54');
INSERT INTO `template_module` VALUES ('230', '10', '4', '1', '1', '2012-12-11 15:25:27', '1', '2012-12-03 16:31:06');
INSERT INTO `template_module` VALUES ('231', '11', '4', '1', '1', '2012-12-11 15:25:27', '1', '2012-12-04 12:35:41');
INSERT INTO `template_module` VALUES ('232', '11', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-12-04 12:36:16');
INSERT INTO `template_module` VALUES ('233', '11', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-12-04 12:36:49');
INSERT INTO `template_module` VALUES ('234', '12', '4', '1', '1', '2012-12-11 15:25:27', '1', '2012-12-04 19:25:03');
INSERT INTO `template_module` VALUES ('235', '12', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-12-04 19:25:37');
INSERT INTO `template_module` VALUES ('236', '12', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-12-04 19:26:16');
INSERT INTO `template_module` VALUES ('237', '13', '4', '1', '1', '2012-12-11 15:25:27', '1', '2012-12-11 15:25:27');
INSERT INTO `template_module` VALUES ('238', '13', '19', '1', '1', '2012-12-11 15:27:17', '1', '2012-12-11 15:27:17');
INSERT INTO `template_module` VALUES ('239', '13', '1', '1', '1', '2012-12-11 15:27:53', '1', '2012-12-11 15:27:53');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uk_username` (`username`) USING BTREE,
  KEY `fk_group` (`user_group_id`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`user_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'dharmesh', '8bf2b3f575e891fe77ac113579817664', 'Dharmesh', '99999999999', 'dharmesh.patel@aksystems-inc.com', '1', '1', '1', '2012-10-17 16:31:30', '1', null);
INSERT INTO `user` VALUES ('2', 'birju.shah', 'b10e86f16d81499767f856690263b1ec', 'birju', '123456', 'birju112@gmail.com', '1', '1', '1', '2012-09-20 00:00:00', '1', '2012-09-20 00:00:00');
INSERT INTO `user` VALUES ('6', 'birju.shah11', '350f7273046b5d2ffbe4afbd5683f0b1', 'birju shah', '', '', '1', '5', '6', '2012-10-12 17:22:28', '6', null);
INSERT INTO `user` VALUES ('9', 'rose.doson', '3e16fa9a52c6404dae5c55e0450012f5', 'Rose Doson', '1234321', '', '1', '9', '9', '2012-11-03 17:04:10', '9', null);
INSERT INTO `user` VALUES ('10', 'birju.bombay', '52a4bd9be29ccc693a81460cf67a2f1b', 'birju shah', '09509786532', 'birju112@gmail.com', '1', '24', '10', '2012-11-21 11:25:36', '10', null);
INSERT INTO `user` VALUES ('11', 'birju.bandra', 'a5ffd5ea6c18ce9b934f8f155898d766', 'birju shah', '', '', '1', '25', '11', '2012-11-21 16:48:11', '11', null);
INSERT INTO `user` VALUES ('13', 'birju.virar', 'adfa62f7e8d0f88054af066a9d4936a5', 'birju shah', '', '', '1', '27', '13', '2012-11-22 11:42:34', '13', '2012-11-22 12:27:42');
INSERT INTO `user` VALUES ('14', 'birju.adobe', '0d7a8289a3eb24617da1f3f15d15952e', 'qwe', '', '', '1', '28', '14', '2012-12-06 11:40:01', '14', null);
INSERT INTO `user` VALUES ('15', 'birjuvshah', '0f4f484b8a123b440fc0356733f6d33a', 'Birju sirname', '', '', '1', '29', '15', '2012-12-06 15:39:38', '15', null);
INSERT INTO `user` VALUES ('16', 'birjuashah', 'e45615b1b0a436b87cedeaa6d259de97', 'birjuashah', '', '', '1', '30', '16', '2012-12-06 15:54:30', '16', null);
INSERT INTO `user` VALUES ('17', 'birjucshah', '786398104b03e1ef76a29d4e68a2400d', 'birjucshah', '', '', '1', '31', '17', '2012-12-06 16:00:40', '17', null);
INSERT INTO `user` VALUES ('20', 'birju.only', '97162fa1ba3311606753a822bba44b5c', 'Birju Only', '', 'birju.shah@aksystems-inc.com', '1', '35', '20', '2012-12-07 12:46:43', '20', null);
INSERT INTO `user` VALUES ('21', 'birju', '21edc0bd588f6fb014ead6cd151ee1de', 'Birju shah', '', '', '1', '36', '20', '2012-12-10 20:00:22', '20', '2012-12-10 20:00:22');
INSERT INTO `user` VALUES ('22', 'asdd', '59cb6c9aa206af80d30d7937fba2a783', 'birju', '', '', '1', '37', '2', '2012-12-11 15:02:45', '2', '2012-12-11 15:02:45');
INSERT INTO `user` VALUES ('27', 'birju.testing', '9c453484b722cad04183255e4093bbb8', 'birju dreamz', '', 'birjuvshah@rediffmail.com', '1', '42', '27', '2012-12-13 15:39:00', '27', null);

-- ----------------------------
-- Table structure for `user_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_group_id`),
  UNIQUE KEY `uk_customer_user_group` (`customer_id`,`name`) USING BTREE,
  KEY `fk_user_group` (`customer_id`) USING BTREE,
  CONSTRAINT `user_group_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('1', '1', 'Administrator', '1', null, '1', '2012-09-20 16:40:21');
INSERT INTO `user_group` VALUES ('5', '5', 'Administrator', '6', null, '6', '2012-09-26 18:21:47');
INSERT INTO `user_group` VALUES ('6', '5', 'testerz', '6', '2012-09-28 18:47:13', '6', '2012-09-28 18:47:13');
INSERT INTO `user_group` VALUES ('9', '8', 'Administrator', '9', null, '9', '2012-10-03 17:51:05');
INSERT INTO `user_group` VALUES ('21', '17', 'Administrator', '29', null, '29', '2012-11-06 15:43:20');
INSERT INTO `user_group` VALUES ('22', '18', 'Administrator', '30', null, '30', '2012-11-06 19:27:53');
INSERT INTO `user_group` VALUES ('24', '20', 'Administrator', '10', null, '10', '2012-11-21 11:25:36');
INSERT INTO `user_group` VALUES ('25', '21', 'Administrator', '11', null, '11', '2012-11-21 16:48:11');
INSERT INTO `user_group` VALUES ('27', '23', 'Administrator', '13', null, '13', '2012-11-22 11:42:34');
INSERT INTO `user_group` VALUES ('28', '24', 'Administrator', '14', null, '14', '2012-12-06 11:40:01');
INSERT INTO `user_group` VALUES ('29', '25', 'Administrator', '15', null, '15', '2012-12-06 15:39:38');
INSERT INTO `user_group` VALUES ('30', '26', 'Administrator', '16', null, '16', '2012-12-06 15:54:30');
INSERT INTO `user_group` VALUES ('31', '27', 'Administrator', '17', null, '17', '2012-12-06 16:00:40');
INSERT INTO `user_group` VALUES ('35', '31', 'Administrator', '20', null, '20', '2012-12-07 12:46:43');
INSERT INTO `user_group` VALUES ('36', '31', 'dreamz', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group` VALUES ('37', '1', 'just group', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group` VALUES ('42', '36', 'Administrator', '27', null, '27', '2012-12-13 12:56:42');

-- ----------------------------
-- Table structure for `user_group_module`
-- ----------------------------
DROP TABLE IF EXISTS `user_group_module`;
CREATE TABLE `user_group_module` (
  `user_group_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_group_module_id`),
  KEY `fk_group_module_group` (`user_group_id`) USING BTREE,
  KEY `fk_group_module` (`module_id`) USING BTREE,
  CONSTRAINT `user_group_module_ibfk_1` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`user_group_id`),
  CONSTRAINT `user_group_module_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_group_module
-- ----------------------------
INSERT INTO `user_group_module` VALUES ('1', '1', '1', '1', '1', '2012-10-17 16:31:30', '1', '2012-09-20 16:40:21');
INSERT INTO `user_group_module` VALUES ('2', '1', '2', '1', '1', '2012-10-17 16:31:30', '1', '2012-09-20 16:40:21');
INSERT INTO `user_group_module` VALUES ('9', '5', '1', '1', '6', '2012-10-12 17:22:28', '6', '2012-09-26 18:21:47');
INSERT INTO `user_group_module` VALUES ('10', '5', '2', '1', '6', '2012-10-12 17:22:28', '6', '2012-09-26 18:21:47');
INSERT INTO `user_group_module` VALUES ('11', '5', '3', '1', '6', '2012-10-12 17:22:28', '6', '2012-09-26 18:21:47');
INSERT INTO `user_group_module` VALUES ('12', '6', '1', '1', '6', '2012-09-28 18:47:13', '6', '2012-09-28 18:47:13');
INSERT INTO `user_group_module` VALUES ('13', '6', '2', '1', '6', '2012-09-28 18:47:13', '6', '2012-09-28 18:47:13');
INSERT INTO `user_group_module` VALUES ('14', '6', '3', '1', '6', '2012-09-28 18:47:13', '6', '2012-09-28 18:47:13');
INSERT INTO `user_group_module` VALUES ('21', '9', '1', '1', '9', '2012-11-03 17:04:10', '9', '2012-10-03 17:51:05');
INSERT INTO `user_group_module` VALUES ('22', '9', '2', '1', '9', '2012-11-03 17:04:10', '9', '2012-10-03 17:51:05');
INSERT INTO `user_group_module` VALUES ('23', '9', '3', '1', '9', '2012-11-03 17:04:10', '9', '2012-10-03 17:51:05');
INSERT INTO `user_group_module` VALUES ('24', '9', '4', '1', '9', '2012-11-03 17:04:10', '9', '2012-10-03 17:51:05');
INSERT INTO `user_group_module` VALUES ('25', '1', '3', '1', '1', '2012-10-17 16:31:30', '1', '2012-10-04 15:07:43');
INSERT INTO `user_group_module` VALUES ('26', '1', '4', '1', '1', '2012-10-17 16:31:30', '1', '2012-10-04 15:07:43');
INSERT INTO `user_group_module` VALUES ('27', '1', '5', '1', '1', '2012-10-17 16:31:30', '1', '2012-10-08 16:56:44');
INSERT INTO `user_group_module` VALUES ('31', '9', '5', '1', '9', '2012-11-03 17:04:10', '9', '2012-10-08 20:04:00');
INSERT INTO `user_group_module` VALUES ('37', '5', '4', '1', '6', '2012-10-12 17:22:28', '6', '2012-10-12 17:22:28');
INSERT INTO `user_group_module` VALUES ('38', '5', '5', '1', '6', '2012-10-12 17:22:28', '6', '2012-10-12 17:22:28');
INSERT INTO `user_group_module` VALUES ('39', '1', '6', '1', '1', '2012-10-17 16:31:30', '1', '2012-10-17 16:31:30');
INSERT INTO `user_group_module` VALUES ('40', '9', '6', '1', '9', '2012-11-03 17:04:10', '9', '2012-10-19 10:29:49');
INSERT INTO `user_group_module` VALUES ('41', '9', '7', '1', '9', '2012-11-03 17:04:10', '9', '2012-10-19 10:29:49');
INSERT INTO `user_group_module` VALUES ('42', '9', '8', '1', '9', '2012-11-03 17:04:10', '9', '2012-10-26 13:17:12');
INSERT INTO `user_group_module` VALUES ('72', '9', '9', '1', '9', '2012-11-03 17:04:10', '9', '2012-11-03 17:04:10');
INSERT INTO `user_group_module` VALUES ('114', '21', '4', '0', '29', '2012-11-06 15:43:20', '29', '2012-11-06 15:43:20');
INSERT INTO `user_group_module` VALUES ('115', '21', '5', '0', '29', '2012-11-06 15:43:20', '29', '2012-11-06 15:43:20');
INSERT INTO `user_group_module` VALUES ('116', '21', '6', '0', '29', '2012-11-06 15:43:20', '29', '2012-11-06 15:43:20');
INSERT INTO `user_group_module` VALUES ('117', '21', '7', '0', '29', '2012-11-06 15:43:20', '29', '2012-11-06 15:43:20');
INSERT INTO `user_group_module` VALUES ('118', '21', '8', '0', '29', '2012-11-06 15:43:20', '29', '2012-11-06 15:43:20');
INSERT INTO `user_group_module` VALUES ('119', '21', '9', '0', '29', '2012-11-06 15:43:20', '29', '2012-11-06 15:43:20');
INSERT INTO `user_group_module` VALUES ('159', '22', '1', '1', '30', '2012-11-06 19:27:53', '30', '2012-11-06 19:27:53');
INSERT INTO `user_group_module` VALUES ('160', '22', '3', '1', '30', '2012-11-06 19:27:53', '30', '2012-11-06 19:27:53');
INSERT INTO `user_group_module` VALUES ('161', '22', '4', '1', '30', '2012-11-06 19:27:53', '30', '2012-11-06 19:27:53');
INSERT INTO `user_group_module` VALUES ('162', '22', '5', '1', '30', '2012-11-06 19:27:53', '30', '2012-11-06 19:27:53');
INSERT INTO `user_group_module` VALUES ('163', '22', '2', '1', '30', '2012-11-06 19:27:53', '30', '2012-11-06 19:27:53');
INSERT INTO `user_group_module` VALUES ('177', null, null, null, null, null, null, null);
INSERT INTO `user_group_module` VALUES ('182', '24', '1', '1', '10', '2012-11-21 11:25:36', '10', '2012-11-21 11:25:36');
INSERT INTO `user_group_module` VALUES ('183', '24', '2', '1', '10', '2012-11-21 11:25:36', '10', '2012-11-21 11:25:36');
INSERT INTO `user_group_module` VALUES ('184', '24', '3', '1', '10', '2012-11-21 11:25:36', '10', '2012-11-21 11:25:36');
INSERT INTO `user_group_module` VALUES ('186', '25', '1', '1', '11', '2012-11-21 16:48:11', '11', '2012-11-21 16:48:11');
INSERT INTO `user_group_module` VALUES ('187', '25', '2', '1', '11', '2012-11-21 16:48:11', '11', '2012-11-21 16:48:11');
INSERT INTO `user_group_module` VALUES ('188', '25', '3', '1', '11', '2012-11-21 16:48:11', '11', '2012-11-21 16:48:11');
INSERT INTO `user_group_module` VALUES ('189', '25', '4', '1', '11', '2012-11-21 16:48:11', '11', '2012-11-21 16:48:11');
INSERT INTO `user_group_module` VALUES ('190', '25', '5', '1', '11', '2012-11-21 16:48:11', '11', '2012-11-21 16:48:11');
INSERT INTO `user_group_module` VALUES ('191', '25', '6', '1', '11', '2012-11-21 16:48:11', '11', '2012-11-21 16:48:11');
INSERT INTO `user_group_module` VALUES ('192', '25', '7', '1', '11', '2012-11-21 16:48:11', '11', '2012-11-21 16:48:11');
INSERT INTO `user_group_module` VALUES ('193', '25', '8', '1', '11', '2012-11-21 16:48:11', '11', '2012-11-21 16:48:11');
INSERT INTO `user_group_module` VALUES ('194', '25', '9', '1', '11', '2012-11-21 16:48:11', '11', '2012-11-21 16:48:11');
INSERT INTO `user_group_module` VALUES ('198', '1', '7', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('199', '1', '8', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('200', '1', '9', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('201', '5', '6', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('202', '5', '7', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('203', '5', '8', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('204', '5', '9', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('205', '24', '4', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('206', '24', '5', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('207', '24', '6', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('208', '24', '7', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('209', '24', '8', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('210', '24', '9', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('217', '27', '1', '1', '13', '2012-11-22 11:42:34', '13', '2012-11-22 11:42:34');
INSERT INTO `user_group_module` VALUES ('218', '27', '2', '1', '13', '2012-11-22 11:42:34', '13', '2012-11-22 11:42:34');
INSERT INTO `user_group_module` VALUES ('219', '27', '3', '1', '13', '2012-11-22 11:42:34', '13', '2012-11-22 11:42:34');
INSERT INTO `user_group_module` VALUES ('220', '27', '4', '1', '13', '2012-11-22 11:42:34', '13', '2012-11-22 11:42:34');
INSERT INTO `user_group_module` VALUES ('221', '27', '5', '1', '13', '2012-11-22 11:42:34', '13', '2012-11-22 11:42:34');
INSERT INTO `user_group_module` VALUES ('222', '27', '6', '1', '13', '2012-11-22 11:42:34', '13', '2012-11-22 11:42:34');
INSERT INTO `user_group_module` VALUES ('223', '27', '7', '1', '13', '2012-11-22 11:42:34', '13', '2012-11-22 11:42:34');
INSERT INTO `user_group_module` VALUES ('224', '27', '8', '1', '13', '2012-11-22 11:42:34', '13', '2012-11-22 11:42:34');
INSERT INTO `user_group_module` VALUES ('225', '27', '9', '1', '13', '2012-11-22 11:42:34', '13', '2012-11-22 11:42:34');
INSERT INTO `user_group_module` VALUES ('226', '1', '10', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('227', '5', '10', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('228', '9', '10', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('229', '24', '10', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('231', '27', '10', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('232', '25', '10', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('233', '25', '11', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('234', '1', '11', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('235', '5', '11', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('236', '9', '11', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('237', '24', '11', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('239', '27', '11', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('240', '25', '12', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('241', '1', '12', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('242', '5', '12', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('243', '9', '12', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('244', '24', '12', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('246', '27', '12', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('247', '28', '1', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('248', '28', '2', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('249', '28', '3', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('250', '28', '4', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('251', '28', '5', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('252', '28', '6', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('253', '28', '7', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('254', '28', '8', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('255', '28', '9', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('256', '28', '10', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('257', '28', '11', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('258', '28', '12', '1', '14', '2012-12-06 11:40:01', '14', '2012-12-06 11:40:01');
INSERT INTO `user_group_module` VALUES ('260', '29', '1', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('261', '29', '2', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('262', '29', '3', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('263', '29', '4', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('264', '29', '5', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('265', '29', '6', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('266', '29', '7', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('267', '29', '8', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('268', '29', '9', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('269', '29', '10', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('270', '29', '11', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('271', '29', '12', '1', '15', '2012-12-06 15:39:38', '15', '2012-12-06 15:39:38');
INSERT INTO `user_group_module` VALUES ('272', '30', '1', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('273', '30', '2', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('274', '30', '3', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('275', '30', '4', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('276', '30', '5', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('277', '30', '6', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('278', '30', '7', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('279', '30', '8', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('280', '30', '9', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('281', '30', '10', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('282', '30', '11', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('283', '30', '12', '1', '16', '2012-12-06 15:54:30', '16', '2012-12-06 15:54:30');
INSERT INTO `user_group_module` VALUES ('284', '31', '1', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('285', '31', '2', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('286', '31', '3', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('287', '31', '4', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('288', '31', '5', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('289', '31', '6', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('290', '31', '7', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('291', '31', '8', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('292', '31', '9', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('293', '31', '10', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('294', '31', '11', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('295', '31', '12', '1', '17', '2012-12-06 16:00:40', '17', '2012-12-06 16:00:40');
INSERT INTO `user_group_module` VALUES ('320', '35', '1', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('321', '35', '2', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('322', '35', '3', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('323', '35', '4', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('324', '35', '5', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('325', '35', '6', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('326', '35', '7', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('327', '35', '8', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('328', '35', '9', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('329', '35', '10', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('330', '35', '11', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('331', '35', '12', '1', '20', '2012-12-07 12:46:43', '20', '2012-12-07 12:46:43');
INSERT INTO `user_group_module` VALUES ('332', '36', '1', '1', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group_module` VALUES ('333', '36', '2', '1', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group_module` VALUES ('334', '36', '3', '1', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group_module` VALUES ('335', '36', '4', '1', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group_module` VALUES ('336', '36', '5', '1', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group_module` VALUES ('337', '36', '6', '1', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group_module` VALUES ('338', '36', '7', '1', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group_module` VALUES ('339', '36', '8', '1', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group_module` VALUES ('340', '36', '9', '1', '20', '2012-12-10 19:59:23', '20', '2012-12-10 19:59:23');
INSERT INTO `user_group_module` VALUES ('341', '36', '10', '1', '20', '2012-12-10 19:59:24', '20', '2012-12-10 19:59:24');
INSERT INTO `user_group_module` VALUES ('342', '36', '11', '1', '20', '2012-12-10 19:59:24', '20', '2012-12-10 19:59:24');
INSERT INTO `user_group_module` VALUES ('343', '36', '12', '1', '20', '2012-12-10 19:59:24', '20', '2012-12-10 19:59:24');
INSERT INTO `user_group_module` VALUES ('344', '37', '1', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('345', '37', '2', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('346', '37', '3', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('347', '37', '4', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('348', '37', '5', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('349', '37', '6', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('350', '37', '7', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('351', '37', '8', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('352', '37', '9', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('353', '37', '10', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('354', '37', '11', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('355', '37', '12', '1', '2', '2012-12-11 14:56:55', '2', '2012-12-11 14:56:55');
INSERT INTO `user_group_module` VALUES ('356', '25', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('357', '1', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('358', '5', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('359', '9', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('360', '24', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('361', '27', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('362', '28', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('363', '29', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('364', '30', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('365', '31', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('366', '35', '13', '1', null, null, null, null);
INSERT INTO `user_group_module` VALUES ('409', '42', '1', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('410', '42', '2', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('411', '42', '3', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('412', '42', '4', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('413', '42', '5', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('414', '42', '6', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('415', '42', '7', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('416', '42', '8', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('417', '42', '9', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('418', '42', '10', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('419', '42', '11', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('420', '42', '12', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('421', '42', '13', '1', '27', '2012-12-13 12:56:42', '27', '2012-12-13 12:56:42');
INSERT INTO `user_group_module` VALUES ('423', '42', '1', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('424', '42', '2', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('425', '42', '3', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('426', '42', '4', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('427', '42', '5', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('428', '42', '6', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('429', '42', '7', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('430', '42', '8', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('431', '42', '9', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('432', '42', '10', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('433', '42', '11', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('434', '42', '12', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('435', '42', '13', '1', '27', '2012-12-13 13:25:58', '27', '2012-12-13 13:25:58');
INSERT INTO `user_group_module` VALUES ('436', '42', '1', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('437', '42', '2', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('438', '42', '3', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('439', '42', '4', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('440', '42', '5', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('441', '42', '6', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('442', '42', '7', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('443', '42', '8', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('444', '42', '9', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('445', '42', '10', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('446', '42', '11', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('447', '42', '12', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('448', '42', '13', '1', '27', '2012-12-13 14:21:46', '27', '2012-12-13 14:21:46');
INSERT INTO `user_group_module` VALUES ('449', '42', '1', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('450', '42', '2', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('451', '42', '3', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('452', '42', '4', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('453', '42', '5', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('454', '42', '6', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('455', '42', '7', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('456', '42', '8', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('457', '42', '9', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('458', '42', '10', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('459', '42', '11', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('460', '42', '12', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('461', '42', '13', '1', '27', '2012-12-13 14:38:03', '27', '2012-12-13 14:38:03');
INSERT INTO `user_group_module` VALUES ('462', '42', '1', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('463', '42', '2', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('464', '42', '3', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('465', '42', '4', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('466', '42', '5', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('467', '42', '6', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('468', '42', '7', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('469', '42', '8', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('470', '42', '9', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('471', '42', '10', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('472', '42', '11', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('473', '42', '12', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('474', '42', '13', '1', '27', '2012-12-13 15:34:10', '27', '2012-12-13 15:34:10');
INSERT INTO `user_group_module` VALUES ('475', '42', '1', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('476', '42', '2', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('477', '42', '3', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('478', '42', '4', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('479', '42', '5', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('480', '42', '6', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('481', '42', '7', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('482', '42', '8', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('483', '42', '9', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('484', '42', '10', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('485', '42', '11', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('486', '42', '12', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');
INSERT INTO `user_group_module` VALUES ('487', '42', '13', '1', '27', '2012-12-13 15:39:00', '27', '2012-12-13 15:39:00');

-- ----------------------------
-- Table structure for `version`
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `version_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`version_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('34', '1', '1', '2013-01-10 20:18:26', '1', '2013-01-22 00:00:00');

-- ----------------------------
-- Table structure for `version_detail`
-- ----------------------------
DROP TABLE IF EXISTS `version_detail`;
CREATE TABLE `version_detail` (
  `version_detail_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `version_number` varchar(25) DEFAULT NULL,
  `title` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`version_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of version_detail
-- ----------------------------
INSERT INTO `version_detail` VALUES ('130', '34', '1', '1.0', 'first post', '', '', null, null);
INSERT INTO `version_detail` VALUES ('131', '34', '2', '1.0', 'first post', '', '', null, null);
INSERT INTO `version_detail` VALUES ('132', '34', '3', '1.0', 'first post', '', '', null, null);
INSERT INTO `version_detail` VALUES ('133', '34', '4', '1.0', 'first post', '', '', null, null);
