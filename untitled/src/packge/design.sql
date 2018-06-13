/*
Navicat MySQL Data Transfer

Source Server         : mysql（online）
Source Server Version : 50552
Source Host           : localhost:3306
Source Database       : design

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2018-06-13 13:02:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `userid` varchar(20) NOT NULL,
  `optionid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('admin', '151');
INSERT INTO `answer` VALUES ('admin', '154');
INSERT INTO `answer` VALUES ('admin', '155');
INSERT INTO `answer` VALUES ('00000', '151');
INSERT INTO `answer` VALUES ('00000', '155');
INSERT INTO `answer` VALUES ('00000', '156');
INSERT INTO `answer` VALUES ('1100000', '152');
INSERT INTO `answer` VALUES ('1100000', '154');
INSERT INTO `answer` VALUES ('1100000', '155');
INSERT INTO `answer` VALUES ('1100000', '207');
INSERT INTO `answer` VALUES ('1100000', '210');
INSERT INTO `answer` VALUES ('1100000', '211');
INSERT INTO `answer` VALUES ('1100000', '214');
INSERT INTO `answer` VALUES ('1100000', '159');
INSERT INTO `answer` VALUES ('1100000', '165');
INSERT INTO `answer` VALUES ('1100000', '216');
INSERT INTO `answer` VALUES ('1100000', '219');
INSERT INTO `answer` VALUES ('1100000', '222');
INSERT INTO `answer` VALUES ('1100000', '224');
INSERT INTO `answer` VALUES ('1100000', '227');
INSERT INTO `answer` VALUES ('1100000', '151');
INSERT INTO `answer` VALUES ('1100000', '154');
INSERT INTO `answer` VALUES ('1100000', '151');
INSERT INTO `answer` VALUES ('100860000', '195');
INSERT INTO `answer` VALUES ('100860000', '199');
INSERT INTO `answer` VALUES ('100860000', '194');
INSERT INTO `answer` VALUES ('100860000', '198');
INSERT INTO `answer` VALUES ('100860000', '199');
INSERT INTO `answer` VALUES ('1100000', '162');
INSERT INTO `answer` VALUES ('1100000', '235');
INSERT INTO `answer` VALUES ('1100000', '238');
INSERT INTO `answer` VALUES ('1100000', '242');
INSERT INTO `answer` VALUES ('1100000', '245');
INSERT INTO `answer` VALUES ('1100000', '250');
INSERT INTO `answer` VALUES ('1100001', '235');
INSERT INTO `answer` VALUES ('1100001', '237');
INSERT INTO `answer` VALUES ('1100001', '243');
INSERT INTO `answer` VALUES ('1100001', '247');
INSERT INTO `answer` VALUES ('1100001', '248');
INSERT INTO `answer` VALUES ('1100002', '235');
INSERT INTO `answer` VALUES ('1100002', '241');
INSERT INTO `answer` VALUES ('1100002', '242');
INSERT INTO `answer` VALUES ('1100002', '246');
INSERT INTO `answer` VALUES ('1100002', '251');
INSERT INTO `answer` VALUES ('1100003', '236');
INSERT INTO `answer` VALUES ('1100003', '237');
INSERT INTO `answer` VALUES ('1100003', '239');
INSERT INTO `answer` VALUES ('1100003', '242');
INSERT INTO `answer` VALUES ('1100003', '246');
INSERT INTO `answer` VALUES ('1100003', '250');
INSERT INTO `answer` VALUES ('1100000', '195');
INSERT INTO `answer` VALUES ('1100000', '198');
INSERT INTO `answer` VALUES ('1100000', '182');
INSERT INTO `answer` VALUES ('1100000', '186');

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `couponsid` int(20) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `amount` int(10) NOT NULL,
  `customerid` varchar(10) NOT NULL,
  PRIMARY KEY (`couponsid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES ('1', '1', '9', '100860000');
INSERT INTO `coupons` VALUES ('2', '0', '5', '100860000');
INSERT INTO `coupons` VALUES ('4', '1', '8', '100860000');
INSERT INTO `coupons` VALUES ('5', '0', '20', '100860000');
INSERT INTO `coupons` VALUES ('6', '0', '10', '100860000');
INSERT INTO `coupons` VALUES ('7', '0', '1', 'admin');
INSERT INTO `coupons` VALUES ('8', '1', '8', 'admin');
INSERT INTO `coupons` VALUES ('9', '0', '5', '00000');
INSERT INTO `coupons` VALUES ('10', '1', '9', 'sunjie');
INSERT INTO `coupons` VALUES ('11', '0', '10', '100861111');
INSERT INTO `coupons` VALUES ('12', '1', '9', '100861111');
INSERT INTO `coupons` VALUES ('13', '1', '9', '100860003');
INSERT INTO `coupons` VALUES ('14', '0', '20', '100860003');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customerid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `managername` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `storeurl` varchar(50) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('100860000', '聚义日用店铺', '宋江', '17806850000', '123456@163.com', 'licaijj.tmall.com');
INSERT INTO `customers` VALUES ('100860001', '贝之语珠宝店', '戴戴', '17826850001', '123456@163.com', 'shop144611361.taobao.com');
INSERT INTO `customers` VALUES ('100860003', '海外精品店', '马可波罗', '17812345678', 'make@163.com', 'metro.tmall.hk');
INSERT INTO `customers` VALUES ('100861111', '华为手机店铺', '宋江', '178268574130000', '1111@163.com', 'mowensm.tmall.com');
INSERT INTO `customers` VALUES ('sunjie', '黛米珠宝', '孙杰', '17826857413', 'sunjie_peace@163.com', 'daimi.tmall.com');

-- ----------------------------
-- Table structure for getcoupons
-- ----------------------------
DROP TABLE IF EXISTS `getcoupons`;
CREATE TABLE `getcoupons` (
  `userid` varchar(20) NOT NULL,
  `couponsid` int(20) NOT NULL,
  `finaldate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of getcoupons
-- ----------------------------
INSERT INTO `getcoupons` VALUES ('1', '1', '2017-12-04');
INSERT INTO `getcoupons` VALUES ('1', '1', '2017-12-04');
INSERT INTO `getcoupons` VALUES ('admin', '6', '2017-11-30');
INSERT INTO `getcoupons` VALUES ('1100000', '6', '2018-12-01');
INSERT INTO `getcoupons` VALUES ('admin', '6', '2018-12-01');
INSERT INTO `getcoupons` VALUES ('1100000', '6', '2018-12-31');
INSERT INTO `getcoupons` VALUES ('1100000', '5', '2017-11-30');
INSERT INTO `getcoupons` VALUES ('1100000', '6', '2018-12-30');
INSERT INTO `getcoupons` VALUES ('1100000', '10', '2018-01-31');
INSERT INTO `getcoupons` VALUES ('1100000', '11', '2018-01-25');
INSERT INTO `getcoupons` VALUES ('1100000', '6', '2018-12-01');
INSERT INTO `getcoupons` VALUES ('1100000', '6', '2018-12-01');
INSERT INTO `getcoupons` VALUES ('100860000', '6', '2018-12-01');
INSERT INTO `getcoupons` VALUES ('100860000', '6', '2018-12-01');
INSERT INTO `getcoupons` VALUES ('1100000', '4', '2018-11-30');
INSERT INTO `getcoupons` VALUES ('1100000', '13', '2018-01-31');
INSERT INTO `getcoupons` VALUES ('1100001', '13', '2018-01-31');
INSERT INTO `getcoupons` VALUES ('1100002', '13', '2018-01-31');
INSERT INTO `getcoupons` VALUES ('1100003', '13', '2018-01-31');
INSERT INTO `getcoupons` VALUES ('1100000', '6', '2018-12-01');
INSERT INTO `getcoupons` VALUES ('1100000', '5', '2018-11-30');

-- ----------------------------
-- Table structure for option
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option` (
  `optionid` int(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(50) NOT NULL,
  `topicid` int(20) NOT NULL,
  `orderid` varchar(20) NOT NULL,
  PRIMARY KEY (`optionid`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of option
-- ----------------------------
INSERT INTO `option` VALUES ('49', '钻石类', '57', '1');
INSERT INTO `option` VALUES ('50', '金银类', '57', '2');
INSERT INTO `option` VALUES ('51', '珍珠类', '57', '3');
INSERT INTO `option` VALUES ('52', '男', '58', '1');
INSERT INTO `option` VALUES ('53', '女', '58', '2');
INSERT INTO `option` VALUES ('54', 'ios', '59', '1');
INSERT INTO `option` VALUES ('55', 'Android', '59', '2');
INSERT INTO `option` VALUES ('56', '其他', '59', '3');
INSERT INTO `option` VALUES ('57', '1', '60', '1');
INSERT INTO `option` VALUES ('58', '2', '60', '2');
INSERT INTO `option` VALUES ('59', '3', '60', '3');
INSERT INTO `option` VALUES ('60', '选项', '61', '1');
INSERT INTO `option` VALUES ('90', '5个月', '75', '1');
INSERT INTO `option` VALUES ('91', '5-10个月', '75', '2');
INSERT INTO `option` VALUES ('92', '更大', '75', '3');
INSERT INTO `option` VALUES ('93', '2000元', '76', '1');
INSERT INTO `option` VALUES ('94', '2000-5000元', '76', '2');
INSERT INTO `option` VALUES ('95', '5000元以上', '76', '3');
INSERT INTO `option` VALUES ('114', '男', '137', '1');
INSERT INTO `option` VALUES ('115', '女', '137', '2');
INSERT INTO `option` VALUES ('116', '华为', '138', '1');
INSERT INTO `option` VALUES ('117', '小米', '138', '2');
INSERT INTO `option` VALUES ('118', '三星', '138', '3');
INSERT INTO `option` VALUES ('119', '苹果', '138', '4');
INSERT INTO `option` VALUES ('120', '其他', '138', '5');
INSERT INTO `option` VALUES ('121', '是，感觉很划算', '139', '1');
INSERT INTO `option` VALUES ('122', '否，这全是商家的营销套路', '139', '2');
INSERT INTO `option` VALUES ('123', 'boy', '140', '1');
INSERT INTO `option` VALUES ('124', 'girl', '140', '2');
INSERT INTO `option` VALUES ('125', '半年', '141', '1');
INSERT INTO `option` VALUES ('126', '一年', '141', '2');
INSERT INTO `option` VALUES ('127', '三年', '141', '3');
INSERT INTO `option` VALUES ('128', '更久', '141', '4');
INSERT INTO `option` VALUES ('129', '1千元左右', '142', '1');
INSERT INTO `option` VALUES ('130', '2千元左右', '142', '2');
INSERT INTO `option` VALUES ('131', '4千左右', '142', '3');
INSERT INTO `option` VALUES ('132', '5千以上', '142', '4');
INSERT INTO `option` VALUES ('133', '18岁以下', '143', '1');
INSERT INTO `option` VALUES ('134', '18-35岁', '143', '2');
INSERT INTO `option` VALUES ('135', '35岁以上', '143', '3');
INSERT INTO `option` VALUES ('136', '扛过去，能不吃药就不吃药', '144', '1');
INSERT INTO `option` VALUES ('137', '自己买些日用药品', '144', '2');
INSERT INTO `option` VALUES ('138', '去医院检查', '144', '3');
INSERT INTO `option` VALUES ('139', '男', '145', '1');
INSERT INTO `option` VALUES ('140', '女', '145', '2');
INSERT INTO `option` VALUES ('141', '选项', '146', '1');
INSERT INTO `option` VALUES ('142', '选项', '146', '2');
INSERT INTO `option` VALUES ('143', '选项', '146', '3');
INSERT INTO `option` VALUES ('144', '选项', '147', '1');
INSERT INTO `option` VALUES ('145', '选项', '147', '2');
INSERT INTO `option` VALUES ('146', '选项', '147', '3');
INSERT INTO `option` VALUES ('147', '选项', '148', '1');
INSERT INTO `option` VALUES ('148', '选项', '148', '2');
INSERT INTO `option` VALUES ('149', '选项', '148', '3');
INSERT INTO `option` VALUES ('150', '2', '149', '1');
INSERT INTO `option` VALUES ('151', '3', '149', '2');
INSERT INTO `option` VALUES ('152', '4及以上', '149', '3');
INSERT INTO `option` VALUES ('153', '电脑', '150', '1');
INSERT INTO `option` VALUES ('154', '电视', '150', '2');
INSERT INTO `option` VALUES ('155', '空调', '150', '3');
INSERT INTO `option` VALUES ('156', '投影仪', '150', '4');
INSERT INTO `option` VALUES ('157', '其他', '150', '5');
INSERT INTO `option` VALUES ('158', '选项', '151', '1');
INSERT INTO `option` VALUES ('159', '选项', '151', '2');
INSERT INTO `option` VALUES ('160', '选项', '151', '3');
INSERT INTO `option` VALUES ('161', '选项', '152', '1');
INSERT INTO `option` VALUES ('162', '选项', '152', '2');
INSERT INTO `option` VALUES ('163', '选项', '152', '3');
INSERT INTO `option` VALUES ('164', '选项', '153', '1');
INSERT INTO `option` VALUES ('165', '选项', '153', '2');
INSERT INTO `option` VALUES ('166', '选项', '153', '3');
INSERT INTO `option` VALUES ('167', '选项', '154', '1');
INSERT INTO `option` VALUES ('168', '选项', '154', '2');
INSERT INTO `option` VALUES ('169', '选项', '154', '3');
INSERT INTO `option` VALUES ('170', '选项', '155', '1');
INSERT INTO `option` VALUES ('171', '选项', '155', '2');
INSERT INTO `option` VALUES ('172', '选项', '155', '3');
INSERT INTO `option` VALUES ('173', '选项', '156', '1');
INSERT INTO `option` VALUES ('174', '选项', '156', '2');
INSERT INTO `option` VALUES ('175', '选项', '156', '3');
INSERT INTO `option` VALUES ('176', '选项', '157', '1');
INSERT INTO `option` VALUES ('177', '选项', '157', '2');
INSERT INTO `option` VALUES ('178', '选项', '157', '3');
INSERT INTO `option` VALUES ('179', '选项', '158', '1');
INSERT INTO `option` VALUES ('180', '选项', '158', '2');
INSERT INTO `option` VALUES ('181', '选项', '158', '3');
INSERT INTO `option` VALUES ('182', '选项', '159', '1');
INSERT INTO `option` VALUES ('183', '选项', '159', '2');
INSERT INTO `option` VALUES ('184', '选项', '159', '3');
INSERT INTO `option` VALUES ('185', '选项', '160', '1');
INSERT INTO `option` VALUES ('186', '选项', '160', '2');
INSERT INTO `option` VALUES ('187', '选项', '160', '3');
INSERT INTO `option` VALUES ('188', '选项', '161', '1');
INSERT INTO `option` VALUES ('189', '选项', '161', '2');
INSERT INTO `option` VALUES ('190', '选项', '161', '3');
INSERT INTO `option` VALUES ('191', '选项', '162', '1');
INSERT INTO `option` VALUES ('192', '选项', '162', '2');
INSERT INTO `option` VALUES ('193', '选项', '162', '3');
INSERT INTO `option` VALUES ('194', '选项', '163', '1');
INSERT INTO `option` VALUES ('195', '选项', '163', '2');
INSERT INTO `option` VALUES ('196', '选项', '163', '3');
INSERT INTO `option` VALUES ('197', '选项', '164', '1');
INSERT INTO `option` VALUES ('198', '选项', '164', '2');
INSERT INTO `option` VALUES ('199', '选项', '164', '3');
INSERT INTO `option` VALUES ('200', '选项', '165', '1');
INSERT INTO `option` VALUES ('201', '选项', '165', '2');
INSERT INTO `option` VALUES ('202', '选项', '165', '3');
INSERT INTO `option` VALUES ('203', '选项', '166', '1');
INSERT INTO `option` VALUES ('204', '选项', '166', '2');
INSERT INTO `option` VALUES ('205', '选项', '166', '3');
INSERT INTO `option` VALUES ('206', '经济型', '167', '1');
INSERT INTO `option` VALUES ('207', '品牌性', '167', '2');
INSERT INTO `option` VALUES ('208', '无所谓', '167', '3');
INSERT INTO `option` VALUES ('209', '运动服', '168', '1');
INSERT INTO `option` VALUES ('210', '球鞋', '168', '2');
INSERT INTO `option` VALUES ('211', '背包', '168', '3');
INSERT INTO `option` VALUES ('212', '其他', '168', '4');
INSERT INTO `option` VALUES ('213', '比较经济', '169', '1');
INSERT INTO `option` VALUES ('214', '适中', '169', '2');
INSERT INTO `option` VALUES ('215', '太贵，要吃土', '169', '3');
INSERT INTO `option` VALUES ('216', '男', '170', '1');
INSERT INTO `option` VALUES ('217', '女', '170', '2');
INSERT INTO `option` VALUES ('218', '3件以下', '171', '1');
INSERT INTO `option` VALUES ('219', '3-5件', '171', '2');
INSERT INTO `option` VALUES ('220', '5件及以上', '171', '3');
INSERT INTO `option` VALUES ('221', '还行，可以接受', '172', '1');
INSERT INTO `option` VALUES ('222', '比较精致', '172', '2');
INSERT INTO `option` VALUES ('223', '高端质量', '172', '3');
INSERT INTO `option` VALUES ('224', '男', '173', '1');
INSERT INTO `option` VALUES ('225', '女', '173', '2');
INSERT INTO `option` VALUES ('226', '1-2台', '174', '1');
INSERT INTO `option` VALUES ('227', '3-4台', '174', '2');
INSERT INTO `option` VALUES ('228', '4台以上', '174', '3');
INSERT INTO `option` VALUES ('229', '选项', '175', '1');
INSERT INTO `option` VALUES ('230', '选项', '175', '2');
INSERT INTO `option` VALUES ('231', '选项', '175', '3');
INSERT INTO `option` VALUES ('232', '选项', '176', '1');
INSERT INTO `option` VALUES ('233', '选项', '176', '2');
INSERT INTO `option` VALUES ('234', '选项', '176', '3');
INSERT INTO `option` VALUES ('235', '男', '177', '1');
INSERT INTO `option` VALUES ('236', '女', '177', '2');
INSERT INTO `option` VALUES ('237', '甜口', '178', '1');
INSERT INTO `option` VALUES ('238', '浓郁', '178', '2');
INSERT INTO `option` VALUES ('239', '优雅', '178', '3');
INSERT INTO `option` VALUES ('240', '细腻', '178', '4');
INSERT INTO `option` VALUES ('241', '适用性', '178', '5');
INSERT INTO `option` VALUES ('242', '有', '179', '1');
INSERT INTO `option` VALUES ('243', '没有', '179', '2');
INSERT INTO `option` VALUES ('244', '柔弱无力', '180', '1');
INSERT INTO `option` VALUES ('245', '酒味浓郁', '180', '2');
INSERT INTO `option` VALUES ('246', '优雅细腻', '180', '3');
INSERT INTO `option` VALUES ('247', '暂未尝试', '180', '4');
INSERT INTO `option` VALUES ('248', '1年以下', '181', '1');
INSERT INTO `option` VALUES ('249', '1~3年', '181', '2');
INSERT INTO `option` VALUES ('250', '3~5年', '181', '3');
INSERT INTO `option` VALUES ('251', '5年以上', '181', '4');
INSERT INTO `option` VALUES ('252', '选项', '182', '1');
INSERT INTO `option` VALUES ('253', '选项', '182', '2');
INSERT INTO `option` VALUES ('254', '选项', '182', '3');
INSERT INTO `option` VALUES ('255', '选项', '183', '1');
INSERT INTO `option` VALUES ('256', '选项', '183', '2');
INSERT INTO `option` VALUES ('257', '选项', '183', '3');
INSERT INTO `option` VALUES ('258', '选项', '184', '1');
INSERT INTO `option` VALUES ('259', '选项', '184', '2');
INSERT INTO `option` VALUES ('260', '选项', '184', '3');
INSERT INTO `option` VALUES ('261', '选项', '184', '4');

-- ----------------------------
-- Table structure for questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire` (
  `qnid` int(20) NOT NULL AUTO_INCREMENT,
  `qnname` varchar(40) NOT NULL,
  `typeid` int(2) NOT NULL,
  `createrid` varchar(20) NOT NULL,
  `createdate` date NOT NULL,
  PRIMARY KEY (`qnid`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire
-- ----------------------------
INSERT INTO `questionnaire` VALUES ('186', '珠宝问卷调查', '1', 'admin', '2017-11-11');
INSERT INTO `questionnaire` VALUES ('187', '手机买卖调查', '2', 'admin', '2017-11-12');
INSERT INTO `questionnaire` VALUES ('234', '新一代妈妈育儿调查表', '3', 'admin', '2017-11-16');
INSERT INTO `questionnaire` VALUES ('235', '就医资费情况调查表', '6', 'admin', '2017-11-18');
INSERT INTO `questionnaire` VALUES ('236', '珠宝商家使用调查', '1', '10086', '2017-11-19');
INSERT INTO `questionnaire` VALUES ('257', '双11家电选购调查', '4', '10086', '2017-11-19');
INSERT INTO `questionnaire` VALUES ('288', '双11购买手机手机情况调查', '2', '10086', '2017-11-19');
INSERT INTO `questionnaire` VALUES ('289', '手机使用调查', '2', '10086', '2017-11-19');
INSERT INTO `questionnaire` VALUES ('292', '实施', '1', 'admin', '2017-11-20');
INSERT INTO `questionnaire` VALUES ('293', '测试', '2', 'admin', '2017-11-21');
INSERT INTO `questionnaire` VALUES ('294', '当下家电使用调查', '4', '100860000', '2017-11-25');
INSERT INTO `questionnaire` VALUES ('295', '测试', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('296', '测试2', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('297', '测试3', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('298', '测试4', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('299', '测试5', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('300', '测试6', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('301', '测试7', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('302', '测试8', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('303', '测试9', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('304', '测试10', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('305', '测试11', '1', '100860000', '2017-11-27');
INSERT INTO `questionnaire` VALUES ('306', '耐克新品推广活动', '5', '100860000', '2017-12-04');
INSERT INTO `questionnaire` VALUES ('307', '黛米口碑调查', '1', 'sunjie', '2017-12-04');
INSERT INTO `questionnaire` VALUES ('308', '华为手机调查', '2', '100861111', '2017-12-05');
INSERT INTO `questionnaire` VALUES ('309', '大', '1', '100861111', '2017-12-05');
INSERT INTO `questionnaire` VALUES ('310', '测试', '1', '100860000', '2017-12-19');
INSERT INTO `questionnaire` VALUES ('311', '违规问卷', '7', '100860000', '2017-12-20');
INSERT INTO `questionnaire` VALUES ('312', '意大利葡萄酒售前调查', '7', '100860003', '2017-12-20');
INSERT INTO `questionnaire` VALUES ('313', 'test', '2', '100860000', '2018-03-06');

-- ----------------------------
-- Table structure for quota
-- ----------------------------
DROP TABLE IF EXISTS `quota`;
CREATE TABLE `quota` (
  `qnid` int(20) NOT NULL,
  `enddate` date NOT NULL,
  `couponsid` int(20) NOT NULL,
  PRIMARY KEY (`qnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quota
-- ----------------------------
INSERT INTO `quota` VALUES ('186', '2018-11-01', '8');
INSERT INTO `quota` VALUES ('294', '2018-12-01', '6');
INSERT INTO `quota` VALUES ('295', '2018-11-30', '5');
INSERT INTO `quota` VALUES ('296', '2018-11-30', '4');
INSERT INTO `quota` VALUES ('297', '2018-12-30', '6');
INSERT INTO `quota` VALUES ('298', '2018-11-30', '5');
INSERT INTO `quota` VALUES ('299', '2018-11-29', '6');
INSERT INTO `quota` VALUES ('300', '2018-11-30', '5');
INSERT INTO `quota` VALUES ('301', '2018-11-29', '6');
INSERT INTO `quota` VALUES ('302', '2018-11-30', '5');
INSERT INTO `quota` VALUES ('303', '2018-11-30', '5');
INSERT INTO `quota` VALUES ('304', '2018-12-01', '6');
INSERT INTO `quota` VALUES ('306', '2018-12-31', '6');
INSERT INTO `quota` VALUES ('307', '2018-01-31', '10');
INSERT INTO `quota` VALUES ('308', '2018-01-25', '11');
INSERT INTO `quota` VALUES ('312', '2018-01-31', '13');
INSERT INTO `quota` VALUES ('313', '2018-03-15', '2');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topicid` int(50) NOT NULL AUTO_INCREMENT,
  `content` varchar(50) NOT NULL,
  `qnid` int(20) NOT NULL,
  `orderid` int(50) NOT NULL,
  `tixing` int(5) unsigned zerofill NOT NULL,
  PRIMARY KEY (`topicid`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('57', '你的喜欢类型', '186', '1', '00000');
INSERT INTO `topic` VALUES ('58', '你的性别', '186', '2', '00000');
INSERT INTO `topic` VALUES ('59', '你的手机系统', '187', '1', '00000');
INSERT INTO `topic` VALUES ('60', '你买过几台手机', '187', '2', '00000');
INSERT INTO `topic` VALUES ('75', '您当前的婴儿多大', '234', '1', '00000');
INSERT INTO `topic` VALUES ('76', '您每月在孩子身上的开销', '234', '2', '00001');
INSERT INTO `topic` VALUES ('137', '你的性别', '288', '1', '00000');
INSERT INTO `topic` VALUES ('138', '你比较青睐那些品牌的手机', '288', '2', '00001');
INSERT INTO `topic` VALUES ('139', '你是否享受到店家的双11折扣', '288', '3', '00000');
INSERT INTO `topic` VALUES ('140', '你的性别', '289', '1', '00000');
INSERT INTO `topic` VALUES ('141', '你大致多久换一次手机', '289', '2', '00000');
INSERT INTO `topic` VALUES ('142', '你比较青睐的手机价位', '289', '3', '00000');
INSERT INTO `topic` VALUES ('143', '你的年龄', '235', '1', '00000');
INSERT INTO `topic` VALUES ('144', '你经常对一些常规病（如感冒、发热），采取的措施有', '235', '2', '00001');
INSERT INTO `topic` VALUES ('145', '你的性别', '293', '1', '00000');
INSERT INTO `topic` VALUES ('146', '输入你的题目。', '293', '2', '00001');
INSERT INTO `topic` VALUES ('147', '输入你的题目。', '293', '3', '00000');
INSERT INTO `topic` VALUES ('148', '输入你的题目。', '293', '4', '00001');
INSERT INTO `topic` VALUES ('149', '你的家庭居住成员数量', '294', '1', '00000');
INSERT INTO `topic` VALUES ('150', '您的家庭有哪些家电', '294', '2', '00001');
INSERT INTO `topic` VALUES ('151', '输入你的题目。', '295', '1', '00000');
INSERT INTO `topic` VALUES ('152', '输入你的题目。', '296', '1', '00000');
INSERT INTO `topic` VALUES ('153', '输入你的题目。', '297', '1', '00000');
INSERT INTO `topic` VALUES ('154', '输入你的题目。', '298', '1', '00000');
INSERT INTO `topic` VALUES ('155', '输入你的题目。', '299', '1', '00000');
INSERT INTO `topic` VALUES ('156', '输入你的题目。', '300', '1', '00000');
INSERT INTO `topic` VALUES ('157', '输入你的题目。', '301', '1', '00000');
INSERT INTO `topic` VALUES ('158', '输入你的题目。', '301', '2', '00001');
INSERT INTO `topic` VALUES ('159', '输入你的题目。', '302', '1', '00000');
INSERT INTO `topic` VALUES ('160', '输入你的题目。', '302', '2', '00001');
INSERT INTO `topic` VALUES ('161', '输入你的题目。', '303', '1', '00000');
INSERT INTO `topic` VALUES ('162', '输入你的题目。', '303', '2', '00001');
INSERT INTO `topic` VALUES ('163', '输入你的题目。', '304', '1', '00000');
INSERT INTO `topic` VALUES ('164', '输入你的题目。', '304', '2', '00001');
INSERT INTO `topic` VALUES ('165', '输入你的题目。', '305', '1', '00000');
INSERT INTO `topic` VALUES ('166', '输入你的题目。', '305', '2', '00001');
INSERT INTO `topic` VALUES ('167', '你的穿衣观念', '306', '1', '00000');
INSERT INTO `topic` VALUES ('168', '你消费过那些耐克产品类型', '306', '2', '00001');
INSERT INTO `topic` VALUES ('169', '你觉得耐克的产品价格定位', '306', '3', '00000');
INSERT INTO `topic` VALUES ('170', '您的性别', '307', '1', '00000');
INSERT INTO `topic` VALUES ('171', '你买过黛米的产品的数量', '307', '2', '00001');
INSERT INTO `topic` VALUES ('172', '您觉得黛米的产品质量等级', '307', '3', '00000');
INSERT INTO `topic` VALUES ('173', '你的性别', '308', '1', '00000');
INSERT INTO `topic` VALUES ('174', '购买过华为手机的数量', '308', '2', '00001');
INSERT INTO `topic` VALUES ('175', '输入你的题目。', '311', '1', '00000');
INSERT INTO `topic` VALUES ('176', '输入你的题目。', '311', '2', '00001');
INSERT INTO `topic` VALUES ('177', '您的性别', '312', '1', '00000');
INSERT INTO `topic` VALUES ('178', '你习惯葡萄酒倾向于哪些特征？', '312', '2', '00001');
INSERT INTO `topic` VALUES ('179', '您买过本店的酒瓶吗？', '312', '3', '00000');
INSERT INTO `topic` VALUES ('180', '你觉得的本店的酒品品质如何？', '312', '4', '00000');
INSERT INTO `topic` VALUES ('181', '您的酒龄', '312', '5', '00000');
INSERT INTO `topic` VALUES ('182', '输入你的题目。', '313', '1', '00000');
INSERT INTO `topic` VALUES ('183', '输入你的题目。', '313', '2', '00001');
INSERT INTO `topic` VALUES ('184', '输入你的题目。', '313', '3', '00000');

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `typeid` int(20) NOT NULL,
  `typecontent` varchar(30) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', '珠宝类');
INSERT INTO `types` VALUES ('2', '手机类');
INSERT INTO `types` VALUES ('3', '母婴类');
INSERT INTO `types` VALUES ('4', '家电类');
INSERT INTO `types` VALUES ('5', '服装类');
INSERT INTO `types` VALUES ('6', '药品保健类');
INSERT INTO `types` VALUES ('7', '酒品香烟类');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(14) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(12) NOT NULL,
  `type` varchar(8) NOT NULL,
  `gender` varchar(4) NOT NULL,
  `date` date DEFAULT NULL,
  `flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('00005', '1', '张小明', '用户', '男', '2017-10-04', null);
INSERT INTO `user` VALUES ('00006', '1', '李小明', '用户', '男', '2017-10-18', null);
INSERT INTO `user` VALUES ('00007', '1', '李小明', '用户', '男', '2017-10-18', null);
INSERT INTO `user` VALUES ('00008', '123', '张小明', '用户', '男', '2017-10-18', null);
INSERT INTO `user` VALUES ('00009', '1', '李小明', '用户', '男', '2017-10-18', null);
INSERT INTO `user` VALUES ('100860000', '1', '宋江', '商家', '男', '2017-11-22', '1');
INSERT INTO `user` VALUES ('100860001', '1', '李刚', '商家', '男', '2017-11-23', '1');
INSERT INTO `user` VALUES ('100860003', '1', '马可波罗', '商家', '男', '2017-12-20', '1');
INSERT INTO `user` VALUES ('100861111', '1', '李小明', '商家', '男', '2017-12-05', '1');
INSERT INTO `user` VALUES ('1100000', '1', '李小明', '用户', '男', '2017-12-04', null);
INSERT INTO `user` VALUES ('1100001', '1', '张三丰', '用户', '男', '2017-12-20', null);
INSERT INTO `user` VALUES ('1100002', '1', '郭靖', '用户', '男', '2017-12-20', null);
INSERT INTO `user` VALUES ('1100003', '1', '黄蓉', '用户', '女', '2017-12-20', null);
INSERT INTO `user` VALUES ('admin', '1', '孙杰', '超级管理员', '男', null, '1');
INSERT INTO `user` VALUES ('sunjie', '1', '孙杰', '商家', '男', '2017-12-04', '1');
