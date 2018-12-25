/*
 Navicat MySQL Data Transfer

 Source Server         : 45.40.193.214
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : 45.40.193.214:3306
 Source Schema         : colorshell

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 05/08/2018 21:22:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备ID',
  `mac` varchar(255) NOT NULL COMMENT '设备的硬件地址',
  `token` varchar(255) NOT NULL COMMENT '设备token，用户设备请求服务器',
  `type` enum('temperature','ph','illumination','humidity','gas') DEFAULT NULL COMMENT '设备类型，枚举类型，默认为空',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of device
-- ----------------------------
BEGIN;
INSERT INTO `device` VALUES (1, '00-11-22-33-22', 'dsf7887ds654a7s87dsa', 'humidity');
INSERT INTO `device` VALUES (2, '12-34-12-64-21', 'asdsadacas3fvsf32dq21', 'ph');
INSERT INTO `device` VALUES (3, '45-65-23-87-23', 'sd3343g3n32hbn65b4n', 'illumination');
INSERT INTO `device` VALUES (4, '54-56-24-76-12', 'sa3ysd3wqcxc89cx8swf', 'humidity');
INSERT INTO `device` VALUES (5, '08-54-35-34-sad', 'd7v67wh3mdsoifuyvgevd', 'temperature');
INSERT INTO `device` VALUES (10, 'aqwdwaqd', '0f14866f87dc12f5da5a429f4d1bc3cc', 'ph');
COMMIT;

-- ----------------------------
-- Table structure for gas
-- ----------------------------
DROP TABLE IF EXISTS `gas`;
CREATE TABLE `gas` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '气体ID',
  `gas` double NOT NULL COMMENT '气体浓度',
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建记录时间',
  `deviceid` int(11) NOT NULL COMMENT '设备ID，标示某台设备采集的数据',
  PRIMARY KEY (`id`),
  KEY `f_gas_device` (`deviceid`),
  CONSTRAINT `f_gas_device` FOREIGN KEY (`deviceid`) REFERENCES `device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gas
-- ----------------------------
BEGIN;
INSERT INTO `gas` VALUES (1, 10, '2018-05-01 08:22:16', 5);
INSERT INTO `gas` VALUES (2, 11, '2018-05-01 08:27:29', 5);
INSERT INTO `gas` VALUES (3, 13, '2018-05-01 08:32:37', 5);
INSERT INTO `gas` VALUES (4, 14, '2018-05-01 08:37:43', 5);
INSERT INTO `gas` VALUES (5, 13, '2018-05-01 08:42:48', 5);
INSERT INTO `gas` VALUES (6, 60, '2018-05-01 08:47:13', 5);
COMMIT;

-- ----------------------------
-- Table structure for humidity
-- ----------------------------
DROP TABLE IF EXISTS `humidity`;
CREATE TABLE `humidity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '湿度ID',
  `humidity` double NOT NULL COMMENT '湿度',
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `deviceid` int(11) NOT NULL COMMENT '采集设备的ID',
  PRIMARY KEY (`id`),
  KEY `f_humi_device` (`deviceid`),
  CONSTRAINT `f_humi_device` FOREIGN KEY (`deviceid`) REFERENCES `device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humidity
-- ----------------------------
BEGIN;
INSERT INTO `humidity` VALUES (13, 51, '2018-05-12 21:09:50', 1);
INSERT INTO `humidity` VALUES (14, 51, '2018-05-12 21:10:10', 1);
INSERT INTO `humidity` VALUES (15, 51, '2018-05-12 21:10:30', 1);
INSERT INTO `humidity` VALUES (16, 51, '2018-05-12 21:10:50', 1);
INSERT INTO `humidity` VALUES (17, 51, '2018-05-12 21:11:01', 1);
INSERT INTO `humidity` VALUES (18, 51, '2018-05-12 21:11:09', 1);
INSERT INTO `humidity` VALUES (19, 54, '2018-05-12 21:11:29', 1);
INSERT INTO `humidity` VALUES (20, 82, '2018-05-12 21:11:48', 1);
INSERT INTO `humidity` VALUES (21, 85, '2018-05-12 21:12:08', 1);
INSERT INTO `humidity` VALUES (22, 0, '2018-05-12 21:12:28', 1);
INSERT INTO `humidity` VALUES (23, 0, '2018-05-12 21:12:47', 1);
INSERT INTO `humidity` VALUES (24, 0, '2018-05-12 21:13:07', 1);
INSERT INTO `humidity` VALUES (25, 0, '2018-05-12 21:30:40', 1);
INSERT INTO `humidity` VALUES (26, 55, '2018-05-12 21:31:19', 1);
INSERT INTO `humidity` VALUES (27, 55, '2018-05-12 21:31:31', 1);
INSERT INTO `humidity` VALUES (28, 54, '2018-05-12 21:31:58', 1);
INSERT INTO `humidity` VALUES (29, 54, '2018-05-12 21:32:18', 1);
INSERT INTO `humidity` VALUES (30, 54, '2018-05-12 21:32:37', 1);
INSERT INTO `humidity` VALUES (31, 54, '2018-05-12 21:32:57', 1);
INSERT INTO `humidity` VALUES (32, 55, '2018-05-12 21:33:17', 1);
INSERT INTO `humidity` VALUES (33, 55, '2018-05-12 21:33:36', 1);
INSERT INTO `humidity` VALUES (34, 55, '2018-05-12 21:33:56', 1);
INSERT INTO `humidity` VALUES (35, 55, '2018-05-12 21:34:16', 1);
INSERT INTO `humidity` VALUES (36, 55, '2018-05-12 21:34:35', 1);
INSERT INTO `humidity` VALUES (37, 55, '2018-05-12 21:34:47', 1);
INSERT INTO `humidity` VALUES (38, 55, '2018-05-12 21:35:14', 1);
INSERT INTO `humidity` VALUES (39, 55, '2018-05-12 21:35:34', 1);
INSERT INTO `humidity` VALUES (40, 55, '2018-05-12 21:35:54', 1);
INSERT INTO `humidity` VALUES (41, 56, '2018-05-12 21:36:13', 1);
INSERT INTO `humidity` VALUES (42, 56, '2018-05-12 21:36:33', 1);
INSERT INTO `humidity` VALUES (43, 56, '2018-05-12 21:36:48', 1);
INSERT INTO `humidity` VALUES (44, 56, '2018-05-12 21:37:13', 1);
INSERT INTO `humidity` VALUES (45, 56, '2018-05-12 21:37:32', 1);
INSERT INTO `humidity` VALUES (46, 56, '2018-05-12 21:37:52', 1);
INSERT INTO `humidity` VALUES (47, 56, '2018-05-12 21:38:31', 1);
INSERT INTO `humidity` VALUES (48, 57, '2018-05-12 21:38:51', 1);
INSERT INTO `humidity` VALUES (49, 57, '2018-05-12 21:39:10', 1);
INSERT INTO `humidity` VALUES (50, 57, '2018-05-12 21:39:50', 1);
INSERT INTO `humidity` VALUES (51, 56, '2018-05-12 21:40:04', 1);
INSERT INTO `humidity` VALUES (52, 56, '2018-05-12 21:40:29', 1);
INSERT INTO `humidity` VALUES (53, 56, '2018-05-12 21:41:08', 1);
INSERT INTO `humidity` VALUES (54, 56, '2018-05-12 21:41:28', 1);
INSERT INTO `humidity` VALUES (55, 56, '2018-05-12 21:41:47', 1);
INSERT INTO `humidity` VALUES (56, 56, '2018-05-12 21:42:07', 1);
INSERT INTO `humidity` VALUES (57, 56, '2018-05-12 21:42:27', 1);
INSERT INTO `humidity` VALUES (58, 56, '2018-05-12 21:42:46', 1);
INSERT INTO `humidity` VALUES (59, 56, '2018-05-12 21:43:06', 1);
INSERT INTO `humidity` VALUES (60, 56, '2018-05-12 21:43:26', 1);
INSERT INTO `humidity` VALUES (61, 56, '2018-05-12 21:43:45', 1);
INSERT INTO `humidity` VALUES (62, 56, '2018-05-12 21:44:05', 1);
INSERT INTO `humidity` VALUES (63, 56, '2018-05-12 21:44:25', 1);
INSERT INTO `humidity` VALUES (64, 56, '2018-05-12 21:44:44', 1);
INSERT INTO `humidity` VALUES (65, 56, '2018-05-12 21:45:24', 1);
INSERT INTO `humidity` VALUES (66, 56, '2018-05-12 21:45:43', 1);
INSERT INTO `humidity` VALUES (67, 56, '2018-05-12 21:46:03', 1);
INSERT INTO `humidity` VALUES (68, 56, '2018-05-12 21:46:22', 1);
INSERT INTO `humidity` VALUES (69, 56, '2018-05-12 21:47:02', 1);
INSERT INTO `humidity` VALUES (70, 57, '2018-05-12 21:47:21', 1);
INSERT INTO `humidity` VALUES (71, 59, '2018-05-12 21:47:41', 1);
INSERT INTO `humidity` VALUES (72, 41, '2018-05-12 21:53:57', 1);
INSERT INTO `humidity` VALUES (73, 47, '2018-05-12 21:56:52', 1);
COMMIT;

-- ----------------------------
-- Table structure for illumination
-- ----------------------------
DROP TABLE IF EXISTS `illumination`;
CREATE TABLE `illumination` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '光强ID',
  `illumination` int(11) NOT NULL COMMENT '光强',
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `deviceid` int(11) NOT NULL COMMENT '采集设备的ID',
  PRIMARY KEY (`id`),
  KEY `f_illum_devive` (`deviceid`),
  CONSTRAINT `f_illum_devive` FOREIGN KEY (`deviceid`) REFERENCES `device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of illumination
-- ----------------------------
BEGIN;
INSERT INTO `illumination` VALUES (10, 3000, '2018-05-12 21:43:01', 3);
COMMIT;

-- ----------------------------
-- Table structure for ph
-- ----------------------------
DROP TABLE IF EXISTS `ph`;
CREATE TABLE `ph` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ph值ID',
  `ph` double NOT NULL COMMENT 'ph值',
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `deviceid` int(11) NOT NULL COMMENT 'ph采集设备ID',
  PRIMARY KEY (`id`),
  KEY `f_ph_device` (`deviceid`),
  CONSTRAINT `f_ph_device` FOREIGN KEY (`deviceid`) REFERENCES `device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ph
-- ----------------------------
BEGIN;
INSERT INTO `ph` VALUES (1, 7, '2018-05-01 08:30:19', 2);
INSERT INTO `ph` VALUES (2, 7.1, '2018-05-01 08:35:24', 2);
INSERT INTO `ph` VALUES (3, 7.1, '2018-05-01 08:40:28', 2);
INSERT INTO `ph` VALUES (4, 6.9, '2018-05-01 08:45:33', 2);
INSERT INTO `ph` VALUES (5, 6.8, '2018-05-01 08:50:39', 2);
COMMIT;

-- ----------------------------
-- Table structure for temperatrue
-- ----------------------------
DROP TABLE IF EXISTS `temperatrue`;
CREATE TABLE `temperatrue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '温度ID',
  `temperature` double NOT NULL COMMENT '温度',
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `deviceid` int(11) NOT NULL COMMENT '温度采集设备ID',
  PRIMARY KEY (`id`),
  KEY `f_temp_device` (`deviceid`),
  CONSTRAINT `f_temp_device` FOREIGN KEY (`deviceid`) REFERENCES `device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of temperatrue
-- ----------------------------
BEGIN;
INSERT INTO `temperatrue` VALUES (24, 0, '2018-05-12 21:30:40', 1);
INSERT INTO `temperatrue` VALUES (25, 27, '2018-05-12 21:31:19', 1);
INSERT INTO `temperatrue` VALUES (26, 27, '2018-05-12 21:31:31', 1);
INSERT INTO `temperatrue` VALUES (27, 27, '2018-05-12 21:31:58', 1);
INSERT INTO `temperatrue` VALUES (28, 27, '2018-05-12 21:32:18', 1);
INSERT INTO `temperatrue` VALUES (29, 27, '2018-05-12 21:32:37', 1);
INSERT INTO `temperatrue` VALUES (30, 27, '2018-05-12 21:32:57', 1);
INSERT INTO `temperatrue` VALUES (31, 26, '2018-05-12 21:33:17', 1);
INSERT INTO `temperatrue` VALUES (32, 26, '2018-05-12 21:33:36', 1);
INSERT INTO `temperatrue` VALUES (33, 26, '2018-05-12 21:33:56', 1);
INSERT INTO `temperatrue` VALUES (34, 26, '2018-05-12 21:34:16', 1);
INSERT INTO `temperatrue` VALUES (35, 26, '2018-05-12 21:34:35', 1);
INSERT INTO `temperatrue` VALUES (36, 26, '2018-05-12 21:34:47', 1);
INSERT INTO `temperatrue` VALUES (37, 26, '2018-05-12 21:35:14', 1);
INSERT INTO `temperatrue` VALUES (38, 26, '2018-05-12 21:35:34', 1);
INSERT INTO `temperatrue` VALUES (39, 26, '2018-05-12 21:35:54', 1);
INSERT INTO `temperatrue` VALUES (40, 26, '2018-05-12 21:36:13', 1);
INSERT INTO `temperatrue` VALUES (41, 26, '2018-05-12 21:36:33', 1);
INSERT INTO `temperatrue` VALUES (42, 26, '2018-05-12 21:36:48', 1);
INSERT INTO `temperatrue` VALUES (43, 26, '2018-05-12 21:37:13', 1);
INSERT INTO `temperatrue` VALUES (44, 26, '2018-05-12 21:37:32', 1);
INSERT INTO `temperatrue` VALUES (45, 26, '2018-05-12 21:37:52', 1);
INSERT INTO `temperatrue` VALUES (46, 26, '2018-05-12 21:38:31', 1);
INSERT INTO `temperatrue` VALUES (47, 26, '2018-05-12 21:38:51', 1);
INSERT INTO `temperatrue` VALUES (48, 26, '2018-05-12 21:39:10', 1);
INSERT INTO `temperatrue` VALUES (49, 26, '2018-05-12 21:39:50', 1);
INSERT INTO `temperatrue` VALUES (50, 26, '2018-05-12 21:40:04', 1);
INSERT INTO `temperatrue` VALUES (51, 26, '2018-05-12 21:40:29', 1);
INSERT INTO `temperatrue` VALUES (52, 26, '2018-05-12 21:41:08', 1);
INSERT INTO `temperatrue` VALUES (53, 26, '2018-05-12 21:41:28', 1);
INSERT INTO `temperatrue` VALUES (54, 26, '2018-05-12 21:41:47', 1);
INSERT INTO `temperatrue` VALUES (55, 26, '2018-05-12 21:42:07', 1);
INSERT INTO `temperatrue` VALUES (56, 26, '2018-05-12 21:42:27', 1);
INSERT INTO `temperatrue` VALUES (57, 26, '2018-05-12 21:42:46', 1);
INSERT INTO `temperatrue` VALUES (58, 26, '2018-05-12 21:43:06', 1);
INSERT INTO `temperatrue` VALUES (59, 26, '2018-05-12 21:43:26', 1);
INSERT INTO `temperatrue` VALUES (60, 26, '2018-05-12 21:43:45', 1);
INSERT INTO `temperatrue` VALUES (61, 26, '2018-05-12 21:44:05', 1);
INSERT INTO `temperatrue` VALUES (62, 26, '2018-05-12 21:44:25', 1);
INSERT INTO `temperatrue` VALUES (63, 26, '2018-05-12 21:44:44', 1);
INSERT INTO `temperatrue` VALUES (64, 26, '2018-05-12 21:45:24', 1);
INSERT INTO `temperatrue` VALUES (65, 26, '2018-05-12 21:45:43', 1);
INSERT INTO `temperatrue` VALUES (66, 26, '2018-05-12 21:46:03', 1);
INSERT INTO `temperatrue` VALUES (67, 26, '2018-05-12 21:46:22', 1);
INSERT INTO `temperatrue` VALUES (68, 26, '2018-05-12 21:47:02', 1);
INSERT INTO `temperatrue` VALUES (69, 28, '2018-05-12 21:47:21', 1);
INSERT INTO `temperatrue` VALUES (70, 30, '2018-05-12 21:47:41', 1);
INSERT INTO `temperatrue` VALUES (71, 24, '2018-05-12 21:53:57', 1);
INSERT INTO `temperatrue` VALUES (72, 26, '2018-05-12 21:56:52', 1);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `neckname` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL COMMENT '角色1为管理员0为终端用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '314445437@qq.com', 'f0dc2ec24679fae04aeb9b2c86b5ffdf', '少爷', '725794a2358bf2b8b08c5ee14e13570c', 'admin');
INSERT INTO `user` VALUES (2, 'qkmc@outlook.com', 'f0dc2ec24679fae04aeb9b2c86b5ffdf', '坤', 'f309cc13def8c252aef6901567b4bd50', 'admin');
INSERT INTO `user` VALUES (7, '1537854187@qq.com', 'f0dc2ec24679fae04aeb9b2c86b5ffdf', 'Shaoye', '3e6ba3ff7e1b91093ff67d63eeb367b2', 'user');
INSERT INTO `user` VALUES (8, '1', 'c4ca4238a0b923820dcc509a6f75849b', 'zz', 'c4ca4238a0b923820dcc509a6f75849b', 'user');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
