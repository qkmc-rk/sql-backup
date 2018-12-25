/*
 Navicat MySQL Data Transfer

 Source Server         : 45.40.193.214
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : 45.40.193.214:3306
 Source Schema         : qkmc_diary

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 05/08/2018 21:23:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for diary
-- ----------------------------
DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary` (
  `diary_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `week` int(1) NOT NULL,
  `weather` varchar(12) NOT NULL,
  `content` text,
  `content_type` varchar(12) NOT NULL,
  PRIMARY KEY (`diary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of diary
-- ----------------------------
BEGIN;
INSERT INTO `diary` VALUES (1, 3, 2017, 5, 7, 7, '晴转多云', '今天是2月9日，我起来的非常早，起来之后，我就跑了一会步，歇了一会，我就玩了玩游戏，玩了一会，我就开始练习写作文，写了两篇，仔细读了读，感觉还很好，这时，我妈妈已经把饭做好了，我迅速吃饱了饭，然后就去了我姥姥家，在哪里，姥姥给我包了饺子吃。', '私密');
INSERT INTO `diary` VALUES (2, 1, 2017, 5, 7, 7, '晴转多云', '老天爷好象受了天大的委屈，整天哭丧着脸，有时更是泪流满面。四十多天了。我们都憋得受不了，希望早日放晴。可天天总是失望。\r\n\r\n　　上周星期天。清晨，奶奶把我从梦中叫醒，说是天晴了，全家去新烈士陵园玩。我一听到这振奋人心的好消息，一骨碌从床上爬起来，拉开窗帘一看，果然是个大晴天，太阳公公早已露出了灿烂的笑脸。我把弟弟弄起床，匆匆吃完早饭，一家五口就出发了。与往常出门一样，奶奶骑脚踏三轮车，装着弟弟和妹妹。我和爷爷走路。走了一阵，早在七岁就练好了三轮车车技的我，觉得技痒，很想表现一下。于是要求奶奶给我踩。奶奶可能也是踩累了，爽快地答应了。骑上三轮车，我就用力蹬开了，只听见耳边嗖嗖的风声。爷爷奶奶怕我撞车，在后面追着大叫：“慢点！慢点！”\r\n\r\n　　不到十分钟，我们就到了烈士陵园门口。踏进园门一看，啊，真热闹。久雨初晴，游园的人真多，来来往往，熙熙攘攘。我们发现园陵又有了许多变化。新挖了一口池塘。工人们正在塘边植树栽花。好动的弟弟也装模作样地蹲下身子，给新栽的花草培土。突然一个皮球飞到我面前，我捡起来同弟弟递来递去地玩，有两个小妹妹站在旁边看着我们。一问才知道球是她们的。我感到很不好意思，立刻还给了人家。\r\n\r\n　　这时，我们发现有许多五颜六色的小泡泡在眼前飞舞。一看，原来是有个小弟弟在吹肥皂泡。我问他是哪里买的，他指了一下那边。我顺着他指的方向看去，一大推人围在那里。我找奶奶要了十元钱就带着弟弟飞奔过去。那里摆着许多玩具，最畅销的是吹泡泡的小筒。居然没货了。售货员马上打电话通知家里人送来。我们等了好久才购到两个。一到手，弟弟和我就迫不及待地玩开了。我们把那沾有肥皂水的小棒从那筒里抽出来，轻轻一吹，那些小泡泡就争先恐后地蹦到空中，随风飘舞，在阳光的反射下，变得红红绿绿，五颜六色，好看极了。后来我把那抽出来的棒棒随风一摆，那泡泡就飞出去了，而且比口吹的还要大，还要多。弟弟也学我的样。这样大大提高了出球的效率。同玩的伙伴们也学着我们的样。我们在广场上嬉戏追逐，总想把泡泡飞到对方脸上。一时间，欢笑声，叫喊声伴着那五彩缤纷的小泡泡，在广场上空荡漾。', '公开');
INSERT INTO `diary` VALUES (9, 2, 2017, 5, 11, 1, '小雨转阴', '    我今天的心情很是不好,真是烦!!!', '公开');
INSERT INTO `diary` VALUES (10, 13, 2017, 5, 11, 1, '小雨', '    我是朱杰,我是一头猪', '公开');
INSERT INTO `diary` VALUES (11, 13, 2017, 5, 11, 1, '小雨', '    我是朱杰,我是一头猪,我也是两头猪', '公开');
INSERT INTO `diary` VALUES (12, 2, 2017, 5, 11, 1, '阴雨绵绵', '    还差好友日记展示没写了,写完就差不多OK了,算个半成品吧!!!', '私密');
INSERT INTO `diary` VALUES (13, 2, 2017, 5, 11, 1, '阴雨绵绵', '   还行吧.', '私密');
INSERT INTO `diary` VALUES (14, 2, 2017, 5, 11, 1, '阴雨绵绵', '我怎么加了一个判断私密还是公开的功能就出错了呢!', '公开');
INSERT INTO `diary` VALUES (15, 2, 2017, 5, 11, 1, 'as', '输入日记的内容..', '私密');
INSERT INTO `diary` VALUES (16, 2, 2017, 5, 11, 1, '小雨转阴', '我写了一篇公开的日记,打算明天做点什么', '公开');
INSERT INTO `diary` VALUES (17, 1, 2017, 5, 11, 7, '好', '哈哈哈哈，我写了一大半了', '公开');
INSERT INTO `diary` VALUES (18, 13, 2017, 5, 11, 4, '不是特别好', '    今天天气不是特别好', '公开');
INSERT INTO `diary` VALUES (19, 14, 2017, 5, 11, 4, '小雨转阴', '    请允许我写下我的第一篇日记,\r\n             it\'s very nice of u.guy\r\n                     #the end', '公开');
INSERT INTO `diary` VALUES (20, 16, 2017, 5, 12, 5, '晴', '   something wrong with my body,e....that means I am sick recently.I always think that I have any disease.I am not sure,but I feel uncomfortable.', '私密');
INSERT INTO `diary` VALUES (21, 17, 2017, 5, 12, 5, 'bad', 'if any problem with myself,I dead someday,what will the world would be?', '私密');
INSERT INTO `diary` VALUES (22, 1, 2017, 5, 12, 1, '多云转晴', '   今天我在改模板,心里很烦!!!!!!', '公开');
INSERT INTO `diary` VALUES (23, 18, 2017, 5, 12, 1, '阴天', '没什么想说的', '公开');
INSERT INTO `diary` VALUES (32, 18, 2017, 5, 9, 1, '晴天', '出去玩吧大兄弟', '公开');
INSERT INTO `diary` VALUES (33, 18, 2017, 5, 4, 1, '晴天', '111', '公开');
INSERT INTO `diary` VALUES (34, 18, 2017, 5, 12, 1, '晴', '黄海江是个大智障', '公开');
INSERT INTO `diary` VALUES (35, 18, 2017, 5, 16, 2, '不知道', '111', '公开');
INSERT INTO `diary` VALUES (36, 26, 1111, 11, 1, 1, '1', '输入日记的很想喝水\r\n但喝完却没有了\r\n怎么ba n\r\n办.', '公开');
INSERT INTO `diary` VALUES (37, 26, 2017, 5, 11, 1, '1', '输入日记的内容..\r\n\r\n\r\n\r\n为\r\n\r\n\r\n\r\n额外\r\n \r\n\r\n\r\n为rw ', '公开');
COMMIT;

-- ----------------------------
-- Table structure for friend_req
-- ----------------------------
DROP TABLE IF EXISTS `friend_req`;
CREATE TABLE `friend_req` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `req_from` int(11) NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of friend_req
-- ----------------------------
BEGIN;
INSERT INTO `friend_req` VALUES (2, 1, 2);
INSERT INTO `friend_req` VALUES (3, 1, 3);
INSERT INTO `friend_req` VALUES (4, 1, 4);
INSERT INTO `friend_req` VALUES (5, 1, 5);
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) DEFAULT NULL,
  `user_account` varchar(16) NOT NULL DEFAULT '',
  `user_password` varchar(32) NOT NULL,
  `user_sex` varchar(8) DEFAULT NULL,
  `user_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, '阮坤', 'ruankun', '123456', '男', 16);
INSERT INTO `t_user` VALUES (2, '李彦霖', 'liyanlin', 'lyl128', '女', 12);
INSERT INTO `t_user` VALUES (3, '小女孩', '543', '123', '女', 11);
INSERT INTO `t_user` VALUES (4, 'lao女孩', '234324234', '3fdd', 'DF', 71);
INSERT INTO `t_user` VALUES (5, '小女孩成年了', '234324234', '1314520', '女', 18);
INSERT INTO `t_user` VALUES (13, '朱杰', 'zj', '123456', '男', 21);
INSERT INTO `t_user` VALUES (14, '养猫的狗', '314445437', 'qkmcrk', '男', 21);
INSERT INTO `t_user` VALUES (15, 'ezio', 'ezio', '123', '男', 123);
INSERT INTO `t_user` VALUES (16, '123', '123', '1231', '男', 1);
INSERT INTO `t_user` VALUES (17, 'dog', 'dog', '123', '男', 12);
INSERT INTO `t_user` VALUES (18, 'Lee', '185109543', 'Lee1995', '男', 20);
INSERT INTO `t_user` VALUES (19, 'Lee', 'Lee1995', '1995', '男', 1);
INSERT INTO `t_user` VALUES (26, '1', '1', '1', '男', 1);
INSERT INTO `t_user` VALUES (27, 'ruan', 'ry', '123', '男', 3);
COMMIT;

-- ----------------------------
-- Table structure for user_friend
-- ----------------------------
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend` (
  `user_frined_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `friend_type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`user_frined_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_friend
-- ----------------------------
BEGIN;
INSERT INTO `user_friend` VALUES (5, 1, 2, NULL);
INSERT INTO `user_friend` VALUES (6, 2, 1, NULL);
INSERT INTO `user_friend` VALUES (7, 1, 3, NULL);
INSERT INTO `user_friend` VALUES (8, 1, 4, NULL);
INSERT INTO `user_friend` VALUES (9, 1, 5, NULL);
INSERT INTO `user_friend` VALUES (10, 3, 1, NULL);
INSERT INTO `user_friend` VALUES (11, 4, 1, NULL);
INSERT INTO `user_friend` VALUES (12, 5, 1, NULL);
INSERT INTO `user_friend` VALUES (13, 1, 13, NULL);
INSERT INTO `user_friend` VALUES (14, 13, 1, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
