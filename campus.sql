/*
 Navicat MySQL Data Transfer

 Source Server         : 45.40.193.214
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : 45.40.193.214:3306
 Source Schema         : campus

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 05/08/2018 21:21:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `state` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_admin_user_idx` (`userid`) USING BTREE,
  CONSTRAINT `fk_admin_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
BEGIN;
INSERT INTO `t_admin` VALUES (1, 1, 1);
INSERT INTO `t_admin` VALUES (2, 200027, 1);
COMMIT;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `infoid` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `commenttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_comment_user_idx` (`userid`) USING BTREE,
  KEY `fk_comment_info_idx` (`infoid`) USING BTREE,
  CONSTRAINT `fk_comment_info` FOREIGN KEY (`infoid`) REFERENCES `t_helpinfo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for t_helpinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_helpinfo`;
CREATE TABLE `t_helpinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `crettime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timeout` bigint(20) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` text NOT NULL,
  `tip` varchar(45) DEFAULT NULL,
  `imgpath` varchar(45) DEFAULT NULL,
  `reward` varchar(45) NOT NULL,
  `t_helpinfocol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_helpinfo_user_idx` (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_helpinfo
-- ----------------------------
BEGIN;
INSERT INTO `t_helpinfo` VALUES (17, 200027, '2018-03-25 20:48:16', 1522339200000, '娇娇2', '<p>汉江水利水电（集团）有限责任公司（水利部丹江口水利枢纽管理局），总部位于湖北省武汉市东西湖区航天路7号，是隶属于水利部长江水利委员会管理的大型企业集团。</p><p>丹江口水力发电厂，位于湖北省丹江口市城区。是汉江水利水电（集团）有限责任公司核心企业之一，是分公司性质的工厂制单位，系国有企业。电厂主要承担丹江口水利枢纽的防汛、发电、航运功能。丹江口水利枢纽是治理开发汉江的关键性工程，也是南水北调中线的水源工程。丹江电厂属左岸坝后式厂房结构，厂房总长175.5米，宽26.2米，装设有6台容量为15万千瓦的混流式水轮发电机组，总装机容量为90万千瓦，最大年发电量达54.12亿千瓦时。</p><p>为满足企业发展的需要，拟公开招聘8名员工，现将有关事项公告如下：</p><p><strong>一、招聘原则</strong><strong></strong></p><p>坚持“公开、平等、竞争、择优”原则，严格把握德才兼备的用人标准，采取考试、考核相结合的方法，面向社会公开招聘应往届毕业生。</p><p><strong>二、招聘岗位及数量</strong><strong></strong></p><p>电气运检岗位4人、机械运检岗位2人、水工监测和水工结构岗位2人。具体招聘岗位和资格条件详见附件1。</p><p><strong>三、招聘条件</strong><strong></strong></p><p>（一）基本条件</p><p>1、品行端正，作风正派，遵纪守法，具有较强的团队协作精神和沟通协调能力；</p><p>2、掌握所任岗位的业务与政策，具有相应的专业理论水平和较强的学习能力；</p><p>3、有奉献精神，服从安排，爱岗敬业，勤奋工作，注重效率；</p><p>4、有一定的语言及文字表达能力，能够熟练使用常用办公软件和办公自动化系统；</p><p>5、具有良好的心理素质和能够正常履行岗位职责的身体素质。</p><p>（二）资格及岗位条件（详见附件1）</p><p>1、学历、学位</p><p>应聘人员应具备与应聘岗位要求一致的学历，并取得相应的学历学位证书。</p><p>2、所学专业</p><p>应聘人员参加相关岗位的招聘时，所学专业应与招聘岗位要求相对应的学历层次的专业名称一致。所学专业以应聘人员的学历学位证书、学信网上查询的教育部学籍在线验证报告或学信网查询的教育部学历证书电子注册备案表上记载的专业名称为准。</p><p>3、年龄</p><p>本科应届毕业生年龄不超过25周岁（1993年1月1日后出生）；硕士研究生应届毕业生年龄不超过29周岁（1989年1月1日后出生）；博士年龄不超过33周岁（1985年1月1日后出生）；对具有一定工作经验的往届生，年龄适当放宽，最多不超过3岁。</p><p><strong>四、招聘程序</strong><strong></strong></p><p>公开招聘采取信息发布、报名、资格审查、测试、体检、考察、公示、录用等程序进行，实行公平竞争、择优录取。</p><p>（一）信息发布</p><p>通过汉江集团公司网站（http://www.hjgrp.com/）、智联招聘（http://www.zhaopin.com/）、海投网（http：//www.haitou.cc/）、高校校园网发布公开招聘信息。</p><p>（二）报名</p><p>1、报名时间：2018年3月15日至4月8日。根据报名实际情况可适当延长，具体以网站通知为准。咨询电话：0719-5372476、5372349。</p><p>2、报名方式：采取网络报名的方式，每位应聘者限报一个岗位。报名需提供：</p><p>（1）本人的身份证扫描件；</p><p>（2）各学历阶段的学习成绩单（须加盖学校公章）扫描件，往届生还需提供各学历阶段的学历和学位证书扫描件；</p><p>（3）应届生需提供学信网查询的教育部学籍在线验证报告，往届生需提供学信网查询的教育部学历证书电子注册备案表；</p><p>（4）完整填写的《丹江口水力发电厂公开招聘报名登记表》（见附件2）；</p><p>（5）近期一吋白底免冠正面彩色照片（电子版）；</p><p>（6）在校获得各类证书（奖状）及相关的专业技术资格证书、执业资格证书、本人与现用人单位签订的劳动合同或解除劳动合同的证明的扫描件（公务员等未签订劳动合同的就业人员须提供用人单位出具的工作证明）。</p><p>上述报名材料第（1）至（5）项为必备，第（6）项作为用人单位考察了解应聘人员的重要参考。报名材料按上述顺序整理编号后请发送至：djdcrlzyb@163.com。</p><p>电子邮件名称请注明“岗位编号+大学名称+学历+姓名”，例如：DC01+XX大学+本科+XXX。</p><p>（三）资格审查</p><p>电厂人力资源部将依据岗位招聘条件对报名人员进行资格初审。经初审合格的应聘人员名单及进行测试的方式、时间、地点安排等相关事宜将在汉江集团公司网站（http://www.hjgrp.com/）进行公布。</p><p>（四）测试</p><p>测试采取笔试与面试相结合的方式进行。招聘考试分为笔试和面试二个环节，将对应聘人员的责任意识、知识能力、团队协作、心理素质等进行综合测试，招聘考试总成绩为100分，笔试与面试成绩分别占40%和60%。</p><p>测试拟定于4月中旬，具体招聘考试时间及地点根据招聘进度适时确定并通知。</p><p>测试完毕后，测试总成绩排序将在汉江集团公司网站（http://www.hjgrp.com/）进行公布。</p><p>（五）体检</p><p>由电厂人力资源部组织对拟录用人员进行体检，体检不合格者按测试总成绩的排序依次递补。体检项目、标准参照《公务员录用体检通用标准（试行）》的规定执行。</p><p>（六）公示</p><p>根据测试、体检情况，结合岗位需要及个人特长等因素，择优确定拟录用人选。按照相关规定，对确定的拟录用人选进行公示，公示时间为7个工作日。公示公告将在汉江集团网站（http://www.hjgrp.com/）进行发布。</p><p>（七）录用</p><p>1、签订合同（协议）。对经公示无异议的拟录用人选，由电厂人力资源向其发出《录用通知书》，通知应聘人员集中审核个人资料和签订劳动合同书。对于应届生，一般先签订《三方协议》，待应聘人员取得学历、学位证书后，再签订劳动合同书。</p><p>2、办理入职</p><p>录用人员到丹江口水力发电厂报到，并办理录用人员的入职手续。</p><p><strong>五、后续管理</strong><strong></strong></p><p>（一）劳动关系。应聘上岗人员与丹江口水力发电厂签订劳动合同书，首次签订劳动合同期限不超过3年（含3年）。合同到期后，经考核合格继续聘用，续签劳动合同。</p><p>（二）试用期管理。应聘上岗人员实行试用期，试用期时间按照《劳动合同法》的相关规定执行。试用期间，享受应聘岗位相关待遇，试用期满，经考核合格的，办理正式录用手续。</p><p>（三）薪酬福利。应聘人员招聘到岗后，按所在单位的薪酬福利制度和劳动合同的约定执行。</p><p><strong>六、相关事项</strong><strong></strong></p><p>（一）报名时应聘者提供的报考证件必须真实、完整，资格审查工作将贯穿公开招聘的全过程。如发现弄虚作假者，将随时取消应聘资格，所造成的一切损失由应聘者本人承担。</p><p>（二）应聘人员报名成功后，应保持手机、电子邮箱等通讯方式畅通，定期查看汉江集团网站（http://www.hjgrp.com/）发布的相关公告。本次招聘不安排补考，因未按要求及时参加测试的，视为应聘人员主动放弃招聘资格。</p><p>（三）应聘人员在测试、体检期间的交通费、伙食费及住宿费用由应聘人员承担，体检费用由用人单位承担。</p><p><strong>七、监督单位、电话</strong><strong></strong></p><p>公开招聘的监督单位为汉江集团公司丹江口水力发电厂纪委，监督电话：0719-5372312。</p><p>&nbsp;</p><p>附件：1、丹江口水力发电厂面向社会公开招聘岗位、资格条件一览表</p><p>　　　2、丹江口水力发电厂公开招聘报名登记表</p><p>&nbsp;</p><p>&nbsp;</p><p>　 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018年3月15日</p>', '娇娇2', NULL, '43', NULL);
INSERT INTO `t_helpinfo` VALUES (20, 200030, '2018-03-25 21:01:42', 1556294400000, '何向松1', '<p>\n							在这里键入 <b>求助信息详</b>今飞控股集团有限公司</p><p>招聘信息</p><p>今飞控股集团有限公司位于“中国十佳宜居城市”之一的金华市，始建于1959年6月，注册资本为5000万元，总资产35亿元，生产厂区共占地2000余亩，包括汽车轮毂、摩托车轮毂和电动车车轮等三大生产基地。相继被评为中国汽车零部件百强企业、中国摩托车行业零部件优势企业、中国大企业集团竞争力500强、中国汽车零部件车轮行业龙头企业、浙江省工业行业龙头骨干企业。</p><p>集团下属浙江今飞凯达轮毂股份有限公司（股票代码：002863）、浙江今飞摩轮有限公司、贵州今飞轮毂铸造有限公司、云南富源今飞轮毂制造有限公司、宁夏今飞轮毂有限公司等十五家子公司及一家分支机构。2018年因业务发展需要，诚邀以下各专业的精英加盟，共享企业发展成果：</p><br>', '有点久', NULL, '123', NULL);
INSERT INTO `t_helpinfo` VALUES (21, 200033, '2018-03-26 12:02:26', 1522080000000, '帮忙取快递', '<p>\n							在这里键入 <b>求助信息详情内容</b>\n						</p><p style=\"color: orange\">(提示:为美观起见,可尽量将内容居中)</p><p><br></p>', '。。', NULL, '2', NULL);
INSERT INTO `t_helpinfo` VALUES (37, 200035, '2018-03-27 15:46:40', 1530374400000, '2323任务', '<p style=\"text-align: center;\"><b>dvdcdc&nbsp; &nbsp; wangEditor</b><img src=\"http://139.199.15.45://campusMutual/static/uploadfile/-1286770598Penguins.jpg\" style=\"max-width:30%;\"></p><p style=\"text-align: center;\"><br></p>', '32人', NULL, '1000', NULL);
INSERT INTO `t_helpinfo` VALUES (41, 200037, '2018-03-29 10:20:31', 1525017600000, '一起玩滑板', '<p>\n							在这里键入 <b>求助信息详情内容</b>\n						</p><p style=\"color: orange\"><br></p><p align=\"center\">玩板的小伙伴三区滑板约起来啦</p><p align=\"center\"><img src=\"http://139.199.15.45://campusMutual/static/uploadfile/-2076649406timg.jpg\" style=\"max-width:100%;\"></p>', '长板', NULL, '0', NULL);
INSERT INTO `t_helpinfo` VALUES (42, 200075, '2018-04-09 13:34:15', 1530288000000, '约滑板', '<p>\n							在这里键入 <b>求助信息详情内容</b>\n						</p><p style=\"color: orange\">(提示:为美观起见,可尽量将内容居中)</p><p align=\"center\"><img src=\"http://139.199.15.45://campusMutual/static/uploadfile/-5001565975BFB601153BD4485B492C25FDC462655.png\" style=\"max-width:100%;\"></p><p>协会日常活动，第一次【二十天早起计划】启动啦！活动自愿参与，不作强制要求，从明天（周二，4月9日）开始，每天早上7.20-8.00，地点:三区操场，没有规定要求训练时间，训练内容，只要你能来，哪怕一分钟也可以，滑板，打篮球，跑步，聊天都可以，我们的目的是希望协会滑板技术的整体水平得到提升，更希望的是大家养成早睡早起的生活习惯，并且发扬滑板自由，坚持的精神，我们协会也希望能够举办一些有意义的活动。本次活动历时32天（不包括雨天和不适宜户外运动的天气），只要早起二十天现场签到，就可以得到协会精心准备的神秘礼物一份哦（绝对有诚意哦~）大家刚加入协会，可能互相都还不认识，多多参与日常活动也有助于大家相互熟悉，增强友谊。活动时会悬挂会旗，大家到时候到会旗这里签到就行了，希望大家能够坚持到最后。</p>', '长期约板', NULL, '0', NULL);
INSERT INTO `t_helpinfo` VALUES (43, 200079, '2018-04-09 14:05:02', 1523548800000, '约图书馆', '<p>\n							在这里键入 <b>求助信息详情内容</b>\n						</p><p style=\"color: orange\">(提示:为美观起见,可尽量将内容居中)</p><p>找一个能一起约图书馆的同学，每天早上七点一起去学习，为自己增加学习的动力与乐趣。<br></p>', '增加学习动力', NULL, '0', NULL);
INSERT INTO `t_helpinfo` VALUES (55, 200075, '2018-04-09 14:12:38', 1523376000000, '取快递', '<p>\n							在这里键入 <b>求助信息详情内容</b>\n						</p><p style=\"color: orange\">(提示:为美观起见,可尽量将内容居中)</p><p>&nbsp; 123<br></p>', '中通快递', NULL, '5', NULL);
INSERT INTO `t_helpinfo` VALUES (56, 200032, '2018-04-10 12:24:28', 1524758400000, '123445', '<p>更符合规范化规范化</p>', '23432', NULL, '645', NULL);
INSERT INTO `t_helpinfo` VALUES (57, 200075, '2018-04-10 13:23:18', 1523376000000, '帮忙打水', '<div align=\"left\"><h1><b>来找我拿水瓶</b></h1></div><p><br></p>', '两瓶水', NULL, '3', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_helpstate
-- ----------------------------
DROP TABLE IF EXISTS `t_helpstate`;
CREATE TABLE `t_helpstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infoid` int(11) NOT NULL,
  `timeout` tinyint(4) NOT NULL,
  `received` tinyint(4) NOT NULL,
  `receiverid` int(11) DEFAULT NULL,
  `achieved` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_helpstate_helpinfo_idx` (`infoid`) USING BTREE,
  KEY `fk__idx` (`receiverid`) USING BTREE,
  CONSTRAINT `fk_helpstate_helpinfo` FOREIGN KEY (`infoid`) REFERENCES `t_helpinfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_helpstate_user` FOREIGN KEY (`receiverid`) REFERENCES `t_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_helpstate
-- ----------------------------
BEGIN;
INSERT INTO `t_helpstate` VALUES (14, 17, 0, 1, 200030, 0);
INSERT INTO `t_helpstate` VALUES (17, 20, 0, 1, 200033, 0);
INSERT INTO `t_helpstate` VALUES (18, 21, 0, 1, 200027, 0);
INSERT INTO `t_helpstate` VALUES (19, 37, 0, 1, 200027, 0);
INSERT INTO `t_helpstate` VALUES (22, 41, 0, 1, 1, 0);
INSERT INTO `t_helpstate` VALUES (23, 42, 0, 1, 200079, 1);
INSERT INTO `t_helpstate` VALUES (24, 43, 0, 1, 200075, 1);
INSERT INTO `t_helpstate` VALUES (25, 55, 0, 0, NULL, 0);
INSERT INTO `t_helpstate` VALUES (26, 56, 0, 1, 200031, 0);
INSERT INTO `t_helpstate` VALUES (27, 57, 0, 1, 200079, 0);
COMMIT;

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cretime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorid` int(11) DEFAULT NULL,
  `notice` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_notice_user_idx` (`creatorid`) USING BTREE,
  CONSTRAINT `fk_notice_user` FOREIGN KEY (`creatorid`) REFERENCES `t_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuid` int(11) NOT NULL,
  `account` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `oldpassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `stuid_UNIQUE` (`stuid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200082 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 0, 'admin', 'admin', '0');
INSERT INTO `t_user` VALUES (200018, 43243265, 'qwewq', '12', '12');
INSERT INTO `t_user` VALUES (200019, 345435, '436', '12', '12');
INSERT INTO `t_user` VALUES (200020, 3246543, '32432', '12', '12');
INSERT INTO `t_user` VALUES (200021, 546, '546', '12', '12');
INSERT INTO `t_user` VALUES (200022, 324, '543', '12', '12');
INSERT INTO `t_user` VALUES (200023, 20140005, 'wang', 'cnVZ6M', 'VjnBgL');
INSERT INTO `t_user` VALUES (200025, 20140001, 'jiao', '123', '123');
INSERT INTO `t_user` VALUES (200027, 20141111, 'jiaojiao', '3UCYSR', 'AwhOKf');
INSERT INTO `t_user` VALUES (200028, 10086, 'yidong', 'nhpjqp', 'yidong');
INSERT INTO `t_user` VALUES (200029, 510623, 'qulaoer', '123', '123');
INSERT INTO `t_user` VALUES (200030, 20140138, 'hexiangsong', 'rxPNtM', 'hexiangsong');
INSERT INTO `t_user` VALUES (200031, 20140032, 'yuewei', 'yuewei', 'yuewei');
INSERT INTO `t_user` VALUES (200032, 20140999, 'zhanghong', 'zhanghong', 'zhanghong');
INSERT INTO `t_user` VALUES (200033, 20140473, 'CAT547', 'sG66ze', '12345678');
INSERT INTO `t_user` VALUES (200034, 111, '111', '111', '111');
INSERT INTO `t_user` VALUES (200035, 123, '123', 'ndQif9', '123');
INSERT INTO `t_user` VALUES (200037, 20140592, '123456', 'KHYPHN', 'yj3UgU');
INSERT INTO `t_user` VALUES (200038, 20140575, '123456', '123456', '123456');
INSERT INTO `t_user` VALUES (200073, 33, '33', '33', '33');
INSERT INTO `t_user` VALUES (200074, 11111, '123', '1234', '1234');
INSERT INTO `t_user` VALUES (200075, 20140489, 'xiaorong', 'xiexiaorong', 'xiexiaorong');
INSERT INTO `t_user` VALUES (200079, 20140573, 'yumeng', 'yumenga', 'yumenga');
INSERT INTO `t_user` VALUES (200080, 201401750, 'huanglaoer', 'gD3fMy', '123');
INSERT INTO `t_user` VALUES (200081, 9, '9', '9', '9');
COMMIT;

-- ----------------------------
-- Table structure for t_usercertif
-- ----------------------------
DROP TABLE IF EXISTS `t_usercertif`;
CREATE TABLE `t_usercertif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `state` tinyint(4) NOT NULL,
  `cardpath` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_certif_user_idx` (`userid`) USING BTREE,
  CONSTRAINT `fk_certif_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_usercertif
-- ----------------------------
BEGIN;
INSERT INTO `t_usercertif` VALUES (1, 200018, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (2, 200019, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (3, 200020, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (4, 200021, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (5, 200022, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (6, 200023, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (7, 200027, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (8, 200028, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (9, 200029, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (10, 200030, 1, '18212756354565.jpg');
INSERT INTO `t_usercertif` VALUES (11, 200031, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (12, 200032, 1, '20178979case.jpg');
INSERT INTO `t_usercertif` VALUES (13, 200033, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (14, 200034, 1, '20178979case.jpg');
INSERT INTO `t_usercertif` VALUES (15, 1, 1, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (16, 200035, 1, '-1266679128Desert.jpg');
INSERT INTO `t_usercertif` VALUES (17, 200037, 0, '');
INSERT INTO `t_usercertif` VALUES (18, 200073, 0, '130156496IMG_20180329_113837.jpg');
INSERT INTO `t_usercertif` VALUES (19, 200075, 0, '');
INSERT INTO `t_usercertif` VALUES (20, 200079, 0, '');
INSERT INTO `t_usercertif` VALUES (21, 200080, 1, '1175282124$K((JP6CSU{]X]6L)MC)B)C.jpg');
INSERT INTO `t_usercertif` VALUES (22, 200081, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for t_userportrait
-- ----------------------------
DROP TABLE IF EXISTS `t_userportrait`;
CREATE TABLE `t_userportrait` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `portrait` blob,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_port_user_idx` (`userid`) USING BTREE,
  CONSTRAINT `fk_port_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_userportrait
-- ----------------------------
BEGIN;
INSERT INTO `t_userportrait` VALUES (6, 200018, NULL);
INSERT INTO `t_userportrait` VALUES (7, 200019, NULL);
INSERT INTO `t_userportrait` VALUES (8, 200020, NULL);
INSERT INTO `t_userportrait` VALUES (9, 200021, NULL);
INSERT INTO `t_userportrait` VALUES (10, 200022, NULL);
INSERT INTO `t_userportrait` VALUES (11, 200023, NULL);
INSERT INTO `t_userportrait` VALUES (12, 200027, NULL);
INSERT INTO `t_userportrait` VALUES (13, 200028, NULL);
INSERT INTO `t_userportrait` VALUES (14, 200029, NULL);
INSERT INTO `t_userportrait` VALUES (15, 200030, NULL);
INSERT INTO `t_userportrait` VALUES (16, 200031, NULL);
INSERT INTO `t_userportrait` VALUES (17, 200032, NULL);
INSERT INTO `t_userportrait` VALUES (18, 200033, NULL);
INSERT INTO `t_userportrait` VALUES (19, 200034, NULL);
INSERT INTO `t_userportrait` VALUES (20, 200035, NULL);
INSERT INTO `t_userportrait` VALUES (21, 200037, NULL);
INSERT INTO `t_userportrait` VALUES (22, 200073, NULL);
INSERT INTO `t_userportrait` VALUES (23, 200075, NULL);
INSERT INTO `t_userportrait` VALUES (24, 200079, NULL);
INSERT INTO `t_userportrait` VALUES (25, 200080, NULL);
INSERT INTO `t_userportrait` VALUES (26, 200081, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_userpriminfo
-- ----------------------------
DROP TABLE IF EXISTS `t_userpriminfo`;
CREATE TABLE `t_userpriminfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `neckname` varchar(45) DEFAULT NULL,
  `usermail` varchar(45) DEFAULT NULL,
  `userphone` varchar(45) DEFAULT NULL,
  `sex` enum('M','F') DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `qq` varchar(45) DEFAULT NULL,
  `dormnum` int(11) DEFAULT NULL,
  `dormaddr` varchar(45) DEFAULT NULL,
  `homeaddr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_prim_user_idx` (`userid`) USING BTREE,
  CONSTRAINT `fk_prim_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_userpriminfo
-- ----------------------------
BEGIN;
INSERT INTO `t_userpriminfo` VALUES (7, 200018, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (8, 200019, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (9, 200020, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (10, 200021, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (11, 200022, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (12, 200023, '阮中华', 'qkmc@outlook.com', '18783551223', 'M', 2, '314445437', 0, '-', '西安');
INSERT INTO `t_userpriminfo` VALUES (13, 200027, '娇娇', 'qkmc@outlook.com', '123456789', 'F', 23, '314445437', 22, '7楼', '四川省阿坝州松潘县');
INSERT INTO `t_userpriminfo` VALUES (14, 200028, '中国移动', '314445437@qq.com', '1008611', 'F', 50, '1008611', 0, '不定', '上海明珠');
INSERT INTO `t_userpriminfo` VALUES (15, 200029, '屈老二', '314445437@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (16, 200030, '何向松', 'qkmc@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (17, 200031, 'jiaojiao', '314445437@qq.com', '', 'M', NULL, '', NULL, '', 'jiaojiao');
INSERT INTO `t_userpriminfo` VALUES (18, 200032, '张虹', 'qkmc@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (19, 200033, '张虹', '1339102739@qq.con', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (20, 200034, '111111', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (21, 200035, '222222', 'qkmc@outlook.com', '18783551223', 'M', 12, '314445437', 23, 'saxasx', '');
INSERT INTO `t_userpriminfo` VALUES (22, 200037, '张幼仪', '1339102739@qq.com', '18227592385', 'F', 22, '1339102739', 21, '21', '云南昭通');
INSERT INTO `t_userpriminfo` VALUES (23, 200073, '33333', '33', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (24, 200075, '谢晓蓉', '1339102739@qq.com', '17738297721', 'F', 23, '1339102739', 21, 'B708', '四川成都');
INSERT INTO `t_userpriminfo` VALUES (25, 200079, '喻萌', '1339102739@qq.com', '18227592385', 'F', 22, '', NULL, '', '');
INSERT INTO `t_userpriminfo` VALUES (26, 200080, 'huanglaoer', 'qkmc@outlook.com', '', 'M', NULL, '314445437', NULL, '', 'huanglaoer');
INSERT INTO `t_userpriminfo` VALUES (27, 200081, '87789', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_userquestion
-- ----------------------------
DROP TABLE IF EXISTS `t_userquestion`;
CREATE TABLE `t_userquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `question1` varchar(45) DEFAULT NULL,
  `answer1` varchar(45) DEFAULT NULL,
  `question2` varchar(45) DEFAULT NULL,
  `answer2` varchar(45) DEFAULT NULL,
  `question3` varchar(45) DEFAULT NULL,
  `answer3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_qustion_user_idx` (`userid`) USING BTREE,
  CONSTRAINT `fk_qustion_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_userquestion
-- ----------------------------
BEGIN;
INSERT INTO `t_userquestion` VALUES (1, 200018, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (2, 200019, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (3, 200020, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (4, 200021, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (5, 200022, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (6, 200023, '我爸叫什么', 'ruankun', '我妈叫什么', 'niejiao', '我生日', '824');
INSERT INTO `t_userquestion` VALUES (7, 200027, '我爸爸是谁?', '阮坤', '我妈妈是谁?', '聂娇', '我爸爸生日?', '726');
INSERT INTO `t_userquestion` VALUES (8, 200028, '中国移动的爸爸是?', '阮坤', '中国移动的妈妈是?', '聂娇', '中国移动妈妈多少岁了?', '23');
INSERT INTO `t_userquestion` VALUES (9, 200029, '粑粑', 'qu', '妈妈', 'ma', '我', 'qu');
INSERT INTO `t_userquestion` VALUES (10, 200030, '我爸爸', '何老大', '我妈妈', '何老二', '我爸爸生日', '000');
INSERT INTO `t_userquestion` VALUES (11, 200031, '1', '1', '1', '1', '1', '1');
INSERT INTO `t_userquestion` VALUES (12, 200032, '1', '1', '1', '1', '1', '1');
INSERT INTO `t_userquestion` VALUES (13, 200033, '老师', '王', '室友', '谢', '同学', '李');
INSERT INTO `t_userquestion` VALUES (14, 200034, '111', '111', '111', '111', '111', '111');
INSERT INTO `t_userquestion` VALUES (15, 200035, '123', '321', '123', '321', '123', '321');
INSERT INTO `t_userquestion` VALUES (16, 200037, '室友1', '谢', '室友2', '李', '室友3', '喻');
INSERT INTO `t_userquestion` VALUES (17, 200073, '33', '33', '33', '33', '33', '33');
INSERT INTO `t_userquestion` VALUES (18, 200075, '电脑', '联想', '手机', '小米', '滑板', '喵板');
INSERT INTO `t_userquestion` VALUES (19, 200079, '手机', '小米', '头发', '长发', '颜色', '黑色');
INSERT INTO `t_userquestion` VALUES (20, 200080, '我爸爸名字', '阮坤', '我妈妈名字', 'liyanlin', '我爸爸生日', '726');
INSERT INTO `t_userquestion` VALUES (21, 200081, '9', '9', '9', '9', '9', '9');
COMMIT;

-- ----------------------------
-- Table structure for t_usertoken
-- ----------------------------
DROP TABLE IF EXISTS `t_usertoken`;
CREATE TABLE `t_usertoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `crettime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_token_user_idx` (`userid`) USING BTREE,
  CONSTRAINT `fk_token_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_usertoken
-- ----------------------------
BEGIN;
INSERT INTO `t_usertoken` VALUES (6, 200018, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:44:38');
INSERT INTO `t_usertoken` VALUES (7, 200019, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:45:30');
INSERT INTO `t_usertoken` VALUES (8, 200020, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:45:45');
INSERT INTO `t_usertoken` VALUES (9, 200021, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:46:18');
INSERT INTO `t_usertoken` VALUES (10, 200022, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:46:55');
INSERT INTO `t_usertoken` VALUES (11, 200023, '202cb962ac59075b964b07152d234b70', '2018-03-20 12:44:36');
INSERT INTO `t_usertoken` VALUES (12, 200027, '202cb962ac59075b964b07152d234b70', '2018-03-20 22:22:10');
INSERT INTO `t_usertoken` VALUES (13, 200028, 'c6b31b1d32a2da9df64dd63de50f6ba9', '2018-03-22 22:32:29');
INSERT INTO `t_usertoken` VALUES (14, 200029, '202cb962ac59075b964b07152d234b70', '2018-03-23 08:35:11');
INSERT INTO `t_usertoken` VALUES (15, 200030, '9af353d850b799429a72ce620af09803', '2018-03-25 20:57:16');
INSERT INTO `t_usertoken` VALUES (16, 200031, '88b365fc5174433582139947ac7ca99c', '2018-03-25 23:25:30');
INSERT INTO `t_usertoken` VALUES (17, 200032, 'be2081d979e9192e25672196b5d86ddd', '2018-03-26 11:30:09');
INSERT INTO `t_usertoken` VALUES (18, 200033, '25d55ad283aa400af464c76d713c07ad', '2018-03-26 12:01:13');
INSERT INTO `t_usertoken` VALUES (19, 200034, '698d51a19d8a121ce581499d7b701668', '2018-03-26 13:38:05');
INSERT INTO `t_usertoken` VALUES (20, 1, '698d51a19d8a121ce581499d7b701668', '2018-03-26 20:10:53');
INSERT INTO `t_usertoken` VALUES (21, 200035, '202cb962ac59075b964b07152d234b70', '2018-03-27 15:22:20');
INSERT INTO `t_usertoken` VALUES (22, 200037, 'e10adc3949ba59abbe56e057f20f883e', '2018-03-28 09:56:03');
INSERT INTO `t_usertoken` VALUES (23, 200073, '182be0c5cdcd5072bb1864cdee4d3d6e', '2018-03-30 09:37:27');
INSERT INTO `t_usertoken` VALUES (24, 200075, '2a60a98d215a236a7a0185da63c4dbc7', '2018-03-30 09:47:55');
INSERT INTO `t_usertoken` VALUES (25, 200079, 'bb74c280699c52c41090edc8d5438b50', '2018-04-09 13:57:56');
INSERT INTO `t_usertoken` VALUES (26, 200080, '202cb962ac59075b964b07152d234b70', '2018-04-10 12:44:56');
INSERT INTO `t_usertoken` VALUES (27, 200081, '45c48cce2e2d7fbdea1afc51c7c6ad26', '2018-04-24 13:02:54');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
