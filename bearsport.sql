/*
Navicat MySQL Data Transfer

Source Server         : LBS
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : bearsport

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-09-25 21:13:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_activity
-- ----------------------------
DROP TABLE IF EXISTS `t_activity`;
CREATE TABLE `t_activity` (
  `ID` varchar(32) NOT NULL,
  `ACT_ID` varchar(4) NOT NULL,
  `ACT_TYPE` varchar(10) DEFAULT NULL,
  `FEE_TYPE` varchar(10) DEFAULT NULL,
  `PLAN_PEOPLE` int(3) DEFAULT NULL,
  `SPR_TYPE` varchar(50) DEFAULT NULL,
  `ACT_DATE` date DEFAULT NULL,
  `ACT_TIME` varchar(10) DEFAULT NULL,
  `USER_ID` varchar(4) DEFAULT NULL,
  `OPEN_ID` varchar(50) DEFAULT NULL,
  `HEAT` varchar(5) DEFAULT NULL,
  `CREATE_DATE` timestamp NULL DEFAULT NULL,
  `ACT_STATUS` varchar(1) DEFAULT NULL,
  `FEE` varchar(10) DEFAULT NULL,
  `AREA_NAME` varchar(255) DEFAULT NULL,
  `AREA_ADDRESS` varchar(255) DEFAULT NULL,
  `AREA_LATITUDE` varchar(20) DEFAULT NULL,
  `AREA_LONGITUDE` varchar(20) DEFAULT NULL,
  `WORD_INPUT` varchar(255) DEFAULT NULL,
  `ACT_SUBJECT` varchar(50) DEFAULT NULL,
  `NICK_NAME` varchar(50) DEFAULT NULL,
  `CONTACT_NUM` varchar(11) DEFAULT NULL,
  `ENR_PEOPLE` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity
-- ----------------------------
INSERT INTO `t_activity` VALUES ('4d7a856b703b4f40a3b9291715510cd2', '0003', '约战', '均摊', '3', '羽毛球', null, null, '0004', 'ox-Xs0IiI-YjVlDtr40r3kQcqS-c', '0', '2017-09-17 16:07:36', 'A', '50.0', '威斯特羽毛球馆', '西五路26号体育场内', null, null, null, '来', '小虾', null, '1');
INSERT INTO `t_activity` VALUES ('9efaacac5ce34896bc4e5f3a23951c84', '0002', '看比赛', '均摊', '2', '羽毛球', null, '18:00', '0001', 'ox-Xs0DbUPawAhqrdPbPGBU_1IKA', '0', '2017-09-17 11:20:10', 'A', '100.0', '咸阳一00二仓库羽毛球馆', '陕西省咸阳市渭城区东风路16号1002', null, null, null, '第一次', 'xyzzg3000', null, '3');
INSERT INTO `t_activity` VALUES ('d44999ea278549b3a77ff6e4ab3e7ddf', '0004', '约战', '均摊', '0', '足球', null, null, '0003', 'ox-Xs0EAQ9diLOf-sBzyOCY6oxE8', '0', '2017-09-17 21:42:09', 'A', '0.0', ' ', ' ', null, null, null, '', 'Andy', null, '1');

-- ----------------------------
-- Table structure for t_friends
-- ----------------------------
DROP TABLE IF EXISTS `t_friends`;
CREATE TABLE `t_friends` (
  `openId` varchar(45) NOT NULL,
  `friend_openId` varchar(45) NOT NULL,
  `relationship_status` varchar(5) DEFAULT NULL,
  `validation_msg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`openId`,`friend_openId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_friends
-- ----------------------------
INSERT INTO `t_friends` VALUES ('ox-Xs0CxUKSXV9Bl9D7Y7QcsfGlE', 'ox-Xs0EAQ9diLOf-sBzyOCY6oxE8', '1', '你纲大爷');
INSERT INTO `t_friends` VALUES ('ox-Xs0EAQ9diLOf-sBzyOCY6oxE8', 'ox-Xs0EAQ9diLOf-sBzyOCY6oxE8', '1', 'dsds');
INSERT INTO `t_friends` VALUES ('ox-Xs0EAQ9diLOf-sBzyOCY6oxE8', 'ox-Xs0PsEm1v2kIlCPmoBGXWGC9c', '1', '我是Andy');
INSERT INTO `t_friends` VALUES ('ox-Xs0PsEm1v2kIlCPmoBGXWGC9c', 'ox-Xs0CxUKSXV9Bl9D7Y7QcsfGlE', '1', null);
INSERT INTO `t_friends` VALUES ('ox-Xs0PsEm1v2kIlCPmoBGXWGC9c', 'ox-Xs0DbUPawAhqrdPbPGBU_1IKA', '0', '万宝');
INSERT INTO `t_friends` VALUES ('ox-Xs0PsEm1v2kIlCPmoBGXWGC9c', 'ox-Xs0EAQ9diLOf-sBzyOCY6oxE8', '1', null);
INSERT INTO `t_friends` VALUES ('ox-Xs0PsEm1v2kIlCPmoBGXWGC9c', 'ox-Xs0IiI-YjVlDtr40r3kQcqS-c', '0', null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `ID` varchar(32) NOT NULL,
  `USER_ID` varchar(4) NOT NULL,
  `NICK_NAME` varchar(20) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `LANGUAGE` varchar(5) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `PROVINCE` varchar(10) DEFAULT NULL,
  `COUNTRY` varchar(10) DEFAULT NULL,
  `AVATAR_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `LEVEL` varchar(5) DEFAULT NULL,
  `CREDIT_LEVEL` varchar(5) DEFAULT NULL,
  `FAVTYPE1` varchar(20) DEFAULT NULL,
  `FAVTYPE2` varchar(20) DEFAULT NULL,
  `FAVTYPE3` varchar(20) DEFAULT NULL,
  `FIRST_LOGIN_TIME` timestamp NULL DEFAULT NULL,
  `LAST_LOGIN_TIME` timestamp NULL DEFAULT NULL,
  `OPEN_ID` varchar(50) DEFAULT NULL,
  `LATITUDE` varchar(20) DEFAULT NULL,
  `LONGTITUDE` varchar(20) DEFAULT NULL,
  `LOGIN_CITY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('105b14c2aaa84c6a90a74d9e6310d8d8', '0004', '小虾', '1', 'zh_CN', 'Tongzhou', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIb0Ricml4UJeJK2CpUduNWvzyeDicTxTugPb0mK9l39YXSOGbSHhBfENYtjbkqm1M7icoWJ3waT2IVw/0', '', '170', '170', '', '', '', '2017-09-17 15:49:54', '2017-09-24 08:33:35', 'ox-Xs0IiI-YjVlDtr40r3kQcqS-c', '', '', '');
INSERT INTO `t_user` VALUES ('5c5b4b68d6f04cdb97ce92349d03fc3d', '0003', 'Andy', '1', 'zh_CN', 'Xi\'an', 'Shaanxi', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI8PEStcoheIz13kicibLib1Dkzf94zb1EF1gZmxKVQxsAurJLtkic2WqLf2H0IZ9AzAodOz7IDhticyew/0', '', '219', '219', '', '', '', '2017-09-17 10:50:38', '2017-09-24 01:00:09', 'ox-Xs0EAQ9diLOf-sBzyOCY6oxE8', '', '', '');
INSERT INTO `t_user` VALUES ('67b0fce445ae4daf92687b7bd4832dfe', '0005', '小熊运动', '1', 'zh_CN', 'Xianyang', 'Shaanxi', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/HYffttsLWLkUUVO9TRuYKMmeSg1kXFicaibCLxnEFGuicibMznWiaXAian6m1wlvwnaq6nWtf5bRNa4hU0rfhZLsibEvw/0', '', '4', '4', '', '', '', '2017-09-18 19:29:31', '2017-09-24 09:01:14', 'ox-Xs0CxUKSXV9Bl9D7Y7QcsfGlE', '34.329605', '108.708991', '咸阳市');
INSERT INTO `t_user` VALUES ('84a22748ce2449aaa17a997796c3dc68', '0002', '姜万宝', '1', 'zh_CN', 'Wuhan', 'Hubei', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/nX6Hyhhr9XU9BmKnhFbvgIslDG4US0fboGibspj0d0PInhCf1VULu3O1M889EBSD1JDGaPdutkpib3bokxjfkTIw/0', '', '26', '26', '', '', '', '2017-09-17 10:43:15', '2017-09-24 22:49:40', 'ox-Xs0PsEm1v2kIlCPmoBGXWGC9c', '34.341568', '108.940175', '西安市');
INSERT INTO `t_user` VALUES ('d0067c36529b438f955f9813cbc29eda', '0001', 'xyzzg3000', '1', 'zh_CN', 'Xi\'an', 'Shaanxi', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqNtOcrlVe81bniaK2ctADViaWLnXcvTHxqcwPcQLn2CWFn9XY5giaVhp1KEG95kP49SDFZd8d3lquvA/0', '', '22', '22', '', '', '', '2017-09-17 10:41:13', '2017-09-20 22:53:44', 'ox-Xs0DbUPawAhqrdPbPGBU_1IKA', '', '', '');

-- ----------------------------
-- Table structure for t_useractivity
-- ----------------------------
DROP TABLE IF EXISTS `t_useractivity`;
CREATE TABLE `t_useractivity` (
  `ACT_ID` varchar(4) NOT NULL,
  `OPEN_ID` varchar(50) NOT NULL,
  `JOINER_NAME` varchar(20) DEFAULT NULL,
  `JOINER_TYPE` varchar(20) DEFAULT NULL,
  `JOIN_TIME` varchar(10) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT NULL COMMENT '1:',
  `JOIN_DATE` date DEFAULT NULL,
  `DETAIL` varchar(255) DEFAULT NULL,
  `CANCEL_DATE` date DEFAULT NULL,
  `CANCEL_TIME` varchar(10) DEFAULT NULL,
  `CANCEL_REASON` varchar(255) DEFAULT NULL,
  `CANCEL_REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ACT_ID`,`OPEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_useractivity
-- ----------------------------
INSERT INTO `t_useractivity` VALUES ('0002', 'ox-Xs0DbUPawAhqrdPbPGBU_1IKA', 'xyzzg3000', '0', '11:20', '1', '2017-09-17', null, null, '', '', '');
INSERT INTO `t_useractivity` VALUES ('0002', 'ox-Xs0EAQ9diLOf-sBzyOCY6oxE8', 'Andy', null, '21:43', '1', '2017-09-17', '', null, '', '', '');
INSERT INTO `t_useractivity` VALUES ('0002', 'ox-Xs0IiI-YjVlDtr40r3kQcqS-c', '小虾', null, '22:29', '1', '2017-09-19', '', null, '', '', '');
INSERT INTO `t_useractivity` VALUES ('0003', 'ox-Xs0IiI-YjVlDtr40r3kQcqS-c', '小虾', '0', '16:7', '1', '2017-09-17', null, null, '', '', '');
INSERT INTO `t_useractivity` VALUES ('0004', 'ox-Xs0EAQ9diLOf-sBzyOCY6oxE8', 'Andy', '0', '21:42', '1', '2017-09-17', null, null, '', '', '');

-- ----------------------------
-- Table structure for t_venues
-- ----------------------------
DROP TABLE IF EXISTS `t_venues`;
CREATE TABLE `t_venues` (
  `ID` varchar(32) NOT NULL,
  `VENUES_ID` varchar(4) NOT NULL,
  `VENUES_NAME` varchar(50) DEFAULT NULL,
  `LONGITUDE` varchar(20) DEFAULT NULL,
  `LATITUDE` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `CONTACT_NUM` varchar(50) DEFAULT NULL,
  `OVERRALL_RATING` varchar(10) DEFAULT NULL,
  `PRICE` double(10,2) DEFAULT NULL,
  `ENV_RATING` varchar(10) DEFAULT NULL,
  `SERVICE_RATING` varchar(10) DEFAULT NULL,
  `DETL_URL` varchar(255) DEFAULT NULL,
  `UID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `VENUES_ID` (`VENUES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_venues
-- ----------------------------
INSERT INTO `t_venues` VALUES ('007bf53465314c4ab4029fa47d854f29', '0001', '北京饭店-室内网球场', '116.41027198723', '39.908948049602', '东长安街33号北京饭店E座8层', '(010)65137766', null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=6f98daa2b0a46e12a3acc41f&output=html&source=placeapi_v2', '6f98daa2b0a46e12a3acc41f');
INSERT INTO `t_venues` VALUES ('00efa5c6e8b243939734583a47e73cc5', '0001', '零距离健身游泳馆', '108.94001216637', '34.339276813482', '西安市未央区凤城八路158号风景御园内', '18392102729,18802937724', '3', '1048.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=79240f82fb859da9343a711a&output=html&source=placeapi_v2', '79240f82fb859da9343a711a');
INSERT INTO `t_venues` VALUES ('0159fd61c0864c6aa98e2fb821c25961', '0001', '体育中心(未央路店)', '108.94480020188', '34.345902084145', '未央区未央路168号(西安市政府)', '(029)85565972', '4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=69fcd6df9de57836cb291594&output=html&source=placeapi_v2', '69fcd6df9de57836cb291594');
INSERT INTO `t_venues` VALUES ('067e16aaf19445b086c7073360f8cb18', '0001', '北京饭店-游泳池', '116.41027198723', '39.908948049602', '东长安街33号北京饭店E座2层', '(010)65137766', null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=73ae444593dfaa4161685872&output=html&source=placeapi_v2', '73ae444593dfaa4161685872');
INSERT INTO `t_venues` VALUES ('077022c55c794b949dd9debed2ee6280', '0001', '走起台球', '108.8643501073', '34.227169668629', '陕西省西安市雁塔区', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=a19ace8542f6412f88db7334&output=html&source=placeapi_v2', 'a19ace8542f6412f88db7334');
INSERT INTO `t_venues` VALUES ('0977f308884745cfa2018af9b1f9858f', '0001', '皇朝网球', '121.36030704645', '31.187083827712', '虹桥路2428号', '18916733276', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=699848ec75ad36f0fbf0cb80&output=html&source=placeapi_v2', '699848ec75ad36f0fbf0cb80');
INSERT INTO `t_venues` VALUES ('0d528c4fbf3449558275a6ff675dcf48', '0001', '天竺瑜伽馆', '108.92945023425', '34.259180080799', '西大街宏府安定广场4号楼4单元453室(好又多超市东侧)', '18629480395', '4.7', '68.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=4ec90f324127efdf82288a0d&output=html&source=placeapi_v2', '4ec90f324127efdf82288a0d');
INSERT INTO `t_venues` VALUES ('0ff99169023a4779a824145a141142e7', '0001', '跆健武道馆', '108.95780143423', '34.268362148063', '皇城东路', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=c61f7070ffec2bf8931fc9e7&output=html&source=placeapi_v2', 'c61f7070ffec2bf8931fc9e7');
INSERT INTO `t_venues` VALUES ('11b7c49bd30840a9921f85eb3dd7c948', '0001', '陕西宾馆18号楼-室内游泳池', '108.87251962924', '34.20385107175', '丈八北路1号', '(029)68899999', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=b9bef3bb9cb245b2c26c1426&output=html&source=placeapi_v2', 'b9bef3bb9cb245b2c26c1426');
INSERT INTO `t_venues` VALUES ('121f2d2a08d94c5c9809e4596f3824e5', '0001', '天亮游泳馆', '108.85223555229', '34.227722583337', '鱼化寨鱼斗路158号复地优尚小区沿街1层', '029-88633459', '3.7', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=c2e863d0edb8efa7d7851ff3&output=html&source=placeapi_v2', 'c2e863d0edb8efa7d7851ff3');
INSERT INTO `t_venues` VALUES ('136f804836ec43059a59d83312b4ebe0', '0001', '圣伽瑜伽馆(三桥会馆店)', '108.83143449816', '34.289096633499', '三桥武警路金桥国际综合楼5层b510室（李记搅团后）', '(029)84519897', null, '200.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=be130871c4d48ef2f503b8b9&output=html&source=placeapi_v2', 'be130871c4d48ef2f503b8b9');
INSERT INTO `t_venues` VALUES ('14c60b479cb14406bc3b598a7bb6e442', '0001', '亚林桌球俱乐部', '108.91969108521', '34.250333072004', '丰庆路东口景寓学府17号楼', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=fa1a804f17180f32fbf0cbf4&output=html&source=placeapi_v2', 'fa1a804f17180f32fbf0cbf4');
INSERT INTO `t_venues` VALUES ('180cbbbe3fee41a080cc73ef0aa70a4b', '0001', '奥罗国际大酒店-健身室', '108.95369026332', '34.262920385866', '南新街30号奥罗国际大酒店3层', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=e07aed8251bf062963180935&output=html&source=placeapi_v2', 'e07aed8251bf062963180935');
INSERT INTO `t_venues` VALUES ('1941b82942984e13936a2693a80cdfc8', '0001', '开心果游泳馆', '108.7103459838', '34.31342739915', '世纪大道陈阳寨转盘东华宇蓝郡6-1-1602', '15229100367', '4.6', '0.00', null, '0', 'http://api.map.baidu.com/place/detail?uid=3fc699316a986453d618b779&output=html&source=placeapi_v2', '3fc699316a986453d618b779');
INSERT INTO `t_venues` VALUES ('195feea85a7645218b033d21dd79d822', '0001', '西北大学-训练馆', '108.93001954989', '34.249919483484', '陕西省 西安市太白北路229号西北大学', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=5f0fbb70aa7f57c87369d3fa&output=html&source=placeapi_v2', '5f0fbb70aa7f57c87369d3fa');
INSERT INTO `t_venues` VALUES ('1d5daa15c34c4ecab456c353a4f79f4d', '0001', '聚8桌球俱乐部', '108.85929000998', '34.207848186223', '红庙村', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=34f0427209831a8c7ab55c6b&output=html&source=placeapi_v2', '34f0427209831a8c7ab55c6b');
INSERT INTO `t_venues` VALUES ('1e8ac5290ab34e9998b0b8da1af29024', '0001', '职工之家', '108.71931830075', '34.317228887999', '世纪家园内', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=170113746fd4d6f7c9fa5fb3&output=html&source=placeapi_v2', '170113746fd4d6f7c9fa5fb3');
INSERT INTO `t_venues` VALUES ('1f64fe06733e4e52a68a1ecfe9e16f5d', '0001', '蜂巢健身中心', '108.71529908481', '34.315260504358', '世纪大道鸿基商务酒店2楼', '(029)33667666', '3.6', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=396a8ffc58b4f489cd04ef46&output=html&source=placeapi_v2', '396a8ffc58b4f489cd04ef46');
INSERT INTO `t_venues` VALUES ('237799dc167246f5bf661cfa04c9199c', '0001', '北京柏屋舞蹈健美瑜伽用品宁波专卖', '121.54717950145', '29.875210478981', '公园路26弄32', '(0574)87266975', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=67177677966fdae02cb96d92&output=html&source=placeapi_v2', '67177677966fdae02cb96d92');
INSERT INTO `t_venues` VALUES ('24199d2e84714906910c9570d7123562', '0001', '龙福台球馆', '119.30013364512', '26.074050737066', '鼓楼区斗西路14号（黎明戴斯酒店隔壁，市政府斜对面）', '(0591)88376777', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=209d1997cab9e5ad344aae99&output=html&source=placeapi_v2', '209d1997cab9e5ad344aae99');
INSERT INTO `t_venues` VALUES ('25b2809322a84cb69aecc249bb8f444a', '0001', 'gt国际健身俱乐部', '108.81402619083', '34.301198310473', '未央区后卫寨地铁口起航时代广场C座三楼', '(029)88932007,18729221822', '1', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=819df9d3ca8d8c98e9f85327&output=html&source=placeapi_v2', '819df9d3ca8d8c98e9f85327');
INSERT INTO `t_venues` VALUES ('26982e446bc34cfd9b4e5d128ec25d7a', '0001', '标力桌球俱乐部(鱼化店)', '108.86316028013', '34.233118333424', '鱼化寨街道邮局向东100米路南（南公馆5楼）', '(029)88692566', null, '31.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=9623e33d27f09cc9260bd096&output=html&source=placeapi_v2', '9623e33d27f09cc9260bd096');
INSERT INTO `t_venues` VALUES ('276c2338bd784c519ca7f81acbb450ad', '0001', '泸登堡游泳馆', '108.87001446606', '34.165053719724', '郭杜北街38号（西安市车管所向南阿姆瑞特家具城对面）', '(029)85843343', '2', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=2d4e9fbcbc8d655c1b94c61a&output=html&source=placeapi_v2', '2d4e9fbcbc8d655c1b94c61a');
INSERT INTO `t_venues` VALUES ('2858d3b75ee64394928928b11753b9da', '0001', '东辰台球城', '119.29824095585', '26.07274868842', '加洋路23号', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=8ab0dfc4fd49320fd8ecedf9&output=html&source=placeapi_v2', '8ab0dfc4fd49320fd8ecedf9');
INSERT INTO `t_venues` VALUES ('2891e6e6fdbe4aff8e1e12303ef4d0e6', '0001', '紫荆舞蹈', '108.87678003275', '34.247101524076', '西安市雁塔区枫林华府西门', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=ea8b6fdd99cb014beb56fa42&output=html&source=placeapi_v2', 'ea8b6fdd99cb014beb56fa42');
INSERT INTO `t_venues` VALUES ('29741e22f6874b0c9f8cfe77460c09cc', '0001', '舞动奇迹舞蹈培训中心', '121.54922338461', '29.871725667621', '浙江省宁波市海曙区华楼街14号世纪广场A座313', '13008986023,0574-87496269', '4.7', '79.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=53cebd501e2228782a02e132&output=html&source=placeapi_v2', '53cebd501e2228782a02e132');
INSERT INTO `t_venues` VALUES ('2b1e9d034d8b4d108ef95f02af0bbb09', '0001', '圣伽瑜伽馆(凤城八路店)', '108.93637832867', '34.344670330851', '凤城八路白桦林居阳光谷16号楼3单元701室', '(029)86658867', '4.5', '200.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=a7467ed6ed06d50214b54b10&output=html&source=placeapi_v2', 'a7467ed6ed06d50214b54b10');
INSERT INTO `t_venues` VALUES ('2c6a30c73d9d45408b8eb388b8c68db2', '0001', '婳蝶瑜伽', '108.89077047737', '34.24691821723', '科技路西口华润万家楼上1210室', '18049241442', '4.8', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=ed29baf2bf42bec5a8f72968&output=html&source=placeapi_v2', 'ed29baf2bf42bec5a8f72968');
INSERT INTO `t_venues` VALUES ('2c7aa95feb364d7d9ec2159de7d96cab', '0001', '健身俱乐部', '108.93118095996', '34.255554461771', '东梆子市街', null, '0', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=3f66e6e7162f49ce45572667&output=html&source=placeapi_v2', '3f66e6e7162f49ce45572667');
INSERT INTO `t_venues` VALUES ('2cd7bb129fa84074bff7dad528e9bf1d', '0001', '紫薇国际乡村俱乐部', '108.86279009831', '34.168463682974', '长安区创业大道10号', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=dbf4d6eec16fcb336ea3ccad&output=html&source=placeapi_v2', 'dbf4d6eec16fcb336ea3ccad');
INSERT INTO `t_venues` VALUES ('2da86758f28f4a9c97eba47b786e6ed2', '0001', '宁波万豪酒店-健身中心', '121.55265816574', '29.877470116137', '和义路188号宁波万豪酒店3层', '(0574)87108888', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=d523226cff9d8ae9fadc8554&output=html&source=placeapi_v2', 'd523226cff9d8ae9fadc8554');
INSERT INTO `t_venues` VALUES ('2f7e78ee758a47cdbfa4eb08824962c5', '0001', '动杆地带台球厅', '108.86303748734', '34.235615533054', '西安市雁塔区', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=b0275dbd4c11dc67e812e481&output=html&source=placeapi_v2', 'b0275dbd4c11dc67e812e481');
INSERT INTO `t_venues` VALUES ('2f8ef36295f442ddac1995a6164f6060', '0001', '长安俱乐部-保龄球馆', '116.40915692431', '39.907337721689', '北京市东城区东长安街10号长安大厦', null, '5', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=9e7c5d5f8b6f7f31a1046412&output=html&source=placeapi_v2', '9e7c5d5f8b6f7f31a1046412');
INSERT INTO `t_venues` VALUES ('2fe48ff394bc480986a7823c778acdb5', '0001', '车张桌球厅', '108.82646931913', '34.28527600362', '西安市未央区', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=34f7a426257b5396ddee8b4a&output=html&source=placeapi_v2', '34f7a426257b5396ddee8b4a');
INSERT INTO `t_venues` VALUES ('316cdade81ec495c9c5248ea0a578ddc', '0001', '福州市鼓楼区闽都赛鸽俱乐部', '119.29339162714', '26.076678057872', '灵响小区1座底层', '(0591)87568735', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=e6ee2fd2f4fa9e512a11d1ab&output=html&source=placeapi_v2', 'e6ee2fd2f4fa9e512a11d1ab');
INSERT INTO `t_venues` VALUES ('34ea69409f404b90a7c985b09253c5f0', '0001', '京广中心公寓及办公楼-商务中心', '116.46060371208', '39.920366760948', '朝阳门外大街1号京广中心', '(010)59903388,(010)65973333', null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=3f3afe865af1b95e2f473372&output=html&source=placeapi_v2', '3f3afe865af1b95e2f473372');
INSERT INTO `t_venues` VALUES ('35e43120dfec4fdca8d41f25580a1329', '0001', '中体倍力健身俱乐部(高新店)', '108.89068976483', '34.247030604497', '陕西省西安市高新区唐延路1号莱安逸境4楼(近昆明路)', null, '3', '2985.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=b533ea4a8e9af1584e6d46a4&output=html&source=placeapi_v2', 'b533ea4a8e9af1584e6d46a4');
INSERT INTO `t_venues` VALUES ('36d05cc21b5f4514afcbf7ae0d5db883', '0001', '51高尔夫', '108.86662120908', '34.172013849466', '高新区西部大道', '(029)87778701', '0', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=49d0c0f1c5d43414ddee8bc1&output=html&source=placeapi_v2', '49d0c0f1c5d43414ddee8bc1');
INSERT INTO `t_venues` VALUES ('3854fdf4f6914a77bcb3eeb85ee90a43', '0001', '妈咪天使婴儿游泳馆', '108.88605672639', '34.245369215421', '大寨路1号华府新桃园6号楼1单元406室（牡丹庄园旁）', null, '4.5', '93.00', null, null, 'http://api.map.baidu.com/place/detail?uid=9f63c7a3216fd5c09e9d686b&output=html&source=placeapi_v2', '9f63c7a3216fd5c09e9d686b');
INSERT INTO `t_venues` VALUES ('3cb7467aee184a4d93834d4dd2517876', '0001', '爱路 拉丁舞', '108.88605672639', '34.245369215421', '莲湖区大寨路1号,华府新桃园(近西二环牡丹苑)', '18602959593', '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=571a7027ff0e1bd2acee7a0f&output=html&source=placeapi_v2', '571a7027ff0e1bd2acee7a0f');
INSERT INTO `t_venues` VALUES ('3d6b5ef941f94091849838d3b58159cf', '0001', '上将台球', '108.93346997522', '34.25742043015', '冰窖巷', null, '0', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=6a6d2a95fc71bf3dd7851f90&output=html&source=placeapi_v2', '6a6d2a95fc71bf3dd7851f90');
INSERT INTO `t_venues` VALUES ('3dc200bce5c345aeb8851bcc25e549b2', '0001', '圣珈瑜伽(三桥店)', '108.83276797993', '34.285603228946', '三桥武警路金桥国际综合楼5层b510室（李记搅团后面）', '(029)84519897', '4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=92300637535655d4373a71c3&output=html&source=placeapi_v2', '92300637535655d4373a71c3');
INSERT INTO `t_venues` VALUES ('40120de06336469caea1abc228e69ad1', '0001', '健英桌球俱乐部', '108.71993865049', '34.315940022769', '世纪大道沣渭世纪中心三楼电信营业厅正对面', '(029)33686300', '4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=a07206abe0825f4f88fc0615&output=html&source=placeapi_v2', 'a07206abe0825f4f88fc0615');
INSERT INTO `t_venues` VALUES ('42daac70e1d544d2b34de2a7edc0095f', '0001', '宁波万豪酒店-游泳池', '121.55265816574', '29.877470116137', '和义路188号宁波万豪酒店3层', '(0574)87108888', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=38ce35be989e550b2b3a9f5b&output=html&source=placeapi_v2', '38ce35be989e550b2b3a9f5b');
INSERT INTO `t_venues` VALUES ('44f6d76ab13d42f7b690491f21ade785', '0001', '天宫舞府(丹婷瑜伽舞蹈店)', '119.29812879607', '26.07777826646', '鼓楼区道山路199号乌山嘉苑A座7G室(妇幼保健院对面道山路和澳门路交叉口)', '4008762188', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=a37578f4d1e4ef91e215f965&output=html&source=placeapi_v2', 'a37578f4d1e4ef91e215f965');
INSERT INTO `t_venues` VALUES ('470239487a2a47e8948b060bada0f346', '0001', '禅の瑜伽馆', '108.93720049443', '34.344555213143', '未央区凤城八路白桦林居阳光谷8栋1单元601室', '(029)86552580', '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=1041a54398ef213bf423101b&output=html&source=placeapi_v2', '1041a54398ef213bf423101b');
INSERT INTO `t_venues` VALUES ('475102ffd37c48cdb80f2f150c8ce28b', '0001', '第一健身(旗舰店)', '108.70939856453', '34.332400809496', '团结路中段(近育才中学)', '(029)33275781,(029)33269898', '4', '800.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=14076deee8f4d6f402294fe4&output=html&source=placeapi_v2', '14076deee8f4d6f402294fe4');
INSERT INTO `t_venues` VALUES ('47cc2526b1db41a1a1ba9ea0c665b2a1', '0001', '西安城市运动公园主题会所-运动吧', '108.9431897102', '34.346161518007', '未央路168号', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=0f8e20a7ab38f5f56cc02cd5&output=html&source=placeapi_v2', '0f8e20a7ab38f5f56cc02cd5');
INSERT INTO `t_venues` VALUES ('4844d9c668344891b6ad0f3392efffbb', '0001', '好孩子婴儿游泳馆', '108.72474011925', '34.317489086955', '秦都区世纪大道金泰丝路花城馨园1-1-102(海泉湾)', '15591012995', null, '0.00', null, '0', 'http://api.map.baidu.com/place/detail?uid=db01be40b9c9f57af82213e0&output=html&source=placeapi_v2', 'db01be40b9c9f57af82213e0');
INSERT INTO `t_venues` VALUES ('49fd7b27c632461ba1b8855c174c08c8', '0001', '瑞智健身俱乐部', '108.92268980871', '34.259118105068', '环城西路南段78号东光大厦7018、一区7层8020室', '029-88626297', '2', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=7d5f3a0a853a1b522cb90870&output=html&source=placeapi_v2', '7d5f3a0a853a1b522cb90870');
INSERT INTO `t_venues` VALUES ('4a27ece77cb8425f9242e7deae4e0c9f', '0001', '上海东方通用航空飞行俱乐部', '121.34723052554', '31.187337967671', '迎宾七路60号南门', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=ee3d171f141baaa329fc48e9&output=html&source=placeapi_v2', 'ee3d171f141baaa329fc48e9');
INSERT INTO `t_venues` VALUES ('4cdc6506d42e40f5b474fcf5a65c34a7', '0001', '杰丽桌球俱乐部', '108.86146946188', '34.236208851704', '福谦堡96号附近', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=70b32f25b04fc387b5f42f12&output=html&source=placeapi_v2', '70b32f25b04fc387b5f42f12');
INSERT INTO `t_venues` VALUES ('4e5ea885ecb848bfbe951ddd6109c9ff', '0001', '天之健健身俱乐部', '108.95032050936', '34.264661561191', '新城区西新街9号海星智能大厦裙楼5楼(近皇城西路)', null, '2.5', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=0dc3d82dcdd0327574e5b6b1&output=html&source=placeapi_v2', '0dc3d82dcdd0327574e5b6b1');
INSERT INTO `t_venues` VALUES ('508cc19f71594f099a8aa9ee3c662d4c', '0001', '北京饭店-莱佛士-商务中心', '116.40924197758', '39.908777867407', '东长安街33号', null, '0', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=2d2e0c2556cd4b64d5b74edc&output=html&source=placeapi_v2', '2d2e0c2556cd4b64d5b74edc');
INSERT INTO `t_venues` VALUES ('5220fe274bba44dbaef0e7043d83a5b4', '0001', '北京饭店-莱佛士-健身中心', '116.40924197758', '39.908777867407', '东长安街33号北京饭店莱佛士', '(010)65263388', null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=be2be18db62474322bd7ab2f&output=html&source=placeapi_v2', 'be2be18db62474322bd7ab2f');
INSERT INTO `t_venues` VALUES ('538afe1b43574e288621e7cb6dad7bdd', '0001', 'Prime Fitness', '116.45626370834', '39.920190649552', '朝阳区朝阳门外大街6号万通中心AB座2楼3009室(朝外sohosoho尚都方草地世贸天阶新城国际CBD国贸东大桥财富中心朝阳医院)', '(010)59073006', '4.8', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=9b05c7b1abd408368c1a8918&output=html&source=placeapi_v2', '9b05c7b1abd408368c1a8918');
INSERT INTO `t_venues` VALUES ('53931c14ef7a43079e9c9d37d78ef1c0', '0001', '邱瑞峰健身中心', '108.7031184377', '34.332344231141', '秦隆步行街a1-1-10-2号附近', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=b15da7eddca4607c72210bc3&output=html&source=placeapi_v2', 'b15da7eddca4607c72210bc3');
INSERT INTO `t_venues` VALUES ('53ea1b43eaa147a5a9655b4d4678bc9a', '0001', '体育场十字', '108.70418420402', '34.328263643086', '陕西省咸阳市秦都区渭阳中路和秦皇南路十字路口', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=d1707be4e3cd0710badf8f89&output=html&source=placeapi_v2', 'd1707be4e3cd0710badf8f89');
INSERT INTO `t_venues` VALUES ('561fbaa8a0204960a701aeb7e2a9d0b1', '0001', '正大桌球会所', '108.85142144831', '34.19732403387', '西安市高新区丈八六路袁旗寨新村99号大利家超市二楼', '(029)81102868,13379247370', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=a69055eb2d9808f54f3a5970&output=html&source=placeapi_v2', 'a69055eb2d9808f54f3a5970');
INSERT INTO `t_venues` VALUES ('5743ed6b2a87460484c9479e336aca0d', '0001', '金泰游泳馆', '108.73238789885', '34.317148990105', '世纪大道金泰丝路花城会所一楼', '(029)38118608', '3.1', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=91492b9e481c61c2d7851f59&output=html&source=placeapi_v2', '91492b9e481c61c2d7851f59');
INSERT INTO `t_venues` VALUES ('58f8137ff8ab434c973f5e5b3a887300', '0001', '奔跑舞蹈', '108.92268980871', '34.259118105068', '西门外东光大厦1区1109室', '(029)81329823', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=74c4b07289e22f36fbf0cbc7&output=html&source=placeapi_v2', '74c4b07289e22f36fbf0cbc7');
INSERT INTO `t_venues` VALUES ('5904c37637f34dd1988cc3b6941d3fd7', '0001', '千禧大酒店-绿氧健身俱乐部', '116.45922980214', '39.917000129155', '朝阳区东三环中路7号财富中心千禧大酒店4楼(近京广桥)', '(010)85876888', '4.1', '12000.00', null, null, 'http://api.map.baidu.com/place/detail?uid=2d1a200121213f6f3686f4de&output=html&source=placeapi_v2', '2d1a200121213f6f3686f4de');
INSERT INTO `t_venues` VALUES ('59d6316e22bf4205868eb287fb3602d2', '0001', '陕西宾馆18号楼-乒乓球馆', '108.87251962924', '34.20385107175', '丈八北路1号', '(029)68899999', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=722232c531ab7f5d047ce83b&output=html&source=placeapi_v2', '722232c531ab7f5d047ce83b');
INSERT INTO `t_venues` VALUES ('5c277d5d298a42cfba35ebb5cd285140', '0001', '英爵桌球厅', '108.7178643252', '34.330173916406', '乐育南路统一广场B1楼', null, '4.4', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=0e0e344e535a08d5d22dd6d5&output=html&source=placeapi_v2', '0e0e344e535a08d5d22dd6d5');
INSERT INTO `t_venues` VALUES ('5e49d9e22ee24d389bd0449dd43f6ed1', '0001', '西安小企鹅婴幼儿游泳馆', '108.86457307667', '34.21848426977', '陕西省西安市雁塔区科技四路鸿基新城商业步行西段一楼商铺(鸿基新城内', '(029)88443395', '3.9', '0.00', null, '0', 'http://api.map.baidu.com/place/detail?uid=7063d2c3fa26ad98dbd891bd&output=html&source=placeapi_v2', '7063d2c3fa26ad98dbd891bd');
INSERT INTO `t_venues` VALUES ('5ebbfeeb97524566bf2b05b731698edf', '0001', '西安市儿童医院职工健身中心', '108.92794105308', '34.262106658433', '西举院巷69号', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=7a3104fb7db9b4806b49f37f&output=html&source=placeapi_v2', '7a3104fb7db9b4806b49f37f');
INSERT INTO `t_venues` VALUES ('5ebeed82c534409dbcdf1103bbab95b9', '0001', '禅心瑜伽会馆', '108.89072535453', '34.246607788398', '高新区科技路西口华润万家超市楼上1302', '(029)68618266', '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=0e54e6180a25de6db11e361f&output=html&source=placeapi_v2', '0e54e6180a25de6db11e361f');
INSERT INTO `t_venues` VALUES ('5fcb5b508dcf4d87ae55addcac036b3a', '0001', '吾道跆拳道俱乐部', '121.35218997706', '31.180289818753', '上海市闵行区航东路775弄8号楼3楼(靠近沪清平公路)', '(021)54175351', '4.8', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=74d1b64820fca8b08a36ee50&output=html&source=placeapi_v2', '74d1b64820fca8b08a36ee50');
INSERT INTO `t_venues` VALUES ('604fabd95534457492178fad55f43b63', '0001', '5D动感影院体验馆', '108.86334033549', '34.232928226236', '雁塔区鱼斗路凯星购物广场西侧', '15934822463', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=c1a793ad33cf74e3acee7aef&output=html&source=placeapi_v2', 'c1a793ad33cf74e3acee7aef');
INSERT INTO `t_venues` VALUES ('6528d31660d84cafa880cdad260a3f9c', '0001', '必爱体健身房', '116.45519321428', '39.920286415467', '北京市朝阳门外大街乙6号朝外SOHOD座1层', null, '4.6', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=bb4229f970105aba223bf228&output=html&source=placeapi_v2', 'bb4229f970105aba223bf228');
INSERT INTO `t_venues` VALUES ('6966de0398db42f3a4b341f86c44796e', '0001', '伦敦桌球会馆', '121.55248954256', '29.871631792394', '华楼巷19号天一豪景写字楼A座负一层', '(0574)87470147', '4.4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=fa7da3e87af2191c42d63eed&output=html&source=placeapi_v2', 'fa7da3e87af2191c42d63eed');
INSERT INTO `t_venues` VALUES ('6af5c713f31342a9949654ddb9492e9d', '0001', '爱多多婴儿游泳生活馆(西安丈八店)', '108.85276980012', '34.198718214906', '余家庄内', '18292801160', null, '0.00', null, '0', 'http://api.map.baidu.com/place/detail?uid=df224651d321911e2bd7abb8&output=html&source=placeapi_v2', 'df224651d321911e2bd7abb8');
INSERT INTO `t_venues` VALUES ('6b8d680696ea461da6bac3889372466d', '0001', '佳豪武道', '108.70556418781', '34.334837131378', '咸阳市秦都区', null, '3.8', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=8662e010ca68839b7dc8762f&output=html&source=placeapi_v2', '8662e010ca68839b7dc8762f');
INSERT INTO `t_venues` VALUES ('6b99c69b0f1e48f5a7a54c74013889d4', '0001', '圣珈瑜伽(安定广场店)', '108.92815010941', '34.259020099982', '莲湖区西大街246号安定广场3号楼B东502室(近沃尔玛)', '(029)87618554', null, '391.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=49a02a7a3caf54592a201ab5&output=html&source=placeapi_v2', '49a02a7a3caf54592a201ab5');
INSERT INTO `t_venues` VALUES ('6e057e88551340269222eb3a8929c409', '0001', '次客健身', '121.55248653803', '29.871630814835', '中山东路166号天一广场天一豪景A座9楼', '(0574)27719999', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=879186f3827de582d0f49ea9&output=html&source=placeapi_v2', '879186f3827de582d0f49ea9');
INSERT INTO `t_venues` VALUES ('6e7064708dd94dcf8810649049e68d46', '0001', '韵心瑜伽', '108.88914392193', '34.254994505786', '西二环南端10号万强艺术家1栋1-11309室', '(029)81322661', '4.5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=8382edb2fadc38349f09f763&output=html&source=placeapi_v2', '8382edb2fadc38349f09f763');
INSERT INTO `t_venues` VALUES ('6f68385961e14c7aa8c71976f77b5a4b', '0001', '职工健身俱乐部', '108.8396426546', '34.299125873854', '文化活动中心2楼', '18706745863', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=57a7762a1f998152d23ce371&output=html&source=placeapi_v2', '57a7762a1f998152d23ce371');
INSERT INTO `t_venues` VALUES ('6f72cff7b4974f10ba47f22898810388', '0001', '英伦体检(未央店)', '108.94889256988', '34.344343749864', '陕西省西安市未央区未央路城市运动公园对面美豪酒店3楼', '(029)86213633', null, '0.00', null, '0', 'http://api.map.baidu.com/place/detail?uid=3263acd8575cab58b5147fbb&output=html&source=placeapi_v2', '3263acd8575cab58b5147fbb');
INSERT INTO `t_venues` VALUES ('710b4a3a9db545bfa9472a13690bc8bf', '0001', '泓弈道馆', '108.94220932761', '34.34322094543', '未央区未央路168号城市运动公园内(近张家堡)', '(029)86402898,(029)88222270', '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=18b4f9a4ff19866cb6147f1d&output=html&source=placeapi_v2', '18b4f9a4ff19866cb6147f1d');
INSERT INTO `t_venues` VALUES ('71f405874c894f9cb09bf3d306f470eb', '0001', '体育场', '108.84045001143', '34.302200293378', '西安市未央区建章路83号', null, '4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=4eb3b5339398b708430245c9&output=html&source=placeapi_v2', '4eb3b5339398b708430245c9');
INSERT INTO `t_venues` VALUES ('73697e764d984bb1bb6a7c56206c71a9', '0001', '北京饭店-网球馆', '116.4082488944', '39.908986984908', '东长安街33号北京饭店E座8层', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=8820eba079c665157ec876e5&output=html&source=placeapi_v2', '8820eba079c665157ec876e5');
INSERT INTO `t_venues` VALUES ('74ec9e73665f4cca847791519ac50765', '0001', '咸阳裕塬体育馆', '108.7072883912', '34.328420607297', '渭阳中路副7号', null, '2', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=f6b8dab7a52821436f4760fe&output=html&source=placeapi_v2', 'f6b8dab7a52821436f4760fe');
INSERT INTO `t_venues` VALUES ('7843e9203672497ea8406cb5465646e6', '0001', '长达游艺乐园', '108.89445944008', '34.247391812559', '丰登南路伟基大厦负1楼', null, '1.5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=9a10dcf432f8dbf696ca0796&output=html&source=placeapi_v2', '9a10dcf432f8dbf696ca0796');
INSERT INTO `t_venues` VALUES ('78a1560945d5435e8ca6996eb325ffdf', '0001', '国润翠湖游泳馆', '108.7123948173', '34.331367482822', '咸阳市秦都区团结路国润翠湖商业东街10号楼', '(029)33212255', '4.2', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=c809bdc4bdece30079b55c41&output=html&source=placeapi_v2', 'c809bdc4bdece30079b55c41');
INSERT INTO `t_venues` VALUES ('7a29208ee1df45b29607e96ce18cb2a6', '0001', '北京千禧大酒店-游泳池', '116.45922980214', '39.917000129155', '东三环中路7号院5号楼北京千禧大酒店3层', '(010)85876888', '2.1', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=1c7ff2c6007f6b067069d3e6&output=html&source=placeapi_v2', '1c7ff2c6007f6b067069d3e6');
INSERT INTO `t_venues` VALUES ('7a5e903903884137b8f2f15ebfeb6cc4', '0001', '兰士舞蹈', '119.29920912425', '26.077809090249', '八一七北路268号冠亚广场负1楼金连网台湾购物商城B1层', '(0591)87582770', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=2ef2d8d1bb7545d09fec2b4b&output=html&source=placeapi_v2', '2ef2d8d1bb7545d09fec2b4b');
INSERT INTO `t_venues` VALUES ('7c47ca5b17e246eaa11287b2a052cd0f', '0001', '北京贵宾楼饭店-健身中心', '116.40722107379', '39.908608563782', '东长安街35号北京贵宾楼饭店3层', '(010)65137788', '5', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=92b806d20a1401e779b55cd2&output=html&source=placeapi_v2', '92b806d20a1401e779b55cd2');
INSERT INTO `t_venues` VALUES ('7fac8469b7f14496ac0ef737ea734f30', '0001', '武林传奇.(鼓楼区丹婷瑜伽舞蹈店)', '119.29812879357', '26.077772265916', '道山路199号乌山嘉苑A座7G(妇幼保健院对面道山路和澳门路交叉口', '4008762188', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=90986d715dfd4d352bd7ab72&output=html&source=placeapi_v2', '90986d715dfd4d352bd7ab72');
INSERT INTO `t_venues` VALUES ('830acf9ced784751bda1887f731f8fcc', '0001', '小憩瑜伽馆', '108.8901926675', '34.246537439313', '科技路西口华润万家7楼705室', '(029)84115398', '4.9', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=b7de0672f7ee1800b64f549f&output=html&source=placeapi_v2', 'b7de0672f7ee1800b64f549f');
INSERT INTO `t_venues` VALUES ('8362b181f6da43e99e9926465b39e321', '0001', '上海中航虹桥机场-泊悦酒店', '121.32787937659', '31.192107766718', '申达三路181号上海中航泊悦酒店2层', '(021)22366666', '4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=326db821b73929bb79dbd231&output=html&source=placeapi_v2', '326db821b73929bb79dbd231');
INSERT INTO `t_venues` VALUES ('84e860c6fd7a4a46bd9999f711588844', '0001', '禅修瑜伽(后卫寨店)', '108.8151206029', '34.301693128738', '后卫寨启航佳苑B区12号楼12层1204室', '15091800251', '4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=22e8c60fd48d115b2cb908c7&output=html&source=placeapi_v2', '22e8c60fd48d115b2cb908c7');
INSERT INTO `t_venues` VALUES ('868c10522e494f9caa6da0410ab37874', '0001', '中航泊悦酒店-健身房', '121.32787937659', '31.192107766718', '申达三路181号上海中航泊悦酒店2层', '(021)22366666', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=46942b815e54550303ff2d4a&output=html&source=placeapi_v2', '46942b815e54550303ff2d4a');
INSERT INTO `t_venues` VALUES ('870d14ee2dde43c0b299e8708e46445b', '0001', '圣珈瑜伽(紫薇田园都市店)', '108.86545060788', '34.175778940051', '高新区锦业四路紫薇田园康馨公寓1040室', '(029)88855954', '4.2', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=8dad58fee90a06099f9d684f&output=html&source=placeapi_v2', '8dad58fee90a06099f9d684f');
INSERT INTO `t_venues` VALUES ('88f61765fd1a4112aa73a2f6f61d3731', '0001', '蓝月旱冰场', '108.8648904681', '34.233590635209', '鱼斗路3号4层', null, '1', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=bb78a5452c979babb34c4935&output=html&source=placeapi_v2', 'bb78a5452c979babb34c4935');
INSERT INTO `t_venues` VALUES ('897d2f31a1a34abfa1212f12a84079ad', '0001', '瑞力健身(土门店)', '108.88905638321', '34.256240069175', '土门十字路西向南200米西城芳洲2-3层', '(029)62868255', '3.2', '1236.00', null, null, 'http://api.map.baidu.com/place/detail?uid=7388dffd6cdd0ff2d3ff233b&output=html&source=placeapi_v2', '7388dffd6cdd0ff2d3ff233b');
INSERT INTO `t_venues` VALUES ('8b2730fb84174219bd0f6e2427e46c52', '0001', '星牌桌球俱乐部', '108.8252302683', '34.274112512168', '三桥天台五路54号3楼', '13572273317', '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=16ac65f581eeb0e321f017ef&output=html&source=placeapi_v2', '16ac65f581eeb0e321f017ef');
INSERT INTO `t_venues` VALUES ('8edbe758da1a40c39cf0c91eb888f282', '0001', '紫薇高尔夫球俱乐部', '108.86152338946', '34.169060768779', '陕西省西安市长安区创业大道10号', null, '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=d5464cf823a70f4efda778d2&output=html&source=placeapi_v2', 'd5464cf823a70f4efda778d2');
INSERT INTO `t_venues` VALUES ('910525193a0540169deaabf3ae50c2c9', '0001', '天王体育馆', '108.70556819985', '34.334841083478', '秦皇路南段体育场十字路南200米1号立交桥北头', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=c8e8f6336e923a11ab0dd8e4&output=html&source=placeapi_v2', 'c8e8f6336e923a11ab0dd8e4');
INSERT INTO `t_venues` VALUES ('9289349d6a574038897fca1320d4f70c', '0001', '雷达健身中心', '108.70743985544', '34.32846200288', '渭阳中路副7号', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=c34fb468cd9b97053310af9b&output=html&source=placeapi_v2', 'c34fb468cd9b97053310af9b');
INSERT INTO `t_venues` VALUES ('947d53bd148e446181cc2816487d3684', '0001', '和合瑜伽馆', '108.94089272741', '34.340227829842', '凤城八路风景御园写字间19号楼14楼13-14号(近城市运动公园民生百货市政府)', '15339162236', '4.9', '158.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=4b9e858daefea046ca291594&output=html&source=placeapi_v2', '4b9e858daefea046ca291594');
INSERT INTO `t_venues` VALUES ('94e276ebee3743ce9ec92c9bc5f06f85', '0001', '嘉源羽毛球馆', '108.95794162937', '34.268480900927', '新城区尚德路68号', null, '4', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=1eeed546b0a1efebb4147fa2&output=html&source=placeapi_v2', '1eeed546b0a1efebb4147fa2');
INSERT INTO `t_venues` VALUES ('963244f730a04dfdb3f3e89109e4f67e', '0001', '西安君仕真人CS野战俱乐部', '108.93582172077', '34.255882099735', '西安市莲湖区五星街1号万德商务中心B406室', '(029)87611500', null, '0.00', null, null, null, '4a36d7ca6d5ec9d59403195a');
INSERT INTO `t_venues` VALUES ('997e840c8c164e1f8e263ad78905dc2e', '0001', '北京千禧大酒店-商务中心', '116.45922980214', '39.917000129155', '东三环中路7号财富中心北京千禧大酒店3层', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=867ca76058dc5afa8c1a891f&output=html&source=placeapi_v2', '867ca76058dc5afa8c1a891f');
INSERT INTO `t_venues` VALUES ('9d35729612494d919a49661a15a7649c', '0001', '泓style', '116.45473006953', '39.920511281959', '朝外大街乙6号朝外SOHOD座5108', '(010)59009415', null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=c7b4722888fad61607026f0e&output=html&source=placeapi_v2', 'c7b4722888fad61607026f0e');
INSERT INTO `t_venues` VALUES ('9e5b12ffd7dd4679a4a34c7bb08607c8', '0001', '飞翔跆拳道', '108.9163699756', '34.255098372976', '人民西巷与南小巷交叉口西北50米', '13992835634', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=f7380fef63cf99dd354aae3a&output=html&source=placeapi_v2', 'f7380fef63cf99dd354aae3a');
INSERT INTO `t_venues` VALUES ('9ecc41823a324875b16b67cd66da408a', '0001', '金庭庄园马术中心', '121.35623018739', '31.202750575935', '长宁区协和路1号(近仙霞路)', '(021)62095877', '4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=3c84c7ddf377660db5f42fb4&output=html&source=placeapi_v2', '3c84c7ddf377660db5f42fb4');
INSERT INTO `t_venues` VALUES ('9edd355b1c024214a527b53ba2c5fba8', '0001', '风景御园健身会所', '108.94009057252', '34.339195671272', '市政府对面', null, '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=2fd2beabab7cc82c7adbd217&output=html&source=placeapi_v2', '2fd2beabab7cc82c7adbd217');
INSERT INTO `t_venues` VALUES ('9efcc91953654c998e0ee36148418bd6', '0001', '滚石台球厅', '108.86164146328', '34.23570947407', '鱼化寨村内', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=427ccae6d753f141b5147fb0&output=html&source=placeapi_v2', '427ccae6d753f141b5147fb0');
INSERT INTO `t_venues` VALUES ('9f14cc33b074470aafc1f1192266b2f6', '0001', '北京舞蹈学院丹诗戈舞蹈健美用品(宁波专卖店海曙店)', '121.54876865635', '29.876451242814', '公园路186号', '(0574)87281790', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=1f8313787addbcd487330448&output=html&source=placeapi_v2', '1f8313787addbcd487330448');
INSERT INTO `t_venues` VALUES ('a2c81386268a4167886d34792283d7ad', '0001', '芮博思达国际舞蹈', '116.45466384297', '39.919834840246', '朝阳区朝外大街乙6号朝外SOHO商场B座B111室（近世贸天阶）', null, '5', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=dbf4d6eeb9d1c3336fa3ccc7&output=html&source=placeapi_v2', 'dbf4d6eeb9d1c3336fa3ccc7');
INSERT INTO `t_venues` VALUES ('a351dac9e9d34b4d84082e5c996202a0', '0001', 'UK舞蹈工作室', '108.93282059433', '34.257480350817', '西大街南桥梓口如意大厦6楼', '18292809517,18192164933', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=5beba787a84c8ebde9f853ce&output=html&source=placeapi_v2', '5beba787a84c8ebde9f853ce');
INSERT INTO `t_venues` VALUES ('a36a3b98fbee47708a9ebf53a626cdb8', '0001', '陕西国力跆拳道训练中心', '108.87102086744', '34.175592967215', '紫薇田园都市商业步行街快乐城堡3层', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=b39b504b5135d0d7f8f0cbac&output=html&source=placeapi_v2', 'b39b504b5135d0d7f8f0cbac');
INSERT INTO `t_venues` VALUES ('a4653ce89e0e44d7b6e1ec85362790ef', '0001', '西北大学-体育馆', '108.92725317485', '34.24923419989', '环城南路西段', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=51e5b10525d320c0f32d83bd&output=html&source=placeapi_v2', '51e5b10525d320c0f32d83bd');
INSERT INTO `t_venues` VALUES ('a85346b4e9cd4eeb81ef12020c6b81a5', '0001', '国豪跆拳道馆', '108.70937348511', '34.33241103373', '团结路10号附近', null, '3', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=3aa2c7aa20e901723517dc9c&output=html&source=placeapi_v2', '3aa2c7aa20e901723517dc9c');
INSERT INTO `t_venues` VALUES ('a9a81a3407f5476a88adf3f7cb1579f7', '0001', '咸阳市跆拳道队训练馆', '108.70734171079', '34.32826109176', '渭阳中路附7号咸阳市体育馆(北门)附近', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=48d6dd075e954ddb2cb17e58&output=html&source=placeapi_v2', '48d6dd075e954ddb2cb17e58');
INSERT INTO `t_venues` VALUES ('aa02eb0c16904354abd2cda8497c28a8', '0001', '超超游泳俱乐部(铭城国际社区分店)', '108.8560606876', '34.245409445546', '大寨路铭城国际社区游泳馆', '(029)62389277', '1', '35.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=3fe6b5f6e274388b283a9f4d&output=html&source=placeapi_v2', '3fe6b5f6e274388b283a9f4d');
INSERT INTO `t_venues` VALUES ('aa3e71ab6efc415cbd5be8f88e20279d', '0001', '西安市青少年体育学校-体操馆', '108.95764527743', '34.267209149035', '皇城东路29号', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=cda3a55187e02d509d95de32&output=html&source=placeapi_v2', 'cda3a55187e02d509d95de32');
INSERT INTO `t_venues` VALUES ('aa76d4d84bcd4b9d908f62181169b782', '0001', '台球乒乓球', '108.86782019847', '34.218020005774', '丈八北路鸿基新城小区内', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=aebb5d0c36686230fb2213e0&output=html&source=placeapi_v2', 'aebb5d0c36686230fb2213e0');
INSERT INTO `t_venues` VALUES ('ab6778344a454384a0722fc4e3951ead', '0001', '蝶瑜伽工作室', '108.93636223453', '34.344717585654', '陕西省西安市未央区文景路白桦林居果岭6号楼1单元202室', '15389219035', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=c0078f4414c2031b128824e1&output=html&source=placeapi_v2', 'c0078f4414c2031b128824e1');
INSERT INTO `t_venues` VALUES ('adb509d7ecb8447d8e0d4d5401728fa3', '0001', '西安尚舞瑜伽舞蹈会所', '108.88916805075', '34.255200787297', '土门商厦往南300米路西艺腾国际商务大厦1号楼1102室', '(029)84114688,18702930218', '4.8', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=85936bc3cafc138d43afe650&output=html&source=placeapi_v2', '85936bc3cafc138d43afe650');
INSERT INTO `t_venues` VALUES ('ae143d4abd7d45e99ea8300bf137f1f9', '0001', '咸阳湖景区', '108.7178643252', '34.330173916406', '陕西省咸阳市渭城区渭阳中路统一广场', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=0a529d4f3b3e39036fa3cca5&output=html&source=placeapi_v2', '0a529d4f3b3e39036fa3cca5');
INSERT INTO `t_venues` VALUES ('aff1f2836b744c8999ce20229e0dddb0', '0001', '启航GT健身会所', '108.81439337674', '34.30070330367', '后卫寨地铁A口（启航时代广场C座3楼）', null, '2.3', '573.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=4b2ce8d23973f58ff942b23f&output=html&source=placeapi_v2', '4b2ce8d23973f58ff942b23f');
INSERT INTO `t_venues` VALUES ('b11774ccbe5a45639a4c0dd2462e6551', '0001', '久久台球房', '121.54831956678', '29.874321642586', '府桥街14弄2号', '(0574)66666647,18067109237', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=c76b925f188f96786c3e1bbd&output=html&source=placeapi_v2', 'c76b925f188f96786c3e1bbd');
INSERT INTO `t_venues` VALUES ('b19942d2e6324bd194623b954171125c', '0001', '三枪桌球休闲吧', '108.86096971115', '34.223969119647', '鱼丁路甲子1号', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=a17907cd9d9a16e7abf0cd15&output=html&source=placeapi_v2', 'a17907cd9d9a16e7abf0cd15');
INSERT INTO `t_venues` VALUES ('b2cd93dcfe424ef58e8d0e6b124cde45', '0001', '城市运动公园-乒乓球室', '108.94631993672', '34.345342291502', '未央区城市运动公园东门体育场3号门内', '(029)86402898', '4.5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=8a5e03d1ea69fccc882fb56f&output=html&source=placeapi_v2', '8a5e03d1ea69fccc882fb56f');
INSERT INTO `t_venues` VALUES ('b525d08307544929b459e17d6891a94d', '0001', '根源水上健身俱乐部', '116.40935038085', '39.902139698487', '前门东大街3号首都大酒店1楼游泳池', null, '5', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=be9f09a701a4960c3a13fdf4&output=html&source=placeapi_v2', 'be9f09a701a4960c3a13fdf4');
INSERT INTO `t_venues` VALUES ('b5daa6976bc54d378dc268a10abc6d92', '0001', '禅静瑜伽(紫薇田园店)', '108.87118993608', '34.17566586337', '博士路北口紫薇田园都市F区商业步行街C11-80快乐城堡4楼', '(029)68843170', '4.6', '69.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=2841ff96ce44fa0af822138a&output=html&source=placeapi_v2', '2841ff96ce44fa0af822138a');
INSERT INTO `t_venues` VALUES ('b5eeacba1bd342cfa850bf8526f9275b', '0001', '大满贯棋牌·台球', '119.30018946346', '26.07412965354', '鼓楼区斗西路14号黎明戴斯酒店旁', '(0591)88376777', '4.4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=15a935f59817afcf17c8f67c&output=html&source=placeapi_v2', '15a935f59817afcf17c8f67c');
INSERT INTO `t_venues` VALUES ('b63c2a84503e4424af7b02cb31da0995', '0001', '首创天喜春分健身会所', '116.4644273171', '39.919082009176', '朝阳区北京市朝阳区朝阳路139号院4号楼首创天禧大厦2层春分健身(泰康金融旁边，央视对面，迪拉索家居旁)', null, '1', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=f9bdcd8b1fd2b924c2f1cfe0&output=html&source=placeapi_v2', 'f9bdcd8b1fd2b924c2f1cfe0');
INSERT INTO `t_venues` VALUES ('b7999117af104e6fac1cf7c5c94ca0a6', '0001', '陕西服装艺术职业学院-体育场', '108.71560830499', '34.301990704672', '陕西省咸阳市秦都区同德路', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=ee119378981d88eb82288a60&output=html&source=placeapi_v2', 'ee119378981d88eb82288a60');
INSERT INTO `t_venues` VALUES ('bb8e5835cfd44bbfa213c47971ae76ba', '0001', '首创会中国区VIP中心', '116.46243534752', '39.919695808467', '北京市朝阳区东三环北路辅路', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=6aff5fce6e59e1ee1e1d1166&output=html&source=placeapi_v2', '6aff5fce6e59e1ee1e1d1166');
INSERT INTO `t_venues` VALUES ('be06e7ba0b224dd0a6075b247f881e86', '0001', '黑客桌球', '108.86053219745', '34.236850583319', '富裕路中段西安外事学院北教学区斜对面', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=7683cef71bf328e9f842b2e2&output=html&source=placeapi_v2', '7683cef71bf328e9f842b2e2');
INSERT INTO `t_venues` VALUES ('c172b339931646019b005b4797afcc6a', '0001', '桌客台球连锁(鼓楼店)', '121.54826242172', '29.874312274969', '海曙区府桥街14-1号', '18067109237', '4.4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=8943dcc77ef10c485e0d02bb&output=html&source=placeapi_v2', '8943dcc77ef10c485e0d02bb');
INSERT INTO `t_venues` VALUES ('c3c3404a128b410d99186c8049d7eb8f', '0001', 'Kava Coffee', '108.94434026607', '34.346724718729', '城市运动公园北门内主场馆西北角（海荣名城对面）', '(029)89606699', '4.4', '43.50', '0', '0', 'http://api.map.baidu.com/place/detail?uid=a0680ba9c3970b0f81288a15&output=html&source=placeapi_v2', 'a0680ba9c3970b0f81288a15');
INSERT INTO `t_venues` VALUES ('c864e407c28e44149cbe6ac042b5d3e8', '0001', '西安豪华美居人民大厦-台球室', '108.95934015512', '34.266250412137', '东新街319号西安豪华美居人民大厦6层', '(029)87928888', null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=93d10cd759519c40f9dc8594&output=html&source=placeapi_v2', '93d10cd759519c40f9dc8594');
INSERT INTO `t_venues` VALUES ('cc15add433fc4e1cafb9cd47445c5fb9', '0001', '奥罗国际大酒店-游泳池', '108.95369026332', '34.262920385866', '南新街30号奥罗国际大酒店3层', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=94490a19b7a798c8220262ef&output=html&source=placeapi_v2', '94490a19b7a798c8220262ef');
INSERT INTO `t_venues` VALUES ('cc86ee43d654487aa6e4d2d7c840b850', '0001', '金泰·丝路花城会所', '108.73240586719', '34.317122183236', '金泰·丝路花城附近', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=dd889ea9756ee179aecb66d4&output=html&source=placeapi_v2', 'dd889ea9756ee179aecb66d4');
INSERT INTO `t_venues` VALUES ('cd3af84ba34d4c47bdeeec883feaad85', '0001', '启迪高尔夫运动会所', '108.7280892946', '34.314399596797', '世纪大道中段55号', '(029)33190358', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=19019971a5743ea7dbd891b0&output=html&source=placeapi_v2', '19019971a5743ea7dbd891b0');
INSERT INTO `t_venues` VALUES ('cd4000c073f44699a7e6db15f0a93a37', '0001', '西安市全民健身中心', '108.95793010296', '34.266820443698', '西五路26号西安体育场内', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=af86d356e4d9a3eaa104647b&output=html&source=placeapi_v2', 'af86d356e4d9a3eaa104647b');
INSERT INTO `t_venues` VALUES ('cfe5b77b2173464f8d2c8c6ecbd5bfe7', '0001', '21世纪舞蹈学苑(君雅舞蹈俱乐部)', '121.35254304964', '31.180679482304', '航东路788弄29号2楼君雅舞蹈俱乐部(沪青平公路口)', '(021)34307390', '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=3f2707258695be8579dbd20d&output=html&source=placeapi_v2', '3f2707258695be8579dbd20d');
INSERT INTO `t_venues` VALUES ('d2ede10b591e46c9b0d7d0a7b30f219d', '0001', '永昌跆拳道', '108.92023991521', '34.259098717031', '英达大厦13层1303室', '18049048495', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=ede45069109476186f3e1b09&output=html&source=placeapi_v2', 'ede45069109476186f3e1b09');
INSERT INTO `t_venues` VALUES ('d4f6c3e6531141f080d586f6aaa6050c', '0001', '泸登堡酒店-健身房', '108.87003039192', '34.165099997031', '广场环道与西沣辅道交叉口东200米泸登堡酒店', null, '2.4', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=34602807b7b882e73686f4bc&output=html&source=placeapi_v2', '34602807b7b882e73686f4bc');
INSERT INTO `t_venues` VALUES ('d9d775a701dd4a3c9fb78a1d5205546c', '0001', '龙柏饭店-游泳池', '121.35955950617', '31.189170009021', '虹桥路2419号龙柏饭店', '(021)62688868', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=76e3f6bb9602cc92354aaede&output=html&source=placeapi_v2', '76e3f6bb9602cc92354aaede');
INSERT INTO `t_venues` VALUES ('dd2cd5f0a66544d79cc2366d0a8d3300', '0001', '泸登堡酒店-游泳池', '108.87003039192', '34.165099997031', '西安市长安区', null, '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=6f363bf762411d5ccb213d1e&output=html&source=placeapi_v2', '6f363bf762411d5ccb213d1e');
INSERT INTO `t_venues` VALUES ('e074609714694a7b8efe63cdbdb24e63', '0001', '川奇跆拳道俱乐部(乌山店)', '119.29923849125', '26.072358249974', '乌山路口加洋路87号', '13405950002', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=c74498e00873350ccd04ef3f&output=html&source=placeapi_v2', 'c74498e00873350ccd04ef3f');
INSERT INTO `t_venues` VALUES ('e153b47dd795433284cc8859890efa2e', '0001', '天佑国际酒店-健身房', '108.88903798069', '34.255771759922', '西二环南段12号土门什字南200米天佑国际酒店11层', '(029)87918888', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=d44a167591d628f49122e058&output=html&source=placeapi_v2', 'd44a167591d628f49122e058');
INSERT INTO `t_venues` VALUES ('e27d8f75cb4d47e59dac3850f4e26e18', '0001', '黑带武馆', '108.93673700419', '34.252327231441', '朱雀门里太阳庙门26号路南', '(029)87630014', '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=fcd91901ff2d75045d17c365&output=html&source=placeapi_v2', 'fcd91901ff2d75045d17c365');
INSERT INTO `t_venues` VALUES ('e3e8cd15b23847279b8674e14c355294', '0001', '爱多多婴幼儿游泳生活馆', '108.85342378718', '34.198517344386', '高新区丈八西路余家庄11排', null, null, '0.00', null, '0', 'http://api.map.baidu.com/place/detail?uid=1d8522184bb31c148d772722&output=html&source=placeapi_v2', '1d8522184bb31c148d772722');
INSERT INTO `t_venues` VALUES ('ed2c4e9ee83548cb8933b2e81cf73bce', '0001', '皇家桌球会所', '108.86578017494', '34.224619586126', '西安市雁塔区', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=5516ba38fe05bb12b45f1e31&output=html&source=placeapi_v2', '5516ba38fe05bb12b45f1e31');
INSERT INTO `t_venues` VALUES ('f12c8d1532894e85a5b4b8c0f5dd0220', '0001', '天竺瑜伽西大街形象店', '108.92945023425', '34.259180080799', '西大街246号宏府安定门广场4号楼4-453', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=d6fdc6ec3795f3bc593ac8f9&output=html&source=placeapi_v2', 'd6fdc6ec3795f3bc593ac8f9');
INSERT INTO `t_venues` VALUES ('f1684b667f5047d28bdae902ba7ab8c7', '0001', '名客台球俱乐部', '108.86374033739', '34.23317872135', '鱼斗路88号凯星购物广场6层', '18629405155', '3.7', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=c8c7e63a5bac72b0e50738a4&output=html&source=placeapi_v2', 'c8c7e63a5bac72b0e50738a4');
INSERT INTO `t_venues` VALUES ('f384dab992f5457783be46955bdf4551', '0001', '大满贯会所', '119.29958658329', '26.074043872137', '斗西路14号黎明戴斯酒店旁', '(0591)88376777', '3.9', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=cd2cd216e790643e3f9a5e6d&output=html&source=placeapi_v2', 'cd2cd216e790643e3f9a5e6d');
INSERT INTO `t_venues` VALUES ('f3d26be7807d4eeea8e608fc8b0ea55f', '0001', '咸阳市游泳馆', '108.70649978063', '34.328332178717', '渭阳中路副7号', '(029)33212815', '4.2', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=55fa2c0b0f32272d1ce999e9&output=html&source=placeapi_v2', '55fa2c0b0f32272d1ce999e9');
INSERT INTO `t_venues` VALUES ('f575370663a84afbb4b1b72b6708539f', '0001', '天明桌球', '108.86405003445', '34.234554857395', '鱼斗路97附近', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=d51335655fc98df7843304ef&output=html&source=placeapi_v2', 'd51335655fc98df7843304ef');
INSERT INTO `t_venues` VALUES ('f7034459350b43558fc9788591ce197e', '0001', '佳明康视青少年健眼中心（福建加盟店）', '119.29289776918', '26.076273152411', '安泰街道道山路305号乌山园景3#06店(乌山园景)', '(0591)87559003', '5', '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=dd9392ac416b51ad7dc876a5&output=html&source=placeapi_v2', 'dd9392ac416b51ad7dc876a5');
INSERT INTO `t_venues` VALUES ('f8f5d6902c42491889d23f057e46d3ee', '0001', '华威国际酒店-康乐中心', '108.95619148267', '34.261530541462', '炭市街3号华威国际酒店内', '(029)87446666', null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=23f963de201632174afd3f87&output=html&source=placeapi_v2', '23f963de201632174afd3f87');
INSERT INTO `t_venues` VALUES ('f94dc68789e14101b2721de267875ce0', '0001', '青韵瑜伽', '108.83140442913', '34.289156859603', '双拥路金桥国际B901室（李记搅团9楼）', '15002989181', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=0ce0d75b4c2b046ed8d8910f&output=html&source=placeapi_v2', '0ce0d75b4c2b046ed8d8910f');
INSERT INTO `t_venues` VALUES ('f9fe0dfd40c44119b359d861df0d663d', '0001', '启迪运动会所', '108.73179962618', '34.323318186313', '牛家村', null, null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=ea2be33c8c9da198d2f49efe&output=html&source=placeapi_v2', 'ea2be33c8c9da198d2f49efe');
INSERT INTO `t_venues` VALUES ('fa094295b5e9479fa6e575b281ea48ce', '0001', '首都大酒店-游泳池', '116.40950123034', '39.90142776031', '前门东大街3号首都大酒店A座1层康体中心内', '(010)58159988', '4.7', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=75036835e80eceb65e0d0213&output=html&source=placeapi_v2', '75036835e80eceb65e0d0213');
INSERT INTO `t_venues` VALUES ('fb1ef70241b846218c47e7c0e9c600b1', '0001', '轮舞飞翔轮滑俱乐部', '121.5505823346', '29.87715315865', '鼓楼街道解放北路新金穗138号B座6层(中山广场)', '13252428108', null, '0.00', '0', '0', 'http://api.map.baidu.com/place/detail?uid=46bc6af1193babcc2d4733db&output=html&source=placeapi_v2', '46bc6af1193babcc2d4733db');
INSERT INTO `t_venues` VALUES ('fdb694f2457a44b587addcd90992c955', '0001', '西安市足球运动管理中心', '108.95883719131', '34.266442930114', '尚德路66号西安豪华美居人民大厦附近', null, null, '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=88b10d09e6e09a3440afe684&output=html&source=placeapi_v2', '88b10d09e6e09a3440afe684');
INSERT INTO `t_venues` VALUES ('ff1b6cd6574a45e38f92b0640e671f14', '0001', '咸阳职业技术学院-体育场', '108.73550127938', '34.295868079355', '仪祉大道与康乐路交叉口西北150米', null, '3.7', '0.00', null, null, 'http://api.map.baidu.com/place/detail?uid=e81282b3c63f08df95f08c6f&output=html&source=placeapi_v2', 'e81282b3c63f08df95f08c6f');
