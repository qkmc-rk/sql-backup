/*
 Navicat MySQL Data Transfer

 Source Server         : 45.40.193.214
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : 45.40.193.214:3306
 Source Schema         : szwh

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 05/08/2018 21:24:10
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
  `cover` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `f_case_user_idx` (`editor`),
  CONSTRAINT `f_case_user` FOREIGN KEY (`editor`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_case
-- ----------------------------
BEGIN;
INSERT INTO `t_case` VALUES (1, 'activity', '中国人寿双养签约仪式新闻发布会', 2, '中国人寿双养签约仪式新闻发布会', '2018-07-05 00:45:04', 117, '<h2 style=\"text-align: center;\"><br></h2><p style=\"text-align: center;\"><img style=\"max-width: 30%;\" src=\"http://139.199.15.45/szwh/static/uploadfile/A.png\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style=\"color: rgb(95, 100, 104); max-width: 30%;\" src=\"http://139.199.15.45/szwh/static/uploadfile/B.png\">1</p><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\"><img style=\"max-width: 30%;\" src=\"http://139.199.15.45/szwh/static/uploadfile/e.png\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style=\"color: rgb(95, 100, 104); max-width: 30%;\" src=\"http://139.199.15.45/szwh/static/uploadfile/f.png\"></p><p><br></p>', 'folio01.jpg');
INSERT INTO `t_case` VALUES (2, 'activity', '中国人寿高峰会颁奖典礼', 2, '中国人寿高峰会颁奖典礼', '2018-07-05 00:45:05', 111, '<h2 style=\"text-align: center;\"><p><br></p><p><br></p></h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/Aa.png\" style=\"max-width:30%;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://139.199.15.45/szwh/static/uploadfile/Bb.png\" style=\"color:rgb(95, 100, 104); max-width:30%;\"></p><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/Cc.png\" style=\"max-width:30%;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://139.199.15.45/szwh/static/uploadfile/Dd.png\" style=\"color:rgb(95, 100, 104); max-width:30%;\"></p><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/Ee.png\" style=\"max-width:30%;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://139.199.15.45/szwh/static/uploadfile/Ff.png\" style=\"color:rgb(95, 100, 104); max-width:30%;\"></p><p style=\"text-align: center;\"><br></p><p><br></p>', '$K((JP6CSU{]X]6L)MC)B)C.jpg');
INSERT INTO `t_case` VALUES (3, 'activity', '阳光集团表彰暨开门红启动会', 2, '阳光集团表彰暨开门红启动会', '2018-07-05 00:45:06', 65, '<h2 style=\"text-align: center;\"><p><br></p><p><br></p></h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/A3.jpg\" style=\"max-width:30%;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://139.199.15.45/szwh/static/uploadfile/B3.jpg\" style=\"color:rgb(95, 100, 104); max-width:30%;\"></p><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/C3.jpg\" style=\"max-width:30%;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"http://139.199.15.45/szwh/static/uploadfile/D3.jpg\" style=\"color:rgb(95, 100, 104); max-width:30%;\"></p><p><br></p>', 'door.jpg');
INSERT INTO `t_case` VALUES (4, 'brand', '中国人寿高端客户大讲堂', 2, '中国人寿高端客户大讲堂', '2018-07-05 00:45:07', 50, '<h2 style=\"text-align: center;\"><p><br></p><p><br></p></h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/A4.jpg\" style=\"max-width:30%;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://139.199.15.45/szwh/static/uploadfile/B4.jpg\" style=\"color:rgb(95, 100, 104); max-width:30%;\"></p><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/C4.jpg\" style=\"max-width:30%;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://139.199.15.45/szwh/static/uploadfile/D4.jpg\" style=\"color:rgb(95, 100, 104); max-width:30%;\"></p><p><br></p>', 'f.png');
INSERT INTO `t_case` VALUES (5, 'design', '富德生命人寿荣誉表彰暨开门红启动会', 2, '手足文化', '2018-07-05 00:45:19', 47, '<h2 style=\"text-align: center;\">富德生命人寿荣誉表彰暨开门红启动会\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/3-5.jpg\" style=\"max-width:100%;\"></p><p><br></p>', 'f.png');
INSERT INTO `t_case` VALUES (6, 'design', '中国人寿新险种宣传物料', 2, '手足文化', '2018-07-05 00:45:17', 47, '<h2 style=\"text-align: center;\">中国人寿新险种宣传物料</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/3-6.jpg\" style=\"max-width:100%;\"></p><p><br></p>', 'f.png');
INSERT INTO `t_case` VALUES (7, 'design', '中国人寿四川分公司晋升表彰荣誉手册', 2, '手足文化', '2018-07-05 00:45:21', 24, '<h2 style=\"text-align: center;\">中国人寿四川分公司晋升表彰荣誉手册\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/3-7.jpg\" style=\"max-width:100%;\"></p><p><br></p>', 'f.png');
INSERT INTO `t_case` VALUES (8, 'design', '中国平安高分会手册', 2, '手足文化', '2018-07-05 00:45:25', 18, '<h2 style=\"text-align: center;\">中国平安高分会手册\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/3-8.jpg\" style=\"max-width:100%;\"></p><p><br></p>', 'f.png');
INSERT INTO `t_case` VALUES (9, 'movie', '中国人寿企业宣传片', 2, '手足文化', '2018-07-05 00:45:26', 23, '<h2 style=\"text-align: center;\">中国人寿企业宣传片\n\n</h2><p style=\"text-align: center;\"><img src=\"http://139.199.15.45/szwh/static/uploadfile/3-9.jpg\" style=\"max-width:100%;\"></p><p><br></p>', 'f.png');
INSERT INTO `t_case` VALUES (10, 'brand', 'shipin', 7, '手足文化', '2018-07-05 00:45:30', 7, '<p style=\"text-align: center;\">在这里键入 <b>案列详情内容</b></p><p style=\"text-align: center; color: orange;\">(提示:为美观起见,可尽量将内容居中)</p><p style=\"text-align: center;\"><iframe src=\"blob:https%3A//www.bilibili.com/be35bae0-22ea-44cf-9059-a14948ef698d\"></iframe></p><p style=\"text-align: center;\"><br></p>', 'f.png');
INSERT INTO `t_case` VALUES (11, 'activity', 'test', 2, '手足文化', '2018-07-05 00:45:42', 18, '<p>在这里键入 <b>案列详情内容</b></p><p style=\"color:orange\">(提示:为美观起见,可尽量将内容居中)</p><p><img src=\"http:/szwh/static/uploadfile/3-7.jpg\" style=\"max-width:100%;\"></p>', 'f.png');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (2, '阮坤', 'mrruan', 'b206e95a4384298962649e58dc7b39d4');
INSERT INTO `t_user` VALUES (7, 'cdszwh', 'szwh', 'ceb28185cf736b4c4e53341be5ebfa80');
INSERT INTO `t_user` VALUES (8, 'ss', 'ss', 'ss');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
