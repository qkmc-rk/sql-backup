/*
 Navicat MySQL Data Transfer

 Source Server         : 45.40.193.214
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : 45.40.193.214:3306
 Source Schema         : pandafert

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 05/08/2018 21:23:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` int(11) NOT NULL,
  `cre_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fert_a` int(10) NOT NULL,
  `fert_b` int(10) NOT NULL,
  `fert_c` int(10) NOT NULL,
  `cre_person_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for t_record
-- ----------------------------
DROP TABLE IF EXISTS `t_record`;
CREATE TABLE `t_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `finish_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `record_number` int(11) NOT NULL,
  `result` int(1) NOT NULL,
  `fert_a` int(10) NOT NULL,
  `fert_b` int(10) NOT NULL,
  `fert_c` int(10) NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_record
-- ----------------------------
BEGIN;
INSERT INTO `t_record` VALUES (15, '2017-11-09 17:35:46', 2042459578, 1, 10, 10, 20);
INSERT INTO `t_record` VALUES (16, '2017-11-09 17:36:00', 2042159263, 1, 2, 3, 4);
INSERT INTO `t_record` VALUES (17, '2017-11-12 16:01:38', 1941776740, 1, 10, 5, 7);
INSERT INTO `t_record` VALUES (18, '2017-11-12 16:07:40', 1233111345, 1, 2, 2, 2);
INSERT INTO `t_record` VALUES (20, '2017-11-17 16:32:11', 1275124139, 1, 10, 10, 15);
INSERT INTO `t_record` VALUES (21, '2017-11-17 16:55:44', 12345676, 1, 1, 1, 1);
INSERT INTO `t_record` VALUES (22, '2017-11-17 17:22:30', 435345435, 1, 1, 1, 1);
INSERT INTO `t_record` VALUES (23, '2017-11-17 17:26:15', 345345435, 1, 1, 1, 1);
INSERT INTO `t_record` VALUES (24, '2017-11-29 22:14:53', 135143240, 1, 10, 15, 20);
COMMIT;

-- ----------------------------
-- Table structure for t_token
-- ----------------------------
DROP TABLE IF EXISTS `t_token`;
CREATE TABLE `t_token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_token
-- ----------------------------
BEGIN;
INSERT INTO `t_token` VALUES (24, 'ICy5YqxZB1uWSwcVLSNLcA==', 25);
INSERT INTO `t_token` VALUES (26, 'ICy5YqxZB1uWSwcVLSNLcA==', 27);
INSERT INTO `t_token` VALUES (27, '123', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfo`;
CREATE TABLE `t_userinfo` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_neckname` varchar(16) DEFAULT NULL,
  `u_account` varchar(32) NOT NULL,
  `u_password` varchar(32) NOT NULL,
  `u_oldpwd` varchar(32) NOT NULL,
  `u_phone` int(11) DEFAULT NULL,
  `u_mail` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_userinfo
-- ----------------------------
BEGIN;
INSERT INTO `t_userinfo` VALUES (25, 'ruanyun', 'ry', '123', 'niejiao520', 1528090353, '314445437@qq.com');
INSERT INTO `t_userinfo` VALUES (27, '123', '123', '123', '123', 123, '123');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
