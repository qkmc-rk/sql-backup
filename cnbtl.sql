/*
 Navicat MySQL Data Transfer

 Source Server         : 45.40.193.214
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : 45.40.193.214:3306
 Source Schema         : cnbtl

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 05/08/2018 21:21:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_case
-- ----------------------------
DROP TABLE IF EXISTS `t_case`;
CREATE TABLE `t_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `editor` int(11) NOT NULL,
  `origin` varchar(45) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `click` int(11) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `f_case_user_idx` (`editor`),
  CONSTRAINT `f_case_user` FOREIGN KEY (`editor`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_case
-- ----------------------------
BEGIN;
INSERT INTO `t_case` VALUES (2, 'activity', '中国人寿双养签约仪式新闻发布会', 2, '手足文化', '2018-03-07 15:25:04', 11, '<h2 style=\"text-align: center;\"><b>中国人寿双养签约仪式新闻发布会</b></h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-1.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (3, 'activity', '阳光集团表彰暨开门红启动会', 2, '手足文化', '2018-02-27 11:52:10', 18, '<h2 style=\"text-align: center;\">阳光集团表彰暨开门红启动会\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-2.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (4, 'activity', '中国人寿高端客户大讲堂', 2, '手足文化', '2018-02-27 11:42:34', 25, '<h2 style=\"text-align: center;\">中国人寿高端客户大讲堂\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-2.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (5, 'activity', '中国人寿高峰会颁奖典礼', 2, '手足文化', '2018-02-27 11:42:37', 19, '<h2 style=\"text-align: center;\">中国人寿高峰会颁奖典礼\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-4.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (6, 'design', '富德生命人寿荣誉表彰暨开门红启动会', 2, '手足文化', '2018-02-27 11:42:41', 21, '<h2 style=\"text-align: center;\">富德生命人寿荣誉表彰暨开门红启动会\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-5.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (7, 'design', '中国人寿新险种宣传物料', 2, '手足文化', '2018-02-13 22:54:17', 19, '<h2 style=\"text-align: center;\">中国人寿新险种宣传物料</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-6.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (8, 'design', '中国人寿四川分公司晋升表彰荣誉手册', 2, '手足文化', '2018-02-13 22:54:17', 15, '<h2 style=\"text-align: center;\">中国人寿四川分公司晋升表彰荣誉手册\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-7.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (9, 'design', '中国平安高分会手册', 2, '手足文化', '2018-02-13 22:54:17', 10, '<h2 style=\"text-align: center;\">中国平安高分会手册\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-8.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (10, 'movie', '中国人寿企业宣传片', 2, '手足文化', '2018-02-13 22:54:17', 5, '<h2 style=\"text-align: center;\">中国人寿企业宣传片\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-9.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (13, 'movie', '中国人寿企业宣传片', 2, '手足文化', '2018-02-13 22:54:17', 5, '<h2 style=\"text-align: center;\">中国人寿企业宣传片\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-9.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (14, 'movie', '中国人寿企业宣传片', 2, '手足文化', '2018-02-13 22:54:17', 5, '<h2 style=\"text-align: center;\">中国人寿企业宣传片\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-9.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (15, 'brand', '中国人寿企业宣传片', 2, '中国人寿企业宣传片', '2018-02-21 12:23:43', 5, '<h2 style=\"text-align: center;\">中国人寿企业有限公司</h2><h2 style=\"text-align: center;\">宣传片\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-9.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (16, 'movie', '中国人寿企业宣传片', 2, '手足文化', '2018-02-13 22:54:17', 5, '<h2 style=\"text-align: center;\">中国人寿企业宣传片\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-9.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (17, 'movie', '中国人寿企业宣传片', 2, '手足文化', '2018-03-06 09:58:47', 6, '<h2 style=\"text-align: center;\">中国人寿企业宣传片\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-9.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
INSERT INTO `t_case` VALUES (18, 'movie', '中国人寿企业宣传片最后一个', 2, '中国人寿企业宣传片', '2018-03-06 09:58:39', 6, '<h2 style=\"text-align: center;\">中国人寿企业宣传片最后一个</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/cnbtl/static/uploadfile/3-9.jpg\" style=\"max-width:100%;\"></p><p><br></p>');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `account` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (2, '阮坤', 'mrruan', 'b206e95a4384298962649e58dc7b39d4');
INSERT INTO `t_user` VALUES (7, 'cdszwh', 'szwh', 'ceb28185cf736b4c4e53341be5ebfa80');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
