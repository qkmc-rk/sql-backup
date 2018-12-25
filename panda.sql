/*
 Navicat MySQL Data Transfer

 Source Server         : 45.40.193.214
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : 45.40.193.214:3306
 Source Schema         : panda

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 05/08/2018 21:23:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_status` enum('true','false') NOT NULL,
  `f_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `f_user_id` (`f_user_id`),
  CONSTRAINT `t_admin_ibfk_1` FOREIGN KEY (`f_user_id`) REFERENCES `t_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for t_problem
-- ----------------------------
DROP TABLE IF EXISTS `t_problem`;
CREATE TABLE `t_problem` (
  `problem_id` int(11) NOT NULL AUTO_INCREMENT,
  `pbm_title` varchar(32) DEFAULT NULL,
  `pbm_description` text,
  `pbm_input` text,
  `pbm_output` text,
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for t_record
-- ----------------------------
DROP TABLE IF EXISTS `t_record`;
CREATE TABLE `t_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_pbm_id` int(11) DEFAULT NULL,
  `f_user_id` int(11) DEFAULT NULL,
  `pbm_result` enum('true','false') NOT NULL,
  `pbm_time` int(11) DEFAULT NULL,
  `pbm_code` text,
  PRIMARY KEY (`record_id`),
  KEY `f_user_id` (`f_user_id`),
  KEY `f_pbm_id` (`f_pbm_id`),
  CONSTRAINT `t_record_ibfk_1` FOREIGN KEY (`f_user_id`) REFERENCES `t_user` (`user_id`),
  CONSTRAINT `t_record_ibfk_2` FOREIGN KEY (`f_pbm_id`) REFERENCES `t_problem` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login` varchar(16) NOT NULL,
  `user_pass` varchar(32) DEFAULT NULL,
  `old_pass` varchar(32) DEFAULT NULL,
  `user_name` varchar(12) DEFAULT NULL,
  `user_mail` varchar(32) DEFAULT NULL,
  `user_url` varchar(32) DEFAULT NULL,
  `user_regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_status` enum('true','false') NOT NULL,
  `display_name` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
