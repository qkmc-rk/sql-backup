/*
 Navicat MySQL Data Transfer

 Source Server         : 45.40.193.214
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : 45.40.193.214:3306
 Source Schema         : solo

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 05/08/2018 21:24:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b3_solo_archiveDate
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_archiveDate`;
CREATE TABLE `b3_solo_archiveDate` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `archiveDateArticleCount` int(11) NOT NULL COMMENT '存档日期文章计数，即某个月的文章总数',
  `archiveDatePublishedArticleCount` int(11) NOT NULL COMMENT '存档日期已发布的文章计数，即某个月的已发布文章总数',
  `archiveTime` bigint(20) NOT NULL COMMENT '存档日期时间，该月份第一天的时间戳',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存档日期表';

-- ----------------------------
-- Records of b3_solo_archiveDate
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_archiveDate` VALUES ('1525018049821', 4, 4, 1522512000000);
INSERT INTO `b3_solo_archiveDate` VALUES ('1525272564391', 3, 3, 1525104000000);
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_archiveDate_article
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_archiveDate_article`;
CREATE TABLE `b3_solo_archiveDate_article` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `archiveDate_oId` varchar(19) NOT NULL COMMENT '存档日期 id',
  `article_oId` varchar(19) NOT NULL COMMENT '文章 id',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存档-文章关联表';

-- ----------------------------
-- Records of b3_solo_archiveDate_article
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_archiveDate_article` VALUES ('1525018049872', '1525018049821', '1525018049663');
INSERT INTO `b3_solo_archiveDate_article` VALUES ('1525050955420', '1525018049821', '1525050955156');
INSERT INTO `b3_solo_archiveDate_article` VALUES ('1525097636943', '1525018049821', '1525097636774');
INSERT INTO `b3_solo_archiveDate_article` VALUES ('1525097885906', '1525018049821', '1525097885794');
INSERT INTO `b3_solo_archiveDate_article` VALUES ('1525272564443', '1525272564391', '1525272564073');
INSERT INTO `b3_solo_archiveDate_article` VALUES ('1525361243876', '1525272564391', '1525361243556');
INSERT INTO `b3_solo_archiveDate_article` VALUES ('1527230659486', '1525272564391', '1527230659322');
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_article
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_article`;
CREATE TABLE `b3_solo_article` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `articleTitle` varchar(255) NOT NULL COMMENT '文章标题',
  `articleAbstract` text NOT NULL COMMENT '文章摘要',
  `articleTags` text NOT NULL COMMENT '文章标签，英文逗号分隔',
  `articleAuthorEmail` varchar(255) NOT NULL COMMENT '文章作者邮箱',
  `articleCommentCount` int(11) NOT NULL COMMENT '文章评论计数',
  `articleViewCount` int(11) NOT NULL COMMENT '文章浏览计数',
  `articleContent` mediumtext NOT NULL COMMENT '文章正文内容',
  `articlePermalink` varchar(255) NOT NULL COMMENT '文章访问路径',
  `articleHadBeenPublished` char(1) NOT NULL COMMENT '文章是否已经发布过',
  `articleIsPublished` char(1) NOT NULL COMMENT '文章是否处于已发布状态',
  `articlePutTop` char(1) NOT NULL COMMENT '文章是否置顶',
  `articleCreateDate` datetime NOT NULL COMMENT '文章创建时间',
  `articleUpdateDate` datetime NOT NULL COMMENT '文章更新时间',
  `articleRandomDouble` double NOT NULL COMMENT '文章随机数，用于快速查询随机文章列表',
  `articleSignId` varchar(19) NOT NULL COMMENT '文章关联的签名档 id',
  `articleCommentable` char(1) NOT NULL COMMENT '文章是否可以评论',
  `articleViewPwd` varchar(100) NOT NULL COMMENT '文章浏览密码，留空为不设置访问密码',
  `articleEditorType` varchar(20) DEFAULT NULL COMMENT '文章编辑器类型，目前仅支持 CodeMirror-Markdown',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章表';

-- ----------------------------
-- Records of b3_solo_article
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_article` VALUES ('1525018049663', '阮少爷的博客开通', '', '无聊', 'qkmc@outlook.com', 0, 93, '感谢光临！\n初来乍到，希望以后得路上能步步高升，早日当上大佬！', '/articles/2018/04/30/1525018049663.html', '1', '1', '0', '2018-04-30 00:08:51', '2018-04-30 00:08:51', 0.4826019031163248, '0', '1', '', 'CodeMirror-Markdown');
INSERT INTO `b3_solo_article` VALUES ('1525050955156', '银行家算法回顾[JAVA实现]', '> 银行家算法的JAVA实现', '算法,银行家算法', 'qkmc@outlook.com', 0, 152, '原文地址：[银行家算法](https://my.oschina.net/qkmc/blog/1581200)\n\n![xxx](https://img.hacpai.com/bing/20180131.jpg?imageView2/1/w/960/h/520/interlace/1/q/100)\n\n\n**分析了一下银行家算法,基于银行家算法做了一个小程序.**\n\n  银行家算法主要用于操作系统进程管理程序中,用于**防止死锁**.\n\n  接下来这段代码将模拟这一过程.\n\n  首先让我们知道银行家算法在进程资源分配中主要做什么:\n  进程管理系统掌控着操作系统的一切资源.几乎每个进程都要向操作系统索要资源.但是系统的资源又有限.试想:\n  当操作系统掌握A,B资源,有进程P1,P2,同一时刻,P1和P2都向操作系统索取AB两个资源,而操作系统却把A分给了P1,B分给了P2,这个时候P1和P2只占有一半资源,如果它们不释放,那么这两个进程就会进入死锁状态,在系统中无休止地请求资源.\n\n为了解决这种问题,银行家算法被应用到进程管理系统中,值得注意的是,之所以叫做银行家算法,是因为这个算法最早被应用于银行向客户贷款的案例中,银行需要分析贷款是否安全,即一段时间内满足所有客户.\n\n算法主要过程如下:\n\n#### 1.数据结构\n\n    Max矩阵,行号表示进程,列号表示进程所需的最大资源数目.\n![xxxxxxx](https://www.ruankun.xyz/upload/312c7e0c0fde4e70aadbc0f9936eb441_image.png) \n\nAllocation矩阵,行号表示进程号,列表示已经分配给进程的资源.\n\nNeed矩阵,表示仍然需要的资源数.Need由Max - Allocation得到.\n\nAvailable向量,用于表示当前系统中可分配的资源.初始化为OS所有可分配资源.\n![imagepng](https://www.ruankun.xyz/upload/c95d014495e4401dadc9b09c1ff2c9b7_image.png) \n\n\n以上数据结构可用1维和2维数组表示.非常简单.\n\n#### 2.银行家算法\n\n    1.某进程某时刻向操作系统索要资源,用Request(i)表示,如果系统中有3类资源,则Request(1) = {1,2,3}表示进程1向系统所有A:1 B:2 C:3.\n\n    2.如果Request(i)[ j ] <= Need[i, j]则进入第3步.(i表示进程号,j是资源类,按照3类资源,这里的j该是0,1,2 ),否则报错.\n\n    3.同样,如果Request < Available,跳向4,否则报错.\n\n    4.系统尝试将资源分配给P(i),然后修改数据结构的值:\n\n            Available -= Request ( 向量的减法应该会吧? 就是每个元数据相减.)\n\n            Allocation += Request\n\n            Need -= Request\n\n    5.执行安全检查,若可得出安全序列,则分配给进程资源.若得不出,说明分配资源给该进程是不安全的行为,可能导致死锁,让该进程的请求挂起,稍后再尝试.\n\n    安全检查步骤:\n\n        1.将Available复制一份儿,命名Work.,为所有进程设置一个Finish向量,默认初始化为false.\n\n        2.从进程中找出一个进程,Finish为false,Need <= Work.若找到执行3,否则4.\n\n        3.当进程获取到资源,执行完毕,然后将它持有的所有资源都会释放掉.\n\n                Work = Work + Allocation\n\n                Finish = true\n\n                跳转到第二步\n\n        4.如果所有Finish的元数据都为true,说明所有进程都能执行完毕,则表示系统处于安全状态.否则,不安全.\n\n(安全序列在安全检查过程中得出.即一个能够执行完所有进程的进程号顺序.这个序列是不唯一的,找到一个即可.)\n\n#### 3.算法实现代码\n\n1.数据结构\n\n	//max,need,allocation use matrix to express.\n	private static int[][] Max;\n	private static int[][] Allocation;\n	private static int[][] Need;\n\n	//about safety.\n	private static int[] Work;\n	private static boolean[] Finish;\n	private static int[] safeSequence;\n	private static int seqCounter = 0;\n\n	//the resources can be allocated that os handled\n	private static int[] Available;\n\n	private static int processCount = 0;\n	private static int resourceCount = 0;\n\n	private static int[] Request;\n\n\n2.实现模拟分配资源:\n		//when OS ready,allocate resource to process\n		  private static boolean allocateRequest(int process){\n			  if(process < 0)	return false;\n			  //1,2.judge Request amount whether is illegal\n			  for(int j = 0; j < resourceCount; j++){\n				  if(Request[j] > Need[process][j]){\n					  System.out.println(\"Request amount is over your Need\");\n					  return false;\n				  }\n				  if(Request[j] > Available[j]){\n					  System.out.println(\"Request amount is over the amount that OS handled\");\n					  return false;\n				  }\n			  }\n			  //3.allocate the resource to process.\n			  for(int j = 0; j < resourceCount; j++){\n				  Available[j] -= Request[j];\n				  Allocation[process][j] += Request[j];\n				  Need[process][j] -= Request[j];\n			  }\n			  return true;\n		  }\n	\n\n3.实现安全分析:\n	  //banker algorithm to check whther safe.\n	  //if safe,return a serial key.else return null;\n	  private static int[] checkSafety(){\n		  //init safeSequence\n		  safeSequence = new int[processCount];\n		  seqCounter = 0;\n		  //1.copy Available to Work.init Finish to false\n		  Work = Available.clone();\n		  Finish = new boolean[processCount];\n\n		  int process;	//no process choosed.\n		  while(true){\n			  process = -1;\n			  //2.find a process like this finish = false, need < work.\n			  for(int i = 0; i < processCount; i++){\n				  if(Finish[i] == false){\n					  //compare need[i,j] <work[j].i-process number, j-resource number.\n					  for(int j = 0; j < resourceCount; j++){\n						  if(Need[i][j] > Work[j]){\n							  process = -1;\n							  break;\n						  }\n						  process = i;\n					  }\n					  if(process != -1){\n						  safeSequence[seqCounter++] = i;\n						  break;\n					  }\n				  }else{\n					  process = -1;\n				  }\n			  }\n			  if(process != -1){\n				  //3.if found,work = work + allocatation , finish = true. to step 2.\n				  //P[process] exe. and realise the resource,after.\n				  for(int j = 0; j < resourceCount; j++){\n					  Work[j] += Allocation[process][j];\n				  }\n\n				  Finish[process] = true;\n			  }else{\n				  //4.if finish all is true.safe! else unsafe.\n				  for(int i = 0; i < processCount; i++){\n					  if(Finish[i] == false)\n						  return null;\n				  }\n				  return safeSequence;\n			  }\n		  }\n	  }\n	  \n案例分析:\n![1jpg](https://www.ruankun.xyz/upload/766495d2cd354e7eb2a0b455bc54617f_1.jpg) \n\n\n就图中的表我们使用以上算法代码进行分析:\n![2png](https://www.ruankun.xyz/upload/d56477ea8dbd46499e959e4c56a1d21d_2.png) \n\n\n表中数据:5个进程\n\nMax矩阵为\n![3png](https://www.ruankun.xyz/upload/6b973b29b8ea458c84ec0f298dfad8dd_3.png) \n\n\n其它请参照模糊的表.\n\n#### 分析过程(代码最后放出.):\n\n1.首先我们输入有多少个进程和多少种资源,这里输入5,3:\n![4png](https://www.ruankun.xyz/upload/d7714196a00b43d6a51cac1949f731cc_4.png)\n2.初始化的Available,即系统还未分配的资源和已经分配的资源的总和(这里由表相加可知为 10 5 7):\n![5png](https://www.ruankun.xyz/upload/d8b9d2cfeb4f410fb39546fa4748bc3f_5.png) \n \n\n\n\n3.接着输入Ma![]()x矩阵:\n\n![6png](https://www.ruankun.xyz/upload/1244b819b0e9406ba9a358a72c725174_6.png) \n\n\n\n4.接着输入Allocation矩阵:\n\n![7png](https://www.ruankun.xyz/upload/063360186dab4ac4a31d8eed45e79ac0_7.png) \n\n\n\n5.程序自行计算出Need矩阵.和新的Availble资源:\n\n![8png](https://www.ruankun.xyz/upload/33002d4598ec4642a1084456bedef949_8.png) \n\n\n\n6.测试当前状态的安全性:\n![9png](https://www.ruankun.xyz/upload/df01a968231142079195cb9e54fbeed6_9.png) \n\n7.模拟请求,假设现在0号进程需要请求资源以完成任务,请求的资源数为系统总资源数:\n\n![0png](https://www.ruankun.xyz/upload/0db1ac569a32473fa21221d5730cdb23_0.png) \n\n\n\n\n程序尝试分配给进程0资源,但是分配给进程后,发现当前的进程都无法顺利执行完毕,因此最后撤销了分配.\n\n8.我们尝试重新分配,假设1号进程齐宁求{1,2,2}:\n![png](https://www.ruankun.xyz/upload/d077691f465d412a8986b38bbe8ae994_.png) \n\n\n\n\n\n分配成功,分配成功后系统资源数目已发生变化,不会再revoke.\n\n下面贴出整个冗余到不能再冗余的代码:\n\n	/*\n	*use java to realise banker algorithm. \n	*@author mrruan(RuanKun) qkmc@outlook.com\n	*/\n\n	import java.util.Scanner;\n	import java.lang.Math;\n\n	class Banker{\n	\n	  //max,need,allocation use matrix to express.\n	  private static int[][] Max;\n	  private static int[][] Allocation;\n	  private static int[][] Need;\n\n	  //about safety.\n	  private static int[] Work;\n	  private static boolean[] Finish;\n	  private static int[] safeSequence;\n	  private static int seqCounter = 0;\n\n	  //the resources can be allocated that os handled\n	  private static int[] Available;\n\n	  private static int processCount = 0;\n	  private static int resourceCount = 0;\n\n	  private static int[] Request;\n	  public static void main(String[] args){\n\n		  Scanner scn = new Scanner(System.in);\n\n		  System.out.println(\"Welcome To Bank Algorithm Program\");\n		  System.out.println(\"note:this is a algorithm to test safety about multi process\");\n		  //1.user input the process num and resource num.\n\n		  System.out.println(\"please input how many processes will be handled:\");\n		  //no any process to deal with exceptions.\n		  processCount = scn.nextInt();\n		  System.out.println(\"please input how many kind of resources will be handled:\");\n		  resourceCount = scn.nextInt();\n		  //init martrix\n		  initMatrix(processCount, resourceCount);\n\n		  //2.input the amount of resources that OS has.\n		  System.out.println(\"please input every amount of the \" + resourceCount + \" resources(\" + resourceCount + \" integers,space to seperate)\");\n		  for(int i = 0; i < resourceCount; i++){\n			  //init os resources\n			  if(scn.hasNextInt())\n				  Available[i] = scn.nextInt();//didn\'t check the safety,may cause exceptions.\n		  }\n		  System.out.println(\"now you have the resources and amount:\");\n		  for(int i = 0; i < resourceCount; i++){\n			  System.out.print((char)(i+65)+ \".\"+Available[i]+\"    \");\n		  }\n		  //3.input Max matrix\n		  System.out.println(\"\\n this step you must input the max resources that every process can handle!\");\n		  for(int i = 0; i < processCount; i++){\n			  System.out.println(\"input P\" + i + \" \'s max handle resources(\"+resourceCount+\" integers,space to seperate):\");\n			  System.out.print(\"P\" + i + \": \");\n			  for(int j = 0; j < resourceCount; j++){\n				  Max[i][j] = scn.nextInt();\n			  }\n		  }\n		  //we should judge if the max needed is out of the resources that os has.\n		  for(int i = 0; i < processCount; i++){\n			  for(int j = 0; j < resourceCount; j++){\n				  try{\n					  if(Max[i][j] > Available[j]){\n						  //error, process cannot go on because the os cannot afford the resources that the process need.\n						  throw new Exception(\"OS cannot afford the resources that the process needed.the error process is : P\" + i);\n					  }\n				  }catch(Exception e){\n						  e.printStackTrace();\n						  return;\n					  }\n\n			  }\n		  }\n		  //print the max matrix.\n		  System.out.println(\"this is the max matrix:\");\n		  for(int i = 0; i < processCount; i++){\n			  for(int j = 0; j < resourceCount; j++)\n				  System.out.print(Max[i][j] + \" \");\n			  System.out.println();\n		  }\n\n		  //4.now set the resources that processes had handled.\n		  System.out.println(\"this step is to allocate the resources to every process.\");\n		  for(int i = 0; i < processCount; i++){\n			  System.out.println(\"please input th process P\" + i + \"\'s resources,\" + resourceCount + \" integers,space to seperate:\");\n			  for(int j = 0; j < resourceCount; j++){\n				  Allocation[i][j] = scn.nextInt();		// had not check the exceptions.\n			  }\n		  }\n		  //now check the Allocation whether is legal.\n		  for(int i = 0; i < processCount; i++){\n			  for(int j = 0; j < resourceCount; j++){\n				  try{\n					  if(Allocation[i][j] > Available[j]){\n						  System.out.println(Allocation[i][j] + \"  \" + Available[j]);\n						  throw new Exception(\"Allocated an illegal amount of resource,the error process is P\" + i);\n					  }\n					  if(Allocation[i][j] > Max[i][j])\n						  throw new Exception(\"you allocated is out of Max.position is : P \" + i + \" the kind is :\" + (char)(j+65));\n				  }catch(Exception e){\n					  e.printStackTrace();\n					  return;\n				  }\n			  }\n		  }\n		  //check sum.\n		  int tmp = 0;	//this is for the follow checking.\n		  for(int i = 0; i < resourceCount; i++){\n			  for(int j = 0; j < processCount; j++){\n				  tmp += Allocation[j][i];\n			  }\n			  try{\n				  if(tmp > Available[i]){\n					  throw new Exception(\"over resource,position is : \" + (char)(i + 65));\n				  }\n			  }catch(Exception e){\n				  e.printStackTrace();\n				  return;\n			  }\n			  tmp = 0;\n\n		  }\n		  vectorMinusMatrix(Available,Allocation, processCount, resourceCount);\n		  //print the allocated matrix.\n		  System.out.println(\"this is the Allocation matrix:\");\n		  for(int i = 0; i < processCount; i++){\n			  for(int j = 0; j < resourceCount; j++)\n				  System.out.print(Allocation[i][j] + \" \");\n			  System.out.println();\n		  }\n		  System.out.println(\"this is the Available resources after allocatation:\");\n		  for(int j = 0; j < resourceCount; j++)\n			  System.out.print(Available[j] + \" \");\n		  System.out.println();\n\n		  //5.get still need matrix\n		  Need = matrixMinusMatrix(Max, Allocation, processCount, resourceCount);\n		  System.out.println(\"this is the Need matrix:\");\n		  for(int i = 0; i < processCount; i++){\n			  for(int j = 0; j < resourceCount; j++)\n				  System.out.print(Need[i][j] + \" \");\n			  System.out.println();\n		  }\n		  System.out.println(\"the multi process module has been set up.\");\n		  System.out.println(\"please select a option\");\n		  int sw;\n		  while(true){\n			  System.out.println(\"\\n 1. check the state whether safe.\");\n			  System.out.println(\"2. try to allocate resources to process.\");\n			  sw = scn.nextInt();\n			  switch(sw){\n				  case 1:\n				  if (checkSafety() != null){\n					  System.out.println(\"it\'s safe. the safeSequence is \");\n					  for(int i = 0; i < seqCounter; i++)\n						  System.out.print(safeSequence[i] + \"  \");\n				  }else{\n					  System.out.println(\"it\'s unsafe.\");\n				  }\n				  break;\n				  case 2:\n				  int process = -1;\n				  Request = new int[resourceCount];\n				  System.out.println(\"please input the process Number:\");\n				  process = scn.nextInt();\n				  System.out.println(\"please input the requested amount of resource.(it\'s \"+ resourceCount +\" integers):\");\n				  for(int i = 0; i < resourceCount; i++){\n					  Request[i] = scn.nextInt();\n				  }\n				  //then try to allocate the requested resource to process.\n				  if(allocateRequest(process))\n					  //check\n					  if (checkSafety() != null){\n						  System.out.println(\"after allocated,it\'s safe. the safeSequence is \");\n						  for(int i = 0; i < seqCounter; i++)\n							  System.out.print(safeSequence[i] + \"  \");\n						  System.out.println();\n					  }else{\n						  System.out.println(\"after allocated,it\'s unsafe.\");\n						  //if unsafe,DO NOT allocate\n						  if(revokeRequest(process)){\n							  System.out.println(\"Revoked allocation\");\n						  }\n					  }\n\n				  break;\n			  }\n		  }\n		  //6.should get a safe serial key.\n	  }\n\n\n	  /*\n	  * other methods\n	  *\n	  */\n\n	  //create matrix and init.\n	  private static void initMatrix(int processCount,int resourceCount){\n		  Max = new int[processCount][resourceCount];\n		  Allocation = new int[processCount][resourceCount];\n		  Need = new int[processCount][resourceCount];\n		  Available = new int[resourceCount];\n	  }\n\n	  //vector - matrix.\n	  private static void vectorMinusMatrix(int[] vector, int[][] matrix, int row, int col){\n		  int sum = 0;\n		  //System.out.println(\"print martrix\");\n		  //for(int i = 0; i < row; i++)\n		  //	for(int j = 0; j < col; j++)\n		  //		System.out.print(matrix[i][j] + \"  \");\n		  for(int i = 0; i < col; i++){\n			  for(int j = 0; j < row; j++){\n				  sum += matrix[j][i];\n			  }\n			  //System.out.println(\"------------------------------------\\n\"+\"the sum is \" + sum +\"\\n------------------------------------\");\n			  vector[i] -= sum;\n			  sum = 0;\n		  }\n	  }\n\n	  //two matrix minus.\n	  private static int[][] matrixMinusMatrix(int[][] matrix1, int[][] matrix2, int row, int col){\n		  int[][] rs = new int[row][col];\n\n		  for(int i = 0; i < row; i++){\n			  for(int j = 0; j < col; j++){\n				  rs[i][j] = Math.abs(matrix1[i][j] - matrix2[i][j]);\n			  }\n		  }\n		  return rs;\n	  }\n\n	  //judge whether a vector is bigger than another.\n	  //if vector1 > vector2, that means vector1\'s every elem is bigger than vector2\n	  private static boolean compareVector(int[] vector1, int[] vector2,int length){\n		  for(int i = 0; i < length; i++){\n			  if(vector1[i] < vector2[i])\n				  return false;\n		  }	\n		  return true;\n	  }\n\n	  //banker algorithm to check whther safe.\n	  //if safe,return a serial key.else return null;\n	  private static int[] checkSafety(){\n		  //init safeSequence\n		  safeSequence = new int[processCount];\n		  seqCounter = 0;\n		  //1.copy Available to Work.init Finish to false\n		  Work = Available.clone();\n		  Finish = new boolean[processCount];\n\n		  int process;	//no process choosed.\n		  while(true){\n			  process = -1;\n			  //2.find a process like this finish = false, need < work.\n			  for(int i = 0; i < processCount; i++){\n				  if(Finish[i] == false){\n					  //compare need[i,j] <work[j].i-process number, j-resource number.\n					  for(int j = 0; j < resourceCount; j++){\n						  if(Need[i][j] > Work[j]){\n							  process = -1;\n							  break;\n						  }\n						  process = i;\n					  }\n					  if(process != -1){\n						  safeSequence[seqCounter++] = i;\n						  break;\n					  }\n				  }else{\n					  process = -1;\n				  }\n			  }\n			  if(process != -1){\n				  //3.if found,work = work + allocatation , finish = true. to step 2.\n				  //P[process] exe. and realise the resource,after.\n				  for(int j = 0; j < resourceCount; j++){\n					  Work[j] += Allocation[process][j];\n				  }\n\n				  Finish[process] = true;\n			  }else{\n				  //4.if finish all is true.safe! else unsafe.\n				  for(int i = 0; i < processCount; i++){\n					  if(Finish[i] == false)\n						  return null;\n				  }\n				  return safeSequence;\n			  }\n		  }\n	  }\n\n	  //when OS ready,allocate resource to process\n	  private static boolean allocateRequest(int process){\n		  if(process < 0)	return false;\n		  //1,2.judge Request amount whether is illegal\n		  for(int j = 0; j < resourceCount; j++){\n			  if(Request[j] > Need[process][j]){\n				  System.out.println(\"Request amount is over your Need\");\n				  return false;\n			  }\n			  if(Request[j] > Available[j]){\n				  System.out.println(\"Request amount is over the amount that OS handled\");\n				  return false;\n			  }\n		  }\n		  //3.allocate the resource to process.\n		  for(int j = 0; j < resourceCount; j++){\n			  Available[j] -= Request[j];\n			  Allocation[process][j] += Request[j];\n			  Need[process][j] -= Request[j];\n		  }\n		  return true;\n	  }\n\n	  //warning:this method should be invoked after allocatation.\n	  //or will happen uncaught error.\n	  private static boolean revokeRequest(int process){\n		  if(process < 0)	return false;\n		  for(int j = 0; j < resourceCount; j++){\n			  Available[j] += Request[j];\n			  Allocation[process][j] -= Request[j];\n			  Need[process][j] += Request[j];\n		  }\n		  return true;\n	  }\n	}\n\n\n\n\n\n', '/articles/2018/04/30/1525050955156.html', '1', '1', '0', '2018-04-30 09:15:55', '2018-05-06 18:49:41', 0.7005196137263818, '1', '1', '', 'CodeMirror-Markdown');
INSERT INTO `b3_solo_article` VALUES ('1525097636774', '高校公共资源借用管理', '高效公共资源借用平台', '个人项目', 'qkmc@outlook.com', 0, 173, '演示地址：[http://www.ruankun.xyz/sicaursm3/index.jsp](http://www.ruankun.xyz/sicaursm3/index.jsp)\ngithub地址：[https://github.com/qkmc-rk/Sicaursm3](https://github.com/qkmc-rk/Sicaursm3)\n管理员：admin  admin\n普通用户： stu1  stu1\n\n配置了邮箱服务器，管理员进行的操作能反馈到用户的邮箱中！\n\n流程图：\n![4jpg](https://www.ruankun.xyz/upload/96e9ca22bf6947e783dcae5d6823525e_4.jpg) \n\n\n\n截图：\n![2jpg](https://www.ruankun.xyz/upload/0f7f8ef1b41042cf8e1462f976ed57f8_2.jpg) \n\n![3jpg](https://www.ruankun.xyz/upload/2eca9af0829f4bf783c280ee4fe7b096_3.jpg) \n\n![1jpg](https://www.ruankun.xyz/upload/5b56eec6be9942619a506887192f5af9_1.jpg) \n\n\n\n\n\n\n', '/articles/2018/04/30/1525097636774.html', '1', '1', '0', '2018-04-30 22:15:19', '2018-05-02 15:08:01', 0.609926348456404, '2', '1', '', 'CodeMirror-Markdown');
INSERT INTO `b3_solo_article` VALUES ('1525097885794', '成都手足文化', '', '个人项目', 'qkmc@outlook.com', 1, 95, '连接地址：[http://www.cdszwh.com](http://www.cdszwh.com)\n', '/articles/2018/04/30/1525097885794.html', '1', '1', '0', '2018-04-30 22:18:06', '2018-04-30 22:18:06', 0.3895865201242398, '3', '1', '', 'CodeMirror-Markdown');
INSERT INTO `b3_solo_article` VALUES ('1525272564073', '[ACM题目]使用字符表示的数字相加', '', '算法,ACM,C语言', 'qkmc@outlook.com', 0, 123, '![11png](https://www.ruankun.xyz/upload/b28c09a770a943b1a6bff84c82e28049_11.png) \n\n![22png](https://www.ruankun.xyz/upload/252ac4d986cd478db02953fd65a8c0d1_22.png) \n\n### 要求：输入两个数字，最后会输出这两个数字的和\n  - 数字以字符的形式输入\n  - 数字是个位数。一个数字占用3列5行\n  \n代码如下：\n\n	  #include <iostream>\n	  #include<stdio.h>\n	  using namespace std;\n	  #define space -2\n	  #define error -1\n\n	  int a, b; //加数与被加数\n	  int c;\n	  char tmp[5][3];//装一个数字模型的数组\n	  char Nums[10][5][3];    //建立模型\n	  char InputNums[5][100];\n\n	  char OutputNums[5][100];\n	  int out_p = 0;\n\n	   void write(int i);\n	  int getNum(char tmp[5][3]);\n	  void InitNums();\n\n	  int main()\n	  {\n		  InitNums();\n		  //输入数字\n		  int i=0;\n		  int j=0;\n	  //        //初始化OutputNums\n	  //    for(i=0;i<5;i++)\n	  //    {\n	  //        for(j=0; j<100;j++)\n	  //        {\n	  //            OutputNums[i][j] = \' \';\n	  //        }\n	  //    }\n		  /*输入符号*/\n		  for(i=0; i<5; i++)\n		  {\n				  gets(InputNums[j++]);\n				  fflush(stdin);\n		  }\n		  /*获得加数*/\n		  int flag = 0;\n		  bool x = true;\n		  i=0;\n		  int m,n;//获得tmp使用\n		  int tmps;//临时变量\n		   while(x)\n		  {\n			  if(InputNums[0][i] == \'+\' || InputNums[0][i+1] == \'-\' || InputNums[0][i+2] == \'+\')\n				  {\n					  /*存入一个tmp*/\n					  for(m=0;m<5;m++)\n					  {\n						  for(n=0; n<3;n++)\n						  {\n							  tmp[m][n] = InputNums[m][n+i];\n						  }\n					  }\n					  tmps = getNum(tmp);\n					  if(a == 0)\n						  a = tmps;\n					  else{a = a*10+tmps;}\n					  i+=4;\n				  }\n				  else\n				  {\n					  i+=4;\n					  flag++;\n					  if(flag == 2)\n						  break;\n					  b =a;\n					  a =0;\n\n				  }\n		  }\n\n\n	  //    printf(\"%d %d %d\\n\", a+b, a , b);\n		  /*求出结果*/\n		  int rs = a+b;\n		  int rs_s = 0;\n	  //    rs_s = rs%10;\n	  //    rs = rs/10;\n		  while(rs != 0)\n		  {\n			  rs_s = rs%10;\n			  rs = rs/10;\n			  write(rs_s);\n\n		  }\n		  /*把结果用符号表示出来*/\n		  int fuck;\n		  for(i=0; i<5; i++)\n		  {\n			  flag=1;\n			  for(j=out_p-1; j>=0; j-=4)\n			  {\n				  for(fuck=j-4; fuck<j; fuck++)\n						  {if(flag != 1)\n							  printf(\"%c\", OutputNums[i][fuck]);\n							  else\n								  flag++;\n						  }\n			  }\n			  printf(\"\\n\");\n		  }\n	  }\n	  int getNum(char tmp[5][3])\n	  {\n		  int i=0;\n		  int j,k;\n		  int flag;  //标志\n		  for(i=0; i<10;i++)\n		  {\n			  flag=1;\n			  if(tmp[0][2] == \' \')\n				  return space;\n			  for(j=0;j<5;j++)\n			  {\n				  for(k=0; k<3; k++)\n				  {\n					  if(tmp[j][k] != Nums[i][j][k])\n					  {\n						  flag = 0;\n						  break;\n					  }\n				  }\n				  if(flag == 0)\n					  break;\n			  }\n			  if(flag==1)\n				 return i;\n		  }\n		  return error;\n	  }\n	  void InitNums()\n	  {\n		  //初始化0\n		  Nums[0][0][0] = \'+\';\n		  Nums[0][0][1] = \'-\';\n		  Nums[0][0][2] = \'+\';\n		  Nums[0][1][0] = \'|\';\n		  Nums[0][1][1] = \' \';\n		  Nums[0][1][2] = \'|\';\n		  Nums[0][2][0] = \'+\';\n		  Nums[0][2][1] = \' \';\n		  Nums[0][2][2] = \'+\';\n		  Nums[0][3][0] = \'|\';\n		  Nums[0][3][1] = \' \';\n		  Nums[0][3][2] = \'|\';\n		  Nums[0][4][0] = \'+\';\n		  Nums[0][4][1] = \'-\';\n		  Nums[0][4][2] = \'+\';\n		  //初始化1\n		  Nums[1][0][0] = \' \';\n		  Nums[1][0][1] = \' \';\n		  Nums[1][0][2] = \'+\';\n		  Nums[1][1][0] = \' \';\n		  Nums[1][1][1] = \' \';\n		  Nums[1][1][2] = \'|\';\n		  Nums[1][2][0] = \' \';\n		  Nums[1][2][1] = \' \';\n		  Nums[1][2][2] = \'+\';\n		  Nums[1][3][0] = \' \';\n		  Nums[1][3][1] = \' \';\n		  Nums[1][3][2] = \'|\';\n		  Nums[1][4][0] = \' \';\n		  Nums[1][4][1] = \' \';\n		  Nums[1][4][2] = \'+\';\n		  //初始化2\n		  Nums[2][0][0] = \'+\';\n		  Nums[2][0][1] = \'-\';\n		  Nums[2][0][2] = \'+\';\n		  Nums[2][1][0] = \' \';\n		  Nums[2][1][1] = \' \';\n		  Nums[2][1][2] = \'|\';\n		  Nums[2][2][0] = \'+\';\n		  Nums[2][2][1] = \'-\';\n		  Nums[2][2][2] = \'+\';\n		  Nums[2][3][0] = \'|\';\n		  Nums[2][3][1] = \' \';\n		  Nums[2][3][2] = \' \';\n		  Nums[2][4][0] = \'+\';\n		  Nums[2][4][1] = \'-\';\n		  Nums[2][4][2] = \'+\';\n		  //初始化3\n		  Nums[3][0][0] = \'+\';\n		  Nums[3][0][1] = \'-\';\n		  Nums[3][0][2] = \'+\';\n		  Nums[3][1][0] = \' \';\n		  Nums[3][1][1] = \' \';\n		  Nums[3][1][2] = \'|\';\n		  Nums[3][2][0] = \'+\';\n		  Nums[3][2][1] = \'-\';\n		  Nums[3][2][2] = \'+\';\n		  Nums[3][3][0] = \' \';\n		  Nums[3][3][1] = \' \';\n		  Nums[3][3][2] = \'|\';\n		  Nums[3][4][0] = \'+\';\n		  Nums[3][4][1] = \'-\';\n		  Nums[3][4][2] = \'+\';\n		  //初始化4\n		  Nums[4][0][0] = \'+\';\n		  Nums[4][0][1] = \' \';\n		  Nums[4][0][2] = \'+\';\n		  Nums[4][1][0] = \'|\';\n		  Nums[4][1][1] = \' \';\n		  Nums[4][1][2] = \'|\';\n		  Nums[4][2][0] = \'+\';\n		  Nums[4][2][1] = \'-\';\n		  Nums[4][2][2] = \'+\';\n		  Nums[4][3][0] = \' \';\n		  Nums[4][3][1] = \' \';\n		  Nums[4][3][2] = \'|\';\n		  Nums[4][4][0] = \' \';\n		  Nums[4][4][1] = \' \';\n		  Nums[4][4][2] = \'+\';\n		  //初始化5\n		  Nums[5][0][0] = \'+\';\n		  Nums[5][0][1] = \'-\';\n		  Nums[5][0][2] = \'+\';\n		  Nums[5][1][0] = \'|\';\n		  Nums[5][1][1] = \' \';\n		  Nums[5][1][2] = \' \';\n		  Nums[5][2][0] = \'+\';\n		  Nums[5][2][1] = \'-\';\n		  Nums[5][2][2] = \'+\';\n		  Nums[5][3][0] = \' \';\n		  Nums[5][3][1] = \' \';\n		  Nums[5][3][2] = \'|\';\n		  Nums[5][4][0] = \'+\';\n		  Nums[5][4][1] = \'-\';\n		  Nums[5][4][2] = \'+\';\n		  //初始化6\n		  Nums[6][0][0] = \'+\';\n		  Nums[6][0][1] = \'-\';\n		  Nums[6][0][2] = \'+\';\n		  Nums[6][1][0] = \'|\';\n		  Nums[6][1][1] = \' \';\n		  Nums[6][1][2] = \' \';\n		  Nums[6][2][0] = \'+\';\n		  Nums[6][2][1] = \'-\';\n		  Nums[6][2][2] = \'+\';\n		  Nums[6][3][0] = \'|\';\n		  Nums[6][3][1] = \' \';\n		  Nums[6][3][2] = \'|\';\n		  Nums[6][4][0] = \'+\';\n		  Nums[6][4][1] = \'-\';\n		  Nums[6][4][2] = \'+\';\n		  //初始化7\n		  Nums[7][0][0] = \'+\';\n		  Nums[7][0][1] = \'-\';\n		  Nums[7][0][2] = \'+\';\n		  Nums[7][1][0] = \' \';\n		  Nums[7][1][1] = \' \';\n		  Nums[7][1][2] = \'|\';\n		  Nums[7][2][0] = \' \';\n		  Nums[7][2][1] = \' \';\n		  Nums[7][2][2] = \'+\';\n		  Nums[7][3][0] = \' \';\n		  Nums[7][3][1] = \' \';\n		  Nums[7][3][2] = \'|\';\n		  Nums[7][4][0] = \' \';\n		  Nums[7][4][1] = \' \';\n		  Nums[7][4][2] = \'+\';\n		  //初始化8\n		  Nums[8][0][0] = \'+\';\n		  Nums[8][0][1] = \'-\';\n		  Nums[8][0][2] = \'+\';\n		  Nums[8][1][0] = \'|\';\n		  Nums[8][1][1] = \' \';\n		  Nums[8][1][2] = \'|\';\n		  Nums[8][2][0] = \'+\';\n		  Nums[8][2][1] = \'-\';\n		  Nums[8][2][2] = \'+\';\n		  Nums[8][3][0] = \'|\';\n		  Nums[8][3][1] = \' \';\n		  Nums[8][3][2] = \'|\';\n		  Nums[8][4][0] = \'+\';\n		  Nums[8][4][1] = \'-\';\n		  Nums[8][4][2] = \'+\';\n		  //初始化9\n		  Nums[9][0][0] = \'+\';\n		  Nums[9][0][1] = \'-\';\n		  Nums[9][0][2] = \'+\';\n		  Nums[9][1][0] = \'|\';\n		  Nums[9][1][1] = \' \';\n		  Nums[9][1][2] = \'|\';\n		  Nums[9][2][0] = \'+\';\n		  Nums[9][2][1] = \'-\';\n		  Nums[9][2][2] = \'+\';\n		  Nums[9][3][0] = \' \';\n		  Nums[9][3][1] = \' \';\n		  Nums[9][3][2] = \'|\';\n		  Nums[9][4][0] = \'+\';\n		  Nums[9][4][1] = \'-\';\n		  Nums[9][4][2] = \'+\';\n	  }\n\n	   void write(int i)\n	  {\n			  int j,k;\n		  for(j=0; j<5; j++)\n		  {\n			  for(k=0; k<3; k++)\n			  {\n				  OutputNums[j][k+out_p] = Nums[i][j][k];\n			  }\n		  }\n		  out_p+=4;\n\n	  }\n\n\n\n\n\n\n', '/articles/2018/05/02/1525272564073.html', '1', '1', '0', '2018-05-02 22:49:24', '2018-05-02 22:50:12', 0.8590932619011676, '1', '1', '', 'CodeMirror-Markdown');
INSERT INTO `b3_solo_article` VALUES ('1525361243556', 'JDBC重新来过--解耦-封装-反射', 'jdbc深入学习范文', 'JDBC,JAVA', 'qkmc@outlook.com', 0, 139, '## 一.前言(废话)\n\nJDBC是java数据库连接的简称,也算是一种协议,一种规定.\n\nJDBC的规范由java定义,常用的接口和类在jdk的java.sql包下.\n\n各个厂商均实现了java.sql下定义的接口.因此在java中访问各种数据库如oracle,mysql,sqlserver,psql等都有了统一的规范:\n\n    加载驱动......\n\n    获取连接......\n\n    使用statement进行操作.....\n\n    结果集遍历......\n\n    关闭连接......\n\njava.sql:\n![aaapng](https://www.ruankun.xyz/upload/b22f64f7415b4d979cb9314e6cbd4f88_aaa.png) \n\n\n\n## 二.实现一个JDBCUtil,用以获取连接和关闭连接.\n\n  特点:从外部加载配置文件,使用static{ }对属性进行初始化,然后使用单例模式实现线程安全(单线程非必要)\n	\n		  package com.rk.test1;\n\n	  //省略import各种包\n\n\n	  /*\n	   * JDBCUtil 实现了获取数据库连接,关闭数据库连接等操作.\n	   * \n	   *\n	   * \n	   * 这个类的特点:\n	   * 1.从外部配置文件读取数据库信息,与具体的数据库驱动解耦,可直接使用oracle的驱动,也可以直接使用mysql,sqlserver的驱动\n	   * 2.静态单例模式,该类只能提供一个全局的(static) Connection实例,防止过多的connection占用大量系统资源.\n	   * */\n\n	  public class JDBCUtil {\n\n		  private static String driver;\n		  private static String url;\n		  private static String user;\n		  private static String password;\n\n		  private static Connection conn = null;\n\n		  //从配置文件初始化数据库连接信息\n		  static {\n			  InputStream inStream = \n				   JDBCUtil.class.getClassLoader().getResourceAsStream(\"db.properties\");\n			  //初始化driver url name password\n			  Properties p = new Properties();\n			  try {\n				  p.load(inStream);\n				  //初始化参数\n				  driver = p.getProperty(\"driver\");\n				  url = p.getProperty(\"url\");\n				  user = p.getProperty(\"user\");\n				  password = p.getProperty(\"password\");\n			  } catch (IOException e) {\n				  e.printStackTrace();\n			  }\n		  }\n\n		  public static Connection getConnection() {\n			  //1.加载驱动  利用Class.forName()类加载器进行加载driver,\n			  try {\n				  Class.forName(driver);\n				  //双重校验锁保证获取connection是线程安全的(单线程程序中非必要)\n				  if(conn == null) {\n					  synchronized(JDBCUtil.class){\n						  if(conn == null)\n						  conn = DriverManager.getConnection(url, user, password);\n					  }\n				  }\n				  return conn;\n			  } catch (ClassNotFoundException e) {\n				  e.printStackTrace();\n			  } catch (SQLException e) {\n				  e.printStackTrace();\n			  }\n			  return null;\n		  }\n\n		  //关闭方法\n		  public static void close() {\n			  if(conn != null) {\n				  try {\n					  conn.close();\n				  } catch (SQLException e) {\n					  e.printStackTrace();\n				  }\n			  }\n			  conn = null;\n		  }\n	  }\n\n这是一个通用的JDBCUtil,用以提供数据库连接和关闭数据库连接.\n\n## 三.对JDBCUtil进行扩展,使用通用的增删改方法\n\n在实际使用过程中,普遍使用PreparedStatement进行参数化查询.而这过程中增删改这三个方法执行的过程如出一辙,我们可以使用这样的一个通用方法来定义增删改:\n	\n			  public static int addDeleteUpdate(String sql,Object ...args) {\n			  //2.方法执行必须在数据库连接之后操作,若没有连接数据库则抛出异常\n			  if(conn == null) {\n				  try {\n					  throw new Exception(\"没有获取数据库连接!\");\n				  } catch (Exception e) {\n					  e.printStackTrace();\n				  }\n				  return 0;\n			  }\n			  PreparedStatement pstmt = null;\n			  try {\n				  //准备pstmt\n				  pstmt = conn.prepareStatement(sql);\n				  //sql参数设置\n				  for (int i = 0; i < args.length; i++) {\n					  pstmt.setObject(i+1, args[i]);\n				  }\n				  //执行\n				  int rs = pstmt.executeUpdate();\n				  //返回\n				  return rs;\n			  } catch (SQLException e) {\n				  e.printStackTrace();\n			  }finally {\n				  try {\n					  pstmt.close();\n				  } catch (SQLException e) {\n					  e.printStackTrace();\n				  }\n			  }\n			  return 0;\n		  }\n		  \n这个方法可以定义在JDBCUtil这个类中,然后在这个类中在创建一个静态内部类用于提供这些方法.当然我们还是先看一下这三个方法:\n        //通用删除方法 add delete update select\n		public static int insert(String sql,Object ...args) {\n			return addDeleteUpdate(sql,args);\n		}\n		\n		public static int delete(String sql, Object ...args) {\n			return addDeleteUpdate(sql,args);\n		}\n		\n		public static int update(String sql, Object ...args) {\n			return addDeleteUpdate(sql,args);\n		}\n有没有感受到,瞬间增删改变得简单明了!\n\n那么select方法为什么要和增删改区分开来呢?\n\n    因为select方法返回的是一个结果集,ResultSet,模型与增删改不一样,因此我们需要重新写一个通用的select方法.\n\n## 四,通用的查找方法(查找一个和多个模型类似)\n\n    如何定义一个通用的查找方法呢?\n\n    首先我们明白,查找在得到ResultSet前的代码应该是一致的:\n\n    //获取连接,使用pstmt执行excuteQuery()\n\n    不同点在于获取结果集之后如何处理.如查找t_admin数据库表和t_user会得出不一样的列名和值.\n\n    因此在处理结果集的时候需要使用不同的类型--泛型来处理:\n\n    我们这样定义这个方法:\n\n\n	public static <T> T select(Class<T> clazz,String sql, Object ...args) {\n		//.....\n	}\n	\npublic static 是可选的,视情况而定嘛.\n\n   表示该方法为泛型方法,方法持有泛型T,后面的返回值类型为T,传入T类型的类,用于制造T类型的实例.\n\n   前面一部分代码用于得到ResultSet,应该为:\n   \n               if(conn == null) {\n				try {\n					throw new Exception(\"没有获取数据库连接!\");\n				} catch (Exception e) {\n					e.printStackTrace();\n				}\n				return null;\n			}\n			PreparedStatement pstmt = null;\n			try {\n				//准备pstmt\n				pstmt = conn.prepareStatement(sql);\n				//sql参数设置\n				for (int i = 0; i < args.length; i++) {\n					pstmt.setObject(i+1, args[i]);\n				}\n				//执行\n				ResultSet rs = pstmt.executeQuery();\n				\n这段代码并不完整,但其功能非常明显,获取连接,然后,查找得出结果集.\n\n    得出结果集之后就是此方法的精髓部分了.\n\n    得到结果集后,我们从结果集拿出从mysql中查找到的数据 记录,然后放在的一个Map中,然后接着利用反射的方法创建一个传入的类类型.\n\n    紧接着在利用反射的方法为创建的这个类调用其setter为变量进行赋值.这里的要求是entity的变量要和数据库列一 一对应.\n\n    代码如下:\n	\n\n                //对结果集进行获取元数据操作\n				ResultSetMetaData rsmd= rs.getMetaData();\n				Map<String,Object> data = new HashMap<String,Object>();\n				if(rs.next()) {\n					for (int i = 0; i < rsmd.getColumnCount(); i++) {\n						data.put(rsmd.getColumnLabel(i+1), rs.getObject(i+1));\n					}\n				}\n				//然后反射生成对象\n				if(!data.isEmpty()) {\n					T obj = clazz.newInstance();\n					//利用反射进行对象赋值.\n					for(Entry<String,Object> entry:data.entrySet()) {\n						ReflectionForSet.setFileds(obj,entry.getKey(),entry.getValue());\n					}\n					return obj;\n				}\n				\n			} catch (SQLException e) {\n				e.printStackTrace();\n			} catch (InstantiationException e) {\n				e.printStackTrace();\n			} catch (IllegalAccessException e) {\n				e.printStackTrace();\n			}finally {\n				try {\n					pstmt.close();\n				} catch (SQLException e) {\n					e.printStackTrace();\n				}\n			}\n			return null;\n\n其中,ReflectionForSet.setFileds(obj,entry.getKey(),entry.getValue())  为自定义方法:\n	package com.rk.test1;\n\n	import java.lang.reflect.InvocationTargetException;\n	import java.lang.reflect.Method;\n\n	public class ReflectionForSet {\n\n		public static  void setFileds(Object obj,String filedName,Object value) {\n			Method[] method = obj.getClass().getDeclaredMethods();\n			//获取方法\n			for (Method md : method) {\n				if(md.getName().contains(\"set\" + filedName.substring(0, 1).toUpperCase() + filedName.substring(1))) {\n					try {\n						//System.out.println(\"即将被反射调用的方法:\" + md.getName());\n						md.invoke(obj, value);\n					} catch (IllegalAccessException e) {\n						e.printStackTrace();\n					} catch (IllegalArgumentException e) {\n						e.printStackTrace();\n					} catch (InvocationTargetException e) {\n						e.printStackTrace();\n					}\n				}\n			}\n\n		}\n	}\n\n该自定义方法实现了通过查找传入的entity对象的setter方法为某个变量进行赋值操作.\n\n## 五.总结\n\n    1.将数据库配置文件从外部传入,解耦代码与具体相关数据库(也可以通过配置多个驱动加载不同数据库,从而避免配置文件).\n\n    2.封装Connection的获取和close方法,提高安全和性能.\n\n    3.封装CRUD操作的基本代码,最高程度降低相同代码的书写,使得在复杂业务逻辑中代码重复率大大降低.\n\n    4.总归只是练手用,实际使用过程中也没人会这么用吧.大家都用数据连接池和DBUtils组件.不过作为学习和练手,这让我学到了好多知识.\n\n## 六.最后奉献上完整的JDBCUtil代码:\n\nJDBCUtil  /   ReflectionForSet    /   Test\n\n-------------------------------------------------------------\n\n	JDBCUtil\n\n	package com.rk.test1;\n\n	import java.io.IOException;\n	import java.io.InputStream;\n	import java.sql.Connection;\n	import java.sql.DriverManager;\n	import java.sql.PreparedStatement;\n	import java.sql.ResultSet;\n	import java.sql.ResultSetMetaData;\n	import java.sql.SQLException;\n	import java.util.HashMap;\n	import java.util.Map;\n	import java.util.Map.Entry;\n	import java.util.Properties;\n\n\n	/*\n	 * JDBCUtil 实现了获取数据库连接,关闭数据库连接等操作.\n	 * \n	 * 同时提供通用的 增删改 方法(通过匿名内部类 + 类方法实现)\n	 * \n	 * 这个类的特点:\n	 * 1.从外部配置文件读取数据库信息,与具体的数据库驱动解耦,可直接使用oracle的驱动,也可以直接使用mysql,sqlserver的驱动\n	 * 2.静态单例模式,该类只能提供一个全局的(static) Connection实例,防止过多的connection占用大量系统资源.\n	 * 3.提供通用的增删改查方法,通过静态内部类提供,体现了工具的特点.\n	 * 	 同时用户也可以不适用工具类提供的通用增删改查方法,自己定义方法也可,此时此类只提供获取connection和关闭connection方法\n	 * */\n\n	public class JDBCUtil {\n\n		private static String driver;\n		private static String url;\n		private static String user;\n		private static String password;\n\n		private static Connection conn = null;\n\n		//从配置文件初始化数据库连接信息\n		static {\n			InputStream inStream = JDBCUtil.class.getClassLoader().getResourceAsStream(\"db.properties\");\n			//初始化driver url name password\n			Properties p = new Properties();\n			try {\n				p.load(inStream);\n				//初始化参数\n				driver = p.getProperty(\"driver\");\n				url = p.getProperty(\"url\");\n				user = p.getProperty(\"user\");\n				password = p.getProperty(\"password\");\n			} catch (IOException e) {\n				e.printStackTrace();\n			}\n		}\n\n		public static Connection getConnection() {\n			//1.加载驱动  利用Class.forName()类加载器进行加载driver,\n			try {\n				Class.forName(driver);\n				//双重校验锁保证获取connection是线程安全的(单线程程序中非必要)\n				if(conn == null) {\n					synchronized(JDBCUtil.class){\n						if(conn == null)\n						conn = DriverManager.getConnection(url, user, password);\n					}\n				}\n				return conn;\n			} catch (ClassNotFoundException e) {\n				e.printStackTrace();\n			} catch (SQLException e) {\n				e.printStackTrace();\n			}\n			return null;\n		}\n\n		//关闭方法\n		public static void close() {\n			if(conn != null) {\n				try {\n					conn.close();\n				} catch (SQLException e) {\n					e.printStackTrace();\n				}\n			}\n			conn = null;\n		}\n\n		/*\n		 * 静态内部类,工具类,提供通用的增删改查方法.\n		 * \n		 * \n		 * */\n		static class CRUDUtil{\n			//1.定义一个通用插入方法\n			public static int addDeleteUpdate(String sql,Object ...args) {\n				//2.方法执行必须在数据库连接之后操作,若没有连接数据库则抛出异常\n				if(conn == null) {\n					try {\n						throw new Exception(\"没有获取数据库连接!\");\n					} catch (Exception e) {\n						e.printStackTrace();\n					}\n					return 0;\n				}\n				PreparedStatement pstmt = null;\n				try {\n					//准备pstmt\n					pstmt = conn.prepareStatement(sql);\n					//sql参数设置\n					for (int i = 0; i < args.length; i++) {\n						pstmt.setObject(i+1, args[i]);\n					}\n					//执行\n					int rs = pstmt.executeUpdate();\n					//返回\n					return rs;\n				} catch (SQLException e) {\n					e.printStackTrace();\n				}finally {\n					try {\n						pstmt.close();\n					} catch (SQLException e) {\n						e.printStackTrace();\n					}\n				}\n				return 0;\n			}\n\n			//通用删除方法 add delete update select\n			public static int insert(String sql,Object ...args) {\n				return addDeleteUpdate(sql,args);\n			}\n\n			public static int delete(String sql, Object ...args) {\n				return addDeleteUpdate(sql,args);\n			}\n\n			public static int update(String sql, Object ...args) {\n				return addDeleteUpdate(sql,args);\n			}\n\n			//通用的select方法\n			/**\n			 * 	查询某一个\n			 *	返回值类型:泛型T\n			 *  参数:传入一个T类型的Class,利用此Class通过反射创建一个实例对象,然后对对象进行赋值(利用反射的方法),最后对象类型\n			 * \n			 * */\n			/**\n			 * 首先第一步得到 ResultSet\n			 * 然后通过ResultSet获得ResultSetMetaData\n			 * 然后获取列的别名,把列的别名和列的值(object类型,因为不知道是int还是String)放入map\n			 * 然后遍历map,利用反射把map中的kv装载到T类型的对象中.在返回T就可以了.\n			 * \n			 * */\n			public static <T> T select(Class<T> clazz,String sql, Object ...args) {\n				if(conn == null) {\n					try {\n						throw new Exception(\"没有获取数据库连接!\");\n					} catch (Exception e) {\n						e.printStackTrace();\n					}\n					return null;\n				}\n				PreparedStatement pstmt = null;\n				try {\n					//准备pstmt\n					pstmt = conn.prepareStatement(sql);\n					//sql参数设置\n					for (int i = 0; i < args.length; i++) {\n						pstmt.setObject(i+1, args[i]);\n					}\n					//执行\n					ResultSet rs = pstmt.executeQuery();\n					//对结果集进行获取元数据操作\n					ResultSetMetaData rsmd= rs.getMetaData();\n					Map<String,Object> data = new HashMap<String,Object>();\n					if(rs.next()) {\n						for (int i = 0; i < rsmd.getColumnCount(); i++) {\n							data.put(rsmd.getColumnLabel(i+1), rs.getObject(i+1));\n						}\n					}\n					//然后反射生成对象\n					if(!data.isEmpty()) {\n						T obj = clazz.newInstance();\n						//利用反射进行对象赋值.\n						for(Entry<String,Object> entry:data.entrySet()) {\n							ReflectionForSet.setFileds(obj,entry.getKey(),entry.getValue());\n						}\n						return obj;\n					}\n\n				} catch (SQLException e) {\n					e.printStackTrace();\n				} catch (InstantiationException e) {\n					// TODO Auto-generated catch block\n					e.printStackTrace();\n				} catch (IllegalAccessException e) {\n					// TODO Auto-generated catch block\n					e.printStackTrace();\n				}finally {\n					try {\n						pstmt.close();\n					} catch (SQLException e) {\n						e.printStackTrace();\n					}\n				}\n				return null;\n			}\n		}\n	}\n\nReflectionForSet\n\n	package com.rk.test1;\n\n	import java.lang.reflect.InvocationTargetException;\n	import java.lang.reflect.Method;\n\n	public class ReflectionForSet {\n\n		public static  void setFileds(Object obj,String filedName,Object value) {\n			Method[] method = obj.getClass().getDeclaredMethods();\n			//获取方法\n			for (Method md : method) {\n				if(md.getName().contains(\"set\" + filedName.substring(0, 1).toUpperCase() + filedName.substring(1))) {\n					try {\n						//System.out.println(\"即将被反射调用的方法:\" + md.getName());\n						md.invoke(obj, value);\n					} catch (IllegalAccessException e) {\n						// TODO Auto-generated catch block\n						e.printStackTrace();\n					} catch (IllegalArgumentException e) {\n						// TODO Auto-generated catch block\n						e.printStackTrace();\n					} catch (InvocationTargetException e) {\n						// TODO Auto-generated catch block\n						e.printStackTrace();\n					}\n				}\n			}\n\n		}\n	}\n\ntest\n\n	package com.rk.test1;\n\n	import java.sql.Connection;\n\n	public class Test {\n\n		public static void main(String[] args) {\n\n			Connection conn = JDBCUtil.getConnection();\n\n			System.out.println(conn);\n\n	//		String sql  = \"select * from t_user where \";\n\n	//		try {\n	//			Statement stmt  = conn.createStatement();\n	//			ResultSet rs = stmt.executeQuery(sql);\n	//			\n	//			while(rs.next()) {\n	//				System.out.println(\"id:\" + rs.getInt(1) + \" stuid:\" + rs.getInt(2) + \" name:\" + rs.getString(3) + \" password:\" + rs.getString(4) + \" oldpasword:\" + rs.getString(5));\n	//			}\n	//		} catch (SQLException e) {\n	//			e.printStackTrace();\n	//		}\n\n			//增加\n	//		String sql = \"insert into t_user(stuid,account,password0,oldpassword)values(?,?,?,?)\";\n	//		int stuid = 20140162;\n	//		String account = \"kun\";\n	//		String password0 = \"kun\";\n	//		String oldpassword = \"dsd\";\n	//		long startTime = System.currentTimeMillis();\n	//		for(int i = 0; i < 2; i++) {\n	//			JDBCUtil.CRUDUtil.insert(sql, 30140564+i+1+100001,account,password0,oldpassword);\n	//		}\n	//		long endTime = System.currentTimeMillis();\n	//		System.out.println(\"插入完成,耗时:\" + (endTime - startTime) + \"ms\");\n\n			//删除\n	//		startTime = System.currentTimeMillis();\n	//		String sql2 = \"delete from t_user where password0=?\";\n	//		String password = \"ruan\";\n	//		JDBCUtil.CRUDUtil.delete(sql2, password);\n	//		endTime = System.currentTimeMillis();\n	//		System.out.println(\"删除完成,耗时:\" + (endTime - startTime) + \"ms\");\n\n\n			//更新\n	//		long startTime = System.currentTimeMillis();\n	//		String sql3 = \"update t_user set account = ? where id = ?\";\n	//		String accounts = \"mrruan\";\n	//		int id = 1;\n	//		JDBCUtil.CRUDUtil.update(sql3, accounts, id);\n	//		long endTime = System.currentTimeMillis();\n	//		System.out.println(\"更新完成,耗时:\" + (endTime - startTime)/1000d + \"s\");\n	//		\n\n			//查找\n			String sql4 = \"select id,userid,state from t_admin where id = ?\";\n			Admin admin = JDBCUtil.CRUDUtil.select(Admin.class, sql4, 1);\n			System.out.println(admin);\n\n\n\n			JDBCUtil.close();\n		}\n\n\n	}\n', '/articles/2018/05/03/1525361243556.html', '1', '1', '0', '2018-05-03 23:27:24', '2018-05-03 23:27:24', 0.5967286821759088, '1', '1', '', 'CodeMirror-Markdown');
INSERT INTO `b3_solo_article` VALUES ('1527230659322', '内网中使用OpenVPN代理上外网如何进行配置文件的配置', '', 'VPN', 'qkmc@outlook.com', 0, 65, '  openvpn挺好用的，近来学校的校园网欠费了，除了访问学校的内网，外网就访问不到了。\n  好在为老师办事，手里有一台学校的云服务器，网速还挺快，访问外网能达到10MB/S的访问速度。\n满满的全是诱惑。\n  于是催生了使用OpenVPN搭建翻墙工具的想法。\n  我需要的功能就是从校园网翻到外网，很简单。\n  \n  \n1.首先在Server端和client端安装openVPN，然后生成相关的证书。\n  这一步的操作可以参考：[https://blog.csdn.net/football98/article/details/50455493](http://https://blog.csdn.net/football98/article/details/50455493)\n  \n2.修改server上的.ovpn文件\n按照第一步中进行的操作，应该很简单地陪完相关流程。\n\n3.修改client上的.ovpn文件\n按照第一步迅速完成。\n\n\n完成如上三个步骤后，client能顺利连接上server，但是却不能上网，不能访问百度。\n我不知不觉修改了一些内容后就能访问了。下面贴上配置文件：\nclient端：\n\nclient\ndev tap     #windows端  linux是tun\nproto udp\nresolv-retry infinite\nnobind\npersist-key\npersist-tun\nca ca.crt\ncert client01.crt   #注意client01这个名字，是你自己做的\nkey client01.key\nremote-cert-tls server\ntls-auth ta.key 1     #之前参考的教程中没有生成这个文件，会出现很多问题\ncipher AES-256-CBC\nverb 3\n\nserver端：\nport 1194     #与客户端对应\nproto udp    #与客户端对应\ndev tap       #服务器\nca ca.crt\ncert server01.crt\nkey server01.key\ndh dh2048.pem     #与文件名对应\nserver 10.8.0.0 255.255.255.0\nifconfig-pool-persist ipp.txt\npush \"redirect-gateway def1 bypass-dhcp\"\npush \"dhcp-option DNS 10.255.252.22\"     #注意，这一步是关键。详细参照下面的说明\nkeepalive 10 120\ntls-auth ta.key 0 # This file is secret\ncipher AES-256-CBC\npersist-key\npersist-tun\nstatus openvpn-status.log\nverb 3\nexplicit-exit-notify 1\n\n+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++说明++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\npush \"dhcp-option DNS 10.255.252.22\"\n对于这一句，这个10.255.252.22是怎么得来的呢？\n首先我的服务器上有两个网卡，本地连接1和本地连接2,下面这张图显示了openvpn使用了本地连接2\n![imagepng](https://www.ruankun.xyz/upload/79eff576547c483f811e009bef0ceb4c_image.png) \n\n然后，我查看了ipconfig -all\n![imagepng](https://www.ruankun.xyz/upload/aa293e41923142849b5755e795706a0d_image.png) \n![imagepng](https://www.ruankun.xyz/upload/0b84753e328f46fa9cd948388b56773b_image.png) \n因为之前不能上网，我就把dns设置成了本地连接1的DNS服务器地址，然后就能访问互联网了\n此处记载一下，虽然没有闹懂根本原因，但是找到了直接原因，方便下次进行配置参考。\n\n\n\n\n\n', '/articles/2018/05/25/1527230659322.html', '1', '1', '0', '2018-05-25 14:44:19', '2018-05-25 14:44:19', 0.4401749171857008, '3', '1', '', 'CodeMirror-Markdown');
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_category
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_category`;
CREATE TABLE `b3_solo_category` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `categoryTitle` varchar(64) NOT NULL COMMENT '分类标题',
  `categoryURI` varchar(32) NOT NULL COMMENT '分类访问路径',
  `categoryDescription` text NOT NULL COMMENT '分类描述',
  `categoryOrder` int(11) NOT NULL COMMENT '分类展现的排序',
  `categoryTagCnt` int(11) NOT NULL COMMENT '分类下聚合的标签计数',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分类表';

-- ----------------------------
-- Table structure for b3_solo_category_tag
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_category_tag`;
CREATE TABLE `b3_solo_category_tag` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `category_oId` varchar(19) NOT NULL COMMENT '分类 id',
  `tag_oId` varchar(19) NOT NULL COMMENT '标签 id',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分类-标签关联表';

-- ----------------------------
-- Table structure for b3_solo_comment
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_comment`;
CREATE TABLE `b3_solo_comment` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `commentContent` text NOT NULL COMMENT '评论内容',
  `commentDate` datetime NOT NULL COMMENT '评论时间',
  `commentEmail` varchar(255) NOT NULL COMMENT '评论人邮箱',
  `commentName` varchar(50) NOT NULL COMMENT '评论人名称',
  `commentOnId` varchar(19) NOT NULL COMMENT '评论的文章/页面的 id',
  `commentOnType` varchar(20) NOT NULL COMMENT '评论的是文章还是页面，文章：article 页面：page',
  `commentSharpURL` varchar(255) NOT NULL COMMENT '评论访问路径，带 # 锚点',
  `commentThumbnailURL` text NOT NULL COMMENT '评论人头像图片链接地址',
  `commentURL` varchar(255) NOT NULL COMMENT '评论人链接地址',
  `commentOriginalCommentId` varchar(19) DEFAULT NULL COMMENT '评论回复时原始的评论 id，即父评论 id',
  `commentOriginalCommentName` varchar(50) DEFAULT NULL COMMENT '评论回复时原始的评论人名称，即父评论人名称',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论表';

-- ----------------------------
-- Records of b3_solo_comment
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_comment` VALUES ('1525098048021', ':yum: 棒棒哒，好宝宝', '2018-04-30 22:20:45', '1537854187@qq.com', '娇娇', '1525097885794', 'article', '/articles/2018/04/30/1525097885794.html#1525098048021', 'https://secure.gravatar.com/avatar/d4940bcab2dd167e569d589df543ee45?s=128', 'https://my.oschina.net/u/3729519', '', '');
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_link
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_link`;
CREATE TABLE `b3_solo_link` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `linkAddress` varchar(255) NOT NULL COMMENT '链接地址',
  `linkDescription` varchar(255) NOT NULL COMMENT '链接描述',
  `linkOrder` int(11) NOT NULL COMMENT '链接展现的排序',
  `linkTitle` varchar(255) NOT NULL COMMENT '链接标题',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='链接表';

-- ----------------------------
-- Records of b3_solo_link
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_link` VALUES ('1525019375637', 'http://www.1216.top', 'redkale讨论社区', 1, 'redbbs');
INSERT INTO `b3_solo_link` VALUES ('1525019438893', 'http://redkale.org', 'redkale是一款免费的国产开源框架，专注java微服务', 0, 'redkale');
INSERT INTO `b3_solo_link` VALUES ('1525098275048', 'https://b3log.org/', 'java开源博客平台', 2, 'B3log');
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_option
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_option`;
CREATE TABLE `b3_solo_option` (
  `oId` varchar(64) NOT NULL COMMENT '主键',
  `optionValue` text NOT NULL COMMENT '配置项值',
  `optionCategory` varchar(100) NOT NULL COMMENT '配置项分类',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='配置项';

-- ----------------------------
-- Records of b3_solo_option
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_option` VALUES ('adminEmail', 'qkmc@outlook.com', 'preference');
INSERT INTO `b3_solo_option` VALUES ('allowRegister', 'false', 'preference');
INSERT INTO `b3_solo_option` VALUES ('allowVisitDraftViaPermalink', 'false', 'preference');
INSERT INTO `b3_solo_option` VALUES ('articleListDisplayCount', '20', 'preference');
INSERT INTO `b3_solo_option` VALUES ('articleListPaginationWindowSize', '15', 'preference');
INSERT INTO `b3_solo_option` VALUES ('articleListStyle', 'titleAndAbstract', 'preference');
INSERT INTO `b3_solo_option` VALUES ('blogSubtitle', '个人博客', 'preference');
INSERT INTO `b3_solo_option` VALUES ('blogTitle', '阮少爷', 'preference');
INSERT INTO `b3_solo_option` VALUES ('commentable', 'true', 'preference');
INSERT INTO `b3_solo_option` VALUES ('editorType', 'CodeMirror-Markdown', 'preference');
INSERT INTO `b3_solo_option` VALUES ('enableArticleUpdateHint', 'true', 'preference');
INSERT INTO `b3_solo_option` VALUES ('externalRelevantArticlesDisplayCount', '5', 'preference');
INSERT INTO `b3_solo_option` VALUES ('feedOutputCnt', '10', 'preference');
INSERT INTO `b3_solo_option` VALUES ('feedOutputMode', 'abstract', 'preference');
INSERT INTO `b3_solo_option` VALUES ('footerContent', 'Sherivey Ruan', 'preference');
INSERT INTO `b3_solo_option` VALUES ('htmlHead', '', 'preference');
INSERT INTO `b3_solo_option` VALUES ('keyOfSolo', '1525015442155', 'preference');
INSERT INTO `b3_solo_option` VALUES ('localeString', 'zh_CN', 'preference');
INSERT INTO `b3_solo_option` VALUES ('metaDescription', 'mrruan.MrRuan.Sherivery.Ruan', 'preference');
INSERT INTO `b3_solo_option` VALUES ('metaKeywords', '阮少爷.阮坤.博客.开源项目', 'preference');
INSERT INTO `b3_solo_option` VALUES ('mostCommentArticleDisplayCount', '5', 'preference');
INSERT INTO `b3_solo_option` VALUES ('mostUsedTagDisplayCount', '20', 'preference');
INSERT INTO `b3_solo_option` VALUES ('mostViewArticleDisplayCount', '5', 'preference');
INSERT INTO `b3_solo_option` VALUES ('noticeBoard', '少年不识愁滋味，为赋新词强说愁。', 'preference');
INSERT INTO `b3_solo_option` VALUES ('randomArticlesDisplayCount', '5', 'preference');
INSERT INTO `b3_solo_option` VALUES ('recentArticleDisplayCount', '', 'preference');
INSERT INTO `b3_solo_option` VALUES ('recentCommentDisplayCount', '10', 'preference');
INSERT INTO `b3_solo_option` VALUES ('relevantArticlesDisplayCount', '5', 'preference');
INSERT INTO `b3_solo_option` VALUES ('replyNotiTplBody', 'Your comment on post[<a href=\'${postLink}\'>${postTitle}</a>] received an reply: <p>${replier}: <span><a href=\'${replyURL}\'>${replyContent}</a></span></p>', 'preference');
INSERT INTO `b3_solo_option` VALUES ('replyNotiTplSubject', '${blogTitle}: New reply of your comment', 'preference');
INSERT INTO `b3_solo_option` VALUES ('signs', '[{\"signHTML\":\"\",\"oId\":0},{\"signHTML\":\"少年不识愁滋味，为赋新词强说愁。\",\"oId\":1},{\"signHTML\":\"Never saw such a handsome boy.\",\"oId\":2},{\"signHTML\":\"明月装饰了你的窗，你装饰了我的梦。\",\"oId\":3}]', 'preference');
INSERT INTO `b3_solo_option` VALUES ('skinDirName', 'metro-hot', 'preference');
INSERT INTO `b3_solo_option` VALUES ('skinName', 'metro-hot', 'preference');
INSERT INTO `b3_solo_option` VALUES ('skins', '[{\"skinName\":\"next\",\"skinDirName\":\"next\"},{\"skinName\":\"ease\",\"skinDirName\":\"ease\"},{\"skinName\":\"owmx-3.0\",\"skinDirName\":\"owmx-3.0\"},{\"skinName\":\"mobile\",\"skinDirName\":\"mobile\"},{\"skinName\":\"favourite\",\"skinDirName\":\"favourite\"},{\"skinName\":\"9IPHP\",\"skinDirName\":\"9IPHP\"},{\"skinName\":\"i-nove\",\"skinDirName\":\"i-nove\"},{\"skinName\":\"yilia\",\"skinDirName\":\"yilia\"},{\"skinName\":\"Bruce\",\"skinDirName\":\"Bruce\"},{\"skinName\":\"classic\",\"skinDirName\":\"classic\"},{\"skinName\":\"tree-house\",\"skinDirName\":\"tree-house\"},{\"skinName\":\"Medium\",\"skinDirName\":\"Medium\"},{\"skinName\":\"Finding\",\"skinDirName\":\"Finding\"},{\"skinName\":\"timeline\",\"skinDirName\":\"timeline\"},{\"skinName\":\"NeoEase\",\"skinDirName\":\"NeoEase\"},{\"skinName\":\"Community\",\"skinDirName\":\"Community\"},{\"skinName\":\"metro-hot\",\"skinDirName\":\"metro-hot\"},{\"skinName\":\"Andrea\",\"skinDirName\":\"Andrea\"}]', 'preference');
INSERT INTO `b3_solo_option` VALUES ('statisticBlogArticleCount', '7', 'statistic');
INSERT INTO `b3_solo_option` VALUES ('statisticBlogCommentCount', '1', 'statistic');
INSERT INTO `b3_solo_option` VALUES ('statisticBlogViewCount', '8677', 'statistic');
INSERT INTO `b3_solo_option` VALUES ('statisticPublishedBlogArticleCount', '7', 'statistic');
INSERT INTO `b3_solo_option` VALUES ('statisticPublishedBlogCommentCount', '1', 'statistic');
INSERT INTO `b3_solo_option` VALUES ('timeZoneId', 'Asia/Shanghai', 'preference');
INSERT INTO `b3_solo_option` VALUES ('version', '2.8.0', 'preference');
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_page
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_page`;
CREATE TABLE `b3_solo_page` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `pageCommentCount` int(11) NOT NULL COMMENT '页面评论计数',
  `pageContent` mediumtext NOT NULL COMMENT '页面内容',
  `pageOrder` int(11) NOT NULL COMMENT '页面展现排序',
  `pagePermalink` varchar(255) NOT NULL COMMENT '页面访问路径',
  `pageTitle` varchar(255) NOT NULL COMMENT '页面标题',
  `pageCommentable` char(1) NOT NULL COMMENT '页面是否可以评论',
  `pageType` varchar(10) NOT NULL COMMENT '页面类型，自定义导航：link，普通页面：page',
  `pageOpenTarget` varchar(255) NOT NULL COMMENT '页面打开方式',
  `pageEditorType` varchar(20) DEFAULT NULL COMMENT '页面编辑器类型，目前仅支持 CodeMirror-Markdown',
  `pageIcon` varchar(255) NOT NULL COMMENT '页面展示用小图标',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自定义页面表';

-- ----------------------------
-- Records of b3_solo_page
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_page` VALUES ('1525892387436', 0, '', 0, 'https://www.ruankun.xyz/colorshell-ssm', '彩贝', '1', 'link', '_blank', 'CodeMirror-Markdown', 'CB');
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_plugin
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_plugin`;
CREATE TABLE `b3_solo_plugin` (
  `oId` varchar(128) NOT NULL COMMENT '主键',
  `author` text NOT NULL COMMENT '插件作者',
  `name` varchar(255) NOT NULL COMMENT '插件名称',
  `status` varchar(10) NOT NULL COMMENT '插件状态，启用：ENABLED，禁用：DISABLED',
  `version` varchar(10) NOT NULL COMMENT '插件版本',
  `setting` text COMMENT '插件配置，JSON 字符串',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
-- Records of b3_solo_plugin
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_plugin` VALUES ('Facybox_0.0.1', '<a href=\"http://88250.b3log.org\">88250</a>', 'Facybox', 'ENABLED', '0.0.1', '{}');
INSERT INTO `b3_solo_plugin` VALUES ('Symphony Interest_0.0.1', '<a href=\"http://88250.b3log.org\">88250</a>', 'Symphony Interest', 'ENABLED', '0.0.1', '{}');
INSERT INTO `b3_solo_plugin` VALUES ('Table of Contents Generator_0.0.1', '<a href=\"http://88250.b3log.org\">88250</a>', 'Table of Contents Generator', 'ENABLED', '0.0.1', '{}');
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_tag
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_tag`;
CREATE TABLE `b3_solo_tag` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `tagPublishedRefCount` int(11) NOT NULL COMMENT '标签关联的已发布文章计数',
  `tagReferenceCount` int(11) NOT NULL COMMENT '标签关联的文章计数',
  `tagTitle` varchar(255) NOT NULL COMMENT '标签标题',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签表';

-- ----------------------------
-- Records of b3_solo_tag
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_tag` VALUES ('1525015442445', 0, 0, 'Solo');
INSERT INTO `b3_solo_tag` VALUES ('1525018049714', 1, 1, '无聊');
INSERT INTO `b3_solo_tag` VALUES ('1525050955207', 2, 2, '算法');
INSERT INTO `b3_solo_tag` VALUES ('1525050955259', 1, 1, '银行家算法');
INSERT INTO `b3_solo_tag` VALUES ('1525097636825', 2, 2, '个人项目');
INSERT INTO `b3_solo_tag` VALUES ('1525272564130', 1, 1, 'ACM');
INSERT INTO `b3_solo_tag` VALUES ('1525272564181', 1, 1, 'C语言');
INSERT INTO `b3_solo_tag` VALUES ('1525361243607', 1, 1, 'JDBC');
INSERT INTO `b3_solo_tag` VALUES ('1525361243720', 1, 1, 'JAVA');
INSERT INTO `b3_solo_tag` VALUES ('1527230659373', 1, 1, 'VPN');
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_tag_article
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_tag_article`;
CREATE TABLE `b3_solo_tag_article` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `article_oId` varchar(19) NOT NULL COMMENT '文章 id',
  `tag_oId` varchar(19) NOT NULL COMMENT '标签 id',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签-文章关联表';

-- ----------------------------
-- Records of b3_solo_tag_article
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_tag_article` VALUES ('1525018049765', '1525018049663', '1525018049714');
INSERT INTO `b3_solo_tag_article` VALUES ('1525050955310', '1525050955156', '1525050955207');
INSERT INTO `b3_solo_tag_article` VALUES ('1525050955361', '1525050955156', '1525050955259');
INSERT INTO `b3_solo_tag_article` VALUES ('1525097636877', '1525097636774', '1525097636825');
INSERT INTO `b3_solo_tag_article` VALUES ('1525097885846', '1525097885794', '1525097636825');
INSERT INTO `b3_solo_tag_article` VALUES ('1525272564232', '1525272564073', '1525050955207');
INSERT INTO `b3_solo_tag_article` VALUES ('1525272564283', '1525272564073', '1525272564130');
INSERT INTO `b3_solo_tag_article` VALUES ('1525272564333', '1525272564073', '1525272564181');
INSERT INTO `b3_solo_tag_article` VALUES ('1525361243770', '1525361243556', '1525361243607');
INSERT INTO `b3_solo_tag_article` VALUES ('1525361243823', '1525361243556', '1525361243720');
INSERT INTO `b3_solo_tag_article` VALUES ('1527230659425', '1527230659322', '1527230659373');
COMMIT;

-- ----------------------------
-- Table structure for b3_solo_user
-- ----------------------------
DROP TABLE IF EXISTS `b3_solo_user`;
CREATE TABLE `b3_solo_user` (
  `oId` varchar(19) NOT NULL COMMENT '主键',
  `userEmail` varchar(255) NOT NULL COMMENT '用户邮箱',
  `userName` varchar(255) NOT NULL COMMENT '用户名',
  `userURL` varchar(255) NOT NULL COMMENT '用户链接地址',
  `userPassword` varchar(255) NOT NULL COMMENT '用户密码，MD5',
  `userRole` varchar(255) NOT NULL COMMENT '用户角色，管理员：adminRole，普通用户：defaultRole，访客用户：visitorRole',
  `userArticleCount` int(11) NOT NULL COMMENT '用户文章计数',
  `userPublishedArticleCount` int(11) NOT NULL COMMENT '用户已发布文章计数',
  `userAvatar` varchar(255) NOT NULL COMMENT '用户头像图片链接地址',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of b3_solo_user
-- ----------------------------
BEGIN;
INSERT INTO `b3_solo_user` VALUES ('1525015442242', 'qkmc@outlook.com', 'mrruan', 'http://www.ruankun.xyz', 'f0dc2ec24679fae04aeb9b2c86b5ffdf', 'adminRole', 7, 7, 'https://secure.gravatar.com/avatar/6f540c65ae6cd1934574bde4a3fe8960?s=128');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
