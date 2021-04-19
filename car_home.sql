/*
Navicat MySQL Data Transfer

Source Server         : KD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : car_home

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-04-19 17:22:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agree
-- ----------------------------
DROP TABLE IF EXISTS `agree`;
CREATE TABLE `agree` (
  `essay_id` bigint(20) unsigned NOT NULL COMMENT '动态id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '点赞用户id',
  `create_time` varchar(255) NOT NULL COMMENT '点赞时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of agree
-- ----------------------------
INSERT INTO `agree` VALUES ('2', '3', '2020-11-17 19:57:26');
INSERT INTO `agree` VALUES ('3', '3', '2020-11-17 19:57:47');
INSERT INTO `agree` VALUES ('23', '3', '2021-03-19 19:08:21');
INSERT INTO `agree` VALUES ('20', '35', '2021-03-19 19:08:24');
INSERT INTO `agree` VALUES ('10', '3', '2021-03-22 11:22:37');
INSERT INTO `agree` VALUES ('11', '3', '2021-03-22 11:23:11');
INSERT INTO `agree` VALUES ('13', '35', '2021-03-22 11:27:06');
INSERT INTO `agree` VALUES ('17', '3', '2021-03-22 11:27:47');
INSERT INTO `agree` VALUES ('14', '3', '2021-03-22 11:28:22');
INSERT INTO `agree` VALUES ('30', '3', '2021-03-22 15:42:33');
INSERT INTO `agree` VALUES ('28', '2', '2021-03-22 21:11:53');
INSERT INTO `agree` VALUES ('33', '6', '2021-03-23 16:53:58');
INSERT INTO `agree` VALUES ('14', '35', '2021-03-30 18:34:50');
INSERT INTO `agree` VALUES ('34', '1', '2021-03-30 18:35:53');
INSERT INTO `agree` VALUES ('35', '35', '2021-03-31 16:36:15');
INSERT INTO `agree` VALUES ('36', '35', '2021-03-31 18:59:24');
INSERT INTO `agree` VALUES ('34', '35', '2021-04-01 20:31:50');
INSERT INTO `agree` VALUES ('38', '35', '2021-04-02 11:08:27');
INSERT INTO `agree` VALUES ('41', '35', '2021-04-02 15:00:59');
INSERT INTO `agree` VALUES ('30', '35', '2021-04-02 15:02:26');
INSERT INTO `agree` VALUES ('1', '35', '2021-04-02 15:06:41');
INSERT INTO `agree` VALUES ('37', '35', '2021-04-02 21:41:36');
INSERT INTO `agree` VALUES ('43', '35', '2021-04-04 12:00:13');

-- ----------------------------
-- Table structure for agree_pl
-- ----------------------------
DROP TABLE IF EXISTS `agree_pl`;
CREATE TABLE `agree_pl` (
  `comment_id` int(11) NOT NULL COMMENT '评论id',
  `user_id` bigint(20) NOT NULL COMMENT '点赞用户id',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of agree_pl
-- ----------------------------
INSERT INTO `agree_pl` VALUES ('1', '1', '2020-12-15 12:13:15');
INSERT INTO `agree_pl` VALUES ('2', '35', '2021-03-30 11:32:23');
INSERT INTO `agree_pl` VALUES ('1', '35', '2021-03-30 11:32:30');
INSERT INTO `agree_pl` VALUES ('4', '2', '2021-03-30 12:01:49');
INSERT INTO `agree_pl` VALUES ('11', '35', '2021-03-30 18:59:19');
INSERT INTO `agree_pl` VALUES ('10', '35', '2021-04-01 20:38:13');
INSERT INTO `agree_pl` VALUES ('19', '35', '2021-04-01 20:39:47');
INSERT INTO `agree_pl` VALUES ('18', '35', '2021-04-01 20:39:48');
INSERT INTO `agree_pl` VALUES ('24', '35', '2021-04-02 14:55:40');
INSERT INTO `agree_pl` VALUES ('34', '35', '2021-04-03 13:40:19');

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `that_id` bigint(20) unsigned NOT NULL COMMENT '关注id',
  `this_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `create_time` varchar(255) NOT NULL COMMENT '关注时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('1', '3', '2021-03-23 13:55:03');
INSERT INTO `attention` VALUES ('1', '4', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '5', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '6', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '7', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '8', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '9', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '11', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('5', '3', '2021-03-23 14:14:30');
INSERT INTO `attention` VALUES ('35', '1', '2021-03-23 14:40:43');
INSERT INTO `attention` VALUES ('1', '2', '2021-03-30 14:02:00');
INSERT INTO `attention` VALUES ('35', '2', '2021-03-30 17:27:52');
INSERT INTO `attention` VALUES ('7', '35', '2021-04-02 10:58:30');
INSERT INTO `attention` VALUES ('5', '35', '2021-04-02 21:47:35');
INSERT INTO `attention` VALUES ('35', '3', '2021-04-03 13:44:06');
INSERT INTO `attention` VALUES ('2', '35', '2021-04-03 13:59:32');
INSERT INTO `attention` VALUES ('1', '10', '2021-04-03 20:21:32');
INSERT INTO `attention` VALUES ('3', '35', '2021-04-04 13:05:07');
INSERT INTO `attention` VALUES ('1', '35', '2021-04-18 18:16:26');
INSERT INTO `attention` VALUES ('4', '35', '2021-04-18 18:16:32');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车唯一id',
  `car_name` varchar(255) DEFAULT NULL COMMENT '车名称',
  `style_id` int(11) DEFAULT NULL COMMENT '所属车型',
  `cszdj` varchar(11) DEFAULT NULL COMMENT '厂商指导价(万)',
  `zdnj` int(11) DEFAULT NULL COMMENT '最大扭矩',
  `cc` int(11) DEFAULT NULL COMMENT '车长',
  `ck` int(11) DEFAULT NULL COMMENT '车宽',
  `cg` int(11) DEFAULT NULL COMMENT '车高',
  `zj` int(11) DEFAULT NULL COMMENT '轴距',
  `yxrj` double DEFAULT NULL COMMENT '油箱容积',
  `fdjxh` varchar(35) DEFAULT NULL COMMENT '发动机型号',
  `pl` varchar(35) DEFAULT NULL COMMENT '排量',
  `jqxs` int(11) DEFAULT NULL COMMENT '进气方式-Map',
  `zdml` varchar(35) DEFAULT NULL COMMENT '最大马力',
  `zdgl` varchar(35) DEFAULT NULL COMMENT '最大功率',
  `qdfs` int(2) DEFAULT NULL COMMENT '驱动类型-Map',
  `zczdlx` int(2) DEFAULT NULL COMMENT '驻车制动类型-Map',
  `bgljs` varchar(20) DEFAULT NULL COMMENT '百公里加速时间',
  `bglyh` varchar(30) DEFAULT NULL COMMENT '百公里油耗',
  `zgcs` varchar(30) DEFAULT NULL COMMENT '最高车速',
  `rybh` varchar(30) DEFAULT NULL COMMENT '燃油标号',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) DEFAULT NULL COMMENT '修改时间',
  `deleted` int(11) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '2021款 宝马3系 改款 320i 运动套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '52', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('2', '2021款 宝马3系 改款 320Li M运动套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '52', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('3', '2021款 宝马3系 改款 325i M运动套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '52', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('4', '2021款 宝马3系 改款 325i M运动曜夜套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '52', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('5', '2021款 宝马3系 改款 325Li M运动套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '52', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('6', '2021款 宝马3系 改款 325Li xDrive M运动套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '52', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('7', '2021款 宝马3系 改款 325Li M运动曜夜套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '52', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('8', '2021款 宝马3系 330i M运动曜夜套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '52', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('9', '2021款 宝马3系 330Li xDrive M运动曜夜套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '52', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `style_id` int(10) unsigned NOT NULL COMMENT '车款式id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `create_time` varchar(255) NOT NULL COMMENT '收藏时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('1', '2', '2020-11-17 20:02:13');
INSERT INTO `collection` VALUES ('1', '3', '2020-11-17 20:02:31');
INSERT INTO `collection` VALUES ('9', '35', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('2', '35', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('3', '2', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('4', '35', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('5', '2', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('6', '35', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('7', '2', '2020-11-17 20:02:50');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(150) NOT NULL COMMENT '评论正文',
  `essay_id` bigint(20) unsigned NOT NULL COMMENT '动态id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '评论者id',
  `create_time` varchar(255) NOT NULL COMMENT '评论时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '宝马三系满足我对汽车的所有需求', '1', '35', '2020-11-17 21:20:21', '0');
INSERT INTO `comment` VALUES ('2', '大奔满足我对汽车的所有需求', '1', '3', '2020-11-20 20:45:35', '0');
INSERT INTO `comment` VALUES ('3', '123', '7', '35', '2021-03-30 11:39:32', '0');
INSERT INTO `comment` VALUES ('4', '分为非第三方表达式', '6', '35', '2021-03-30 11:40:06', '1');
INSERT INTO `comment` VALUES ('5', '123', '34', '35', '2021-03-30 15:05:32', '0');
INSERT INTO `comment` VALUES ('6', '123', '1', '7', '2021-03-30 16:33:12', '0');
INSERT INTO `comment` VALUES ('7', '147', '5', '35', '2021-03-30 16:34:09', '0');
INSERT INTO `comment` VALUES ('8', '擦擦是的', '8', '35', '2021-03-30 16:34:11', '0');
INSERT INTO `comment` VALUES ('9', '175157157', '3', '35', '2021-03-30 16:34:13', '0');
INSERT INTO `comment` VALUES ('10', '15727517', '2', '35', '2021-03-30 16:34:15', '0');
INSERT INTO `comment` VALUES ('11', '561515', '34', '35', '2021-03-30 18:59:09', '0');
INSERT INTO `comment` VALUES ('12', 'IC奇偶按大门口', '36', '35', '2021-03-31 16:36:19', '1');
INSERT INTO `comment` VALUES ('13', '123', '36', '35', '2021-03-31 20:30:29', '0');
INSERT INTO `comment` VALUES ('14', 'MVP@KevinDurant', '37', '35', '2021-04-01 11:59:34', '0');
INSERT INTO `comment` VALUES ('15', '789', '37', '35', '2021-04-01 11:59:57', '0');
INSERT INTO `comment` VALUES ('16', 'yugfudshfidshfchdsjbhdsbhjbsd', '2', '35', '2021-04-01 20:38:29', '0');
INSERT INTO `comment` VALUES ('17', 'rgdfhgdfhd', '2', '35', '2021-04-01 20:38:48', '0');
INSERT INTO `comment` VALUES ('18', 'sgdfgbfdbfd', '38', '35', '2021-04-01 20:39:31', '0');
INSERT INTO `comment` VALUES ('19', 'jbdfkjbdsjbn\njcbdsvkbdsbv', '38', '35', '2021-04-01 20:39:39', '0');
INSERT INTO `comment` VALUES ('20', '752572', '40', '35', '2021-04-02 14:20:07', '0');
INSERT INTO `comment` VALUES ('21', '按时擦擦', '40', '35', '2021-04-02 14:22:01', '0');
INSERT INTO `comment` VALUES ('22', '阿砂石厂', '39', '35', '2021-04-02 14:22:09', '0');
INSERT INTO `comment` VALUES ('23', '耗子尾汁', '40', '35', '2021-04-02 14:54:26', '0');
INSERT INTO `comment` VALUES ('24', '阿斯顿撒多', '30', '35', '2021-04-02 14:55:09', '1');
INSERT INTO `comment` VALUES ('25', '48448', '30', '35', '2021-04-02 14:55:54', '0');
INSERT INTO `comment` VALUES ('26', '阿萨德', '41', '35', '2021-04-02 14:59:09', '1');
INSERT INTO `comment` VALUES ('27', '147', '30', '35', '2021-04-02 15:01:57', '0');
INSERT INTO `comment` VALUES ('28', '789', '30', '35', '2021-04-02 15:02:21', '0');
INSERT INTO `comment` VALUES ('29', '258741369', '30', '35', '2021-04-02 15:05:49', '0');
INSERT INTO `comment` VALUES ('30', '114冬季几年级', '30', '35', '2021-04-02 15:06:10', '1');
INSERT INTO `comment` VALUES ('31', '123更不能借口了', '1', '35', '2021-04-02 15:06:30', '0');
INSERT INTO `comment` VALUES ('32', '固化房合法化会更好', '37', '35', '2021-04-02 21:41:42', '0');
INSERT INTO `comment` VALUES ('33', '111', '43', '35', '2021-04-03 13:39:53', '1');
INSERT INTO `comment` VALUES ('34', '你导剪版报价单', '43', '35', '2021-04-03 13:40:13', '1');
INSERT INTO `comment` VALUES ('35', '擦挫伤', '42', '35', '2021-04-04 12:00:36', '0');

-- ----------------------------
-- Table structure for data_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent` int(11) NOT NULL COMMENT '父节点',
  `index` varchar(35) DEFAULT NULL COMMENT '索引',
  `data` varchar(200) NOT NULL COMMENT '内容',
  `update_time` varchar(255) NOT NULL COMMENT '编辑时间',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '逻辑禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES ('1', '1', null, '前排宽敞', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('2', '1', null, '后排空间大', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('3', '1', null, '储物空间多', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('4', '1', null, '后备厢大', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('5', '2', null, '起步加速快', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('6', '2', null, '动力响应快', '2020-11-17 19:56:28', '0');
INSERT INTO `data_dictionary` VALUES ('7', '2', null, '多种动力模式', '2020-11-17 19:56:28', '0');
INSERT INTO `data_dictionary` VALUES ('8', '2', null, '换挡平顺', '2020-11-17 19:56:28', '0');
INSERT INTO `data_dictionary` VALUES ('9', '2', null, '发动机输出平顺', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('10', '3', null, '城市路段省油', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('11', '3', null, '高速油耗低', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('12', '3', null, '启停节能', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('13', '3', null, '电耗', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('14', '4', null, '转向精准灵活', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('15', '4', null, '行驶稳定', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('16', '4', null, '过弯稳定', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('17', '4', null, '悬挂调教好', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('18', '4', null, '通过性强', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('19', '4', null, '刹车性能好', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('20', '4', null, '换挡速度快', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('21', '5', null, '驾驶舒适抖动少', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('22', '5', null, '前排座椅舒适', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('23', '5', null, '后排座椅舒适', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('24', '5', null, '车内噪音小', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('25', '5', null, '带座椅通风/加热/按摩', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('26', '6', null, '外观回头率高', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('27', '6', null, '车身用料做工细致', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('28', '7', null, '车内灯效多样', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('29', '7', null, '内饰用料做工好', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('30', '7', null, '车内配件丰富', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('31', '7', null, '中控仪表功能实用', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('32', '7', null, '屏幕显示效果好', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('33', '7', null, '方向盘手感好', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('34', '7', null, '座椅做工材质好', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('35', '8', null, '辅助配置齐全（倒车影像/主动刹车/自动泊车/抬头显示等）', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('36', '8', null, '多媒体功能（音响效果好/互联驾驶系统等）', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('37', '8', null, '安全配置多（ESP/ABS/ASR/并线辅助等', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('38', '9', null, '维修保养满意度高', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('39', '9', null, '故障率较低', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('40', '10', null, '中国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('41', '10', null, '德国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('42', '10', null, '日本', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('43', '10', null, '美国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('44', '10', null, '韩国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('45', '10', null, '法国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('46', '10', null, '英国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('47', '10', null, '意大利', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('48', '10', null, '瑞典', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('49', '10', null, '荷兰', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('50', '10', null, '捷克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('51', '10', null, '西班牙', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('52', '11', null, '汽油', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('53', '11', null, '柴油', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('54', '11', null, '油电混合', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('55', '11', null, '电动', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('56', '12', null, '轿车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('57', '12', null, 'SUV', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('58', '12', null, 'MPV', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('59', '12', null, '跑车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('60', '12', null, '皮卡', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('61', '12', null, '微面', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('62', '12', null, '微卡', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('63', '12', null, '轻客', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('66', '13', 'a', '奥迪', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('67', '13', 'a', '阿斯顿·马丁', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('68', '13', 'a', '阿尔法·罗密', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('69', '13', 'b', '奔驰', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('70', '13', 'b', '宝马', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('71', '13', 'b', '本田', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('72', '13', 'b', '别克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('73', '13', 'b', '比亚迪', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('74', '13', 'b', '保时捷', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('75', '13', 'b', '宝骏', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('76', '13', 'b', '标致', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('77', '13', 'b', '宾利', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('78', '13', 'b', '宝沃', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('79', '13', 'b', '布加迪', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('80', '13', 'c', '长安', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('81', '13', 'c', '长城', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('82', '13', 'd', '大众', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('83', '13', 'd', '东风风行', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('84', '13', 'd', '东风风神', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('85', '13', 'f', '丰田', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('86', '13', 'f', '福特', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('87', '13', 'f', '法拉利', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('88', '13', 'g', '广汽传祺', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('89', '13', 'g', '广汽集团', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('90', '13', 'h', '哈弗', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('91', '13', 'h', '红旗', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('92', '13', 'h', '海马', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('93', '13', 'j', '吉利汽车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('94', '13', 'j', 'Jeep', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('95', '13', 'j', '捷豹', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('96', '13', 'j', '江淮', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('97', '13', 'j', '捷达', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('98', '13', 'j', '金杯', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('99', '13', 'k', '凯迪拉克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('100', '13', 'k', '科尼赛克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('101', '13', 'l', '雷克萨斯', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('102', '13', 'l', '路虎', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('103', '13', 'l', '领克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('104', '13', 'l', '林肯', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('105', '13', 'l', '劳斯莱斯', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('106', '13', 'l', '兰博基尼', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('107', '13', 'l', '铃木', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('108', '13', 'm', '马自达', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('109', '13', 'm', '名爵', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('110', '13', 'm', '玛莎拉蒂', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('111', '13', 'm', 'MINI', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('112', '13', 'm', '迈凯伦', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('113', '13', 'o', '讴歌', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('114', '13', 'q', '起亚', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('115', '13', 'q', '奇瑞', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('116', '13', 'r', '日产', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('117', '13', 'r', '荣威', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('118', '13', 's', '斯柯达', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('119', '13', 's', '上汽大通', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('120', '13', 's', '三菱', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('121', '13', 's', 'SONY', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('122', '13', 't', '特斯拉', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('123', '13', 'w', '沃尔沃', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('124', '13', 'w', '五菱汽车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('125', '13', 'w', 'WEY', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('126', '13', 'w', '蔚来', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('127', '13', 'x', '雪佛兰', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('128', '13', 'x', '现代', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('129', '13', 'x', '雪铁龙', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('130', '13', 'x', '小鹏汽车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('131', '13', 'y', '英菲尼迪', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('132', '13', 'y', '一汽', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('133', '13', 'y', '宇通客车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('134', '13', 'z', '众泰', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('135', '13', 'z', '中华', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('136', '13', 'z', '中兴', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('137', '14', null, '涡轮增压', '2021-04-19 13:34:59', '0');
INSERT INTO `data_dictionary` VALUES ('138', '14', null, '自然吸气', '2021-04-19 13:34:59', '0');
INSERT INTO `data_dictionary` VALUES ('139', '14', null, '机械增压', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('140', '15', null, '前置后驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('141', '15', null, '前置前驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('142', '15', null, '后置后驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('143', '15', null, '中置后驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('144', '15', null, '适时四驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('145', '15', null, '全时四驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('146', '15', null, '分时四驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('147', '16', null, '机械制动', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('148', '16', null, '电子制动', '2021-04-19 14:59:59', '0');

-- ----------------------------
-- Table structure for data_type
-- ----------------------------
DROP TABLE IF EXISTS `data_type`;
CREATE TABLE `data_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type_name` varchar(35) NOT NULL COMMENT '类型名称',
  `create_time` varchar(225) NOT NULL COMMENT '创建时间',
  `update_time` varchar(255) NOT NULL COMMENT '编辑时间',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '逻辑禁用',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of data_type
-- ----------------------------
INSERT INTO `data_type` VALUES ('1', '空间', '2020-11-17 19:56:28', '2020-11-17 19:56:28', '0');
INSERT INTO `data_type` VALUES ('2', '动力', '2020-11-17 19:56:28', '2020-11-17 19:56:28', '0');
INSERT INTO `data_type` VALUES ('3', '能耗', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('4', '操控', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('5', '舒适性', '2020-11-17 19:56:28', '2020-11-17 19:15:12', '0');
INSERT INTO `data_type` VALUES ('6', '外观', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('7', '内饰', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('8', '配置', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('9', '用车', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('10', '国别', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('11', '能源类型', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('12', '级别', '2020-11-17 19:56:28', '2020-11-17 19:15:12', '0');
INSERT INTO `data_type` VALUES ('13', '厂商', '2020-11-17 19:56:28', '2020-11-17 19:15:12', '0');
INSERT INTO `data_type` VALUES ('14', '进气方式', '2020-11-17 19:56:28', '2021-04-19 13:32:11', '0');
INSERT INTO `data_type` VALUES ('15', '驱动方式', '2020-11-17 19:56:28', '2021-04-19 14:59:59', '0');
INSERT INTO `data_type` VALUES ('16', '制动类型', '2020-11-17 19:56:28', '2021-04-19 14:59:59', '0');

-- ----------------------------
-- Table structure for essay
-- ----------------------------
DROP TABLE IF EXISTS `essay`;
CREATE TABLE `essay` (
  `essay_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态id',
  `essay_title` varchar(150) NOT NULL COMMENT '动态标题',
  `essay_label` varchar(150) DEFAULT NULL COMMENT '动态标签',
  `essay_text` varchar(10240) NOT NULL COMMENT '动态正文',
  `create_time` varchar(255) NOT NULL COMMENT '发布时间',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `video` varchar(255) DEFAULT NULL COMMENT '视频路径',
  `wybs` varchar(255) NOT NULL COMMENT '唯一标识',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`essay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of essay
-- ----------------------------
INSERT INTO `essay` VALUES ('1', '对宝马三系的热爱', '1,2', '知觉提车短短八个月已开了两万公里，这节奏开下去没几年又得换车\n陆陆续续也改了东西，也下了几回赛道，丰富了自己生活，也能更好陪伴了家人。\n先说问题，\n后刹车19000磨完，深圳这边4s好像还没收到相关信息，刚开始还是收费换后刹车皮，后来借助车友索赔记录才成功索赔，更换后卡钳还有刹车皮，感谢车友。\n这个问题是由于卡钳活塞制作公差问题导致活塞能及时回弹，轻微拖刹，刹车皮磨损过快。\n冷却液，烧机油问题暂时还未出现，别问题也暂时没有。第步先改了铃，总觉得铃非常重要，套好看铃能立马提升车气质，而宝马我个人觉得又很适合bbs双片抛边款式，就选了facewheels双片锻造，国产精品，款式也错，难得个牌子，点赞！轮胎就ps4s，干湿地性能都非常错。', '2020-11-17 18:56:40', '35', null, '', '0');
INSERT INTO `essay` VALUES ('2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5', '1,2', '各位朋友大家好，汽车之家麋鹿测试半月报来到第五期。前边四期，我们都是按照车型级别来为大家汇总的。而随着时间的推移，各个级别我们还会测试很多新车，所以从这期开始，半月报将按照时间维度来进行呈现。首先本期，我们先把4月和5月测试过的车型(在之前半月报中没汇总过的)做个总结吧，车型有点儿多，11款。', '2020-11-17 18:58:08', '35', null, '', '0');
INSERT INTO `essay` VALUES ('3', '换刹车盘也要磨合？刹车维保两三事', '2,3', '刹车不好使了？有异响？踩着没底？说明你的刹车系统存在衰减或者过度磨损了，关于刹车更换，我们大多数人都会先想到4S店或汽修厂，虽然说更换上不需要太费心，但对于每天都在路上跑的我们来讲，如何及时的发现衰减，得知异常，尽快送修，这却是非常有必要的！毕竟咱们也不会每天都随车带着技师。', '2020-11-17 18:59:05', '35', null, '', '1');
INSERT INTO `essay` VALUES ('8', '对宝马三系的热爱', '1,3', '刹车不好使了？有异响？踩着没底？说明你的刹车系统存在衰减或者过度磨损了，关于刹车更换，我们大多数人都会先想到4S店或汽修厂，虽然说更换上不需要太费心，但对于每天都在路上跑的我们来讲，如何及时的发现衰减，得知异常，尽快送修，这却是非常有必要的！毕竟咱们也不会每天都随车带着技师。', '2020-11-20 19:45:45', '35', null, '', '0');
INSERT INTO `essay` VALUES ('9', '对宝马三系的热爱', '2,3', '刹车不好使了？有异响？踩着没底？说明你的刹车系统存在衰减或者过度磨损了，关于刹车更换，我们大多数人都会先想到4S店或汽修厂，虽然说更换上不需要太费心，但对于每天都在路上跑的我们来讲，如何及时的发现衰减，得知异常，尽快送修，这却是非常有必要的！毕竟咱们也不会每天都随车带着技师。', '2020-11-20 19:45:45', '35', null, '', '0');
INSERT INTO `essay` VALUES ('11', '111', '2,3', '# 一级标题', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('12', '111', '1,3', '11', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('13', '2222', '1,3', '## 二级标题2222', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('14', 'aaaa', '1,3', 'aazzzz', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('15', 'aaaa', '1,3', '# 一级标题', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('16', 'fff', '1,3', '# 一级标题', '2021-03-18 05:48:03', '3', null, '', '0');
INSERT INTO `essay` VALUES ('17', '111', '1,3', '## 11111222', '2021-03-18 08:45:59', '3', null, '', '0');
INSERT INTO `essay` VALUES ('18', '1111', '2,3', '1111', '2021-03-18 08:46:58', '3', null, '', '0');
INSERT INTO `essay` VALUES ('19', '汽车保养', '3,4', '**红红火火恍恍惚惚**^上角标^\nsad撒多~哈哈哈~\n\n*擦拭擦拭擦擦是的*', '2021-03-18 08:48:44', '3', null, '', '0');
INSERT INTO `essay` VALUES ('20', '777', '1,3', '++该吃氨茶碱点石成金阿SV点击++\n\n#### 查数据层框架阿森纳近\n\n# 我回去的好嗲将保持基本', '2021-03-18 09:11:58', '3', null, '', '0');
INSERT INTO `essay` VALUES ('21', '1234213123213123', '1,3', '佛挡杀佛岁发的SV是 ', '2021-03-18 09:16:42', '3', null, '', '0');
INSERT INTO `essay` VALUES ('22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb', '1,3', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '2021-03-18 10:03:43', '3', null, '', '0');
INSERT INTO `essay` VALUES ('23', '22222', '3,4', '2222', '2021-03-18 10:05:27', '3', null, '', '1');
INSERT INTO `essay` VALUES ('24', '123', '3,4', '### prop=\"\"', '2021-03-19 09:57:06', '35', null, '', '1');
INSERT INTO `essay` VALUES ('25', 'fdsvfdsvsfdv', '1,3', '# 吃我吧大呲花不是不报\n### 吃的啥那几次表达式就不好吃巴萨的就不会加\n![搬砖.jpg](1)\n\n\nACSsdacsc', '2021-03-19 01:06:51', '2', null, '', '1');
INSERT INTO `essay` VALUES ('26', 'dsafcdscds', '3,4', 'dszcsdfzvf', '2021-03-19 01:07:30', '35', null, '', '1');
INSERT INTO `essay` VALUES ('27', 'asdsasa', '3,4', 'asasc', '2021-03-19 01:08:37', '35', null, '', '0');
INSERT INTO `essay` VALUES ('28', '111', '3,4', '## 单例模式\n\n> 是一种常用的软件设计模式。在它的核心结构中只包含一个被称为单例的特殊类。通过单例模式可以保证系统中，应用该模式的类一个类只有一个实例。即一个类只有一个对象实例。\n\n 1. 饿汉式\n *之所以称为饿汉式，是因为对象随着类的加载已经创建的，凸显的比较“饥饿”，仅此而已。*\n**优点：避免了线程安全问题，它是绝对线程安全的。\n缺点：很明显，可能容易造成内存浪费，因为对象在类加载时就已经被创建，这是如果暂时用不到，就会造成资源浪费。**\n```java\n//一般方式\nclass Singleton{\n	//创建对象（new一次）\n    private final static Singleton instance = new Singleton();\n    //私有化构造器\n    private Singleton(){}\n    //静态返回\n    public static Singleton getInstance(){\n        return instance;\n    }\n}\n//静态代码块方式\nclass Singleton{\n	//定义但未初始化\n    private final static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    //静态代码块赋值\n    static {\n        instance = new Singleton();\n    }\n    public static Singleton getInstance(){\n        return instance;\n    }\n}\n```\n 2. 懒汉式\n*见名知意，相比饿汉式，它的特点便是，使用时才开始创建，所以比较“懒”。*\n**优点：与饿汉式形成对比，节省内存。**\n**缺点：一般线程不安全，改进扩展后可以。**\n\n```java\n//懒汉式（线程不安全）\nclass Singleton{\n    private static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    //多个线程同时调用的话就会new出多个对象\n    public static Singleton getInstance(){\n    	//多个线程同时进入会判断对象为null\n        if(instance==null){\n        	//从而创建对个对象 不再是单例\n            instance = new Singleton();\n        }\n        return instance;\n    }\n}\n```\n改进：加入同步锁之后，线程安全问题解决，但效率极低\n```java\n//懒汉式（线程安全 效率低）\nclass Singleton{\n    private static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    //同步方法 每次只能有一个线程进入\n    public static synchronized Singleton getInstance(){\n    	//每个线程依次进入进行判断是否为null，效率极低\n        if(instance==null){\n            instance = new Singleton();\n        }\n        return instance;\n    }\n}\n//懒汉式（线程安全 效率低）\nclass Singleton{\n    private static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    \n    public static Singleton getInstance(){\n    	//同步代码块方式(左右与上述一致 写法不同) 每次只能有一个线程进入\n    	//每个线程依次进入进行判断是否为null，效率极低\n        synchronized (Singleton.class){\n            if(instance==null){\n                instance = new Singleton();\n            }\n        }\n        return instance;\n    }\n}\n```\n上述问题：线程安全问题是解决了，但是效率十分低，因为只需要第一个线程进入之后判断是否为null，然后new一个对象，后面的线程进入只需要return返回就行了，如果继续等待同步锁，一次进入，就会造成效率问题。\n**继续改进：进行双重检验，在第二种的基础上再嵌套一层判空，这样的话除了前几个线程（跟随第一个线程同时进入）需要进入等待之外，其他线程在对象创建完成之后，只在最外层判空就行了（这一步骤是所有之后线程可以同时进行的，故效率高）。**\n```java\n//懒汉式（线程安全 推荐）\nclass Singleton{\n    private static volatile Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    public static Singleton getInstance(){\n        //同步代码块（双重检查）\n        if (instance==null){\n        	//这一层只有前几个线程同时进入\n        	//待第一个线程创建对象完成之后，之后的所有线程不会再进入等待\n            synchronized (Singleton.class){\n                if(instance==null){\n                    instance = new Singleton();\n                }\n            }\n        }\n        return instance;\n    }\n}\n```\n 1. 静态内部类\n \n//静态内部类（线程安全 省内存）\n*利用静态内部类的特殊机制（外层类加载时，内部类即便是静态的，也不会随之加载，这样一来，就不会造成内存浪费，只在调用时创建完成，并且线程是绝对安全的）。*\n```java\nclass Singleton{\n    //私有化构造器\n    private Singleton(){}\n    //静态内部类\n    private static class SingletonInstance{\n        private static final Singleton instance = new Singleton();\n    }\n    //return方法\n    public static Singleton getInstance(){\n        return SingletonInstance.instance;\n    }\n}\n```\n 2. 枚举\n简单粗暴枚举法\n*绝对单例，绝对线程安全，绝对不内存浪费*\n```java\n//枚举\nenum Singleton{\n    instance;//属性\n}\n```\n> 以上便是我学习过程中总结的一些思想和笔记，大家可以在学习过程中多交流，共同进步。——一个从入门到入土的程序小白。', '2021-03-19 02:02:35', '2', null, '', '0');
INSERT INTO `essay` VALUES ('29', 'smz', '1,3', '## 宝马三系真香', '2021-03-19 02:54:21', '35', null, '', '1');
INSERT INTO `essay` VALUES ('30', '汽车之家', '2,3', '# 我是一只小鸟', '2021-03-19 18:39:18', '4', null, '', '0');
INSERT INTO `essay` VALUES ('31', '111', '3,2', '# 111', '2021-03-22 21:22:39', '2', null, '', '0');
INSERT INTO `essay` VALUES ('32', '777', '1,3', '777', '2021-03-22 21:23:42', '2', null, '', '0');
INSERT INTO `essay` VALUES ('33', '11111', '1,3', '1111', '2021-03-23 16:52:19', '6', null, '', '1');
INSERT INTO `essay` VALUES ('34', '4654564165165', '3,2,4', '***### 46465465465465gtyguyg**粗体*****\n\n\n\n# 谢荣是你爸爸', '2021-03-25 22:06:40', '7', null, '', '0');
INSERT INTO `essay` VALUES ('35', '1111', '3,4', '11111', '2021-03-31 15:30:35', '35', null, '', '0');
INSERT INTO `essay` VALUES ('36', '1234567890', '3,2,4', '1234567890', '2021-03-31 18:59:15', '35', null, '', '0');
INSERT INTO `essay` VALUES ('37', '杜兰特FMVP', '2,3', '# 昔有佳人杜兰特\n**一舞镰刀杀四方**', '2021-04-01 11:58:02', '35', null, '', '0');
INSERT INTO `essay` VALUES ('38', 'kjdbscjbdsjbvjdsbjhvdbsv', '2,3,4', 'hfcijdsbkjdsbkcbkjdsbckdss', '2021-04-01 20:32:48', '35', null, '', '0');
INSERT INTO `essay` VALUES ('39', '1111', '2,3,4', '1111', '2021-04-02 11:08:50', '35', null, '', '0');
INSERT INTO `essay` VALUES ('40', '更新动态要通知粉丝', '2,3,4', '更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝**更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝*更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝### 更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝## 更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝# 更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝***# 更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝\n\n\n# 更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝\n\n\n++更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝++\n\n\n\n> 更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝\n\n\n\n1. 更新动态要通知粉丝\n2. 更新动态要通知粉丝\n3. 更新动态要通知粉丝\n4. 更新动态要通知粉丝\n5. 更新动态要通知粉丝\n6. 更新动态要通知粉丝\n7. 更新动态要通知粉丝\n8. 更新动态要通知粉丝\n9. 更新动态要通知粉丝- \n\n\n\n- 更新动态要通知粉丝\n- 更新动态要通知粉丝更新动态要通知粉丝\n- 更新动态要通知粉丝\n- 更新动态要通知粉丝更新动态要通知粉丝更新动态要通知粉丝\n- 更新动态要通知粉丝\n- 更新动态要通知粉丝\n- 更新动态要通知粉丝\n- 更新动态要通知粉丝\n- 更新动态要通知粉丝\n- 更新动态要通知粉丝\n', '2021-04-02 13:51:10', '35', null, 'b757023859504bce843f18b3935feccc', '0');
INSERT INTO `essay` VALUES ('41', ': 啊哈哈哈哈哈哈哈', '2,3', ':\n啊哈哈哈哈哈哈哈\n:\n啊哈哈哈哈哈哈哈\n:\n啊哈哈哈哈哈哈哈\n:\n啊哈哈哈哈哈哈哈\n:\n啊哈哈哈哈哈哈哈\n', '2021-04-02 14:56:42', '35', null, '35f26311e9a84e70893443c8ff24a056', '0');
INSERT INTO `essay` VALUES ('42', '清明时节雨纷纷', '2', '啊哈哈哈哈哈哈哈', '2021-04-02 15:14:00', '35', null, 'b62874b1e821412a8209f8dd5cf2d037', '1');
INSERT INTO `essay` VALUES ('43', '发的时候空间宝石可单肩包VB', '2,4', 'IUhi符合is个覅还得上班 *# 斜体*', '2021-04-02 21:42:01', '35', null, '5791cc31db0640a2ad740dedccedf44e', '1');
INSERT INTO `essay` VALUES ('44', '111111111111111', '5', '111111111111111', '2021-04-13 13:34:06', '35', null, '80aeb60020774df5ad932ae8b02c0b2f', '0');

-- ----------------------------
-- Table structure for fold
-- ----------------------------
DROP TABLE IF EXISTS `fold`;
CREATE TABLE `fold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style_id` int(11) NOT NULL COMMENT 'id',
  `style_photo` varchar(255) NOT NULL,
  `title1` varchar(255) NOT NULL,
  `text1` varchar(255) NOT NULL,
  `text2` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `text3` varchar(255) NOT NULL,
  `text4` varchar(255) NOT NULL,
  `title3` varchar(255) NOT NULL,
  `text5` varchar(255) NOT NULL,
  `text6` varchar(255) NOT NULL,
  `title4` varchar(255) NOT NULL,
  `text7` varchar(255) NOT NULL,
  `text8` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fold
-- ----------------------------
INSERT INTO `fold` VALUES ('1', '2', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/fold/2021/04/03/1cec5c95780d474fbe87626dd164d1ae.jpg', '国潮版提供', '并且新老三代车型同堂销售的策略也让其覆盖到了更多的消费', '新车共推出7款车型，官方指导价格为9.89-12.89万元', '哈弗H6', '并在原有基础上进行了升级，未来新老三代同堂销售的局面也将随着H6国', '同时新车还提供了包括瑞雪白、锦鲤红、墨玉黑、景泰蓝、青瓦灰', '动力方面', 'H6国潮版车型采用了时下流行的贯穿式尾灯，下方后包围造型也搭配', '饰部分的设计在第二代H6的基础上进行了一些升级，全新的悬', '官方指导价格', '新车还配备了全新的全液晶仪表，经过优化的UI设计让消息显示更为直观便捷', '高功率1.5升涡轮增压发动机最大功率124千瓦，峰值扭矩285牛·米。');
INSERT INTO `fold` VALUES ('2', '13', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/fold/2021/04/19/10405be973a349989dc7bf7fdde4ddf2.jpg', '北京BJ80探月', '北京BJ80 3.0T车型定制，外观、内饰上面进行了整体优化设计', '全新的侧面专属拉花，体现出强烈的中国与探月元素。', '全新的黑色主题', '通过部分金色氛围灯作为星光般的点缀。', '除此之外，新车的中控屏还增加了专属的星空背景。', '动力方面', '新车将搭载3.0T V6汽油发动机最大功率280马力', '匹配分时四驱系统，并提供雪地、运动、舒适、经济四种驾驶模式选择。', '硬派SUV车型', '北京BJ80探月版在原有基础上采用了全新的前后包围设计', '新车还在前门板上增加了中国探月工程的专属LOGO');

-- ----------------------------
-- Table structure for forward
-- ----------------------------
DROP TABLE IF EXISTS `forward`;
CREATE TABLE `forward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `essay_id` bigint(20) unsigned NOT NULL COMMENT '动态id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '转发用户id',
  `forward_title` varchar(150) DEFAULT NULL COMMENT '转发标题',
  `create_time` varchar(255) NOT NULL COMMENT '转发时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of forward
-- ----------------------------
INSERT INTO `forward` VALUES ('1', '1', '35', '宝马三系真香', '2020-11-17 20:07:39', '0');
INSERT INTO `forward` VALUES ('2', '1', '3', 'nice', '2020-11-17 20:08:11', '0');
INSERT INTO `forward` VALUES ('3', '9', '35', '宝马三系真香', '2020-11-20 19:45:45', '0');
INSERT INTO `forward` VALUES ('4', '4', '35', '宝马三系真香', '2021-03-19 01:53:33', '1');
INSERT INTO `forward` VALUES ('5', '3', '35', '489461416', '2021-03-19 01:54:55', '0');
INSERT INTO `forward` VALUES ('6', '3', '2', '宝马三系真香', '2021-03-19 01:55:20', '1');
INSERT INTO `forward` VALUES ('7', '8', '35', '宝马三系真香', '2021-03-19 01:56:27', '0');
INSERT INTO `forward` VALUES ('8', '27', '2', 'sadas1', '2021-03-19 01:56:35', '1');
INSERT INTO `forward` VALUES ('9', '27', '2', '宝马三系真香', '2021-03-19 01:57:08', '0');
INSERT INTO `forward` VALUES ('10', '27', '35', '宝马三系真香', '2021-03-19 01:57:47', '1');
INSERT INTO `forward` VALUES ('11', '3', '2', 'asdsad', '2021-03-19 01:57:55', '0');
INSERT INTO `forward` VALUES ('12', '29', '35', 'xr', '2021-03-19 02:54:31', '1');
INSERT INTO `forward` VALUES ('13', '1', '3', '111', '2021-03-19 03:11:40', '0');
INSERT INTO `forward` VALUES ('14', '6', '35', '555555555555555555555', '2021-03-19 03:13:03', '1');
INSERT INTO `forward` VALUES ('15', '1', '3', '1234567890', '2021-03-19 15:16:05', '0');
INSERT INTO `forward` VALUES ('16', '24', '35', '1234567890', '2021-03-19 03:17:11', '1');
INSERT INTO `forward` VALUES ('17', '1', '3', 'fdscdsvcdsvcdsv   cdscds', '2021-03-19 16:13:58', '0');
INSERT INTO `forward` VALUES ('18', '1', '3', '1234567890', '2021-03-19 16:14:16', '1');
INSERT INTO `forward` VALUES ('19', '23', '35', '1234567890', '2021-03-19 16:59:01', '0');
INSERT INTO `forward` VALUES ('20', '23', '3', '1111', '2021-03-19 16:59:09', '1');
INSERT INTO `forward` VALUES ('21', '30', '4', '我要吃肉蟹煲', '2021-03-19 18:44:07', '0');
INSERT INTO `forward` VALUES ('22', '30', '4', '1234567890', '2021-03-19 18:50:39', '0');
INSERT INTO `forward` VALUES ('23', '30', '4', '1234567890', '2021-03-19 18:54:44', '0');
INSERT INTO `forward` VALUES ('24', '30', '4', '1234567890', '2021-03-19 19:00:13', '0');
INSERT INTO `forward` VALUES ('25', '30', '4', '1234567890', '2021-03-19 19:01:07', '0');
INSERT INTO `forward` VALUES ('26', '30', '4', '1234567890', '2021-03-19 19:01:22', '0');
INSERT INTO `forward` VALUES ('27', '30', '4', '1234567890', '2021-03-19 19:02:46', '0');
INSERT INTO `forward` VALUES ('28', '30', '4', '1234567890', '2021-03-19 19:02:52', '0');
INSERT INTO `forward` VALUES ('29', '30', '4', '1234567890', '2021-03-19 19:03:04', '0');
INSERT INTO `forward` VALUES ('30', '28', '2', '1234567890', '2021-03-19 19:03:37', '0');
INSERT INTO `forward` VALUES ('31', '28', '2', '1234567890', '2021-03-19 19:03:52', '0');
INSERT INTO `forward` VALUES ('32', '23', '3', '1234567890', '2021-03-19 19:05:09', '0');
INSERT INTO `forward` VALUES ('33', '23', '3', '1234567890', '2021-03-19 19:05:16', '0');
INSERT INTO `forward` VALUES ('34', '23', '3', '1234567890', '2021-03-19 19:05:20', '0');
INSERT INTO `forward` VALUES ('35', '1', '3', '1234567890', '2021-03-19 19:05:44', '0');
INSERT INTO `forward` VALUES ('36', '1', '3', '1234567890', '2021-03-19 19:06:50', '0');
INSERT INTO `forward` VALUES ('37', '1', '3', '1234567890', '2021-03-19 19:06:58', '0');
INSERT INTO `forward` VALUES ('38', '23', '3', '1234567890', '2021-03-19 19:09:39', '0');
INSERT INTO `forward` VALUES ('39', '30', '3', '1234567890', '2021-03-22 11:19:25', '0');
INSERT INTO `forward` VALUES ('40', '30', '2', '321', '2021-03-22 21:22:15', '0');
INSERT INTO `forward` VALUES ('41', '30', '2', '', '2021-03-22 21:23:48', '0');
INSERT INTO `forward` VALUES ('42', '30', '2', '', '2021-03-22 21:24:22', '0');
INSERT INTO `forward` VALUES ('43', '32', '2', '', '2021-03-22 21:24:28', '0');
INSERT INTO `forward` VALUES ('44', '32', '2', '', '2021-03-22 21:26:06', '0');
INSERT INTO `forward` VALUES ('45', '32', '2', '666', '2021-03-22 21:26:29', '0');
INSERT INTO `forward` VALUES ('46', '34', '7', '蜂屯蚁附应付过', '2021-03-25 22:07:09', '0');
INSERT INTO `forward` VALUES ('47', '21', '35', 'wanan', '2021-03-30 15:06:06', '1');
INSERT INTO `forward` VALUES ('48', '34', '35', '我要吃肉蟹煲', '2021-03-31 10:52:45', '0');
INSERT INTO `forward` VALUES ('49', '37', '35', '我大哥天下无敌...', '2021-04-01 11:58:36', '0');
INSERT INTO `forward` VALUES ('50', '37', '35', '我三弟无人能挡！！！', '2021-04-01 11:59:04', '0');
INSERT INTO `forward` VALUES ('51', '38', '35', null, '2021-04-01 20:39:54', '0');
INSERT INTO `forward` VALUES ('52', '38', '35', '哈哈哈哈哈哈哈', '2021-04-01 20:40:54', '0');
INSERT INTO `forward` VALUES ('53', '37', '35', null, '2021-04-01 20:41:16', '0');
INSERT INTO `forward` VALUES ('54', '38', '35', null, '2021-04-02 11:08:32', '0');
INSERT INTO `forward` VALUES ('55', '39', '35', null, '2021-04-02 11:08:56', '0');
INSERT INTO `forward` VALUES ('56', '40', '35', null, '2021-04-02 14:19:38', '0');
INSERT INTO `forward` VALUES ('57', '30', '35', null, '2021-04-02 14:56:00', '0');
INSERT INTO `forward` VALUES ('58', '30', '35', null, '2021-04-02 14:56:17', '0');
INSERT INTO `forward` VALUES ('59', '42', '35', null, '2021-04-02 16:13:39', '0');
INSERT INTO `forward` VALUES ('60', '43', '4', '123', '2021-04-04 11:56:17', '0');
INSERT INTO `forward` VALUES ('61', '1', '4', '123123213', '2021-04-04 11:56:31', '0');
INSERT INTO `forward` VALUES ('62', '43', '4', '案发时发出', '2021-04-04 11:58:32', '1');
INSERT INTO `forward` VALUES ('63', '43', '35', '佛挡杀佛', '2021-04-04 11:59:24', '1');
INSERT INTO `forward` VALUES ('64', '43', '35', '带我去多群', '2021-04-04 11:59:35', '1');
INSERT INTO `forward` VALUES ('65', '43', '35', '气得我群多无', '2021-04-04 11:59:49', '0');

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `label_text` varchar(18) NOT NULL COMMENT '标签内容',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `update_time` varchar(255) NOT NULL COMMENT '修改时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES ('1', '汽车之家', '2020-11-17 19:01:11', '2021-04-16 10:57:48', '0');
INSERT INTO `label` VALUES ('2', '宝马三系', '2020-11-17 19:01:11', '2021-04-13 13:29:50', '0');
INSERT INTO `label` VALUES ('3', '汽车保养', '2020-11-17 19:01:37', '2021-04-13 13:29:56', '1');
INSERT INTO `label` VALUES ('4', '路虎揽胜极光', '2020-11-17 19:01:37', '2021-04-16 10:57:32', '0');
INSERT INTO `label` VALUES ('5', '谢耳朵', '2021-04-12 09:20:40', '2021-04-12 20:32:36', '0');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `message_title` varchar(150) NOT NULL COMMENT '消息标题',
  `message_text` varchar(1024) NOT NULL COMMENT '消息正文',
  `that_id` bigint(20) unsigned NOT NULL COMMENT '发送者id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '点赞者id',
  `this_id` bigint(20) unsigned NOT NULL COMMENT '接收者id',
  `essay_id` bigint(20) unsigned DEFAULT NULL COMMENT '动态id',
  `comment_id` int(11) DEFAULT NULL,
  `message_type` int(1) unsigned NOT NULL COMMENT '消息类型 0系统 1动态 2私信 3点赞评论',
  `create_time` varchar(255) NOT NULL COMMENT '发送时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '系统通知', '欢迎注册成功', '1', null, '35', null, null, '0', '2020-11-17 20:15:35', '0');
INSERT INTO `message` VALUES ('2', '系统通知', '欢迎注册成功', '1', null, '35', null, null, '0', '2020-11-17 20:16:08', '0');
INSERT INTO `message` VALUES ('3', '点赞通知', '用户点赞了你的动态', '1', null, '35', '1', null, '1', '2020-11-17 20:47:56', '0');
INSERT INTO `message` VALUES ('4', '点赞通知', '用户点赞了你的动态', '1', null, '35', '1', null, '1', '2020-11-17 20:49:51', '0');
INSERT INTO `message` VALUES ('5', '点赞通知', '用户点赞了你的动态', '1', null, '35', '2', null, '1', '2020-11-17 21:02:14', '0');
INSERT INTO `message` VALUES ('6', '点赞通知', '用户点赞了你的动态', '1', null, '35', '3', null, '1', '2020-11-17 21:03:10', '0');
INSERT INTO `message` VALUES ('7', '关注通知', '用户关注了你', '1', null, '35', null, null, '0', '2020-11-17 21:08:04', '0');
INSERT INTO `message` VALUES ('8', '关注通知', '用户关注了你', '1', null, '35', null, null, '0', '2020-11-17 21:08:28', '0');
INSERT INTO `message` VALUES ('9', '关注通知', '用户关注了你', '1', null, '35', null, null, '0', '2020-11-17 21:09:00', '0');
INSERT INTO `message` VALUES ('10', '转发通知', '用户转发了你的动态', '1', null, '35', '1', null, '1', '2020-11-17 21:14:30', '0');
INSERT INTO `message` VALUES ('11', '转发通知', '用户转发了你的动态', '1', null, '35', '1', null, '1', '2020-11-17 21:15:28', '0');
INSERT INTO `message` VALUES ('12', '评论通知', '用户转发了你的动态', '1', null, '35', '2', null, '1', '2020-11-17 21:20:21', '0');
INSERT INTO `message` VALUES ('13', '系统通知', '欢迎注册汽车之家', '1', null, '35', null, null, '0', '2020-11-20 20:14:31', '0');
INSERT INTO `message` VALUES ('14', '系统通知', '欢迎注册汽车之家', '1', null, '35', null, null, '0', '2020-11-20 20:14:31', '0');
INSERT INTO `message` VALUES ('15', '系统通知', '欢迎注册汽车之家', '1', null, '35', null, null, '0', '2020-11-20 20:14:31', '0');
INSERT INTO `message` VALUES ('16', '系统通知', '欢迎注册汽车之家', '1', null, '35', null, null, '0', '2020-11-20 20:14:31', '0');
INSERT INTO `message` VALUES ('17', '系统通知', '欢迎注册汽车之家', '1', null, '6', null, null, '0', '2021-03-22 16:34:44', '0');
INSERT INTO `message` VALUES ('18', '你好', 'hello，我是刘德华', '3', null, '35', null, null, '2', '2021-03-02 16:36:59', '0');
INSERT INTO `message` VALUES ('19', '系统通知', '欢迎注册汽车之家', '1', null, '7', null, null, '0', '2021-03-25 22:03:49', '0');
INSERT INTO `message` VALUES ('20', '系统通知', '用户关注了你', '1', '35', '1', null, null, '0', '2021-03-30 16:17:57', '0');
INSERT INTO `message` VALUES ('21', '动态通知', '用户点赞了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:32:55', '0');
INSERT INTO `message` VALUES ('22', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:33:12', '0');
INSERT INTO `message` VALUES ('23', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:34:09', '0');
INSERT INTO `message` VALUES ('24', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:34:11', '0');
INSERT INTO `message` VALUES ('25', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:34:13', '0');
INSERT INTO `message` VALUES ('26', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:34:15', '0');
INSERT INTO `message` VALUES ('27', '动态通知', '用户点赞了你的动态', '1', '35', '7', '34', null, '1', '2021-03-30 16:42:56', '0');
INSERT INTO `message` VALUES ('28', '动态通知', '用户点赞了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:43:10', '0');
INSERT INTO `message` VALUES ('29', '系统通知', '用户关注了你', '1', '2', '35', null, null, '1', '2021-03-30 17:27:52', '0');
INSERT INTO `message` VALUES ('30', '关注通知', '用户关注了你', '1', '3', '35', null, null, '1', '2021-03-30 17:32:41', '0');
INSERT INTO `message` VALUES ('31', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-03-30 17:48:07', '0');
INSERT INTO `message` VALUES ('32', '动态通知', '用户点赞了你的动态', '1', '35', '3', '14', null, '1', '2021-03-30 18:34:50', '0');
INSERT INTO `message` VALUES ('33', '动态通知', '用户点赞了你的动态', '1', '35', '7', '34', null, '1', '2021-03-30 18:34:54', '0');
INSERT INTO `message` VALUES ('34', '动态通知', '用户点赞了你的动态', '1', '1', '7', '34', null, '1', '2021-03-30 18:35:53', '0');
INSERT INTO `message` VALUES ('35', '动态通知', '用户点赞了你的动态', '1', '35', '7', '34', null, '1', '2021-03-30 18:59:06', '0');
INSERT INTO `message` VALUES ('36', '动态通知', '用户评论了你的动态', '1', '35', '7', '34', null, '1', '2021-03-30 18:59:09', '0');
INSERT INTO `message` VALUES ('37', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '11', '3', '2021-03-30 18:59:19', '0');
INSERT INTO `message` VALUES ('38', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-03-31 10:44:39', '0');
INSERT INTO `message` VALUES ('39', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-03-31 10:44:46', '0');
INSERT INTO `message` VALUES ('40', '关注通知', '用户关注了你', '1', '35', '10', null, null, '1', '2021-03-31 10:50:45', '0');
INSERT INTO `message` VALUES ('41', '动态通知', '用户转发了你的动态', '1', '35', '7', '34', null, '1', '2021-03-31 10:52:45', '0');
INSERT INTO `message` VALUES ('42', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-03-31 11:58:30', '0');
INSERT INTO `message` VALUES ('43', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-03-31 12:01:21', '0');
INSERT INTO `message` VALUES ('44', '动态通知', '用户点赞了你的动态', '1', '35', '35', '35', null, '1', '2021-03-31 16:36:15', '0');
INSERT INTO `message` VALUES ('45', '动态通知', '用户评论了你的动态', '1', '35', '35', '35', null, '1', '2021-03-31 16:36:19', '0');
INSERT INTO `message` VALUES ('46', '动态通知', '用户点赞了你的动态', '1', '35', '35', '36', null, '1', '2021-03-31 18:59:24', '0');
INSERT INTO `message` VALUES ('47', '动态通知', '用户评论了你的动态', '1', '35', '35', '36', null, '1', '2021-03-31 20:30:29', '0');
INSERT INTO `message` VALUES ('48', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-01 09:28:34', '0');
INSERT INTO `message` VALUES ('49', '动态通知', '用户转发了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 11:58:36', '0');
INSERT INTO `message` VALUES ('50', '动态通知', '用户转发了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 11:59:04', '0');
INSERT INTO `message` VALUES ('51', '动态通知', '用户评论了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 11:59:34', '0');
INSERT INTO `message` VALUES ('52', '动态通知', '用户评论了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 11:59:57', '0');
INSERT INTO `message` VALUES ('53', '动态通知', '用户点赞了你的动态', '1', '35', '7', '34', null, '1', '2021-04-01 20:31:50', '0');
INSERT INTO `message` VALUES ('54', '动态通知', '用户点赞了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 20:32:01', '0');
INSERT INTO `message` VALUES ('55', '动态通知', '用户点赞了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 20:32:09', '0');
INSERT INTO `message` VALUES ('56', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '10', '3', '2021-04-01 20:38:13', '0');
INSERT INTO `message` VALUES ('57', '动态通知', '用户点赞了你的动态', '1', '35', '35', '2', null, '1', '2021-04-01 20:38:23', '0');
INSERT INTO `message` VALUES ('58', '动态通知', '用户评论了你的动态', '1', '35', '35', '2', null, '1', '2021-04-01 20:38:28', '0');
INSERT INTO `message` VALUES ('59', '动态通知', '用户评论了你的动态', '1', '35', '35', '2', null, '1', '2021-04-01 20:38:48', '0');
INSERT INTO `message` VALUES ('60', '动态通知', '用户点赞了你的动态', '1', '35', '35', '2', null, '1', '2021-04-01 20:38:52', '0');
INSERT INTO `message` VALUES ('61', '动态通知', '用户评论了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:39:31', '0');
INSERT INTO `message` VALUES ('62', '动态通知', '用户评论了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:39:39', '0');
INSERT INTO `message` VALUES ('63', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '19', '3', '2021-04-01 20:39:47', '0');
INSERT INTO `message` VALUES ('64', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '18', '3', '2021-04-01 20:39:48', '0');
INSERT INTO `message` VALUES ('65', '动态通知', '用户点赞了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:39:52', '0');
INSERT INTO `message` VALUES ('66', '动态通知', '用户转发了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:39:54', '0');
INSERT INTO `message` VALUES ('67', '动态通知', '用户转发了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:40:54', '0');
INSERT INTO `message` VALUES ('68', '动态通知', '用户转发了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 20:41:16', '0');
INSERT INTO `message` VALUES ('69', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-01 21:14:37', '0');
INSERT INTO `message` VALUES ('70', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-01 21:14:40', '0');
INSERT INTO `message` VALUES ('71', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-01 21:15:54', '0');
INSERT INTO `message` VALUES ('72', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-01 21:16:28', '0');
INSERT INTO `message` VALUES ('73', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:18:38', '0');
INSERT INTO `message` VALUES ('74', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:18:56', '0');
INSERT INTO `message` VALUES ('75', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:20:33', '0');
INSERT INTO `message` VALUES ('76', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:20:37', '0');
INSERT INTO `message` VALUES ('77', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:23:45', '0');
INSERT INTO `message` VALUES ('78', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:24:16', '0');
INSERT INTO `message` VALUES ('79', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:24:44', '0');
INSERT INTO `message` VALUES ('80', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:24:46', '0');
INSERT INTO `message` VALUES ('81', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:27:59', '0');
INSERT INTO `message` VALUES ('82', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:28:05', '0');
INSERT INTO `message` VALUES ('83', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:28:20', '0');
INSERT INTO `message` VALUES ('84', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:28:26', '0');
INSERT INTO `message` VALUES ('85', '147', '123', '35', null, '7', null, null, '2', '2021-04-02 10:50:28', '0');
INSERT INTO `message` VALUES ('86', '', '122232', '7', null, '35', null, null, '2', '2021-04-02 10:51:04', '1');
INSERT INTO `message` VALUES ('87', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:53:32', '0');
INSERT INTO `message` VALUES ('88', '颐和园', '和一塌糊涂氧化亚铜', '35', null, '7', null, null, '2', '2021-04-02 10:53:53', '0');
INSERT INTO `message` VALUES ('89', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:58:30', '0');
INSERT INTO `message` VALUES ('90', '动态通知', '用户点赞了你的动态', '1', '35', '35', '38', null, '1', '2021-04-02 11:08:27', '0');
INSERT INTO `message` VALUES ('91', '动态通知', '用户转发了你的动态', '1', '35', '35', '38', null, '1', '2021-04-02 11:08:32', '0');
INSERT INTO `message` VALUES ('92', '动态通知', '用户转发了你的动态', '1', '35', '35', '39', null, '1', '2021-04-02 11:08:56', '0');
INSERT INTO `message` VALUES ('93', '111', '222', '3', null, '35', null, null, '2', '2021-04-02 11:37:39', '1');
INSERT INTO `message` VALUES ('94', 'cdscdscdsvc', 'sdvdsvdsvs', '3', null, '35', null, null, '2', '2021-04-02 11:38:12', '0');
INSERT INTO `message` VALUES ('95', 'Pdd', 'ddd', '4', null, '35', null, null, '2', '2021-04-02 11:42:34', '0');
INSERT INTO `message` VALUES ('96', '大马猴', '1111', '5', null, '35', null, null, '2', '2021-04-02 11:43:10', '0');
INSERT INTO `message` VALUES ('97', '更新通知', '你的关注更新了动态', '1', '35', '1', '40', null, '1', '2021-04-02 13:51:11', '0');
INSERT INTO `message` VALUES ('98', '更新通知', '你的关注更新了动态', '1', '35', '2', '40', null, '1', '2021-04-02 13:51:11', '0');
INSERT INTO `message` VALUES ('99', '更新通知', '你的关注更新了动态', '1', '35', '3', '40', null, '1', '2021-04-02 13:51:11', '0');
INSERT INTO `message` VALUES ('100', '麻瓜藤', '1111', '35', null, '2', null, null, '2', '2021-04-02 13:58:57', '1');
INSERT INTO `message` VALUES ('101', '动态通知', '用户点赞了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:18:59', '0');
INSERT INTO `message` VALUES ('102', '动态通知', '用户转发了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:19:38', '0');
INSERT INTO `message` VALUES ('103', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:20:07', '0');
INSERT INTO `message` VALUES ('104', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:22:01', '0');
INSERT INTO `message` VALUES ('105', '动态通知', '用户评论了你的动态', '1', '35', '35', '39', null, '1', '2021-04-02 14:22:09', '0');
INSERT INTO `message` VALUES ('106', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:31:17', '0');
INSERT INTO `message` VALUES ('107', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:33:42', '0');
INSERT INTO `message` VALUES ('108', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:54:26', '0');
INSERT INTO `message` VALUES ('109', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:55:09', '0');
INSERT INTO `message` VALUES ('110', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '24', '3', '2021-04-02 14:55:40', '0');
INSERT INTO `message` VALUES ('111', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:55:54', '0');
INSERT INTO `message` VALUES ('112', '动态通知', '用户点赞了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:55:58', '0');
INSERT INTO `message` VALUES ('113', '动态通知', '用户转发了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:56:00', '0');
INSERT INTO `message` VALUES ('114', '动态通知', '用户转发了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:56:17', '0');
INSERT INTO `message` VALUES ('115', '更新通知', '你的关注更新了动态', '1', '35', '1', '41', null, '1', '2021-04-02 14:56:42', '0');
INSERT INTO `message` VALUES ('116', '更新通知', '你的关注更新了动态', '1', '35', '2', '41', null, '1', '2021-04-02 14:56:42', '0');
INSERT INTO `message` VALUES ('117', '更新通知', '你的关注更新了动态', '1', '35', '3', '41', null, '1', '2021-04-02 14:56:42', '0');
INSERT INTO `message` VALUES ('118', '动态通知', '用户点赞了你的动态', '1', '35', '35', '41', null, '1', '2021-04-02 14:57:00', '0');
INSERT INTO `message` VALUES ('119', '动态通知', '用户评论了你的动态', '1', '35', '35', '41', null, '1', '2021-04-02 14:59:09', '0');
INSERT INTO `message` VALUES ('120', '动态通知', '用户点赞了你的动态', '1', '35', '35', '41', null, '1', '2021-04-02 15:00:59', '0');
INSERT INTO `message` VALUES ('121', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:01:57', '0');
INSERT INTO `message` VALUES ('122', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:02:21', '0');
INSERT INTO `message` VALUES ('123', '动态通知', '用户点赞了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:02:26', '0');
INSERT INTO `message` VALUES ('124', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:05:49', '0');
INSERT INTO `message` VALUES ('125', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:06:10', '0');
INSERT INTO `message` VALUES ('126', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-04-02 15:06:30', '0');
INSERT INTO `message` VALUES ('127', '动态通知', '用户点赞了你的动态', '1', '35', '35', '1', null, '1', '2021-04-02 15:06:41', '0');
INSERT INTO `message` VALUES ('128', '更新通知', '你的关注更新了动态', '1', '35', '1', '42', null, '1', '2021-04-02 15:14:00', '0');
INSERT INTO `message` VALUES ('129', '更新通知', '你的关注更新了动态', '1', '35', '2', '42', null, '1', '2021-04-02 15:14:00', '0');
INSERT INTO `message` VALUES ('130', '更新通知', '你的关注更新了动态', '1', '35', '3', '42', null, '1', '2021-04-02 15:14:00', '0');
INSERT INTO `message` VALUES ('131', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-04-02 16:10:39', '0');
INSERT INTO `message` VALUES ('132', '动态通知', '用户转发了你的动态', '1', '35', '35', '42', null, '1', '2021-04-02 16:13:39', '0');
INSERT INTO `message` VALUES ('133', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-02 17:34:09', '0');
INSERT INTO `message` VALUES ('134', '动态通知', '用户点赞了你的动态', '1', '35', '35', '37', null, '1', '2021-04-02 21:41:36', '0');
INSERT INTO `message` VALUES ('135', '动态通知', '用户评论了你的动态', '1', '35', '35', '37', null, '1', '2021-04-02 21:41:42', '0');
INSERT INTO `message` VALUES ('136', '更新通知', '你的关注更新了动态', '1', '35', '1', '43', null, '1', '2021-04-02 21:42:01', '0');
INSERT INTO `message` VALUES ('137', '更新通知', '你的关注更新了动态', '1', '35', '2', '43', null, '1', '2021-04-02 21:42:01', '0');
INSERT INTO `message` VALUES ('138', '更新通知', '你的关注更新了动态', '1', '35', '3', '43', null, '1', '2021-04-02 21:42:01', '0');
INSERT INTO `message` VALUES ('139', '动态通知', '用户点赞了你的动态', '1', '35', '35', '43', null, '1', '2021-04-02 21:46:10', '0');
INSERT INTO `message` VALUES ('140', '动态通知', '用户点赞了你的动态', '1', '35', '35', '43', null, '1', '2021-04-02 21:47:01', '0');
INSERT INTO `message` VALUES ('141', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-02 21:47:35', '0');
INSERT INTO `message` VALUES ('142', '动态通知', '用户评论了你的动态', '1', '35', '35', '43', null, '1', '2021-04-03 13:39:53', '0');
INSERT INTO `message` VALUES ('143', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '33', '3', '2021-04-03 13:40:01', '0');
INSERT INTO `message` VALUES ('144', '动态通知', '用户评论了你的动态', '1', '35', '35', '43', null, '1', '2021-04-03 13:40:13', '0');
INSERT INTO `message` VALUES ('145', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '34', '3', '2021-04-03 13:40:19', '0');
INSERT INTO `message` VALUES ('146', '动态通知', '用户点赞了你的动态', '1', '35', '35', '43', null, '1', '2021-04-03 13:40:40', '0');
INSERT INTO `message` VALUES ('147', '关注通知', '用户关注了你', '1', '3', '35', null, null, '1', '2021-04-03 13:44:06', '0');
INSERT INTO `message` VALUES ('148', '', '从不是是发DVD发表v', '2', null, '35', null, null, '2', '2021-04-03 13:49:40', '0');
INSERT INTO `message` VALUES ('149', '潇洒下是', '阿萨德心爱的三厢车', '35', null, '2', null, null, '2', '2021-04-03 13:52:32', '0');
INSERT INTO `message` VALUES ('150', '你刚发你', '辜负你', '35', null, '2', null, null, '2', '2021-04-03 13:53:32', '0');
INSERT INTO `message` VALUES ('151', '按时擦拭擦是', '按时擦拭擦是从', '35', null, '2', null, null, '2', '2021-04-03 13:54:03', '0');
INSERT INTO `message` VALUES ('152', '擦擦撒擦擦是', '按时擦擦从', '35', null, '2', null, null, '2', '2021-04-03 13:54:11', '0');
INSERT INTO `message` VALUES ('153', '西安市西安市', '按顺序三', '35', null, '2', null, null, '2', '2021-04-03 13:54:44', '0');
INSERT INTO `message` VALUES ('154', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:54:59', '0');
INSERT INTO `message` VALUES ('155', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:55:04', '0');
INSERT INTO `message` VALUES ('156', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:55:10', '0');
INSERT INTO `message` VALUES ('157', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:56:18', '0');
INSERT INTO `message` VALUES ('158', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:56:39', '0');
INSERT INTO `message` VALUES ('159', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:57:51', '0');
INSERT INTO `message` VALUES ('160', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:58:21', '0');
INSERT INTO `message` VALUES ('161', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:59:32', '0');
INSERT INTO `message` VALUES ('162', 'ascasc', '吃的是草的SV', '35', null, '2', null, null, '2', '2021-04-03 14:08:03', '0');
INSERT INTO `message` VALUES ('163', '擦擦删除', '按时西安市西安市', '35', null, '2', null, null, '2', '2021-04-03 14:08:23', '0');
INSERT INTO `message` VALUES ('164', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-03 14:10:40', '0');
INSERT INTO `message` VALUES ('165', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-03 14:12:05', '0');
INSERT INTO `message` VALUES ('166', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-03 14:25:36', '0');
INSERT INTO `message` VALUES ('167', '关注通知', '用户关注了你', '1', '10', '1', null, null, '1', '2021-04-03 20:21:32', '0');
INSERT INTO `message` VALUES ('168', '动态通知', '用户转发了你的动态', '1', '4', '35', '43', null, '1', '2021-04-04 11:56:17', '0');
INSERT INTO `message` VALUES ('169', '动态通知', '用户转发了你的动态', '1', '4', '35', '1', null, '1', '2021-04-04 11:56:31', '0');
INSERT INTO `message` VALUES ('170', '动态通知', '用户转发了你的动态', '1', '4', '35', '43', null, '1', '2021-04-04 11:58:32', '0');
INSERT INTO `message` VALUES ('171', '动态通知', '用户转发了你的动态', '1', '35', '35', '43', null, '1', '2021-04-04 11:59:24', '0');
INSERT INTO `message` VALUES ('172', '动态通知', '用户转发了你的动态', '1', '35', '35', '43', null, '1', '2021-04-04 11:59:35', '0');
INSERT INTO `message` VALUES ('173', '动态通知', '用户转发了你的动态', '1', '35', '35', '43', null, '1', '2021-04-04 11:59:49', '0');
INSERT INTO `message` VALUES ('174', '动态通知', '用户点赞了你的动态', '1', '35', '35', '43', null, '1', '2021-04-04 12:00:13', '0');
INSERT INTO `message` VALUES ('175', '动态通知', '用户评论了你的动态', '1', '35', '35', '42', null, '1', '2021-04-04 12:00:36', '0');
INSERT INTO `message` VALUES ('176', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-04 13:05:07', '0');
INSERT INTO `message` VALUES ('177', '关注通知', '用户关注了你', '1', '1', '2', null, null, '1', '2021-04-06 22:27:56', '0');
INSERT INTO `message` VALUES ('178', '关注通知', '用户关注了你', '1', '1', '2', null, null, '1', '2021-04-06 22:27:58', '0');
INSERT INTO `message` VALUES ('179', '关注通知', '用户关注了你', '1', '1', '2', null, null, '1', '2021-04-06 22:29:46', '0');
INSERT INTO `message` VALUES ('180', '更新通知', '你的关注更新了动态', '1', '35', '1', '44', null, '1', '2021-04-13 13:34:06', '0');
INSERT INTO `message` VALUES ('181', '更新通知', '你的关注更新了动态', '1', '35', '2', '44', null, '1', '2021-04-13 13:34:06', '0');
INSERT INTO `message` VALUES ('182', '更新通知', '你的关注更新了动态', '1', '35', '3', '44', null, '1', '2021-04-13 13:34:06', '0');
INSERT INTO `message` VALUES ('183', '系统通知', '你的文章已被驳回', '1', null, '1', null, null, '0', '2021-04-13 16:45:27', '0');
INSERT INTO `message` VALUES ('184', '系统通知', '你的文章已通过审核', '1', null, '1', null, null, '0', '2021-04-13 16:49:03', '0');
INSERT INTO `message` VALUES ('185', '系统通知', '你的文章已通过审核', '1', null, '2', null, null, '0', '2021-04-13 16:50:06', '0');
INSERT INTO `message` VALUES ('186', '系统通知', '你的文章已通过审核', '1', null, '2', null, null, '0', '2021-04-13 16:50:13', '0');
INSERT INTO `message` VALUES ('187', '系统通知', '你的文章已通过审核', '1', null, '9', null, null, '0', '2021-04-13 16:51:34', '0');
INSERT INTO `message` VALUES ('188', '系统通知', '你的文章已被驳回', '1', null, '2', null, null, '0', '2021-04-13 16:51:41', '0');
INSERT INTO `message` VALUES ('189', '系统通知', '你的文章已通过审核', '1', null, '1', null, null, '0', '2021-04-13 16:53:45', '0');
INSERT INTO `message` VALUES ('190', '系统通知', '你的文章已通过审核', '1', null, '1', null, null, '0', '2021-04-13 16:54:06', '0');
INSERT INTO `message` VALUES ('191', '系统通知', '你的文章已通过审核', '1', null, '1', null, null, '0', '2021-04-13 16:55:40', '0');
INSERT INTO `message` VALUES ('192', '系统通知', '你的文章《中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座》已通过审核', '1', null, '9', null, null, '0', '2021-04-13 17:02:34', '0');
INSERT INTO `message` VALUES ('193', '系统通知', '你的文章《待审核测试》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:03:11', '0');
INSERT INTO `message` VALUES ('194', '系统通知', '你的文章《3333333333333》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:03:22', '0');
INSERT INTO `message` VALUES ('195', '系统通知', '你的文章《实拍沃尔沃S90 美观的优先级是要大于实用性的吗？》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:03:34', '0');
INSERT INTO `message` VALUES ('196', '系统通知', '你的文章《22222222222222222》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:04:17', '0');
INSERT INTO `message` VALUES ('197', '系统通知', '你的文章《已驳回测试》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:04:27', '0');
INSERT INTO `message` VALUES ('198', '系统通知', '你的文章《第一试驾丨福特领裕，能否叫板汉兰达？》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:04:29', '0');
INSERT INTO `message` VALUES ('199', '系统通知', '你的文章《试驾宝马6系GT：2.0T+8AT，踩下油门，推背感喷涌而出》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:06:13', '0');
INSERT INTO `message` VALUES ('200', '系统通知', '你的文章《中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座》已通过审核', '1', null, '9', null, null, '0', '2021-04-13 17:06:29', '0');
INSERT INTO `message` VALUES ('201', '系统通知', '你的文章《实拍沃尔沃S90 美观的优先级是要大于实用性的吗？》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:07:20', '0');
INSERT INTO `message` VALUES ('202', '系统通知', '你的文章《3333333333333》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:14:01', '0');
INSERT INTO `message` VALUES ('203', '系统通知', '你的文章《待审核测试》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:14:09', '0');
INSERT INTO `message` VALUES ('204', '系统通知', '你的文章《国产SUV的智能辅助驾驶值得信赖吗？抢新体验WEY摩卡》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:14:28', '0');
INSERT INTO `message` VALUES ('205', '系统通知', '你的文章《买发动机送车还送牌照 东风本田CR-V PHEV给我太多惊喜》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:15:51', '0');
INSERT INTO `message` VALUES ('206', '系统通知', '你的文章《实拍沃尔沃S90 美观的优先级是要大于实用性的吗？》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:16:04', '0');
INSERT INTO `message` VALUES ('207', '系统通知', '你的文章《国产SUV的智能辅助驾驶值得信赖吗？抢新体验WEY摩卡》已被驳回', '1', null, '1', null, null, '0', '2021-04-13 17:17:06', '0');
INSERT INTO `message` VALUES ('208', '系统通知', '你的文章《买发动机送车还送牌照 东风本田CR-V PHEV给我太多惊喜》已被驳回', '1', null, '1', null, null, '0', '2021-04-13 17:19:12', '0');
INSERT INTO `message` VALUES ('209', '系统通知', '你的文章《国产SUV的智能辅助驾驶值得信赖吗？抢新体验WEY摩卡》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:19:16', '0');
INSERT INTO `message` VALUES ('210', '系统通知', '你的文章《买发动机送车还送牌照 东风本田CR-V PHEV给我太多惊喜》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:19:17', '0');
INSERT INTO `message` VALUES ('211', '系统通知', '你的文章《22222222222222222》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:19:23', '0');
INSERT INTO `message` VALUES ('212', '系统通知', '你的文章《3333333333333》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:38:44', '0');
INSERT INTO `message` VALUES ('213', '系统通知', '你的文章《3333333333333》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:38:46', '0');
INSERT INTO `message` VALUES ('214', '系统通知', '你的文章《555555555555555555》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:38:49', '0');
INSERT INTO `message` VALUES ('215', '系统通知', '你的文章《已驳回测试》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:47:09', '0');
INSERT INTO `message` VALUES ('216', '系统通知', '你的文章《555555555555555555》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:47:21', '0');
INSERT INTO `message` VALUES ('217', '系统通知', '你的文章《555555555555555555》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:53:39', '0');
INSERT INTO `message` VALUES ('218', '系统通知', '你的文章《555555555555555555》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:53:46', '0');
INSERT INTO `message` VALUES ('219', '系统通知', '你的文章《4444》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:53:59', '0');
INSERT INTO `message` VALUES ('220', '系统通知', '你的文章《待审核测试》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:54:18', '0');
INSERT INTO `message` VALUES ('221', '系统通知', '你的文章《555555555555555555》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:54:20', '0');
INSERT INTO `message` VALUES ('222', '系统通知', '你的文章《RS 6首先是一款非常舒适的车型》已被驳回', '1', null, '2', null, null, '0', '2021-04-14 15:35:25', '0');
INSERT INTO `message` VALUES ('223', '系统通知', '你的文章《4444》已通过审核', '1', null, '2', null, null, '0', '2021-04-14 15:35:47', '0');
INSERT INTO `message` VALUES ('224', '系统通知', '你的文章《3333333333333》已被驳回', '1', null, '2', null, null, '0', '2021-04-14 15:35:50', '0');
INSERT INTO `message` VALUES ('225', '系统通知', '你的文章《RS 6首先是一款非常舒适的车型》已通过审核', '1', null, '2', null, null, '0', '2021-04-14 15:36:02', '0');
INSERT INTO `message` VALUES ('226', '系统通知', '你的文章《或于3月上市 新款4008/5008内饰实车图》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:48', '0');
INSERT INTO `message` VALUES ('227', '系统通知', '你的文章《比亚迪唐DM-i将于4月19日上海车展上市》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:50', '0');
INSERT INTO `message` VALUES ('228', '系统通知', '你的文章《CX-5黑骑士版等 马自达上海车展阵容》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:52', '0');
INSERT INTO `message` VALUES ('229', '系统通知', '你的文章《两种续航可选 威马W6将于4月16日上市》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:53', '0');
INSERT INTO `message` VALUES ('230', '系统通知', '你的文章《加速4秒内 极氪001将于4月15日首发上市》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:55', '0');
INSERT INTO `message` VALUES ('231', '系统通知', '你的文章《将于4月19日正式亮相 荣威鲸官图发布》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:15:31', '0');
INSERT INTO `message` VALUES ('232', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-04-18 18:16:26', '0');
INSERT INTO `message` VALUES ('233', '关注通知', '用户关注了你', '1', '35', '4', null, null, '1', '2021-04-18 18:16:32', '0');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `news_photo` varchar(255) DEFAULT NULL COMMENT '封面(可为空)',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `text1` varchar(1024) NOT NULL COMMENT '正文',
  `text2` varchar(1024) DEFAULT NULL,
  `text3` varchar(1024) DEFAULT NULL,
  `text4` varchar(1024) DEFAULT NULL,
  `text5` varchar(1024) DEFAULT NULL,
  `text6` varchar(1024) DEFAULT NULL,
  `text7` varchar(1024) DEFAULT NULL,
  `style_id` int(11) NOT NULL DEFAULT '1' COMMENT '相关车系id',
  `user_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '公众号id',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `count` bigint(20) NOT NULL DEFAULT '0' COMMENT '点击量',
  `wybs` varchar(255) DEFAULT NULL COMMENT '唯一标识',
  `zt` int(10) NOT NULL DEFAULT '0' COMMENT '状态 0审核中 1已发布',
  `sscmc` varchar(255) DEFAULT NULL COMMENT '上市车名称',
  `sssj` varchar(255) DEFAULT NULL COMMENT '上市时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/3901a59ce4624e76bc7f87e653c0e929.jpg', '试驾北京现代第五代途胜L 是荣放和CR-V的对手吗？', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '1', '1', '2020-12-14 12:12:15', '366', null, '4', null, null);
INSERT INTO `news` VALUES ('2', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/59061726528e433385b0a1a79c62cdb0.jpg', '纯电模式续航里程85km 皓影PHEV车型将于4月上市', '外观方面，新车基本延续了燃油版车型的造型，前脸大块镀铬饰条一直延伸到了前大灯，整体非常霸气。侧面造型比较修长，车身下方的黑色饰条围绕全车，增加运动感。车尾部分整体呈梯形设计，增加了e+ PHEV标识，表明了其插电混动车型的身份，细长型的尾灯造型非常动感，点亮后辨识度很高。新车长宽高为4718*1861*1679mm，轴距为2660mm。\r\n\r\n\r\n\r\n内饰设计和配置预计都将沿用燃油版车型，搭载Honda CONNECT 2.0智导互联系统、Honda_link手机APP、Honda SENSING 安全超感等应该都会出现在皓影PHEV车型上。', null, null, null, null, null, null, '1', '2', '2020-12-13 12:01:02', '29', null, '4', null, null);
INSERT INTO `news` VALUES ('3', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/09fb74d1d8b84d1bacc2f200ecfe5150.jpg', '年轻人的大玩具 广汽传祺EMPOW55将于上海车展亮相', '平心而论，即便广汽传祺的产品研发技术并不能算是国产顶尖水准，但在多年努力之下，似乎让广汽传祺变得更加纯熟，也有了相对稳定的销量和口碑。如果您想入手一款价格实惠，外观抢眼的轿跑车，不妨再等等广汽传祺EMPOW55，看他还能带来哪些惊喜。', null, null, null, null, null, null, '1', '1', '2020-12-13 12:01:02', '39', null, '4', null, null);
INSERT INTO `news` VALUES ('4', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/046a0533f2df40b4816818f67bfc7fa1.jpg', '3·15曝光后续、现代汽车或用刀片电池、恒大腾讯合作', '韩国媒体最新报道，预计现代汽车将在中国销售的电动汽车中使用比亚迪生产的驱动电池，北京现代正在与比亚迪就刀片电池的供应进行谈判。\r\n\r\n据悉，比亚迪目前已经成立了一个负责与现代汽车合作的业务部门，并提出从2022年起向现代提供电池。据内部人士透露，如果现代方面愿意，比亚迪计划将重庆的部分电池装配线用于现代汽车的供货。', null, null, null, null, null, null, '1', '1', '2020-12-13 12:01:02', '130', null, '4', null, null);
INSERT INTO `news` VALUES ('5', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/a02ecafb635243b1b5eec675dbe1e18c.jpg', 'RS 6首先是一款非常舒适的车型', '近日，东风日产全新奇骏的实车图曝光，新车将延续海外造型设计，并搭载最新开发的1.5T三缸可变压缩比发动机，发动机压缩比能在8:1至14:1之间智能切换，最大输出204匹马力，匹配模拟8速挡位的CVT变速箱。在此之前，新车已于2020年率先在北美市场发布。 相较于现款，新车的外观尺寸有所增加，轴距则保持不变。内饰方面，新车采用最新的设计语言，12.3英寸液晶仪表和9.0英寸悬浮式中控屏的组合，有效提升科技感。', null, null, null, null, null, null, '1', '2', '2021-02-13 12:01:02', '57', null, '4', null, null);
INSERT INTO `news` VALUES ('6', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/351a704103b64ba3bbd503b779e631a8.jpg', '第一试驾丨福特领裕，能否叫板汉兰达？', '领裕的出现不仅仅是福特加码在中大型SUV的布局，更是江铃福特填补领界和撼路者两者之间的市场空白。作为继领界和撼路者之后的国产第三款SUV，主打6座布局的领裕能否在一众竞品当中脱颖而出，获得国人的喜爱呢？\r\n\r\n01 全新家族式设计，\r\n\r\n浓浓的美系大气之风\r\n\r\n在我们的印象中，说到美系的7座SUV一般都会联想到大气硬朗，且十分魁梧。这点在福特领裕上也有所体现，首先是车身比较魁梧，4米9的车身长度和2865mm的轴距要比汉兰达的车身大一圈。其次，领裕没有完全采用美系SUV那种肌肉感十足的线条设计，而是用一些凌厉线条来凸显其干练的外观，整体而言是大气而不臃肿。', null, null, null, null, null, null, '1', '1', '2020-12-13 12:01:02', '257', null, '4', null, null);
INSERT INTO `news` VALUES ('7', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/7308f1fb368242e794ea7e79a16020cc.jpg', '试驾宝马6系GT：2.0T+8AT，踩下油门，推背感喷涌而出', '手握60万买宝马，我想绝大多数消费者都会选择一辆有着巨额优惠的730Li，虽然四缸发动机马力小了点，但毕竟是一辆宝马轿车序列里的旗舰车型，无论是出门见客户、还是回家看父母，都显得非常得体。不过对于一部分不愿意随大流的消费者，7系显得有些太过平淡，而且商务属性有些偏重，不太适合作为家庭用车。那么这个时候6系GT或许可以满足这部分消费者的用车需求。', null, null, null, null, null, null, '1', '1', '2020-12-13 12:01:02', '16', null, '4', null, null);
INSERT INTO `news` VALUES ('8', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/4c3e07fafafd4cacbfd46f5eee3f96ce.jpg', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座', '2021年1月，星途品牌正式宣布旗下旗舰7座SUV正式定名为了 星途揽月 ( 参数 | 询价 ) 。3月18日，新车正式上市了，星途揽月共推出6款车型，290T车型搭载1.6T涡轮增压发动机，390T搭载2.0T涡轮增压发动机，全系售价区间为16.89-22.99万元。Lion 4.0雄狮智云系统、AR虚拟现实导航、人脸识别功能等都是它的特色配置，2.0T+7挡双离合变速箱+四驱系统也吊足了消费者的胃口，下面我们一起来看它的表现如何。', null, null, null, null, null, null, '1', '9', '2020-12-13 12:01:02', '2556', null, '4', null, null);
INSERT INTO `news` VALUES ('9', null, '帝豪GS—跨界SUV中的性价比之王', '帝豪GS—跨界SUV中的性价比之王', null, null, null, null, null, null, '1', '1', '2020-12-13 12:01:02', '0', null, '4', null, null);
INSERT INTO `news` VALUES ('10', null, '实拍沃尔沃S90 美观的优先级是要大于实用性的吗？', '今天我们找到了一辆沃尔沃S90，本期的视频内容就为各位展示了沃尔沃S90的实拍。', null, null, null, null, null, null, '1', '1', '2020-12-13 12:01:02', '0', null, '4', null, null);
INSERT INTO `news` VALUES ('11', null, '国产SUV的智能辅助驾驶值得信赖吗？抢新体验WEY摩卡', '汽车智能化已经成为这个时代不可逆转的趋势，汽车将不再是传统的代步工具，而是具备主动思考和行动能力的出行伙伴，汽车界亟待新物种出现。\r\n汽车智能化已经成为这个时代不可逆转的趋势，汽车将不再是传统的代步工具，而是具备主动思考和行动能力的出行伙伴，汽车界亟待新物种出现。\r\n汽车智能化已经成为这个时代不可逆转的趋势，汽车将不再是传统的代步工具，而是具备主动思考和行动能力的出行伙伴，汽车界亟待新物种出现。', null, null, null, null, null, null, '1', '1', '2020-12-13 12:01:02', '1', null, '4', null, null);
INSERT INTO `news` VALUES ('12', null, '买发动机送车还送牌照 东风本田CR-V PHEV给我太多惊喜', '或许是被我的抱怨烦到耳朵起茧，领导说了我一句：“知不知道F1都用混动意味着什么？意味着燃油机的大势所趋是混动，你的所有烦恼，都因为你的发动机没有电机配合。2021是混动的大年，给一辆混动中的王牌车型你体验体验。”说罢，甩给了我一串东风本田CR-V PHEV的钥匙。\r\n\r\n外观及内饰总结成一句：真香！', null, null, null, null, null, null, '1', '1', '2020-12-13 12:01:02', '1', null, '4', null, null);
INSERT INTO `news` VALUES ('48', '', '待上传图集', '待上传图集', '', '', '', '', '', '', '2', '2', '2021-04-08 16:12:47', '0', '6dcc10d783084f51b6c628cf684fece0', '2', null, null);
INSERT INTO `news` VALUES ('49', '', '待审核测试', '待审核测试', '', '', '', '', '', '', '1', '2', '2021-04-08 16:13:06', '0', '457e6d38b64c4d0b867bde610995c8d2', '3', null, null);
INSERT INTO `news` VALUES ('50', '', '已驳回测试', '已驳回测试', '', '', '', '', '', '', '1', '2', '2021-04-08 16:13:29', '5', '6e751cfc38c94fd9bd580276b25497d5', '5', null, null);
INSERT INTO `news` VALUES ('51', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/12/9740132fe3804102ac056507e2a9b5bc.jpg', '111111111111111111111111111', '111111', '', '', '', '', '', '', '2', '2', '2021-04-12 10:42:33', '1', '0965114498694e83a5a9abc05c5404d2', '2', null, null);
INSERT INTO `news` VALUES ('52', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/12/791dcaf7179347cbbeae3993f6409b9c.jpg', '22222222222222222', '22222', '', '', '', '', '', '', '1', '2', '2021-04-12 10:47:11', '1', '6df1303ce85d48bb97ab52ba9aee9799', '3', null, null);
INSERT INTO `news` VALUES ('53', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/12/45065f18525e41da844b726cdcce3ba7.jpg', '3333333333333', '3333333333333', '', '', '', '', '', '', '1', '2', '2021-04-12 10:47:42', '0', '7f02efc4cd944440b80391ca47f95b11', '5', null, null);
INSERT INTO `news` VALUES ('54', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/12/7d8a1844d1b04c559da13b16f3e9a7d8.jpg', '4444', '44444444444444444444444', '', '', '', '', '', '', '2', '2', '2021-04-12 10:53:24', '4', '73858e82c5f8424db55f1b9ed76412e6', '4', null, null);
INSERT INTO `news` VALUES ('55', '', '555555555555555555', '55555555555555555', '', '', '', '', '', '', '2', '2', '2021-04-12 10:53:37', '3', '16bdea27b54146c18e7941a491a78cd4', '3', null, null);
INSERT INTO `news` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/762223b179eb4a7c883020ae0ced0a52.jpg', '加速4秒内 极氪001将于4月15日首发上市', '[汽车之家 新能源]  日前我们从极氪汽车官方获悉，其首款纯电动车极氪001(参数|询价)将于4月15日首发并上市。据了解，该车型搭载永磁双子电驱系统，官方数据显示其最大功率为400kW（约544Ps），峰值扭矩768N·m，0-100km/h加速时间为3.8秒，0-100km/h制动距离为34.5m，风阻系数Cd为0.23。据悉，极氪001性能版将搭配空气悬架和后轮转向系统，定位或将伸向运动豪华市场。', '外观方面，量产版车型与概念版区别不大，依旧是分体式大灯结构，前进气格栅与下半部分的远近光融为一体，形成贯穿式设计，提升了新车横向视觉宽度；上半部分为纵向布局的LED日间行车灯。新车前包围采用了较为运动化的设计，前唇的尺寸非常可观，为新车的运动感增加了强烈的视觉效果。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '内饰部分，新车采用8.8英寸的全液晶显示屏，搭配15.4英寸的中控多媒体触摸屏；三辐式多功能方向盘与短小的电子换挡机构相互配合，让新车看起来非常精致。 配置方面，新车配备了感应式无框车门、全自动空气悬架装置（150-220mm）、W-HUD超宽全色抬头显示系统、ECONYL环保赛车座椅、镭射真铝饰条、极光氛围灯等。车身尺寸方面，新车车长4950mm，轴距为2999mm。', '动力方面，新车基于SEA浩瀚架构打造，此前官方曾公布概念版的NEDC续航里程超过700公里。值得一提的是，该车型搭载永磁双子电驱系统，官方数据显示其最大功率为400kW（约544Ps），峰值扭矩768N·m，0-100km/h加速时间为3.8秒，0-100km/h制动距离为34.5m，风阻系数Cd为0.23。（文/汽车之家 姚嘉）', '', '1', '3', '2021-04-15 10:00:40', '0', 'b6ccdd59c2c64919bbb8e8626a1b4d2d', '4', '极氪001', '2021年04月15日');
INSERT INTO `news` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/5cb958d4adb64e9aa1702084dfac5159.jpg', '两种续航可选 威马W6将于4月16日上市', '[汽车之家 资讯] 日前，汽车之家从威马汽车官方获悉，威马W6(参数|询价)将于4月16日正式上市并开启交付。此前，新车已经开启预售，消费者只需支付6.6元购车意向金即可成为预约客户。据悉，该车有520km/620km两种续航里程可选，“无人自主泊车系统”是新车的亮点。', '回顾一下这款新车，威马W6最早在百度“2020 Apollo生态大会”上亮相。外观方面，新车继承了威马家族式设计语言，并有所创新，前脸竖状的灯带让新车显得十分犀利。', '侧面，威马W6的线条十分流畅，整体造型更显稳重；车身长宽高分别为4620/1847/1730mm，轴距为2715mm，定位为中型SUV。', '威马W6的尾部采用简约的设计风格，没有过多花哨的设计，配合造型精致的贯穿式尾灯，十分耐看。', '内饰方面，新车采用双联屏设计，搭载12.3英寸全液晶数字仪表屏和12.3英寸悬浮智能屏幕，再搭配出风口下方的控制面板，科技感十足。', '动力方面，申报信息显示，威马W6搭载最大功率为160kW的电机，并提供520km/620km两种续航里程可选。\n\n　　威马W6采用了全新电子电气架构，并搭载首款7纳米制程车规级高通8155芯片、5G基带以及威马汽车自研的自动驾驶域控制器，借助百度Apollo平台的百万级云算力，实现高阶辅助驾驶能力。', '新车最大的亮点自然是“无人自主泊车系统”，该系统分为HAVP（自主学习泊车）和PAVP（高精地图泊车）两种无人驾驶泊车场景。可让车主在地库实现通过手机操作车辆无人驾驶泊入/泊出车位；而PAVP可实现在公共场所停车时自动寻找车位，无固定路线场景的无人驾驶，包括自动上下停车楼等复杂寻车位路线。（文/汽车之家 邢月阳）', '1', '3', '2021-04-15 10:03:38', '0', '8cb6aeaf515b4f3fa856b8b5180f3f3d', '4', '威马W6', '2021年04月16日');
INSERT INTO `news` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/d8570ce3a7e8410c93d019e5375575d4.jpg', 'CX-5黑骑士版等 马自达上海车展阵容', '[汽车之家 资讯]  日前，马自达公布了2021上海车展的新车阵容。其中，马自达CX-5(参数|询价)黑骑士版及耀夜特装版将于4月17日上海车展前夕正式上市，其中黑骑士版的外观、内饰将全面焕新，安全、舒适、智能科技等配置也将进行升级。', '外观方面，新车基本延续在售车型设计风格，盾型进气格栅及细长的大灯组造型，凸显新车的动感。在细节方面，这款黑骑士版多处进行了黑化处理，如前脸熏黑亮面的进气格栅、黑亮色后视镜罩、19英寸铝合金黑色金属色泽轮圈、黑色皮质座椅等。', '除此之外，新车还将在安全、舒适、科技等配置方面进行升级，将把配置提升至同级别车型领先水平。目前具体的升级内容尚未公布，我们也将持续关注新车动态。\n\n　　动力方面，新车或将继续搭载2.0L和2.5L两款创驰蓝天发动机，最大功率分别为155马力和196马力，传动方面将匹配6速手自一体变速箱。另据官方介绍，CX-5黑骑士版即将投放中国市场，将在长安马自达南京工厂进行生产。', ' 马自达还将在本届上海车展亮相其首款新能源车型，以展示其在电动化领域的成果。据我们猜测，首款新能源车型很可能是一款纯电动小型SUV，内部代号为J59E，是基于J59Y（CX-30）在中国市场国产化后的技术改造的产品。车身尺寸方面，新车长宽高分别为4409/1835/1667mm，轴距为2672mm。相比CX-30来看，其车身尺寸有小幅增加。', '动力方面，J59E将搭载最大功率160kW的电动机，最大扭矩或为300N·m。此外，J59E的百公里耗电量以及电池组容量和长安CS55纯电动版相近，续航里程为400km，0-100km/h加速时间8.3秒。\n\n　　 CX-5耀夜特装版是马自达另一款即将展出的新车，目前官方未对新车进行更多信息露出。我们将持续保持关注。（文/汽车之家 宋爱菊）', '', '', '1', '3', '2021-04-15 10:05:58', '2', 'f0ddb8e92b1846a3bd8dc35cdef434a6', '4', 'CX-5黑骑士版', '2021年04月17日');
INSERT INTO `news` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/2c57f6d57faa4a928a9c636ccd7794e6.jpg', '比亚迪唐DM-i将于4月19日上海车展上市', '[汽车之家 资讯]  日前，我们从相关渠道获悉，比亚迪唐(参数|询价)DM-i将于4月19日开幕的2021上海车展正式上市，新车基于比亚迪DM-i平台进行打造，动力更换为全新的1.5T插电式混动动力总成。新车目前已经开启预售，预售价19.78-22.48万元。', '作为比亚迪打造的中型SUV，比亚迪唐DM-i延续了家族风格的Dragon Face设计语言，整体我们无法看出与在售的唐DM有明显区别，内饰方面，我们也相信二者将保持高度的一致。配置方面，新车将提供DiLink 3.0智能网联系统和DiPilot智能驾驶辅助系统，包含15.6英寸大屏、全速自适应巡航、前碰撞预警系统、自动紧急制动系统、行人识别/保护系统、车道偏离预警系统等。', '作为唐旗下最新车型，唐DM-i最大的特点来自于动力系统，搭载1.5T发动机和电动机组成的插电混动系统，并且采用了磷酸铁锂“刀片电池”，根据配置不同，该车有纯电续航52km和112km两种车型，亏电工况下的油耗分别为5.3L/100km和5.5L/100km，其0-100km/h加速时间为8.5s。（文/汽车之家 耿源）', '', '', '', '', '1', '3', '2021-04-15 10:08:14', '1', '1c3b86f37afd4c02a7e864168e6c98e0', '4', '唐DM-i', '2021年04月19日');
INSERT INTO `news` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/fb6ad9e0d3c24dd18a2175e966d5882e.jpg', '或于3月上市 新款4008/5008内饰实车图', '[汽车之家 资讯]  近日，我们拍摄到了新款标致4008(参数|询价)/5008的内饰实车图。这两款车中控设计继续保持一致，并均延续了此前设计，最大的特点是两款新车的中控屏尺寸更大，进一步凸显科技感。据悉，这两款新车或将于2021年3月份正式上市。', '此外，两款新车的座椅均升级为浅棕色皮质座椅，搭配大面积的Alcantara装饰，以期进一步提升了新车的质感和高级感。', '外观方面，新款5008与新款4008一样，均采用标致品牌全新锋锐设计语言，搭载散射状点阵式造型的前进气格栅，以及标致品牌全新狮徽LOGO。', '动力方面，新款标致4008/5008均提供1.6T及1.8T涡轮增压发动机两种选择，其中1.6T发动机最大功率170马力，最大扭矩250牛·米；1.8T发动机最大功率211马力，最大扭矩300牛·米。传动系统方面，原来的1.6T+6AT组合也有望升级为1.6T+8AT，这意味着全系车型将搭配8AT变速箱。', '极具设计感的内饰造型一直是标致4008及5008的一大特点，此次在继续保持年轻时尚的内饰设计基础上，增加了中控屏的尺寸，算是迎合了当前的趋势。此外，更加时尚的外观造型也是加分项，这些提升或助力新款标致4008/5008取得更好的销量成绩。（文/汽车之家 才丽媛）', '', '', '1', '3', '2021-04-15 10:10:13', '5', 'c8c96d4f26f64b92b5c78981ac2e5668', '4', '新款标致4008', '2021年04月19日');
INSERT INTO `news` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/7b544aabd405442e883e5d08d01d0849.jpg', '将于4月19日正式亮相 荣威鲸官图发布', '　[汽车之家 新车官图]  4月15日，我们从上汽荣威官方获取到了旗下全新SUV——鲸(参数|询价)的官图。新车采用“律动唤醒”设计，整体视觉效果更加科幻、时尚，同时，作为荣威全新系列的首款产品，荣威鲸将承担起加速品牌年轻化/个性化进程、推动品牌升级向上任务。此外，新车将在4月19日开幕的上海车展中亮相（3.1号馆上汽荣威展台）。', '外观方面，作为“律动唤醒”设计理念的首款车型，新车整体脱离了现有荣威车型的设计语言，视觉效果更加犀利、时尚。具体来看，该车配备类似封闭式直瀑进气格栅造型，凌厉的线条设计，搭配犀利的分体式大灯组（官方称为“能量立方”灯组），以及梯形进气口，让新车看上去十分大气且科幻。', '车身侧面来看，该车采用溜背造型，和前冲的发动机舱盖前后呼应，营造超强运动感。同时，悬浮式车车顶的采用搭配双五辐式轮圈造型，让新车十分年轻、运动。同时，该车还配备了当下十分流行的隐藏式车门把手，从而提升科技感。', '尾部方面，新车整体采用了类似横平竖直的造型风格，其尾灯则采用了“星际隧道”设计，灵感来源于时空隧道。同时，多边形的拍照区域搭配双边共两出的排气布局以及车顶上方的较大尺寸的扰流板，带来了强烈的视觉冲击，极具个性。关于新车更多消息，我们也将持续关注。（文/汽车之家 周易）', '', '', '', '1', '3', '2021-04-15 10:14:58', '8', 'd95bcdca4e154a76928813265a615743', '4', '荣威鲸', '2021年04月19日');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `news_id` int(11) DEFAULT NULL,
  `photo_url` varchar(1024) NOT NULL COMMENT '图片路径',
  `essay_id` bigint(20) unsigned DEFAULT NULL COMMENT '动态id',
  `style_id` int(11) unsigned DEFAULT NULL COMMENT '车型id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/558fc7fdfd15471ba11fd913e79c8f11.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/1f3a6f054da1413bb8c7c5c83319a7c9.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/16fb33207c0b4c828bc1dce94b8af3fa.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/419e9a1228ee4ae99584fdc256713adb.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/0f9eddaa997a42d388b47bd6ef186fe2.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/f5908ab89edd46d9ac819a407584e9c2.jpg', null, null);
INSERT INTO `photo` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/edf5e827c3a14550a316390048e66ba5.jpg', null, null);
INSERT INTO `photo` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/2ac9c1d59abd41a092e61c785af55a30.jpg', null, null);
INSERT INTO `photo` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/e7ec5b68e5aa406b987a00a898254c39.jpg', null, null);
INSERT INTO `photo` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/931236ba930d401f8d4d1b16713f0b8e.jpg', null, null);
INSERT INTO `photo` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/cd512e90f1b44de68ffc06d94856530b.jpg', null, null);
INSERT INTO `photo` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/7896fd2d05b64e5cade744bece6e03b7.jpg', null, null);
INSERT INTO `photo` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/90fe0026abee4c08aec09cea145d82ff.jpg', null, null);
INSERT INTO `photo` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/4ff7112f6f404f9ca36a1668f1a4b94a.jpg', null, null);
INSERT INTO `photo` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/81c715b019244c0da880e0ba120dad9e.jpg', null, null);
INSERT INTO `photo` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/5a2fc1a0fce2428083db2732a7fdddbe.jpg', null, null);
INSERT INTO `photo` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/e16e748a90394938b9bd3b2cdcfca09c.jpg', null, null);
INSERT INTO `photo` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/5d734521de634c0a904d8b43399519c0.jpg', null, null);
INSERT INTO `photo` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/44ab3384a7b347839a9649d7c92d9e4c.jpg', null, null);
INSERT INTO `photo` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/aa7226dd549a4e1f8e240c74a966798c.jpg', null, null);
INSERT INTO `photo` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/b16b88c7e13045d1b9a67c0b266f24b6.jpg', null, null);
INSERT INTO `photo` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/60b270a2bf7a44669b22d3f556ed95ec.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/b6fc8367cd69491cb412c4d392700159.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/bf86c0fdb6b64360af0c6ef7ee2c7b6b.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/9c76507acdd94f5a98f3fd8898edaaaf.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/d208cfde503a4d18aa30bb4b8249a2cd.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/2a09652b861f4c72ad22f364ab8d57fb.jpg', null, null);
INSERT INTO `photo` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/257ef4b26fef416987d71c85053efd4c.jpg', null, null);
INSERT INTO `photo` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/2b0ed8c88a6c463dafec10f1b7df6b4a.jpg', null, null);
INSERT INTO `photo` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/e17529c74f914f7a8e347cb335c9c21f.jpg', null, null);
INSERT INTO `photo` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/5a41342365b8411790d4e65908820f8c.jpg', null, null);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `nr` varchar(255) DEFAULT NULL COMMENT '内容',
  `object_id` varchar(255) DEFAULT NULL COMMENT '对象id',
  `object_name` varchar(255) DEFAULT NULL COMMENT '对象名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1321 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('18', '1', '汽车之家', '2021-03-17 14:42:40', '密码错误，登陆失败', '', '');
INSERT INTO `record` VALUES ('19', '1', '汽车之家', '2021-03-17 14:43:02', '登录成功', '', '');
INSERT INTO `record` VALUES ('20', '1', '汽车之家', '2021-03-17 14:43:13', '注销成功', '', '');
INSERT INTO `record` VALUES ('21', '1', '汽车之家', '2021-03-17 15:24:07', '登录成功', '', '');
INSERT INTO `record` VALUES ('22', '1', '汽车之家', '2021-03-17 15:24:08', '注销成功', '', '');
INSERT INTO `record` VALUES ('23', '1', '汽车之家', '2021-03-17 15:25:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('24', '1', '汽车之家', '2021-03-17 15:25:04', '注销成功', '', '');
INSERT INTO `record` VALUES ('25', '1', '汽车之家', '2021-03-17 15:58:54', '登录成功', '', '');
INSERT INTO `record` VALUES ('26', '1', '汽车之家', '2021-03-17 16:34:06', '登录成功', '', '');
INSERT INTO `record` VALUES ('27', '1', '汽车之家', '2021-03-17 16:37:48', '登录成功', '', '');
INSERT INTO `record` VALUES ('28', '1', '汽车之家', '2021-03-17 16:41:34', '登录成功', '', '');
INSERT INTO `record` VALUES ('29', '1', '汽车之家', '2021-03-17 17:19:13', '登录成功', '', '');
INSERT INTO `record` VALUES ('30', '1', '汽车之家', '2021-03-17 20:42:23', '登录成功', '', '');
INSERT INTO `record` VALUES ('31', '1', '汽车之家', '2021-03-17 20:42:39', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('32', '1', '汽车之家', '2021-03-17 20:42:55', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('33', '1', '汽车之家', '2021-03-17 20:49:10', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('34', '1', '汽车之家', '2021-03-17 20:49:57', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('35', '1', '汽车之家', '2021-03-17 21:11:11', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('36', '1', '汽车之家', '2021-03-17 21:11:12', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('37', '1', '汽车之家', '2021-03-17 21:14:54', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('38', '1', '汽车之家', '2021-03-17 21:14:56', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('39', '1', '汽车之家', '2021-03-17 21:18:44', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('40', '1', '汽车之家', '2021-03-17 21:18:46', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('41', '1', '汽车之家', '2021-03-17 21:22:21', '登录成功', '', '');
INSERT INTO `record` VALUES ('42', '1', '汽车之家', '2021-03-17 21:28:36', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('43', '1', '汽车之家', '2021-03-17 21:28:37', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('44', '1', '汽车之家', '2021-03-17 21:29:56', '登录成功', '', '');
INSERT INTO `record` VALUES ('45', '1', '汽车之家', '2021-03-17 21:30:09', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('46', '1', '汽车之家', '2021-03-18 09:13:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('47', '1', '汽车之家', '2021-03-18 09:40:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('48', '0:0:0:0:0:0:0:1', '', '2021-03-18 09:40:03', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('49', '1', '汽车之家', '2021-03-18 09:40:03', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('50', '1', '汽车之家', '2021-03-18 09:40:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('51', '1', '汽车之家', '2021-03-18 09:40:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('52', '773601602@qq.com', '', '2021-03-18 09:40:03', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('53', '773601602@qq.com', '1', '2021-03-18 09:40:03', '注册成功', '', '');
INSERT INTO `record` VALUES ('54', '18', '1', '2021-03-18 09:40:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('55', '18', '1', '2021-03-18 09:40:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('56', '3', '1', '2021-03-18 09:40:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('57', '3', '1', '2021-03-18 10:22:40', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('58', '3', '1', '2021-03-18 10:30:36', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('59', '3', '1', '2021-03-18 10:49:58', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('60', '3', '1', '2021-03-18 11:44:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('61', '2', 'Superb', '2021-03-18 11:44:52', '登录成功', '', '');
INSERT INTO `record` VALUES ('62', '2', 'Superb', '2021-03-18 11:44:52', '删除消息：点赞通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('63', '2', 'Superb', '2021-03-18 11:44:52', '删除消息：评论通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('64', '2', 'Superb', '2021-03-18 11:44:52', '删除消息：转发通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('65', '2', 'Superb', '2021-03-18 03:32:51', '注销成功', '', '');
INSERT INTO `record` VALUES ('66', '2', 'Superb', '2021-03-18 03:32:51', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('67', '2', 'Superb', '2021-03-18 03:32:51', '登录成功', '', '');
INSERT INTO `record` VALUES ('68', '3', '1', '2021-03-18 04:41:28', '登录成功', '', '');
INSERT INTO `record` VALUES ('69', '3', '1', '2021-03-18 04:41:28', '注销成功', '', '');
INSERT INTO `record` VALUES ('70', '2', 'Superb', '2021-03-18 04:41:28', '登录成功', '', '');
INSERT INTO `record` VALUES ('71', '3', '1', '2021-03-18 05:01:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('72', '3', '1', '2021-03-18 05:28:49', '发表动态', '', '111');
INSERT INTO `record` VALUES ('73', '3', '1', '2021-03-18 05:28:49', '发表动态', '', '111');
INSERT INTO `record` VALUES ('74', '3', '1', '2021-03-18 05:28:49', '注销成功', '', '');
INSERT INTO `record` VALUES ('75', '1', '汽车之家', '2021-03-18 05:28:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('76', '1', '汽车之家', '2021-03-18 05:28:49', '注销成功', '', '');
INSERT INTO `record` VALUES ('77', '2', 'Superb', '2021-03-18 05:28:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('78', '2', 'Superb', '2021-03-18 05:28:49', '注销成功', '', '');
INSERT INTO `record` VALUES ('79', '3', '1', '2021-03-18 05:28:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('80', '3', '1', '2021-03-18 05:28:49', '发表动态', '', '2222');
INSERT INTO `record` VALUES ('81', '3', '1', '2021-03-18 05:28:49', '发表动态', '', 'aaaa');
INSERT INTO `record` VALUES ('82', '3', '1', '2021-03-18 05:28:49', '发表动态', '', 'aaaa');
INSERT INTO `record` VALUES ('83', '3', '1', '2021-03-18 05:48:03', '发表动态', '', 'fff');
INSERT INTO `record` VALUES ('84', '3', '1', '2021-03-18 05:50:01', '注销成功', '', '');
INSERT INTO `record` VALUES ('85', '2', 'Superb', '2021-03-18 05:50:22', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('86', '2', 'Superb', '2021-03-18 05:50:27', '登录成功', '', '');
INSERT INTO `record` VALUES ('87', '3', '1', '2021-03-18 08:01:19', '登录成功', '', '');
INSERT INTO `record` VALUES ('88', '3', '1', '2021-03-18 08:45:59', '发表动态', '', '111');
INSERT INTO `record` VALUES ('89', '3', '1', '2021-03-18 08:46:58', '发表动态', '', '1111');
INSERT INTO `record` VALUES ('90', '3', '1', '2021-03-18 08:48:44', '发表动态', '', '汽车保养');
INSERT INTO `record` VALUES ('91', '3', '1', '2021-03-18 09:11:58', '发表动态', '', '谢耳朵');
INSERT INTO `record` VALUES ('92', '3', '1', '2021-03-18 09:16:42', '发表动态', '', '1234213123213123');
INSERT INTO `record` VALUES ('93', '3', '1', '2021-03-18 10:03:43', '发表动态', '', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('94', '3', '1', '2021-03-18 10:05:27', '发表动态', '', '22222');
INSERT INTO `record` VALUES ('95', '2', 'Superb', '2021-03-19 09:52:00', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('96', '2', 'Superb', '2021-03-19 09:52:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('97', '2', 'Superb', '2021-03-19 09:57:06', '发表动态', '', '123');
INSERT INTO `record` VALUES ('98', '2', 'Superb', '2021-03-19 09:59:06', '注销成功', '', '');
INSERT INTO `record` VALUES ('99', '2', 'Superb', '2021-03-19 09:59:26', '登录成功', '', '');
INSERT INTO `record` VALUES ('100', '2', 'Superb', '2021-03-19 10:11:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('101', '2', 'Superb', '2021-03-19 11:58:55', '删除动态', '8', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('102', '2', 'Superb', '2021-03-19 12:00:29', '删除动态', '24', '123');
INSERT INTO `record` VALUES ('103', '2', 'Superb', '2021-03-19 01:02:33', '删除动态', '9', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('104', '2', 'Superb', '2021-03-19 01:02:53', '删除动态', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('105', '2', 'Superb', '2021-03-19 01:06:51', '发表动态', '', 'fdsvfdsvsfdv');
INSERT INTO `record` VALUES ('106', '2', 'Superb', '2021-03-19 01:07:22', '删除动态', '25', 'fdsvfdsvsfdv');
INSERT INTO `record` VALUES ('107', '2', 'Superb', '2021-03-19 01:07:30', '发表动态', '', 'dsafcdscds');
INSERT INTO `record` VALUES ('108', '2', 'Superb', '2021-03-19 01:08:30', '删除动态', '26', 'dsafcdscds');
INSERT INTO `record` VALUES ('109', '2', 'Superb', '2021-03-19 01:08:37', '发表动态', '', 'asdsasa');
INSERT INTO `record` VALUES ('110', '2', 'Superb', '2021-03-19 01:53:33', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('111', '2', 'Superb', '2021-03-19 01:54:55', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('112', '2', 'Superb', '2021-03-19 01:55:20', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('113', '2', 'Superb', '2021-03-19 01:56:27', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('114', '2', 'Superb', '2021-03-19 01:56:35', '转发动态', '27', 'asdsasa');
INSERT INTO `record` VALUES ('115', '2', 'Superb', '2021-03-19 01:57:08', '转发动态', '27', 'asdsasa');
INSERT INTO `record` VALUES ('116', '2', 'Superb', '2021-03-19 01:57:47', '转发动态', '27', 'asdsasa');
INSERT INTO `record` VALUES ('117', '2', 'Superb', '2021-03-19 01:57:55', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('118', '2', 'Superb', '2021-03-19 02:00:15', '发表动态', '', '111');
INSERT INTO `record` VALUES ('119', '2', 'Superb', '2021-03-19 02:02:35', '发表动态', '', '111');
INSERT INTO `record` VALUES ('120', '2', 'Superb', '2021-03-19 02:54:21', '发表动态', '', 'smz');
INSERT INTO `record` VALUES ('121', '2', 'Superb', '2021-03-19 02:54:31', '转发动态', '29', 'smz');
INSERT INTO `record` VALUES ('122', '2', 'Superb', '2021-03-19 02:55:00', '删除动态', '29', 'smz');
INSERT INTO `record` VALUES ('123', '2', 'Superb', '2021-03-19 03:09:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('124', '3', '1', '2021-03-19 03:10:07', '登录成功', '', '');
INSERT INTO `record` VALUES ('125', '3', '1', '2021-03-19 03:11:40', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('126', '3', '1', '2021-03-19 03:13:03', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('127', '3', '1', '2021-03-19 15:16:05', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('128', '3', '1', '2021-03-19 03:17:11', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('129', '3', '1', '2021-03-19 15:28:13', '登录成功', '', '');
INSERT INTO `record` VALUES ('130', '3', '1', '2021-03-19 16:13:58', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('131', '3', '1', '2021-03-19 16:14:16', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('132', '3', '1', '2021-03-19 16:21:11', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('133', '3', '1', '2021-03-19 16:24:20', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('134', '3', '1', '2021-03-19 16:24:58', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('135', '3', '1', '2021-03-19 16:26:37', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('136', '3', '1', '2021-03-19 16:26:41', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('137', '3', '1', '2021-03-19 16:27:52', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('138', '3', '1', '2021-03-19 16:27:54', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('139', '3', '1', '2021-03-19 16:28:11', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('140', '3', '1', '2021-03-19 16:36:06', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('141', '3', '1', '2021-03-19 16:36:07', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('142', '3', '1', '2021-03-19 16:57:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('143', '3', '1', '2021-03-19 16:58:32', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('144', '3', '1', '2021-03-19 16:58:33', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('145', '3', '1', '2021-03-19 16:58:44', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('146', '3', '1', '2021-03-19 16:58:45', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('147', '3', '1', '2021-03-19 16:59:01', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('148', '3', '1', '2021-03-19 16:59:09', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('149', '3', '123456789', '2021-03-19 17:28:54', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('150', '3', '123456789', '2021-03-19 17:29:01', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('151', '3', '123456789', '2021-03-19 17:40:12', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('152', '3', '123456789', '2021-03-19 17:42:07', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('153', '3', '123456789', '2021-03-19 17:42:09', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('154', '3', '1', '2021-03-19 18:20:45', '注销成功', '', '');
INSERT INTO `record` VALUES ('155', '1287414986@qq.com', '2', '2021-03-19 18:21:11', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('156', '1287414986@qq.com', 'smz', '2021-03-19 18:21:52', '注册成功', '', '');
INSERT INTO `record` VALUES ('157', '4', 'smz', '2021-03-19 18:21:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('158', '4', 'smz', '2021-03-19 18:28:42', '注销成功', '', '');
INSERT INTO `record` VALUES ('159', '2', 'Superb', '2021-03-19 18:28:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('160', '2', 'Superb', '2021-03-19 18:29:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('161', '4', 'smz', '2021-03-19 18:29:55', '登录成功', '', '');
INSERT INTO `record` VALUES ('162', '4', 'smz', '2021-03-19 18:39:18', '发表动态', '', '汽车之家');
INSERT INTO `record` VALUES ('163', '4', 'smz', '2021-03-19 18:40:41', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('164', '4', 'smz', '2021-03-19 18:40:44', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('165', '4', 'smz', '2021-03-19 18:43:22', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('166', '4', 'smz', '2021-03-19 18:43:31', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('167', '4', 'smz', '2021-03-19 18:43:46', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('168', '4', 'smz', '2021-03-19 18:44:07', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('169', '4', 'smz', '2021-03-19 18:44:26', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('170', '4', 'smz', '2021-03-19 18:44:26', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('171', '4', 'smz', '2021-03-19 18:45:30', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('172', '4', 'smz', '2021-03-19 18:45:31', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('173', '4', 'smz', '2021-03-19 18:50:39', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('174', '4', 'smz', '2021-03-19 18:50:47', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('175', '4', 'smz', '2021-03-19 18:50:50', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('176', '4', 'smz', '2021-03-19 18:50:53', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('177', '4', 'smz', '2021-03-19 18:53:46', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('178', '4', 'smz', '2021-03-19 18:53:47', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('179', '4', 'smz', '2021-03-19 18:53:49', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('180', '4', 'smz', '2021-03-19 18:53:50', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('181', '4', 'smz', '2021-03-19 18:53:50', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('182', '4', 'smz', '2021-03-19 18:54:44', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('183', '4', 'smz', '2021-03-19 18:54:49', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('184', '4', 'smz', '2021-03-19 18:54:53', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('185', '4', 'smz', '2021-03-19 18:55:03', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('186', '4', 'smz', '2021-03-19 18:55:09', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('187', '4', 'smz', '2021-03-19 18:56:25', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('188', '4', 'smz', '2021-03-19 18:56:27', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('189', '4', 'smz', '2021-03-19 18:56:29', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('190', '4', 'smz', '2021-03-19 18:57:00', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('191', '4', 'smz', '2021-03-19 18:57:02', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('192', '4', 'smz', '2021-03-19 19:00:13', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('193', '4', 'smz', '2021-03-19 19:01:07', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('194', '4', 'smz', '2021-03-19 19:01:22', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('195', '4', 'smz', '2021-03-19 19:01:26', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('196', '4', 'smz', '2021-03-19 19:01:32', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('197', '4', 'smz', '2021-03-19 19:02:46', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('198', '4', 'smz', '2021-03-19 19:02:52', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('199', '4', 'smz', '2021-03-19 19:02:55', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('200', '4', 'smz', '2021-03-19 19:02:56', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('201', '4', 'smz', '2021-03-19 19:03:04', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('202', '4', 'smz', '2021-03-19 19:03:24', '注销成功', '', '');
INSERT INTO `record` VALUES ('203', '2', 'Superb', '2021-03-19 19:03:29', '登录成功', '', '');
INSERT INTO `record` VALUES ('204', '2', 'Superb', '2021-03-19 19:03:37', '转发动态', '28', '111');
INSERT INTO `record` VALUES ('205', '2', 'Superb', '2021-03-19 19:03:43', '点赞', '28', '111');
INSERT INTO `record` VALUES ('206', '2', 'Superb', '2021-03-19 19:03:46', '取消点赞', '28', '111');
INSERT INTO `record` VALUES ('207', '2', 'Superb', '2021-03-19 19:03:47', '点赞', '28', '111');
INSERT INTO `record` VALUES ('208', '2', 'Superb', '2021-03-19 19:03:52', '转发动态', '28', '111');
INSERT INTO `record` VALUES ('209', '2', 'Superb', '2021-03-19 19:04:02', '注销成功', '', '');
INSERT INTO `record` VALUES ('210', '0:0:0:0:0:0:0:1', '', '2021-03-19 19:04:05', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('211', '0:0:0:0:0:0:0:1', '', '2021-03-19 19:04:09', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('212', '1', '汽车之家', '2021-03-19 19:04:18', '登录成功', '', '');
INSERT INTO `record` VALUES ('213', '1', '汽车之家', '2021-03-19 19:04:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('214', '3', '123456789', '2021-03-19 19:04:55', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('215', '3', '123456789', '2021-03-19 19:05:01', '登录成功', '', '');
INSERT INTO `record` VALUES ('216', '3', '123456789', '2021-03-19 19:05:06', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('217', '3', '123456789', '2021-03-19 19:05:08', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('218', '3', '123456789', '2021-03-19 19:05:09', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('219', '3', '123456789', '2021-03-19 19:05:13', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('220', '3', '123456789', '2021-03-19 19:05:14', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('221', '3', '123456789', '2021-03-19 19:05:16', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('222', '3', '123456789', '2021-03-19 19:05:18', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('223', '3', '123456789', '2021-03-19 19:05:19', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('224', '3', '123456789', '2021-03-19 19:05:20', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('225', '3', '123456789', '2021-03-19 19:05:24', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('226', '3', '123456789', '2021-03-19 19:05:25', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('227', '3', '123456789', '2021-03-19 19:05:27', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('228', '3', '123456789', '2021-03-19 19:06:47', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('229', '3', '123456789', '2021-03-19 19:06:47', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('230', '3', '123456789', '2021-03-19 19:06:50', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('231', '3', '123456789', '2021-03-19 19:06:58', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('232', '3', '123456789', '2021-03-19 19:07:03', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('233', '3', '123456789', '2021-03-19 19:07:04', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('234', '3', '123456789', '2021-03-19 19:08:19', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('235', '3', '123456789', '2021-03-19 19:08:21', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('236', '3', '123456789', '2021-03-19 19:08:23', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('237', '3', '123456789', '2021-03-19 19:08:24', '点赞', '20', '777');
INSERT INTO `record` VALUES ('238', '3', '123456789', '2021-03-19 19:09:10', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('239', '3', '123456789', '2021-03-19 19:09:39', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('240', '3', '123456789', '2021-03-19 19:09:43', '删除动态', '23', '22222');
INSERT INTO `record` VALUES ('241', '0:0:0:0:0:0:0:1', '', '2021-03-22 10:10:13', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('242', '3', '123456789', '2021-03-22 10:10:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('243', '3', '1', '2021-03-22 10:10:59', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('244', '3', '1', '2021-03-22 10:11:00', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('245', '3', '1', '2021-03-22 10:11:04', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('246', '3', '1', '2021-03-22 10:11:05', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('247', '3', '1', '2021-03-22 10:15:26', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('248', '3', '1', '2021-03-22 10:15:27', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('249', '3', '1', '2021-03-22 10:17:25', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('250', '3', '1', '2021-03-22 10:17:26', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('251', '3', '1', '2021-03-22 11:19:18', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('252', '3', '1', '2021-03-22 11:19:20', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('253', '3', '1', '2021-03-22 11:19:25', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('254', '3', '1', '2021-03-22 11:22:37', '点赞', '10', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('255', '3', '1', '2021-03-22 11:23:11', '点赞', '11', '111');
INSERT INTO `record` VALUES ('256', '3', '1', '2021-03-22 11:24:37', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('257', '3', '1', '2021-03-22 11:26:59', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('258', '3', '1', '2021-03-22 11:27:00', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('259', '3', '1', '2021-03-22 11:27:06', '点赞', '13', '2222');
INSERT INTO `record` VALUES ('260', '3', '1', '2021-03-22 11:27:47', '点赞', '17', '111');
INSERT INTO `record` VALUES ('261', '3', '1', '2021-03-22 11:28:22', '点赞', '14', 'aaaa');
INSERT INTO `record` VALUES ('262', '3', '1', '2021-03-22 14:38:37', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('263', '3', '1', '2021-03-22 14:38:39', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('264', '3', '1', '2021-03-22 15:21:40', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('265', '3', '1', '2021-03-22 15:42:32', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('266', '3', '1', '2021-03-22 15:42:33', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('267', '3', '123456789', '2021-03-22 16:13:21', '注销成功', '', '');
INSERT INTO `record` VALUES ('268', '773601602@qq.com', '', '2021-03-22 16:14:05', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('269', '773601602@qq.com', '', '2021-03-22 16:14:46', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('270', '773601602@qq.com', '', '2021-03-22 16:14:59', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('271', '773601602@qq.com', '李天然', '2021-03-22 16:16:23', '注册成功', '', '');
INSERT INTO `record` VALUES ('272', '5', '李天然', '2021-03-22 16:16:35', '登录成功', '', '');
INSERT INTO `record` VALUES ('273', '5', '李天然', '2021-03-22 16:16:39', '注销成功', '', '');
INSERT INTO `record` VALUES ('274', '5', '李天然', '2021-03-22 16:16:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('275', '5', '李天然', '2021-03-22 16:16:54', '注销成功', '', '');
INSERT INTO `record` VALUES ('276', '5', '李天然', '2021-03-22 16:16:56', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('277', '0:0:0:0:0:0:0:1', '', '2021-03-22 16:16:59', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('278', '5', '李天然', '2021-03-22 16:17:02', '登录成功', '', '');
INSERT INTO `record` VALUES ('279', '5', '李天然', '2021-03-22 16:33:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('280', '773601602@qq.com', '', '2021-03-22 16:34:13', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('281', '773601602@qq.com', '李白', '2021-03-22 16:34:44', '注册成功', '', '');
INSERT INTO `record` VALUES ('282', '6', '李白', '2021-03-22 16:35:27', '登录成功', '', '');
INSERT INTO `record` VALUES ('283', '6', '李白', '2021-03-22 18:35:13', '注销成功', '', '');
INSERT INTO `record` VALUES ('284', '2', '1', '2021-03-22 18:35:29', '登录成功', '', '');
INSERT INTO `record` VALUES ('285', '2', '1', '2021-03-22 18:37:29', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('286', '2', '1', '2021-03-22 18:37:57', '删除消息：点赞通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('287', '2', '1', '2021-03-22 18:38:18', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('288', '2', '1', '2021-03-22 20:56:22', '关注', '3', '2');
INSERT INTO `record` VALUES ('289', '2', '1', '2021-03-22 20:57:38', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('290', '2', '1', '2021-03-22 20:57:39', '关注', '3', '2');
INSERT INTO `record` VALUES ('291', '2', '1', '2021-03-22 20:57:46', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('292', '2', '1', '2021-03-22 20:57:54', '关注', '3', '2');
INSERT INTO `record` VALUES ('293', '2', '1', '2021-03-22 20:58:19', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('294', '2', '1', '2021-03-22 20:58:23', '关注', '3', '2');
INSERT INTO `record` VALUES ('295', '2', '1', '2021-03-22 20:58:25', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('296', '2', '1', '2021-03-22 20:59:37', '关注', '3', '2');
INSERT INTO `record` VALUES ('297', '2', '1', '2021-03-22 20:59:42', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('298', '2', '1', '2021-03-22 21:00:02', '关注', '3', '2');
INSERT INTO `record` VALUES ('299', '2', '1', '2021-03-22 21:00:03', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('300', '2', '1', '2021-03-22 21:00:21', '关注', '3', '2');
INSERT INTO `record` VALUES ('301', '2', '1', '2021-03-22 21:00:25', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('302', '2', '1', '2021-03-22 21:00:30', '关注', '3', '2');
INSERT INTO `record` VALUES ('303', '2', '1', '2021-03-22 21:00:32', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('304', '2', '1', '2021-03-22 21:00:41', '关注', '3', '2');
INSERT INTO `record` VALUES ('305', '2', '1', '2021-03-22 21:00:43', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('306', '2', '1', '2021-03-22 21:11:18', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('307', '2', '1', '2021-03-22 21:11:19', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('308', '2', '1', '2021-03-22 21:11:39', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('309', '2', '1', '2021-03-22 21:11:40', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('310', '2', '1', '2021-03-22 21:11:52', '取消点赞', '28', '111');
INSERT INTO `record` VALUES ('311', '2', '1', '2021-03-22 21:11:53', '点赞', '28', '111');
INSERT INTO `record` VALUES ('312', '2', '1', '2021-03-22 21:15:05', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('313', '2', '1', '2021-03-22 21:15:06', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('314', '2', '1', '2021-03-22 21:21:28', '登录成功', '', '');
INSERT INTO `record` VALUES ('315', '2', '1', '2021-03-22 21:21:52', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('316', '2', '1', '2021-03-22 21:21:53', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('317', '2', '1', '2021-03-22 21:22:15', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('318', '2', '1', '2021-03-22 21:22:39', '发表动态', '', '111');
INSERT INTO `record` VALUES ('319', '2', '1', '2021-03-22 21:23:42', '发表动态', '', '777');
INSERT INTO `record` VALUES ('320', '2', '1', '2021-03-22 21:23:48', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('321', '2', '1', '2021-03-22 21:24:22', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('322', '2', '1', '2021-03-22 21:24:28', '转发动态', '32', '777');
INSERT INTO `record` VALUES ('323', '2', '1', '2021-03-22 21:26:06', '转发动态', '32', '777');
INSERT INTO `record` VALUES ('324', '2', '1', '2021-03-22 21:26:29', '转发动态', '32', '777');
INSERT INTO `record` VALUES ('325', '2', '1', '2021-03-22 21:27:11', '点赞', '32', '777');
INSERT INTO `record` VALUES ('326', '2', '1', '2021-03-22 21:27:11', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('327', '2', '1', '2021-03-22 21:27:15', '点赞', '32', '777');
INSERT INTO `record` VALUES ('328', '2', '1', '2021-03-22 21:27:16', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('329', '2', '1', '2021-03-22 21:27:19', '点赞', '32', '777');
INSERT INTO `record` VALUES ('330', '2', '1', '2021-03-22 21:27:20', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('331', '2', '1', '2021-03-22 21:27:24', '点赞', '32', '777');
INSERT INTO `record` VALUES ('332', '2', '1', '2021-03-22 21:27:26', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('333', '2', '1', '2021-03-23 11:27:08', '登录成功', '', '');
INSERT INTO `record` VALUES ('334', '2', '1', '2021-03-23 11:31:28', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('335', '2', '1', '2021-03-23 11:31:30', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('336', '2', '1', '2021-03-23 13:09:08', '注销成功', '', '');
INSERT INTO `record` VALUES ('337', '3', '2', '2021-03-23 13:09:10', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('338', '3', '2', '2021-03-23 13:09:12', '登录成功', '', '');
INSERT INTO `record` VALUES ('339', '3', '2', '2021-03-23 13:18:33', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('340', '3', '2', '2021-03-23 13:18:34', '关注', '2', '1');
INSERT INTO `record` VALUES ('341', '3', '2', '2021-03-23 13:23:02', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('342', '3', '2', '2021-03-23 13:28:40', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('343', '3', '2', '2021-03-23 13:28:42', '关注', '2', '1');
INSERT INTO `record` VALUES ('344', '3', '2', '2021-03-23 13:28:44', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('345', '3', '2', '2021-03-23 13:29:49', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('346', '3', '2', '2021-03-23 13:31:08', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('347', '3', '2', '2021-03-23 13:31:11', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('348', '3', '2', '2021-03-23 13:31:14', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('349', '3', '2', '2021-03-23 13:42:00', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('350', '3', '2', '2021-03-23 13:42:02', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('351', '3', '2', '2021-03-23 13:42:03', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('352', '3', '2', '2021-03-23 13:46:00', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('353', '3', '2', '2021-03-23 13:46:07', '关注', '2', '1');
INSERT INTO `record` VALUES ('354', '3', '2', '2021-03-23 13:46:09', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('355', '3', '2', '2021-03-23 13:46:11', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('356', '3', '2', '2021-03-23 13:46:20', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('357', '3', '2', '2021-03-23 13:47:30', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('358', '3', '2', '2021-03-23 13:47:46', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('359', '3', '2', '2021-03-23 13:48:48', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('360', '3', '2', '2021-03-23 13:48:58', '关注', '2', '1');
INSERT INTO `record` VALUES ('361', '3', '2', '2021-03-23 13:49:13', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('362', '3', '2', '2021-03-23 13:49:14', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('363', '3', '2', '2021-03-23 13:49:24', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('364', '3', '2', '2021-03-23 13:49:26', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('365', '3', '2', '2021-03-23 13:54:56', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('366', '3', '2', '2021-03-23 13:54:57', '取消关注', '5', '李天然');
INSERT INTO `record` VALUES ('367', '3', '2', '2021-03-23 13:54:58', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('368', '3', '2', '2021-03-23 13:54:59', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('369', '3', '2', '2021-03-23 13:55:00', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('370', '3', '2', '2021-03-23 13:55:01', '关注', '5', '李天然');
INSERT INTO `record` VALUES ('371', '3', '2', '2021-03-23 13:55:02', '关注', '2', '1');
INSERT INTO `record` VALUES ('372', '3', '2', '2021-03-23 13:55:03', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('373', '3', '2', '2021-03-23 13:55:32', '取消关注', '5', '李天然');
INSERT INTO `record` VALUES ('374', '3', '2', '2021-03-23 13:55:33', '关注', '5', '李天然');
INSERT INTO `record` VALUES ('375', '3', '2', '2021-03-23 14:12:59', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('376', '3', '2', '2021-03-23 14:13:00', '关注', '2', '1');
INSERT INTO `record` VALUES ('377', '3', '2', '2021-03-23 14:13:04', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('378', '3', '2', '2021-03-23 14:13:13', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('379', '3', '2', '2021-03-23 14:13:19', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('380', '3', '2', '2021-03-23 14:13:25', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('381', '3', '2', '2021-03-23 14:13:33', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('382', '3', '2', '2021-03-23 14:13:34', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('383', '3', '2', '2021-03-23 14:13:38', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('384', '3', '2', '2021-03-23 14:14:09', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('385', '3', '2', '2021-03-23 14:14:10', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('386', '3', '2', '2021-03-23 14:14:23', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('387', '3', '2', '2021-03-23 14:14:28', '取消关注', '5', '李天然');
INSERT INTO `record` VALUES ('388', '3', '2', '2021-03-23 14:14:30', '关注', '5', '李天然');
INSERT INTO `record` VALUES ('389', '3', '2', '2021-03-23 14:14:36', '取消关注', '6', '李白');
INSERT INTO `record` VALUES ('390', '3', '2', '2021-03-23 14:17:16', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('391', '3', '2', '2021-03-23 14:17:17', '关注', '2', '1');
INSERT INTO `record` VALUES ('392', '3', '2', '2021-03-23 14:17:28', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('393', '3', '2', '2021-03-23 14:17:30', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('394', '3', '2', '2021-03-23 14:22:42', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('395', '3', '2', '2021-03-23 14:22:50', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('396', '3', '2', '2021-03-23 14:22:52', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('397', '3', '2', '2021-03-23 14:23:00', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('398', '3', '2', '2021-03-23 14:25:19', '取消关注', '6', '李白');
INSERT INTO `record` VALUES ('399', '3', '2', '2021-03-23 14:25:20', '关注', '6', '李白');
INSERT INTO `record` VALUES ('400', '3', '2', '2021-03-23 14:29:46', '取消关注', '6', '李白');
INSERT INTO `record` VALUES ('401', '3', '2', '2021-03-23 14:29:47', '关注', '6', '李白');
INSERT INTO `record` VALUES ('402', '3', '2', '2021-03-23 14:32:07', '注销成功', '', '');
INSERT INTO `record` VALUES ('403', '1', '汽车之家', '2021-03-23 14:32:30', '登录成功', '', '');
INSERT INTO `record` VALUES ('404', '1', '汽车之家', '2021-03-23 14:40:19', '关注', '2', '1');
INSERT INTO `record` VALUES ('405', '1', '汽车之家', '2021-03-23 14:40:30', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('406', '1', '汽车之家', '2021-03-23 14:40:31', '关注', '2', '1');
INSERT INTO `record` VALUES ('407', '1', '汽车之家', '2021-03-23 14:40:34', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('408', '1', '汽车之家', '2021-03-23 14:40:43', '关注', '2', '1');
INSERT INTO `record` VALUES ('409', '1', '汽车之家', '2021-03-23 14:41:11', '注销成功', '', '');
INSERT INTO `record` VALUES ('410', '2', '1', '2021-03-23 14:41:15', '登录成功', '', '');
INSERT INTO `record` VALUES ('411', '2', '1', '2021-03-23 15:07:54', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('412', '2', '1', '2021-03-23 15:08:47', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('413', '2', '1', '2021-03-23 15:25:58', '关注', '3', '2');
INSERT INTO `record` VALUES ('414', '2', '1', '2021-03-23 15:26:01', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('415', '2', '1', '2021-03-23 15:26:42', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('416', '2', '1', '2021-03-23 15:26:52', '关注', '3', '2');
INSERT INTO `record` VALUES ('417', '2', '1', '2021-03-23 15:27:02', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('418', '2', '1', '2021-03-23 15:27:03', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('419', '2', '1', '2021-03-23 15:27:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('420', '6', '李白', '2021-03-23 15:27:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('421', '6', '李白', '2021-03-23 15:31:51', '注销成功', '', '');
INSERT INTO `record` VALUES ('422', '2', '1', '2021-03-23 15:31:53', '登录成功', '', '');
INSERT INTO `record` VALUES ('423', '2', '1', '2021-03-23 15:41:17', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('424', '2', '1', '2021-03-23 15:41:31', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('425', '2', '1', '2021-03-23 16:28:57', '点赞', '32', '777');
INSERT INTO `record` VALUES ('426', '2', '1', '2021-03-23 16:39:55', '注销成功', '', '');
INSERT INTO `record` VALUES ('427', '6', '李白', '2021-03-23 16:40:08', '登录成功', '', '');
INSERT INTO `record` VALUES ('428', '6', '李白', '2021-03-23 16:49:30', '注销成功', '', '');
INSERT INTO `record` VALUES ('429', '2', '1', '2021-03-23 16:49:31', '登录成功', '', '');
INSERT INTO `record` VALUES ('430', '2', '1', '2021-03-23 16:50:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('431', '6', '李白', '2021-03-23 16:50:23', '登录成功', '', '');
INSERT INTO `record` VALUES ('432', '6', '李白', '2021-03-23 16:52:19', '发表动态', '', '11111');
INSERT INTO `record` VALUES ('433', '6', '李白', '2021-03-23 16:53:58', '点赞', '33', '11111');
INSERT INTO `record` VALUES ('434', '6', '李白', '2021-03-23 16:54:35', '删除动态', '33', '11111');
INSERT INTO `record` VALUES ('435', '6', '李白', '2021-03-23 16:56:04', '注销成功', '', '');
INSERT INTO `record` VALUES ('436', '2', '1', '2021-03-23 16:56:06', '登录成功', '', '');
INSERT INTO `record` VALUES ('437', '2', '1', '2021-03-23 16:56:10', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('438', '2', '1', '2021-03-23 16:56:11', '关注', '3', '2');
INSERT INTO `record` VALUES ('439', '2', '1', '2021-03-23 16:56:16', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('440', '2', '1', '2021-03-23 16:56:17', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('441', '2', '1', '2021-03-23 17:18:00', '注销成功', '', '');
INSERT INTO `record` VALUES ('442', '2', '1', '2021-03-23 17:38:01', '登录成功', '', '');
INSERT INTO `record` VALUES ('443', '2', '1', '2021-03-23 18:02:09', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('444', '2', '1', '2021-03-23 18:02:10', '关注', '3', '2');
INSERT INTO `record` VALUES ('445', '2', '1', '2021-03-23 18:02:16', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('446', '2', '1', '2021-03-23 18:02:18', '关注', '3', '2');
INSERT INTO `record` VALUES ('447', '2', '1', '2021-03-23 18:02:30', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('448', '2', '1', '2021-03-23 18:02:31', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('449', '2', '1', '2021-03-23 18:02:48', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('450', '2', '1', '2021-03-23 18:02:53', '点赞', '32', '777');
INSERT INTO `record` VALUES ('451', '2', '1', '2021-03-23 18:02:58', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('452', '2', '1', '2021-03-23 18:03:00', '关注', '3', '2');
INSERT INTO `record` VALUES ('453', '2', '1', '2021-03-23 18:54:10', '登录成功', '', '');
INSERT INTO `record` VALUES ('454', '2', '1', '2021-03-24 12:36:10', '登录成功', '', '');
INSERT INTO `record` VALUES ('455', '2', '1', '2021-03-24 12:36:20', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('456', '2', '1', '2021-03-24 12:36:20', '关注', '3', '2');
INSERT INTO `record` VALUES ('457', '2', '1', '2021-03-24 12:36:49', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('458', '2', '1', '2021-03-24 12:36:51', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('459', '2', '1', '2021-03-25 15:24:25', '登录成功', '', '');
INSERT INTO `record` VALUES ('460', '2', '1', '2021-03-25 15:24:55', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('461', '2', '1', '2021-03-25 15:24:56', '关注', '3', '2');
INSERT INTO `record` VALUES ('462', '2', '1', '2021-03-25 15:26:52', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('463', '2', '1', '2021-03-25 15:27:11', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('464', '2', '1', '2021-03-25 15:42:26', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('465', '2', '1', '2021-03-25 15:42:27', '点赞', '32', '777');
INSERT INTO `record` VALUES ('466', '2', '1', '2021-03-25 15:43:04', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('467', '2', '1', '2021-03-25 15:43:04', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('468', '1140193437@qq.com', '', '2021-03-25 22:03:15', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('469', '1140193437@qq.com', 'xr', '2021-03-25 22:03:49', '注册成功', '', '');
INSERT INTO `record` VALUES ('470', '7', 'xr', '2021-03-25 22:04:06', '登录成功', '', '');
INSERT INTO `record` VALUES ('471', '7', 'xr', '2021-03-25 22:06:40', '发表动态', '', '4654564165165');
INSERT INTO `record` VALUES ('472', '7', 'xr', '2021-03-25 22:06:58', '点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('473', '7', 'xr', '2021-03-25 22:07:01', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('474', '7', 'xr', '2021-03-25 22:07:09', '转发动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('475', '7', 'xr', '2021-03-25 22:09:36', '注销成功', '', '');
INSERT INTO `record` VALUES ('476', '2', '1', '2021-03-25 22:09:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('477', '2', '1', '2021-03-25 22:10:35', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('478', '2', '1', '2021-03-25 22:10:35', '点赞', '32', '777');
INSERT INTO `record` VALUES ('479', '2', '1', '2021-03-25 22:11:17', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('480', '2', '1', '2021-03-25 22:11:23', '关注', '3', '2');
INSERT INTO `record` VALUES ('481', '2', '1', '2021-03-25 22:11:29', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('482', '2', '1', '2021-03-25 22:12:07', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('483', '2', '1', '2021-03-26 14:02:36', '登录成功', '', '');
INSERT INTO `record` VALUES ('484', '2', '1', '2021-03-26 14:05:44', '注销成功', '', '');
INSERT INTO `record` VALUES ('485', '2', '1', '2021-03-26 14:27:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('486', '2', '1', '2021-03-26 15:29:13', '注销成功', '', '');
INSERT INTO `record` VALUES ('487', '1', '汽车之家', '2021-03-26 15:29:17', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('488', '1', '汽车之家', '2021-03-26 15:29:27', '登录成功', '', '');
INSERT INTO `record` VALUES ('489', '1', '汽车之家', '2021-03-26 15:30:44', '注销成功', '', '');
INSERT INTO `record` VALUES ('490', '2', '1', '2021-03-26 15:30:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('491', '2', '1', '2021-03-26 15:31:48', '注销成功', '', '');
INSERT INTO `record` VALUES ('492', '1', '汽车之家', '2021-03-26 15:31:52', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('493', '1', '汽车之家', '2021-03-26 15:31:56', '登录成功', '', '');
INSERT INTO `record` VALUES ('494', '1', '汽车之家', '2021-03-26 15:32:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('495', '2', '1', '2021-03-26 15:32:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('496', '2', '1', '2021-03-26 15:32:11', '注销成功', '', '');
INSERT INTO `record` VALUES ('497', '2', '1', '2021-03-26 15:33:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('498', '2', '1', '2021-03-26 15:39:35', '注销成功', '', '');
INSERT INTO `record` VALUES ('499', '2', '1', '2021-03-26 15:41:42', '登录成功', '', '');
INSERT INTO `record` VALUES ('500', '0:0:0:0:0:0:0:1', '', '2021-03-29 11:19:17', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('501', '0:0:0:0:0:0:0:1', '', '2021-03-29 11:19:20', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('502', '2', '化腾', '2021-03-29 11:19:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('503', '2', '化腾', '2021-03-29 11:55:10', '注销成功', '', '');
INSERT INTO `record` VALUES ('504', '2', '化腾', '2021-03-29 14:15:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('505', '2', '化腾', '2021-03-29 14:15:07', '注销成功', '', '');
INSERT INTO `record` VALUES ('506', '2', '化腾', '2021-03-29 14:15:47', '登录成功', '', '');
INSERT INTO `record` VALUES ('507', '2', '化腾', '2021-03-29 15:48:38', '注销成功', '', '');
INSERT INTO `record` VALUES ('508', '2', '1', '2021-03-29 15:49:51', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('509', '2', '1', '2021-03-29 15:51:44', '登录成功', '', '');
INSERT INTO `record` VALUES ('510', '2', '1', '2021-03-29 22:01:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('511', '2', '1', '2021-03-29 22:02:01', '注销成功', '', '');
INSERT INTO `record` VALUES ('512', '2', '1', '2021-03-30 09:21:08', '登录成功', '', '');
INSERT INTO `record` VALUES ('513', '2', '1', '2021-03-30 09:22:58', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('514', '2', '1', '2021-03-30 09:22:59', '点赞', '32', '777');
INSERT INTO `record` VALUES ('515', '2', '1', '2021-03-30 09:23:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('516', '3', '卢本伟', '2021-03-30 09:23:48', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('517', '3', '卢本伟', '2021-03-30 09:23:59', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('518', '3', '卢本伟', '2021-03-30 09:24:03', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('519', '3', '卢本伟', '2021-03-30 09:24:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('520', '3', '卢本伟', '2021-03-30 09:49:30', '注销成功', '', '');
INSERT INTO `record` VALUES ('521', '2', '1', '2021-03-30 11:21:56', '登录成功', '', '');
INSERT INTO `record` VALUES ('522', '2', '1', '2021-03-30 11:32:06', '取消点赞', '1', '宝马三系满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('523', '2', '1', '2021-03-30 11:32:19', '点赞', '1', '宝马三系满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('524', '2', '1', '2021-03-30 11:32:22', '取消点赞', '2', '大奔满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('525', '2', '1', '2021-03-30 11:32:23', '点赞', '2', '大奔满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('526', '2', '1', '2021-03-30 11:32:28', '取消点赞', '1', '宝马三系满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('527', '2', '1', '2021-03-30 11:32:30', '点赞', '1', '宝马三系满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('528', '2', '1', '2021-03-30 11:39:32', '评论：123', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('529', '2', '1', '2021-03-30 11:39:39', '点赞', '3', '123');
INSERT INTO `record` VALUES ('530', '2', '1', '2021-03-30 11:39:40', '取消点赞', '3', '123');
INSERT INTO `record` VALUES ('531', '2', '1', '2021-03-30 11:40:06', '评论：分为非第三方表达式', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('532', '2', '1', '2021-03-30 11:53:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('533', '2', '1', '2021-03-30 11:54:15', '登录成功', '', '');
INSERT INTO `record` VALUES ('534', '2', '1', '2021-03-30 11:57:26', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('535', '2', '1', '2021-03-30 11:59:02', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('536', '2', '1', '2021-03-30 11:59:04', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('537', '2', '1', '2021-03-30 12:00:52', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('538', '2', '1', '2021-03-30 12:01:42', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('539', '2', '1', '2021-03-30 12:01:49', '点赞', '4', '分为非第三方表达式');
INSERT INTO `record` VALUES ('540', '2', '1', '2021-03-30 13:14:51', '注销成功', '', '');
INSERT INTO `record` VALUES ('541', '2', '1', '2021-03-30 13:14:59', '登录成功', '', '');
INSERT INTO `record` VALUES ('542', '2', '1', '2021-03-30 13:20:15', '注销成功', '', '');
INSERT INTO `record` VALUES ('543', '2', '1', '2021-03-30 13:20:24', '登录成功', '', '');
INSERT INTO `record` VALUES ('544', '2', '1', '2021-03-30 13:23:11', '注销成功', '', '');
INSERT INTO `record` VALUES ('545', '2', '1', '2021-03-30 13:23:23', '登录成功', '', '');
INSERT INTO `record` VALUES ('546', '2', '1', '2021-03-30 13:36:51', '注销成功', '', '');
INSERT INTO `record` VALUES ('547', '2', '1', '2021-03-30 13:37:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('548', '2', '1', '2021-03-30 13:41:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('549', '2', '1', '2021-03-30 13:42:53', '登录成功', '', '');
INSERT INTO `record` VALUES ('550', '2', '1', '2021-03-30 13:45:43', '注销成功', '', '');
INSERT INTO `record` VALUES ('551', '2', '1', '2021-03-30 13:45:53', '登录成功', '', '');
INSERT INTO `record` VALUES ('552', '2', '1', '2021-03-30 14:01:52', '登录成功', '', '');
INSERT INTO `record` VALUES ('553', '2', '1', '2021-03-30 14:01:59', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('554', '2', '1', '2021-03-30 14:02:00', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('555', '2', '1', '2021-03-30 14:02:38', '注销成功', '', '');
INSERT INTO `record` VALUES ('556', '35', 'xr', '2021-03-30 14:42:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('557', '35', 'xr', '2021-03-30 14:58:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('558', '35', 'xr', '2021-03-30 15:05:04', '登录成功', '', '');
INSERT INTO `record` VALUES ('559', '35', 'xr', '2021-03-30 15:05:32', '评论：123', '34', '4654564165165');
INSERT INTO `record` VALUES ('560', '35', 'xr', '2021-03-30 15:05:50', '点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('561', '35', 'xr', '2021-03-30 15:06:06', '转发动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('562', '35', 'xr', '2021-03-30 15:06:34', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('563', '35', 'xr', '2021-03-30 15:06:35', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('564', '35', 'xr', '2021-03-30 15:06:37', '注销成功', '', '');
INSERT INTO `record` VALUES ('565', '35', '1', '2021-03-30 15:07:44', '登录成功', '', '');
INSERT INTO `record` VALUES ('566', '35', '1', '2021-03-30 15:07:57', '取消关注', '4', 'PDD');
INSERT INTO `record` VALUES ('567', '35', '1', '2021-03-30 15:07:58', '关注', '4', 'PDD');
INSERT INTO `record` VALUES ('568', '35', '1', '2021-03-30 15:08:00', '注销成功', '', '');
INSERT INTO `record` VALUES ('569', '0:0:0:0:0:0:0:1', '', '2021-03-30 15:55:19', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('570', '0:0:0:0:0:0:0:1', '', '2021-03-30 15:55:23', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('571', '35', '1', '2021-03-30 15:55:30', '登录成功', '', '');
INSERT INTO `record` VALUES ('572', '35', '1', '2021-03-30 16:16:28', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('573', '35', '1', '2021-03-30 16:17:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('574', '0:0:0:0:0:0:0:1', '', '2021-03-30 16:17:30', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('575', '35', '1', '2021-03-30 16:17:35', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('576', '35', '1', '2021-03-30 16:17:37', '登录成功', '', '');
INSERT INTO `record` VALUES ('577', '35', '1', '2021-03-30 16:17:57', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('578', '35', '1', '2021-03-30 16:24:36', '删除转发', '34', '4654564165165');
INSERT INTO `record` VALUES ('579', '35', '1', '2021-03-30 16:25:58', '删除转发', '34', '4654564165165');
INSERT INTO `record` VALUES ('580', '35', '1', '2021-03-30 16:32:26', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('581', '35', '1', '2021-03-30 16:32:54', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('582', '35', '1', '2021-03-30 16:32:55', '点赞动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('583', '35', '1', '2021-03-30 16:33:12', '评论：11', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('584', '35', '1', '2021-03-30 16:33:19', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('585', '35', '1', '2021-03-30 16:34:09', '评论：147', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('586', '35', '1', '2021-03-30 16:34:11', '评论：1471', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('587', '35', '1', '2021-03-30 16:34:13', '评论：175157157', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('588', '35', '1', '2021-03-30 16:34:15', '评论：15727517', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('589', '35', '1', '2021-03-30 16:42:54', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('590', '35', '1', '2021-03-30 16:42:56', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('591', '35', '1', '2021-03-30 16:43:10', '点赞评论', '5', '123');
INSERT INTO `record` VALUES ('592', '35', '1', '2021-03-30 17:27:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('593', '2', '化腾', '2021-03-30 17:27:34', '登录成功', '', '');
INSERT INTO `record` VALUES ('594', '2', '化腾', '2021-03-30 17:27:52', '关注', '35', '1');
INSERT INTO `record` VALUES ('595', '2', '化腾', '2021-03-30 17:27:55', '注销成功', '', '');
INSERT INTO `record` VALUES ('596', '0:0:0:0:0:0:0:1', '', '2021-03-30 17:27:57', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('597', '35', '1', '2021-03-30 17:27:59', '登录成功', '', '');
INSERT INTO `record` VALUES ('598', '35', '1', '2021-03-30 17:32:12', '注销成功', '', '');
INSERT INTO `record` VALUES ('599', '3', '卢本伟', '2021-03-30 17:32:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('600', '3', '卢本伟', '2021-03-30 17:32:37', '取消关注', '35', '1');
INSERT INTO `record` VALUES ('601', '3', '卢本伟', '2021-03-30 17:32:41', '关注', '35', '1');
INSERT INTO `record` VALUES ('602', '3', '卢本伟', '2021-03-30 17:35:59', '注销成功', '', '');
INSERT INTO `record` VALUES ('603', '35', '1', '2021-03-30 17:36:02', '登录成功', '', '');
INSERT INTO `record` VALUES ('604', '35', 'xr', '2021-03-30 17:48:07', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('605', '35', 'xr', '2021-03-30 17:48:08', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('606', '35', 'xr', '2021-03-30 18:28:31', '登录成功', '', '');
INSERT INTO `record` VALUES ('607', '35', 'xr', '2021-03-30 18:34:50', '点赞动态', '14', 'aaaa');
INSERT INTO `record` VALUES ('608', '35', 'xr', '2021-03-30 18:34:53', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('609', '35', 'xr', '2021-03-30 18:34:54', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('610', '35', 'xr', '2021-03-30 18:35:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('611', '0:0:0:0:0:0:0:1', '', '2021-03-30 18:35:24', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('612', '0:0:0:0:0:0:0:1', '', '2021-03-30 18:35:30', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('613', '1', '汽车之家', '2021-03-30 18:35:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('614', '1', '汽车之家', '2021-03-30 18:35:53', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('615', '1', '汽车之家', '2021-03-30 18:43:15', '注销成功', '', '');
INSERT INTO `record` VALUES ('616', '35', 'xr', '2021-03-30 18:43:19', '登录成功', '', '');
INSERT INTO `record` VALUES ('617', '35', 'xr', '2021-03-30 18:59:05', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('618', '35', 'xr', '2021-03-30 18:59:06', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('619', '35', 'xr', '2021-03-30 18:59:09', '评论：561515', '34', '4654564165165');
INSERT INTO `record` VALUES ('620', '35', 'xr', '2021-03-30 18:59:19', '点赞评论', '11', '561515');
INSERT INTO `record` VALUES ('621', '35', 'xr', '2021-03-30 18:59:21', '取消点赞', '5', '123');
INSERT INTO `record` VALUES ('622', '35', '谢耳朵', '2021-03-30 22:34:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('623', '35', '谢耳朵', '2021-03-30 22:37:24', '注销成功', '', '');
INSERT INTO `record` VALUES ('624', '7', '小阿Giao', '2021-03-30 22:37:54', '登录成功', '', '');
INSERT INTO `record` VALUES ('625', '7', '小阿Giao', '2021-03-30 22:37:59', '注销成功', '', '');
INSERT INTO `record` VALUES ('626', '2', '化腾', '2021-03-30 22:38:02', '登录成功', '', '');
INSERT INTO `record` VALUES ('627', '2', '化腾', '2021-03-30 22:38:59', '注销成功', '', '');
INSERT INTO `record` VALUES ('628', '35', '谢耳朵', '2021-03-30 22:39:01', '登录成功', '', '');
INSERT INTO `record` VALUES ('629', '35', '谢耳朵', '2021-03-30 22:39:30', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('630', '35', '谢耳朵', '2021-03-30 22:39:33', '注销成功', '', '');
INSERT INTO `record` VALUES ('631', '35', '谢耳朵', '2021-03-30 22:40:16', '登录成功', '', '');
INSERT INTO `record` VALUES ('632', '35', '谢耳朵', '2021-03-31 09:10:54', '登录成功', '', '');
INSERT INTO `record` VALUES ('633', '35', '谢耳朵', '2021-03-31 09:15:50', '登录成功', '', '');
INSERT INTO `record` VALUES ('634', '35', '谢耳朵', '2021-03-31 09:18:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('635', '35', '谢耳朵', '2021-03-31 09:26:07', '登录成功', '', '');
INSERT INTO `record` VALUES ('636', '35', '谢耳朵', '2021-03-31 10:11:40', '注销成功', '', '');
INSERT INTO `record` VALUES ('637', '35', '谢耳朵', '2021-03-31 10:11:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('638', '35', '谢耳朵', '2021-03-31 10:44:39', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('639', '35', '谢耳朵', '2021-03-31 10:44:39', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('640', '35', '谢耳朵', '2021-03-31 10:44:46', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('641', '35', '谢耳朵', '2021-03-31 10:44:47', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('642', '35', '谢耳朵', '2021-03-31 10:50:45', '关注', '10', '碧萝奶奶');
INSERT INTO `record` VALUES ('643', '35', '谢耳朵', '2021-03-31 10:50:47', '取消关注', '10', '碧萝奶奶');
INSERT INTO `record` VALUES ('644', '35', '谢耳朵', '2021-03-31 10:52:45', '转发动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('645', '35', '谢耳朵', '2021-03-31 11:58:30', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('646', '35', '谢耳朵', '2021-03-31 11:58:30', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('647', '35', '谢耳朵', '2021-03-31 12:01:21', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('648', '35', '谢耳朵', '2021-03-31 12:01:22', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('649', '35', '谢耳朵', '2021-03-31 15:05:48', '登录成功', '', '');
INSERT INTO `record` VALUES ('650', '35', '谢耳朵', '2021-03-31 15:30:35', '发表动态', '', '1111');
INSERT INTO `record` VALUES ('651', '35', '谢耳朵', '2021-03-31 16:36:15', '点赞动态', '35', '1111');
INSERT INTO `record` VALUES ('652', '35', '谢耳朵', '2021-03-31 16:36:19', '评论：1', '35', '1111');
INSERT INTO `record` VALUES ('653', '35', '谢耳朵', '2021-03-31 17:37:04', '登录成功', '', '');
INSERT INTO `record` VALUES ('654', '35', '谢耳朵', '2021-03-31 17:37:04', '登录成功', '', '');
INSERT INTO `record` VALUES ('655', '35', '谢耳朵', '2021-03-31 18:19:21', '注销成功', '', '');
INSERT INTO `record` VALUES ('656', '35', '谢耳朵', '2021-03-31 18:19:25', '登录成功', '', '');
INSERT INTO `record` VALUES ('657', '35', '谢耳朵', '2021-03-31 18:19:57', '注销成功', '', '');
INSERT INTO `record` VALUES ('658', '35', '谢耳朵', '2021-03-31 18:19:59', '登录成功', '', '');
INSERT INTO `record` VALUES ('659', '35', '谢耳朵', '2021-03-31 18:28:43', '注销成功', '', '');
INSERT INTO `record` VALUES ('660', '35', '谢耳朵', '2021-03-31 18:28:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('661', '35', '谢耳朵', '2021-03-31 18:35:24', '注销成功', '', '');
INSERT INTO `record` VALUES ('662', '35', '谢耳朵', '2021-03-31 18:35:25', '登录成功', '', '');
INSERT INTO `record` VALUES ('663', '35', '谢耳朵', '2021-03-31 18:59:15', '发表动态', '', '1234567890');
INSERT INTO `record` VALUES ('664', '35', '谢耳朵', '2021-03-31 18:59:24', '点赞动态', '36', '1234567890');
INSERT INTO `record` VALUES ('665', '35', '谢耳朵', '2021-03-31 18:59:30', '删除动态', '36', '1234567890');
INSERT INTO `record` VALUES ('666', '35', '谢耳朵', '2021-03-31 20:30:29', '评论：123', '36', '1234567890');
INSERT INTO `record` VALUES ('667', '35', '谢耳朵', '2021-03-31 21:27:53', '登录成功', '', '');
INSERT INTO `record` VALUES ('668', '35', '谢耳朵', '2021-04-01 09:27:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('669', '35', '谢耳朵', '2021-04-01 09:28:34', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('670', '35', '谢耳朵', '2021-04-01 09:28:37', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('671', '35', '谢耳朵', '2021-04-01 09:58:13', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('672', '35', '谢耳朵', '2021-04-01 10:01:01', '注销成功', '', '');
INSERT INTO `record` VALUES ('673', '35', '谢耳朵', '2021-04-01 10:04:30', '登录成功', '', '');
INSERT INTO `record` VALUES ('674', '35', '谢耳朵', '2021-04-01 10:05:45', '注销成功', '', '');
INSERT INTO `record` VALUES ('675', '35', '谢耳朵', '2021-04-01 10:06:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('676', '35', '谢耳朵', '2021-04-01 11:56:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('677', '35', '谢耳朵', '2021-04-01 11:58:02', '发表动态', '', '杜兰特FMVP');
INSERT INTO `record` VALUES ('678', '35', '谢耳朵', '2021-04-01 11:58:36', '转发动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('679', '35', '谢耳朵', '2021-04-01 11:59:04', '转发动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('680', '35', '谢耳朵', '2021-04-01 11:59:34', '评论：MVP@KevinDurant', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('681', '35', '谢耳朵', '2021-04-01 11:59:57', '评论：789', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('682', '35', '谢耳朵', '2021-04-01 12:51:12', '注销成功', '', '');
INSERT INTO `record` VALUES ('683', '35', '谢耳朵', '2021-04-01 16:06:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('684', '35', '谢耳朵', '2021-04-01 16:07:36', '注销成功', '', '');
INSERT INTO `record` VALUES ('685', '35', '谢耳朵', '2021-04-01 16:08:11', '登录成功', '', '');
INSERT INTO `record` VALUES ('686', '35', '谢耳朵', '2021-04-01 17:49:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('687', '2', '化腾', '2021-04-01 17:49:21', '登录成功', '', '');
INSERT INTO `record` VALUES ('688', '2', '化腾', '2021-04-01 17:50:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('689', '3', '卢本伟', '2021-04-01 17:50:07', '登录成功', '', '');
INSERT INTO `record` VALUES ('690', '3', '卢本伟', '2021-04-01 17:51:35', '注销成功', '', '');
INSERT INTO `record` VALUES ('691', '4', 'PDD', '2021-04-01 17:51:37', '登录成功', '', '');
INSERT INTO `record` VALUES ('692', '4', 'PDD', '2021-04-01 17:52:38', '注销成功', '', '');
INSERT INTO `record` VALUES ('693', '5', '大马猴', '2021-04-01 17:52:40', '登录成功', '', '');
INSERT INTO `record` VALUES ('694', '5', '大马猴', '2021-04-01 17:53:29', '注销成功', '', '');
INSERT INTO `record` VALUES ('695', '6', '药水哥', '2021-04-01 17:53:33', '登录成功', '', '');
INSERT INTO `record` VALUES ('696', '6', '药水哥', '2021-04-01 17:58:16', '注销成功', '', '');
INSERT INTO `record` VALUES ('697', '35', '谢耳朵', '2021-04-01 17:58:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('698', '35', '谢耳朵', '2021-04-01 17:58:20', '注销成功', '', '');
INSERT INTO `record` VALUES ('699', '2', '化腾', '2021-04-01 17:58:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('700', '2', '化腾', '2021-04-01 17:59:47', '注销成功', '', '');
INSERT INTO `record` VALUES ('701', '4', 'PDD', '2021-04-01 17:59:50', '登录成功', '', '');
INSERT INTO `record` VALUES ('702', '4', 'PDD', '2021-04-01 18:00:30', '注销成功', '', '');
INSERT INTO `record` VALUES ('703', '6', '药水哥', '2021-04-01 18:00:33', '登录成功', '', '');
INSERT INTO `record` VALUES ('704', '6', '药水哥', '2021-04-01 18:00:37', '注销成功', '', '');
INSERT INTO `record` VALUES ('705', '8', '混元功法保国', '2021-04-01 18:00:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('706', '8', '混元功法保国', '2021-04-01 18:01:41', '注销成功', '', '');
INSERT INTO `record` VALUES ('707', '7', '小阿Giao', '2021-04-01 18:01:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('708', '35', '谢耳朵', '2021-04-01 18:42:36', '登录成功', '', '');
INSERT INTO `record` VALUES ('709', '35', '谢耳朵', '2021-04-01 18:49:50', '注销成功', '', '');
INSERT INTO `record` VALUES ('710', '35', '谢耳朵', '2021-04-01 18:49:52', '登录成功', '', '');
INSERT INTO `record` VALUES ('711', '35', '谢耳朵', '2021-04-01 18:55:45', '注销成功', '', '');
INSERT INTO `record` VALUES ('712', '35', '谢耳朵', '2021-04-01 18:55:47', '登录成功', '', '');
INSERT INTO `record` VALUES ('713', '35', '谢耳朵', '2021-04-01 19:02:47', '注销成功', '', '');
INSERT INTO `record` VALUES ('714', '1', '汽车之家', '2021-04-01 19:02:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('715', '1', '汽车之家', '2021-04-01 19:03:17', '注销成功', '', '');
INSERT INTO `record` VALUES ('716', '1', '汽车之家', '2021-04-01 19:04:45', '登录成功', '', '');
INSERT INTO `record` VALUES ('717', '1', '汽车之家', '2021-04-01 19:05:56', '注销成功', '', '');
INSERT INTO `record` VALUES ('718', '2', '化腾', '2021-04-01 19:05:58', '登录成功', '', '');
INSERT INTO `record` VALUES ('719', '2', '化腾', '2021-04-01 19:06:08', '注销成功', '', '');
INSERT INTO `record` VALUES ('720', '3', '卢本伟', '2021-04-01 19:06:10', '登录成功', '', '');
INSERT INTO `record` VALUES ('721', '3', '卢本伟', '2021-04-01 19:06:18', '注销成功', '', '');
INSERT INTO `record` VALUES ('722', '4', 'PDD', '2021-04-01 19:06:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('723', '4', 'PDD', '2021-04-01 19:06:31', '注销成功', '', '');
INSERT INTO `record` VALUES ('724', '5', '大马猴', '2021-04-01 19:06:33', '登录成功', '', '');
INSERT INTO `record` VALUES ('725', '5', '大马猴', '2021-04-01 19:06:40', '注销成功', '', '');
INSERT INTO `record` VALUES ('726', '5', '大马猴', '2021-04-01 19:06:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('727', '5', '大马猴', '2021-04-01 19:06:45', '注销成功', '', '');
INSERT INTO `record` VALUES ('728', '6', '药水哥', '2021-04-01 19:06:47', '登录成功', '', '');
INSERT INTO `record` VALUES ('729', '6', '药水哥', '2021-04-01 19:06:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('730', '6', '药水哥', '2021-04-01 19:06:55', '登录成功', '', '');
INSERT INTO `record` VALUES ('731', '6', '药水哥', '2021-04-01 19:06:56', '注销成功', '', '');
INSERT INTO `record` VALUES ('732', '7', '小阿Giao', '2021-04-01 19:06:58', '登录成功', '', '');
INSERT INTO `record` VALUES ('733', '7', '小阿Giao', '2021-04-01 19:07:06', '注销成功', '', '');
INSERT INTO `record` VALUES ('734', '8', '混元功法保国', '2021-04-01 19:07:09', '登录成功', '', '');
INSERT INTO `record` VALUES ('735', '8', '混元功法保国', '2021-04-01 19:07:18', '注销成功', '', '');
INSERT INTO `record` VALUES ('736', '9', '练习生蔡徐坤', '2021-04-01 19:07:20', '登录成功', '', '');
INSERT INTO `record` VALUES ('737', '9', '练习生蔡徐坤', '2021-04-01 19:07:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('738', '10', '碧萝奶奶', '2021-04-01 19:07:30', '登录成功', '', '');
INSERT INTO `record` VALUES ('739', '10', '碧萝奶奶', '2021-04-01 19:14:35', '注销成功', '', '');
INSERT INTO `record` VALUES ('740', '35', '谢耳朵', '2021-04-01 19:14:44', '登录成功', '', '');
INSERT INTO `record` VALUES ('741', '35', '谢耳朵', '2021-04-01 19:15:15', '注销成功', '', '');
INSERT INTO `record` VALUES ('742', '35', '谢耳朵', '2021-04-01 19:15:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('743', '35', '谢耳朵', '2021-04-01 19:50:04', '注销成功', '', '');
INSERT INTO `record` VALUES ('744', '35', '谢耳朵', '2021-04-01 19:50:06', '登录成功', '', '');
INSERT INTO `record` VALUES ('745', '35', '谢耳朵', '2021-04-01 20:31:48', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('746', '35', '谢耳朵', '2021-04-01 20:31:50', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('747', '35', '谢耳朵', '2021-04-01 20:32:01', '点赞动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('748', '35', '谢耳朵', '2021-04-01 20:32:02', '取消点赞', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('749', '35', '谢耳朵', '2021-04-01 20:32:09', '点赞动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('750', '35', '谢耳朵', '2021-04-01 20:32:30', '取消点赞', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('751', '35', '谢耳朵', '2021-04-01 20:32:48', '发表动态', '', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('752', '35', '谢耳朵', '2021-04-01 20:38:13', '点赞评论', '10', '15727517');
INSERT INTO `record` VALUES ('753', '35', '谢耳朵', '2021-04-01 20:38:23', '点赞动态', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('754', '35', '谢耳朵', '2021-04-01 20:38:28', '评论：yugfudshfidshfchdsjbhdsbhjbsd', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('755', '35', '谢耳朵', '2021-04-01 20:38:48', '评论：rgdfhgdfhd', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('756', '35', '谢耳朵', '2021-04-01 20:38:51', '取消点赞', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('757', '35', '谢耳朵', '2021-04-01 20:38:52', '点赞动态', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('758', '35', '谢耳朵', '2021-04-01 20:39:31', '评论：sgdfgbfdbfd', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('759', '35', '谢耳朵', '2021-04-01 20:39:39', '评论：jbdfkjbdsjbn\njcbdsvkbdsbv', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('760', '35', '谢耳朵', '2021-04-01 20:39:47', '点赞评论', '19', 'jbdfkjbdsjbn\njcbdsvkbdsbv');
INSERT INTO `record` VALUES ('761', '35', '谢耳朵', '2021-04-01 20:39:48', '点赞评论', '18', 'sgdfgbfdbfd');
INSERT INTO `record` VALUES ('762', '35', '谢耳朵', '2021-04-01 20:39:52', '点赞动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('763', '35', '谢耳朵', '2021-04-01 20:39:54', '转发动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('764', '35', '谢耳朵', '2021-04-01 20:40:54', '转发动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('765', '35', '谢耳朵', '2021-04-01 20:41:15', '转发动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('766', '35', '谢耳朵', '2021-04-01 20:51:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('767', '35', '谢耳朵', '2021-04-01 21:06:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('768', '35', '谢耳朵', '2021-04-01 21:14:37', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('769', '35', '谢耳朵', '2021-04-01 21:14:39', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('770', '35', '谢耳朵', '2021-04-01 21:14:40', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('771', '35', '谢耳朵', '2021-04-01 21:15:54', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('772', '35', '谢耳朵', '2021-04-01 21:15:58', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('773', '35', '谢耳朵', '2021-04-01 21:16:28', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('774', '35', '谢耳朵', '2021-04-01 21:16:28', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('775', '35', '谢耳朵', '2021-04-01 21:24:47', '注销成功', '', '');
INSERT INTO `record` VALUES ('776', '35', '谢耳朵', '2021-04-01 21:24:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('777', '35', '谢耳朵', '2021-04-01 22:37:38', '注销成功', '', '');
INSERT INTO `record` VALUES ('778', '35', '谢耳朵', '2021-04-02 09:12:44', '登录成功', '', '');
INSERT INTO `record` VALUES ('779', '35', '谢耳朵', '2021-04-02 09:21:35', '注销成功', '', '');
INSERT INTO `record` VALUES ('780', '35', '谢耳朵', '2021-04-02 09:21:37', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('781', '35', '谢耳朵', '2021-04-02 09:21:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('782', '35', '谢耳朵', '2021-04-02 09:21:41', '注销成功', '', '');
INSERT INTO `record` VALUES ('783', '35', '谢耳朵', '2021-04-02 09:21:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('784', '35', '谢耳朵', '2021-04-02 10:18:38', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('785', '35', '谢耳朵', '2021-04-02 10:18:40', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('786', '35', '谢耳朵', '2021-04-02 10:18:56', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('787', '35', '谢耳朵', '2021-04-02 10:18:57', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('788', '35', '谢耳朵', '2021-04-02 10:20:33', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('789', '35', '谢耳朵', '2021-04-02 10:20:35', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('790', '35', '谢耳朵', '2021-04-02 10:20:37', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('791', '35', '谢耳朵', '2021-04-02 10:23:41', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('792', '35', '谢耳朵', '2021-04-02 10:23:45', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('793', '35', '谢耳朵', '2021-04-02 10:24:10', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('794', '35', '谢耳朵', '2021-04-02 10:24:16', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('795', '35', '谢耳朵', '2021-04-02 10:24:18', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('796', '35', '谢耳朵', '2021-04-02 10:24:44', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('797', '35', '谢耳朵', '2021-04-02 10:24:45', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('798', '35', '谢耳朵', '2021-04-02 10:24:46', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('799', '35', '谢耳朵', '2021-04-02 10:24:49', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('800', '35', '谢耳朵', '2021-04-02 10:27:59', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('801', '35', '谢耳朵', '2021-04-02 10:28:04', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('802', '35', '谢耳朵', '2021-04-02 10:28:05', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('803', '35', '谢耳朵', '2021-04-02 10:28:07', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('804', '35', '谢耳朵', '2021-04-02 10:28:20', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('805', '35', '谢耳朵', '2021-04-02 10:28:21', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('806', '35', '谢耳朵', '2021-04-02 10:28:26', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('807', '35', '谢耳朵', '2021-04-02 10:28:27', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('808', '35', '谢耳朵', '2021-04-02 10:50:28', '发送消息：147', '7', '小阿Giao');
INSERT INTO `record` VALUES ('809', '35', '谢耳朵', '2021-04-02 10:50:36', '注销成功', '', '');
INSERT INTO `record` VALUES ('810', '7', '小阿Giao', '2021-04-02 10:50:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('811', '7', '小阿Giao', '2021-04-02 10:51:04', '发送消息：', '35', '谢耳朵');
INSERT INTO `record` VALUES ('812', '7', '小阿Giao', '2021-04-02 10:51:07', '注销成功', '', '');
INSERT INTO `record` VALUES ('813', '35', '谢耳朵', '2021-04-02 10:51:09', '登录成功', '', '');
INSERT INTO `record` VALUES ('814', '35', '谢耳朵', '2021-04-02 10:53:32', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('815', '35', '谢耳朵', '2021-04-02 10:53:53', '发送消息：颐和园', '7', '小阿Giao');
INSERT INTO `record` VALUES ('816', '35', '谢耳朵', '2021-04-02 10:58:29', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('817', '35', '谢耳朵', '2021-04-02 10:58:30', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('818', '35', '谢耳朵', '2021-04-02 11:07:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('819', '35', '谢耳朵', '2021-04-02 11:07:56', '登录成功', '', '');
INSERT INTO `record` VALUES ('820', '35', '谢耳朵', '2021-04-02 11:08:20', '取消点赞', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('821', '35', '谢耳朵', '2021-04-02 11:08:27', '点赞动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('822', '35', '谢耳朵', '2021-04-02 11:08:32', '转发动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('823', '35', '谢耳朵', '2021-04-02 11:08:50', '发表动态', '', '1111');
INSERT INTO `record` VALUES ('824', '35', '谢耳朵', '2021-04-02 11:08:56', '转发动态', '39', '1111');
INSERT INTO `record` VALUES ('825', '35', '谢耳朵', '2021-04-02 11:13:53', '注销成功', '', '');
INSERT INTO `record` VALUES ('826', '35', '谢耳朵', '2021-04-02 11:13:55', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('827', '35', '谢耳朵', '2021-04-02 11:13:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('828', '35', '谢耳朵', '2021-04-02 11:14:29', '注销成功', '', '');
INSERT INTO `record` VALUES ('829', '35', '谢耳朵', '2021-04-02 11:14:34', '登录成功', '', '');
INSERT INTO `record` VALUES ('830', '35', '谢耳朵', '2021-04-02 11:14:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('831', '35', '谢耳朵', '2021-04-02 11:14:54', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('832', '35', '谢耳朵', '2021-04-02 11:14:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('833', '35', '谢耳朵', '2021-04-02 11:15:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('834', '35', '谢耳朵', '2021-04-02 11:15:30', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('835', '35', '谢耳朵', '2021-04-02 11:15:33', '登录成功', '', '');
INSERT INTO `record` VALUES ('836', '35', '谢耳朵', '2021-04-02 11:16:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('837', '35', '谢耳朵', '2021-04-02 11:16:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('838', '35', '谢耳朵', '2021-04-02 11:16:50', '注销成功', '', '');
INSERT INTO `record` VALUES ('839', '35', '谢耳朵', '2021-04-02 11:16:52', '登录成功', '', '');
INSERT INTO `record` VALUES ('840', '35', '谢耳朵', '2021-04-02 11:17:04', '注销成功', '', '');
INSERT INTO `record` VALUES ('841', '35', '谢耳朵', '2021-04-02 11:17:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('842', '35', '谢耳朵', '2021-04-02 11:17:21', '注销成功', '', '');
INSERT INTO `record` VALUES ('843', '35', '谢耳朵', '2021-04-02 11:17:23', '登录成功', '', '');
INSERT INTO `record` VALUES ('844', '35', '谢耳朵', '2021-04-02 11:34:14', '注销成功', '', '');
INSERT INTO `record` VALUES ('845', '35', '谢耳朵', '2021-04-02 11:34:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('846', '35', '谢耳朵', '2021-04-02 11:34:23', '注销成功', '', '');
INSERT INTO `record` VALUES ('847', '35', '谢耳朵', '2021-04-02 11:34:25', '登录成功', '', '');
INSERT INTO `record` VALUES ('848', '35', '谢耳朵', '2021-04-02 11:37:28', '注销成功', '', '');
INSERT INTO `record` VALUES ('849', '3', '卢本伟', '2021-04-02 11:37:31', '登录成功', '', '');
INSERT INTO `record` VALUES ('850', '3', '卢本伟', '2021-04-02 11:37:39', '发送消息：111', '35', '谢耳朵');
INSERT INTO `record` VALUES ('851', '3', '卢本伟', '2021-04-02 11:37:42', '注销成功', '', '');
INSERT INTO `record` VALUES ('852', '35', '谢耳朵', '2021-04-02 11:37:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('853', '35', '谢耳朵', '2021-04-02 11:38:00', '删除消息：111', '3', '卢本伟');
INSERT INTO `record` VALUES ('854', '35', '谢耳朵', '2021-04-02 11:38:02', '注销成功', '', '');
INSERT INTO `record` VALUES ('855', '3', '卢本伟', '2021-04-02 11:38:04', '登录成功', '', '');
INSERT INTO `record` VALUES ('856', '3', '卢本伟', '2021-04-02 11:38:12', '发送消息：cdscdscdsvc', '35', '谢耳朵');
INSERT INTO `record` VALUES ('857', '3', '卢本伟', '2021-04-02 11:38:15', '注销成功', '', '');
INSERT INTO `record` VALUES ('858', '35', '谢耳朵', '2021-04-02 11:38:16', '登录成功', '', '');
INSERT INTO `record` VALUES ('859', '35', '谢耳朵', '2021-04-02 11:41:58', '注销成功', '', '');
INSERT INTO `record` VALUES ('860', '35', '谢耳朵', '2021-04-02 11:42:08', '登录成功', '', '');
INSERT INTO `record` VALUES ('861', '35', '谢耳朵', '2021-04-02 11:42:24', '注销成功', '', '');
INSERT INTO `record` VALUES ('862', '4', 'PDD', '2021-04-02 11:42:27', '登录成功', '', '');
INSERT INTO `record` VALUES ('863', '4', 'PDD', '2021-04-02 11:42:34', '发送消息：Pdd', '35', '谢耳朵');
INSERT INTO `record` VALUES ('864', '4', 'PDD', '2021-04-02 11:42:36', '注销成功', '', '');
INSERT INTO `record` VALUES ('865', '35', '谢耳朵', '2021-04-02 11:42:37', '登录成功', '', '');
INSERT INTO `record` VALUES ('866', '35', '谢耳朵', '2021-04-02 11:42:52', '删除消息：', '7', '小阿Giao');
INSERT INTO `record` VALUES ('867', '35', '谢耳朵', '2021-04-02 11:42:57', '注销成功', '', '');
INSERT INTO `record` VALUES ('868', '5', '大马猴', '2021-04-02 11:42:59', '登录成功', '', '');
INSERT INTO `record` VALUES ('869', '5', '大马猴', '2021-04-02 11:43:10', '发送消息：大马猴', '35', '谢耳朵');
INSERT INTO `record` VALUES ('870', '5', '大马猴', '2021-04-02 11:43:12', '注销成功', '', '');
INSERT INTO `record` VALUES ('871', '35', '谢耳朵', '2021-04-02 11:43:14', '登录成功', '', '');
INSERT INTO `record` VALUES ('872', '35', '谢耳朵', '2021-04-02 13:48:08', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('873', '35', '谢耳朵', '2021-04-02 13:51:11', '发表动态', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('874', '35', '谢耳朵', '2021-04-02 13:51:25', '注销成功', null, null);
INSERT INTO `record` VALUES ('875', '1', '汽车之家', '2021-04-02 13:51:35', '登录成功', null, null);
INSERT INTO `record` VALUES ('876', '1', '汽车之家', '2021-04-02 13:52:09', '注销成功', null, null);
INSERT INTO `record` VALUES ('877', '4', 'PDD', '2021-04-02 13:52:11', '登录成功', null, null);
INSERT INTO `record` VALUES ('878', '4', 'PDD', '2021-04-02 13:52:17', '注销成功', null, null);
INSERT INTO `record` VALUES ('879', '2', '化腾', '2021-04-02 13:52:20', '登录成功', null, null);
INSERT INTO `record` VALUES ('880', '2', '化腾', '2021-04-02 13:52:27', '注销成功', null, null);
INSERT INTO `record` VALUES ('881', '3', '卢本伟', '2021-04-02 13:52:29', '登录成功', null, null);
INSERT INTO `record` VALUES ('882', '3', '卢本伟', '2021-04-02 13:58:02', '注销成功', null, null);
INSERT INTO `record` VALUES ('883', '35', '谢耳朵', '2021-04-02 13:58:04', '登录成功', null, null);
INSERT INTO `record` VALUES ('884', '35', '谢耳朵', '2021-04-02 13:58:57', '发送消息：麻瓜藤', '2', '化腾');
INSERT INTO `record` VALUES ('885', '35', '谢耳朵', '2021-04-02 13:58:59', '注销成功', null, null);
INSERT INTO `record` VALUES ('886', '2', '化腾', '2021-04-02 13:59:00', '登录成功', null, null);
INSERT INTO `record` VALUES ('887', '2', '化腾', '2021-04-02 13:59:18', '删除消息：麻瓜藤', '35', '谢耳朵');
INSERT INTO `record` VALUES ('888', '2', '化腾', '2021-04-02 14:05:58', '注销成功', null, null);
INSERT INTO `record` VALUES ('889', '35', '谢耳朵', '2021-04-02 14:06:00', '登录成功', null, null);
INSERT INTO `record` VALUES ('890', '35', '谢耳朵', '2021-04-02 14:14:16', '删除评论：null', '36', '1234567890');
INSERT INTO `record` VALUES ('891', '35', '谢耳朵', '2021-04-02 14:18:59', '点赞动态', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('892', '35', '谢耳朵', '2021-04-02 14:19:38', '转发动态', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('893', '35', '谢耳朵', '2021-04-02 14:20:07', '评论：752572', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('894', '35', '谢耳朵', '2021-04-02 14:22:01', '评论：按时擦擦', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('895', '35', '谢耳朵', '2021-04-02 14:22:09', '评论：阿砂石厂', '39', '1111');
INSERT INTO `record` VALUES ('896', '35', '谢耳朵', '2021-04-02 14:30:46', '取消点赞', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('897', '35', '谢耳朵', '2021-04-02 14:31:17', '评论：null', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('898', '35', '谢耳朵', '2021-04-02 14:33:42', '评论：null', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('899', '35', '谢耳朵', '2021-04-02 14:54:26', '评论：耗子尾汁', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('900', '35', '谢耳朵', '2021-04-02 14:55:09', '评论：阿斯顿撒多', '30', '汽车之家');
INSERT INTO `record` VALUES ('901', '35', '谢耳朵', '2021-04-02 14:55:40', '点赞评论', '24', '阿斯顿撒多');
INSERT INTO `record` VALUES ('902', '35', '谢耳朵', '2021-04-02 14:55:54', '评论：48448', '30', '汽车之家');
INSERT INTO `record` VALUES ('903', '35', '谢耳朵', '2021-04-02 14:55:57', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('904', '35', '谢耳朵', '2021-04-02 14:55:58', '点赞动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('905', '35', '谢耳朵', '2021-04-02 14:56:00', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('906', '35', '谢耳朵', '2021-04-02 14:56:17', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('907', '35', '谢耳朵', '2021-04-02 14:56:42', '发表动态', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('908', '35', '谢耳朵', '2021-04-02 14:57:00', '点赞动态', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('909', '35', '谢耳朵', '2021-04-02 14:59:09', '评论：阿萨德', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('910', '35', '谢耳朵', '2021-04-02 15:00:58', '取消点赞', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('911', '35', '谢耳朵', '2021-04-02 15:00:59', '点赞动态', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('912', '35', '谢耳朵', '2021-04-02 15:01:04', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('913', '35', '谢耳朵', '2021-04-02 15:01:57', '评论：147', '30', '汽车之家');
INSERT INTO `record` VALUES ('914', '35', '谢耳朵', '2021-04-02 15:02:21', '评论：789', '30', '汽车之家');
INSERT INTO `record` VALUES ('915', '35', '谢耳朵', '2021-04-02 15:02:26', '点赞动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('916', '35', '谢耳朵', '2021-04-02 15:05:49', '评论：258741369', '30', '汽车之家');
INSERT INTO `record` VALUES ('917', '35', '谢耳朵', '2021-04-02 15:06:10', '评论：114冬季几年级', '30', '汽车之家');
INSERT INTO `record` VALUES ('918', '35', '谢耳朵', '2021-04-02 15:06:30', '评论：123更不能借口了', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('919', '35', '谢耳朵', '2021-04-02 15:06:40', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('920', '35', '谢耳朵', '2021-04-02 15:06:41', '点赞动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('921', '35', '谢耳朵', '2021-04-02 15:14:00', '发表动态', '42', '清明时节雨纷纷');
INSERT INTO `record` VALUES ('922', '35', '谢耳朵', '2021-04-02 15:25:54', '登录成功', null, null);
INSERT INTO `record` VALUES ('923', '35', '谢耳朵', '2021-04-02 16:10:38', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('924', '35', '谢耳朵', '2021-04-02 16:10:39', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('925', '35', '谢耳朵', '2021-04-02 16:13:39', '转发动态', '42', '清明时节雨纷纷');
INSERT INTO `record` VALUES ('926', '35', '谢耳朵', '2021-04-02 17:25:33', '登录成功', null, null);
INSERT INTO `record` VALUES ('927', '35', '谢耳朵', '2021-04-02 17:29:09', '注销成功', null, null);
INSERT INTO `record` VALUES ('928', '35', '谢耳朵', '2021-04-02 17:33:58', '登录成功', null, null);
INSERT INTO `record` VALUES ('929', '35', '谢耳朵', '2021-04-02 17:34:09', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('930', '35', '谢耳朵', '2021-04-02 17:34:58', '注销成功', null, null);
INSERT INTO `record` VALUES ('931', '7', '小阿Giao', '2021-04-02 21:40:42', '登录成功', null, null);
INSERT INTO `record` VALUES ('932', '7', '小阿Giao', '2021-04-02 21:40:59', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('933', '7', '小阿Giao', '2021-04-02 21:41:15', '注销成功', null, null);
INSERT INTO `record` VALUES ('934', '35', '谢耳朵', '2021-04-02 21:41:17', '登录成功', null, null);
INSERT INTO `record` VALUES ('935', '35', '谢耳朵', '2021-04-02 21:41:36', '点赞动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('936', '35', '谢耳朵', '2021-04-02 21:41:42', '评论：固化房合法化会更好', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('937', '35', '谢耳朵', '2021-04-02 21:42:01', '发表动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('938', '35', '谢耳朵', '2021-04-02 21:46:10', '点赞动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('939', '35', '谢耳朵', '2021-04-02 21:46:12', '取消点赞', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('940', '35', '谢耳朵', '2021-04-02 21:47:01', '点赞动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('941', '35', '谢耳朵', '2021-04-02 21:47:32', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('942', '35', '谢耳朵', '2021-04-02 21:47:35', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('943', '35', '谢耳朵', '2021-04-03 13:39:40', '登录成功', null, null);
INSERT INTO `record` VALUES ('944', '35', '谢耳朵', '2021-04-03 13:39:53', '评论：111', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('945', '35', '谢耳朵', '2021-04-03 13:40:01', '点赞评论', '33', '111');
INSERT INTO `record` VALUES ('946', '35', '谢耳朵', '2021-04-03 13:40:04', '取消点赞', '33', '111');
INSERT INTO `record` VALUES ('947', '35', '谢耳朵', '2021-04-03 13:40:13', '评论：你导剪版报价单', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('948', '35', '谢耳朵', '2021-04-03 13:40:19', '点赞评论', '34', '你导剪版报价单');
INSERT INTO `record` VALUES ('949', '35', '谢耳朵', '2021-04-03 13:40:39', '取消点赞', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('950', '35', '谢耳朵', '2021-04-03 13:40:40', '点赞动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('951', '35', '谢耳朵', '2021-04-03 13:42:29', '注销成功', null, null);
INSERT INTO `record` VALUES ('952', '3', '卢本伟', '2021-04-03 13:43:55', '登录成功', null, null);
INSERT INTO `record` VALUES ('953', '3', '卢本伟', '2021-04-03 13:44:05', '取消关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('954', '3', '卢本伟', '2021-04-03 13:44:06', '关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('955', '3', '卢本伟', '2021-04-03 13:46:13', '注销成功', null, null);
INSERT INTO `record` VALUES ('956', '2', '化腾', '2021-04-03 13:46:25', '登录成功', null, null);
INSERT INTO `record` VALUES ('957', '2', '化腾', '2021-04-03 13:49:11', '注销成功', null, null);
INSERT INTO `record` VALUES ('958', '2', '化腾', '2021-04-03 13:49:22', '登录成功', null, null);
INSERT INTO `record` VALUES ('959', '2', '化腾', '2021-04-03 13:49:40', '发送消息：', '35', '谢耳朵');
INSERT INTO `record` VALUES ('960', '2', '化腾', '2021-04-03 13:49:52', '注销成功', null, null);
INSERT INTO `record` VALUES ('961', '7', '小阿Giao', '2021-04-03 13:49:57', '登录成功', null, null);
INSERT INTO `record` VALUES ('962', '7', '小阿Giao', '2021-04-03 13:49:59', '注销成功', null, null);
INSERT INTO `record` VALUES ('963', '35', '谢耳朵', '2021-04-03 13:50:02', '登录成功', null, null);
INSERT INTO `record` VALUES ('964', '35', '谢耳朵', '2021-04-03 13:52:32', '发送消息：潇洒下是', '2', '化腾');
INSERT INTO `record` VALUES ('965', '35', '谢耳朵', '2021-04-03 13:53:32', '发送消息：你刚发你', '2', '化腾');
INSERT INTO `record` VALUES ('966', '35', '谢耳朵', '2021-04-03 13:54:03', '发送消息：按时擦拭擦是', '2', '化腾');
INSERT INTO `record` VALUES ('967', '35', '谢耳朵', '2021-04-03 13:54:11', '发送消息：擦擦撒擦擦是', '2', '化腾');
INSERT INTO `record` VALUES ('968', '35', '谢耳朵', '2021-04-03 13:54:44', '发送消息：西安市西安市', '2', '化腾');
INSERT INTO `record` VALUES ('969', '35', '谢耳朵', '2021-04-03 13:54:59', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('970', '35', '谢耳朵', '2021-04-03 13:55:00', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('971', '35', '谢耳朵', '2021-04-03 13:55:04', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('972', '35', '谢耳朵', '2021-04-03 13:55:06', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('973', '35', '谢耳朵', '2021-04-03 13:55:10', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('974', '35', '谢耳朵', '2021-04-03 13:55:11', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('975', '35', '谢耳朵', '2021-04-03 13:56:18', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('976', '35', '谢耳朵', '2021-04-03 13:56:18', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('977', '35', '谢耳朵', '2021-04-03 13:56:39', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('978', '35', '谢耳朵', '2021-04-03 13:56:40', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('979', '35', '谢耳朵', '2021-04-03 13:57:51', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('980', '35', '谢耳朵', '2021-04-03 13:57:52', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('981', '35', '谢耳朵', '2021-04-03 13:58:21', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('982', '35', '谢耳朵', '2021-04-03 13:58:22', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('983', '35', '谢耳朵', '2021-04-03 13:58:40', '注销成功', null, null);
INSERT INTO `record` VALUES ('984', '35', '谢耳朵', '2021-04-03 13:58:51', '登录成功', null, null);
INSERT INTO `record` VALUES ('985', '35', '谢耳朵', '2021-04-03 13:58:52', '注销成功', null, null);
INSERT INTO `record` VALUES ('986', '2', '化腾', '2021-04-03 13:58:54', '登录成功', null, null);
INSERT INTO `record` VALUES ('987', '2', '化腾', '2021-04-03 13:59:19', '注销成功', null, null);
INSERT INTO `record` VALUES ('988', '35', '谢耳朵', '2021-04-03 13:59:21', '登录成功', null, null);
INSERT INTO `record` VALUES ('989', '35', '谢耳朵', '2021-04-03 13:59:32', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('990', '35', '谢耳朵', '2021-04-03 14:08:03', '发送消息：ascasc', '2', '化腾');
INSERT INTO `record` VALUES ('991', '35', '谢耳朵', '2021-04-03 14:08:23', '发送消息：擦擦删除', '2', '化腾');
INSERT INTO `record` VALUES ('992', '35', '谢耳朵', '2021-04-03 14:10:34', '登录成功', null, null);
INSERT INTO `record` VALUES ('993', '35', '谢耳朵', '2021-04-03 14:10:40', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('994', '35', '谢耳朵', '2021-04-03 14:10:40', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('995', '35', '谢耳朵', '2021-04-03 14:11:47', '注销成功', null, null);
INSERT INTO `record` VALUES ('996', '35', '谢耳朵', '2021-04-03 14:11:57', '登录成功', null, null);
INSERT INTO `record` VALUES ('997', '35', '谢耳朵', '2021-04-03 14:12:05', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('998', '35', '谢耳朵', '2021-04-03 14:12:05', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('999', '35', '谢耳朵', '2021-04-03 14:25:18', '注销成功', null, null);
INSERT INTO `record` VALUES ('1000', '35', '谢耳朵', '2021-04-03 14:25:29', '登录成功', null, null);
INSERT INTO `record` VALUES ('1001', '35', '谢耳朵', '2021-04-03 14:25:36', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('1002', '35', '谢耳朵', '2021-04-03 14:25:36', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('1003', '1', '汽车之家', '2021-04-03 19:08:09', '登录成功', null, null);
INSERT INTO `record` VALUES ('1004', '1', '汽车之家', '2021-04-03 19:09:06', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1005', '1', '汽车之家', '2021-04-03 19:22:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1006', '1', '汽车之家', '2021-04-03 19:22:26', '登录成功', null, null);
INSERT INTO `record` VALUES ('1007', '1', '汽车之家', '2021-04-03 19:23:03', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1008', '1', '汽车之家', '2021-04-03 19:23:22', '注销成功', null, null);
INSERT INTO `record` VALUES ('1009', '35', '谢耳朵', '2021-04-03 19:23:28', '登录成功', null, null);
INSERT INTO `record` VALUES ('1010', '35', '谢耳朵', '2021-04-03 19:23:39', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1011', '35', '谢耳朵', '2021-04-03 19:24:10', '注销成功', null, null);
INSERT INTO `record` VALUES ('1012', '2', '化腾', '2021-04-03 19:24:13', '登录成功', null, null);
INSERT INTO `record` VALUES ('1013', '2', '化腾', '2021-04-03 19:24:19', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1014', '2', '化腾', '2021-04-03 19:24:22', '注销成功', null, null);
INSERT INTO `record` VALUES ('1015', '3', '卢本伟', '2021-04-03 19:24:25', '登录成功', null, null);
INSERT INTO `record` VALUES ('1016', '3', '卢本伟', '2021-04-03 19:24:29', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1017', '3', '卢本伟', '2021-04-03 19:24:33', '注销成功', null, null);
INSERT INTO `record` VALUES ('1018', '4', 'PDD', '2021-04-03 19:24:35', '登录成功', null, null);
INSERT INTO `record` VALUES ('1019', '4', 'PDD', '2021-04-03 19:24:41', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1020', '4', 'PDD', '2021-04-03 19:24:43', '注销成功', null, null);
INSERT INTO `record` VALUES ('1021', '5', '大马猴', '2021-04-03 19:24:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1022', '5', '大马猴', '2021-04-03 19:24:52', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1023', '5', '大马猴', '2021-04-03 19:24:54', '注销成功', null, null);
INSERT INTO `record` VALUES ('1024', '6', '药水哥', '2021-04-03 19:24:56', '登录成功', null, null);
INSERT INTO `record` VALUES ('1025', '6', '药水哥', '2021-04-03 19:25:01', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1026', '6', '药水哥', '2021-04-03 19:25:03', '注销成功', null, null);
INSERT INTO `record` VALUES ('1027', '7', '小阿Giao', '2021-04-03 19:25:07', '登录成功', null, null);
INSERT INTO `record` VALUES ('1028', '7', '小阿Giao', '2021-04-03 19:25:12', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1029', '7', '小阿Giao', '2021-04-03 19:25:15', '注销成功', null, null);
INSERT INTO `record` VALUES ('1030', '8', '混元功法保国', '2021-04-03 19:25:18', '登录成功', null, null);
INSERT INTO `record` VALUES ('1031', '8', '混元功法保国', '2021-04-03 19:25:24', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1032', '8', '混元功法保国', '2021-04-03 19:25:25', '注销成功', null, null);
INSERT INTO `record` VALUES ('1033', '9', '练习生蔡徐坤', '2021-04-03 19:25:29', '登录成功', null, null);
INSERT INTO `record` VALUES ('1034', '9', '练习生蔡徐坤', '2021-04-03 19:25:34', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1035', '9', '练习生蔡徐坤', '2021-04-03 19:25:34', '注销成功', null, null);
INSERT INTO `record` VALUES ('1036', '10', '碧萝奶奶', '2021-04-03 19:25:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1037', '10', '碧萝奶奶', '2021-04-03 19:25:42', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1038', '10', '碧萝奶奶', '2021-04-03 20:21:32', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1039', '10', '碧萝奶奶', '2021-04-03 20:21:32', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1040', '10', '碧萝奶奶', '2021-04-03 20:21:38', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1041', '10', '碧萝奶奶', '2021-04-03 20:21:47', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1042', '10', '碧萝奶奶', '2021-04-03 20:21:55', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1043', '10', '碧萝奶奶', '2021-04-03 20:34:06', '注销成功', null, null);
INSERT INTO `record` VALUES ('1044', '35', '谢耳朵', '2021-04-03 20:34:09', '登录成功', null, null);
INSERT INTO `record` VALUES ('1045', '35', '谢耳朵', '2021-04-03 20:51:30', '注销成功', null, null);
INSERT INTO `record` VALUES ('1046', '35', '谢耳朵', '2021-04-03 20:51:33', '登录成功', null, null);
INSERT INTO `record` VALUES ('1047', '35', '谢耳朵', '2021-04-03 20:52:31', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1048', '35', '谢耳朵', '2021-04-03 21:31:41', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1049', '35', '谢耳朵', '2021-04-03 21:33:29', '注销成功', null, null);
INSERT INTO `record` VALUES ('1050', '35', '谢耳朵', '2021-04-03 21:33:31', '登录成功', null, null);
INSERT INTO `record` VALUES ('1051', '35', '谢耳朵', '2021-04-03 21:33:35', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1052', '35', '谢耳朵', '2021-04-03 21:34:35', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1053', '35', '谢耳朵', '2021-04-03 21:37:11', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1054', '35', '谢耳朵', '2021-04-03 21:39:09', '注销成功', null, null);
INSERT INTO `record` VALUES ('1055', '35', '谢耳朵', '2021-04-03 21:39:11', '登录成功', null, null);
INSERT INTO `record` VALUES ('1056', '35', '谢耳朵', '2021-04-03 21:39:19', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1057', '35', '谢耳朵', '2021-04-03 21:40:30', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1058', '35', '谢耳朵', '2021-04-03 21:42:42', '注销成功', null, null);
INSERT INTO `record` VALUES ('1059', '35', '谢耳朵', '2021-04-03 21:42:44', '登录成功', null, null);
INSERT INTO `record` VALUES ('1060', '35', '谢耳朵', '2021-04-03 21:43:43', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1061', '35', '谢耳朵', '2021-04-03 21:45:37', '注销成功', null, null);
INSERT INTO `record` VALUES ('1062', '35', '谢耳朵', '2021-04-03 21:45:39', '登录成功', null, null);
INSERT INTO `record` VALUES ('1063', '35', '谢耳朵', '2021-04-03 21:46:13', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1064', '35', '谢耳朵', '2021-04-03 21:46:51', '注销成功', null, null);
INSERT INTO `record` VALUES ('1065', '35', '谢耳朵', '2021-04-03 21:46:56', '登录成功', null, null);
INSERT INTO `record` VALUES ('1066', '35', '谢耳朵', '2021-04-03 21:47:50', '注销成功', null, null);
INSERT INTO `record` VALUES ('1067', '35', '谢耳朵', '2021-04-03 21:47:52', '登录成功', null, null);
INSERT INTO `record` VALUES ('1068', '35', '谢耳朵', '2021-04-03 21:48:28', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1069', '35', '谢耳朵', '2021-04-03 21:50:32', '注销成功', null, null);
INSERT INTO `record` VALUES ('1070', '35', '谢耳朵', '2021-04-03 21:50:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1071', '35', '谢耳朵', '2021-04-03 21:50:56', '注销成功', null, null);
INSERT INTO `record` VALUES ('1072', '35', '谢耳朵', '2021-04-03 21:51:03', '登录成功', null, null);
INSERT INTO `record` VALUES ('1073', '35', '谢耳朵', '2021-04-03 21:51:24', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1074', '35', '谢耳朵', '2021-04-03 22:13:15', '登录成功', null, null);
INSERT INTO `record` VALUES ('1075', '35', '谢耳朵', '2021-04-04 11:52:06', '登录成功', null, null);
INSERT INTO `record` VALUES ('1076', '35', '谢耳朵', '2021-04-04 11:52:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1077', '4', 'PDD', '2021-04-04 11:56:02', '登录成功', null, null);
INSERT INTO `record` VALUES ('1078', '4', 'PDD', '2021-04-04 11:56:17', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1079', '4', 'PDD', '2021-04-04 11:56:31', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('1080', '4', 'PDD', '2021-04-04 11:58:32', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1081', '4', 'PDD', '2021-04-04 11:59:10', '注销成功', null, null);
INSERT INTO `record` VALUES ('1082', '35', '谢耳朵', '2021-04-04 11:59:12', '登录成功', null, null);
INSERT INTO `record` VALUES ('1083', '35', '谢耳朵', '2021-04-04 11:59:24', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1084', '35', '谢耳朵', '2021-04-04 11:59:35', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1085', '35', '谢耳朵', '2021-04-04 11:59:48', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1086', '35', '谢耳朵', '2021-04-04 12:00:12', '取消点赞', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1087', '35', '谢耳朵', '2021-04-04 12:00:13', '点赞动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1088', '35', '谢耳朵', '2021-04-04 12:00:18', '取消点赞', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('1089', '35', '谢耳朵', '2021-04-04 12:00:36', '评论：擦挫伤', '42', '清明时节雨纷纷');
INSERT INTO `record` VALUES ('1090', '35', '谢耳朵', '2021-04-04 13:05:07', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('1091', '35', '谢耳朵', '2021-04-04 13:05:07', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('1092', '35', '谢耳朵', '2021-04-06 09:04:14', '登录成功', null, null);
INSERT INTO `record` VALUES ('1093', '35', '谢耳朵', '2021-04-06 09:04:32', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1094', '35', '谢耳朵', '2021-04-06 09:07:10', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1095', '35', '谢耳朵', '2021-04-06 09:08:06', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1096', '35', '谢耳朵', '2021-04-06 09:08:50', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1097', '35', '谢耳朵', '2021-04-06 09:58:45', '密码错误，登录失败', null, null);
INSERT INTO `record` VALUES ('1098', '0:0:0:0:0:0:0:1', '', '2021-04-06 09:58:48', '用户不存在，登录失败', null, null);
INSERT INTO `record` VALUES ('1099', '35', '谢耳朵', '2021-04-06 09:58:50', '登录成功', null, null);
INSERT INTO `record` VALUES ('1100', '35', '谢耳朵', '2021-04-06 10:29:00', '密码错误，登录失败', null, null);
INSERT INTO `record` VALUES ('1101', '0:0:0:0:0:0:0:1', '', '2021-04-06 10:29:02', '用户不存在，登录失败', null, null);
INSERT INTO `record` VALUES ('1102', '35', '谢耳朵', '2021-04-06 10:29:04', '登录成功', null, null);
INSERT INTO `record` VALUES ('1103', '35', '谢耳朵', '2021-04-06 10:54:13', '密码错误，登录失败', null, null);
INSERT INTO `record` VALUES ('1104', '35', '谢耳朵', '2021-04-06 10:54:15', '登录成功', null, null);
INSERT INTO `record` VALUES ('1105', '35', '谢耳朵', '2021-04-06 10:57:47', '登录成功', null, null);
INSERT INTO `record` VALUES ('1106', '35', '谢耳朵', '2021-04-06 13:05:40', '登录成功', null, null);
INSERT INTO `record` VALUES ('1107', '35', '谢耳朵', '2021-04-06 13:13:49', '注销成功', null, null);
INSERT INTO `record` VALUES ('1108', '2', '化腾', '2021-04-06 13:13:51', '登录成功', null, null);
INSERT INTO `record` VALUES ('1109', '2', '化腾', '2021-04-06 13:13:57', '注销成功', null, null);
INSERT INTO `record` VALUES ('1110', '35', '谢耳朵', '2021-04-06 13:13:59', '登录成功', null, null);
INSERT INTO `record` VALUES ('1111', '35', '谢耳朵', '2021-04-06 13:21:32', '注销成功', null, null);
INSERT INTO `record` VALUES ('1112', '2', '化腾', '2021-04-06 13:21:34', '登录成功', null, null);
INSERT INTO `record` VALUES ('1113', '2', '化腾', '2021-04-06 13:21:45', '注销成功', null, null);
INSERT INTO `record` VALUES ('1114', '35', '谢耳朵', '2021-04-06 13:21:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1115', '35', '谢耳朵', '2021-04-06 13:22:06', '注销成功', null, null);
INSERT INTO `record` VALUES ('1116', '2', '化腾', '2021-04-06 13:22:08', '登录成功', null, null);
INSERT INTO `record` VALUES ('1117', '2', '化腾', '2021-04-06 13:22:41', '注销成功', null, null);
INSERT INTO `record` VALUES ('1118', '35', '谢耳朵', '2021-04-06 13:22:43', '登录成功', null, null);
INSERT INTO `record` VALUES ('1119', '35', '谢耳朵', '2021-04-06 13:22:48', '注销成功', null, null);
INSERT INTO `record` VALUES ('1120', '35', '谢耳朵', '2021-04-06 13:22:49', '登录成功', null, null);
INSERT INTO `record` VALUES ('1121', '35', '谢耳朵', '2021-04-06 13:22:54', '注销成功', null, null);
INSERT INTO `record` VALUES ('1122', '2', '化腾', '2021-04-06 13:22:55', '登录成功', null, null);
INSERT INTO `record` VALUES ('1123', '2', '化腾', '2021-04-06 13:23:11', '注销成功', null, null);
INSERT INTO `record` VALUES ('1124', '35', '谢耳朵', '2021-04-06 13:23:12', '登录成功', null, null);
INSERT INTO `record` VALUES ('1125', '35', '谢耳朵', '2021-04-06 13:23:16', '注销成功', null, null);
INSERT INTO `record` VALUES ('1126', '2', '化腾', '2021-04-06 13:23:18', '登录成功', null, null);
INSERT INTO `record` VALUES ('1127', '2', '化腾', '2021-04-06 13:37:34', '注销成功', null, null);
INSERT INTO `record` VALUES ('1128', '35', '谢耳朵', '2021-04-06 13:37:35', '登录成功', null, null);
INSERT INTO `record` VALUES ('1129', '35', '谢耳朵', '2021-04-06 13:37:42', '注销成功', null, null);
INSERT INTO `record` VALUES ('1130', '2', '化腾', '2021-04-06 13:37:44', '登录成功', null, null);
INSERT INTO `record` VALUES ('1131', '2', '化腾', '2021-04-06 15:03:01', '注销成功', null, null);
INSERT INTO `record` VALUES ('1132', '2', '化腾', '2021-04-06 15:03:03', '登录成功', null, null);
INSERT INTO `record` VALUES ('1133', '2', '化腾', '2021-04-06 16:14:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1134', '1', '汽车之家', '2021-04-06 16:14:20', '登录成功', null, null);
INSERT INTO `record` VALUES ('1135', '1', '汽车之家', '2021-04-06 16:22:07', '发布文章', '13', 'sad撒多撒');
INSERT INTO `record` VALUES ('1136', '1', '汽车之家', '2021-04-06 16:26:03', '发布文章', '14', '迪士尼弗兰克你打算快乐风男都可老实能看出你打算老奶擦拭的内存卡技能大赛科技城那绝对是你');
INSERT INTO `record` VALUES ('1137', '1', '汽车之家', '2021-04-06 16:31:19', '发布文章', '15', '1111');
INSERT INTO `record` VALUES ('1138', '1', '汽车之家', '2021-04-06 16:33:32', '发布文章', '16', '1111111');
INSERT INTO `record` VALUES ('1139', '1', '汽车之家', '2021-04-06 17:06:08', '发布文章', '17', 'vvv');
INSERT INTO `record` VALUES ('1140', '1', '汽车之家', '2021-04-06 17:19:24', '发布文章', '18', '哈哈哈');
INSERT INTO `record` VALUES ('1141', '1', '汽车之家', '2021-04-06 17:34:56', '发布文章', '19', '三国杀电饭锅范德萨GV方式');
INSERT INTO `record` VALUES ('1142', '1', '汽车之家', '2021-04-06 17:36:39', '发布文章', '20', '1');
INSERT INTO `record` VALUES ('1143', '1', '汽车之家', '2021-04-06 17:40:44', '发布文章', '21', '111');
INSERT INTO `record` VALUES ('1144', '1', '汽车之家', '2021-04-06 17:41:16', '发布文章', '22', '1');
INSERT INTO `record` VALUES ('1145', '1', '汽车之家', '2021-04-06 17:42:00', '发布文章', '23', '1');
INSERT INTO `record` VALUES ('1146', '1', '汽车之家', '2021-04-06 17:44:50', '发布文章', '24', '1');
INSERT INTO `record` VALUES ('1147', '1', '汽车之家', '2021-04-06 18:43:00', '发布文章', '25', '111');
INSERT INTO `record` VALUES ('1148', '1', '汽车之家', '2021-04-06 18:44:31', '发布文章', '26', '111333');
INSERT INTO `record` VALUES ('1149', '1', '汽车之家', '2021-04-06 18:45:27', '发布文章', '27', 'e');
INSERT INTO `record` VALUES ('1150', '1', '汽车之家', '2021-04-06 18:46:06', '发布文章', '28', 'd');
INSERT INTO `record` VALUES ('1151', '1', '汽车之家', '2021-04-06 18:49:34', '发布文章', '29', 'vvv');
INSERT INTO `record` VALUES ('1152', '1', '汽车之家', '2021-04-06 18:50:20', '发布文章', '30', 'ddd');
INSERT INTO `record` VALUES ('1153', '1', '汽车之家', '2021-04-06 18:51:32', '发布文章', '31', 't');
INSERT INTO `record` VALUES ('1154', '1', '汽车之家', '2021-04-06 18:52:23', '发布文章', '32', 'p');
INSERT INTO `record` VALUES ('1155', '1', '汽车之家', '2021-04-06 18:53:04', '发布文章', '33', 'gc');
INSERT INTO `record` VALUES ('1156', '1', '汽车之家', '2021-04-06 19:23:59', '发布文章', '34', 'xxr');
INSERT INTO `record` VALUES ('1157', '1', '汽车之家', '2021-04-06 19:25:18', '发布文章', '35', '245354254');
INSERT INTO `record` VALUES ('1158', '1', '汽车之家', '2021-04-06 19:30:15', '发布文章', '36', 'vcxzz');
INSERT INTO `record` VALUES ('1159', '1', '汽车之家', '2021-04-06 19:31:01', '发布文章', '37', '233');
INSERT INTO `record` VALUES ('1160', '1', '汽车之家', '2021-04-06 19:31:16', '上传图集', '37', '233');
INSERT INTO `record` VALUES ('1161', '1', '汽车之家', '2021-04-06 19:31:29', '上传图集', '37', '233');
INSERT INTO `record` VALUES ('1162', '1', '汽车之家', '2021-04-06 19:38:59', '发布文章', '38', '测试去');
INSERT INTO `record` VALUES ('1163', '35', '谢耳朵', '2021-04-06 20:19:28', '登录成功', null, null);
INSERT INTO `record` VALUES ('1164', '35', '谢耳朵', '2021-04-06 20:19:40', '注销成功', null, null);
INSERT INTO `record` VALUES ('1165', '2', '化腾', '2021-04-06 20:19:42', '登录成功', null, null);
INSERT INTO `record` VALUES ('1166', '2', '化腾', '2021-04-06 20:19:49', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1167', '2', '化腾', '2021-04-06 20:20:57', '发布文章', '39', '111');
INSERT INTO `record` VALUES ('1168', '2', '化腾', '2021-04-06 20:21:09', '上传图集', '39', '111');
INSERT INTO `record` VALUES ('1169', '2', '化腾', '2021-04-06 20:21:13', '上传图集', '39', '111');
INSERT INTO `record` VALUES ('1170', '2', '化腾', '2021-04-06 20:35:09', '发布文章', '40', '测试1');
INSERT INTO `record` VALUES ('1171', '2', '化腾', '2021-04-06 20:35:17', '上传图集', '40', '测试1');
INSERT INTO `record` VALUES ('1172', '2', '化腾', '2021-04-06 20:35:22', '上传图集', '40', '测试1');
INSERT INTO `record` VALUES ('1173', '2', '化腾', '2021-04-06 20:36:40', '发布文章', '41', '测试2');
INSERT INTO `record` VALUES ('1174', '2', '化腾', '2021-04-06 20:37:49', '发布文章', '42', '测试3');
INSERT INTO `record` VALUES ('1175', '2', '化腾', '2021-04-06 20:37:58', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1176', '2', '化腾', '2021-04-06 20:38:10', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1177', '2', '化腾', '2021-04-06 20:38:12', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1178', '2', '化腾', '2021-04-06 20:38:14', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1179', '2', '化腾', '2021-04-06 20:38:16', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1180', '2', '化腾', '2021-04-06 20:38:21', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1181', '2', '化腾', '2021-04-06 20:38:25', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1182', '2', '化腾', '2021-04-06 20:38:27', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1183', '2', '化腾', '2021-04-06 20:44:13', '注销成功', null, null);
INSERT INTO `record` VALUES ('1184', '35', '谢耳朵', '2021-04-06 20:44:14', '登录成功', null, null);
INSERT INTO `record` VALUES ('1185', '35', '谢耳朵', '2021-04-06 20:47:30', '注销成功', null, null);
INSERT INTO `record` VALUES ('1186', '2', '化腾', '2021-04-06 20:47:31', '登录成功', null, null);
INSERT INTO `record` VALUES ('1187', '2', '化腾', '2021-04-06 20:51:24', '注销成功', null, null);
INSERT INTO `record` VALUES ('1188', '1', '汽车之家', '2021-04-06 20:51:28', '登录成功', null, null);
INSERT INTO `record` VALUES ('1189', '1', '汽车之家', '2021-04-06 21:43:53', '发布文章', '43', 'xr222');
INSERT INTO `record` VALUES ('1190', '1', '汽车之家', '2021-04-06 21:47:40', '发布文章', '44', '杜兰特FMVP');
INSERT INTO `record` VALUES ('1191', '1', '汽车之家', '2021-04-06 22:03:20', '发布文章', '45', '哈哈哈哈哈哈哈哈哈哈哈哈哈或或或或或或或或');
INSERT INTO `record` VALUES ('1192', '1', '汽车之家', '2021-04-06 22:08:13', '发布文章', '46', '按收盘价都暗示你看了从那时快两年查看兰窗口按错空空');
INSERT INTO `record` VALUES ('1193', '1', '汽车之家', '2021-04-06 22:08:31', '上传图集', '46', '按收盘价都暗示你看了从那时快两年查看兰窗口按错空空');
INSERT INTO `record` VALUES ('1194', '1', '汽车之家', '2021-04-06 22:27:56', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('1195', '1', '汽车之家', '2021-04-06 22:27:57', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('1196', '1', '汽车之家', '2021-04-06 22:27:58', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('1197', '1', '汽车之家', '2021-04-06 22:27:59', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('1198', '1', '汽车之家', '2021-04-06 22:29:46', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('1199', '1', '汽车之家', '2021-04-06 22:29:47', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('1200', '1', '汽车之家', '2021-04-06 22:30:18', '注销成功', null, null);
INSERT INTO `record` VALUES ('1201', '2', '化腾', '2021-04-06 22:30:20', '登录成功', null, null);
INSERT INTO `record` VALUES ('1202', '2', '化腾', '2021-04-06 22:44:33', '发布文章', '47', '新一篇');
INSERT INTO `record` VALUES ('1203', '0:0:0:0:0:0:0:1', '', '2021-04-07 10:13:18', '用户不存在，登录失败', null, null);
INSERT INTO `record` VALUES ('1204', '0:0:0:0:0:0:0:1', '', '2021-04-07 10:18:40', '用户不存在，登录失败', null, null);
INSERT INTO `record` VALUES ('1205', '35', '谢耳朵', '2021-04-07 10:23:18', '登录成功', null, null);
INSERT INTO `record` VALUES ('1206', '35', '谢耳朵', '2021-04-07 18:57:28', '登录成功', null, null);
INSERT INTO `record` VALUES ('1207', '35', '谢耳朵', '2021-04-07 19:07:23', '登录成功', null, null);
INSERT INTO `record` VALUES ('1208', '35', '谢耳朵', '2021-04-07 19:09:30', '删除转发', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1209', '35', '谢耳朵', '2021-04-07 19:10:12', '删除评论：null', '42', '清明时节雨纷纷');
INSERT INTO `record` VALUES ('1210', '35', '谢耳朵', '2021-04-07 20:16:28', '注销成功', null, null);
INSERT INTO `record` VALUES ('1211', '35', '谢耳朵', '2021-04-07 20:17:38', '登录成功', null, null);
INSERT INTO `record` VALUES ('1212', '35', '谢耳朵', '2021-04-07 20:17:40', '注销成功', null, null);
INSERT INTO `record` VALUES ('1213', '35', '谢耳朵', '2021-04-07 20:18:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1214', '35', '谢耳朵', '2021-04-07 20:18:42', '注销成功', null, null);
INSERT INTO `record` VALUES ('1215', '2', '化腾', '2021-04-07 20:18:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1216', '35', '谢耳朵', '2021-04-08 15:32:58', '登录成功', null, null);
INSERT INTO `record` VALUES ('1217', '35', '谢耳朵', '2021-04-08 15:33:23', '注销成功', null, null);
INSERT INTO `record` VALUES ('1218', '2', '化腾', '2021-04-08 15:33:25', '登录成功', null, null);
INSERT INTO `record` VALUES ('1219', '2', '化腾', '2021-04-08 15:46:58', '注销成功', null, null);
INSERT INTO `record` VALUES ('1220', '35', '谢耳朵', '2021-04-08 15:47:01', '登录成功', null, null);
INSERT INTO `record` VALUES ('1221', '35', '谢耳朵', '2021-04-08 15:47:08', '注销成功', null, null);
INSERT INTO `record` VALUES ('1222', '3', '卢本伟', '2021-04-08 15:47:11', '登录成功', null, null);
INSERT INTO `record` VALUES ('1223', '3', '卢本伟', '2021-04-08 15:47:17', '注销成功', null, null);
INSERT INTO `record` VALUES ('1224', '2', '化腾', '2021-04-08 15:47:19', '登录成功', null, null);
INSERT INTO `record` VALUES ('1225', '2', '化腾', '2021-04-08 16:12:47', '发布文章', '48', '待上传图集');
INSERT INTO `record` VALUES ('1226', '2', '化腾', '2021-04-08 16:13:06', '发布文章', '49', '待审核测试');
INSERT INTO `record` VALUES ('1227', '2', '化腾', '2021-04-08 16:13:29', '发布文章', '50', '已驳回测试');
INSERT INTO `record` VALUES ('1228', '35', '谢耳朵', '2021-04-08 16:19:53', '登录成功', null, null);
INSERT INTO `record` VALUES ('1229', '35', '谢耳朵', '2021-04-09 15:42:09', '登录成功', null, null);
INSERT INTO `record` VALUES ('1230', '35', '谢耳朵', '2021-04-09 15:43:50', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1231', '35', '谢耳朵', '2021-04-09 15:44:25', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1232', '35', '谢耳朵', '2021-04-09 15:44:41', '登录成功', null, null);
INSERT INTO `record` VALUES ('1233', '35', '谢耳朵', '2021-04-09 17:03:27', '注销成功', null, null);
INSERT INTO `record` VALUES ('1234', '35', '谢耳朵', '2021-04-09 17:03:35', '登录成功', null, null);
INSERT INTO `record` VALUES ('1235', '35', '谢耳朵', '2021-04-12 09:19:42', '登录成功', null, null);
INSERT INTO `record` VALUES ('1236', '2', '化腾', '2021-04-12 10:27:02', '登录成功', null, null);
INSERT INTO `record` VALUES ('1237', '2', '化腾', '2021-04-12 10:42:33', '发布文章', '51', '111111111111111111111111111');
INSERT INTO `record` VALUES ('1238', '2', '化腾', '2021-04-12 10:47:11', '发布文章', '52', '22222222222222222');
INSERT INTO `record` VALUES ('1239', '2', '化腾', '2021-04-12 10:47:42', '发布文章', '53', '3333333333333');
INSERT INTO `record` VALUES ('1240', '2', '化腾', '2021-04-12 10:53:24', '发布文章', '54', '4444');
INSERT INTO `record` VALUES ('1242', '35', '谢耳朵', '2021-04-12 11:40:27', '注销成功', null, null);
INSERT INTO `record` VALUES ('1243', '35', '谢耳朵', '2021-04-12 11:40:32', '登录成功', null, null);
INSERT INTO `record` VALUES ('1244', '35', '谢耳朵', '2021-04-12 13:10:43', '注销成功', null, null);
INSERT INTO `record` VALUES ('1245', '35', '谢耳朵', '2021-04-12 13:10:45', '登录成功', null, null);
INSERT INTO `record` VALUES ('1246', '35', '谢耳朵', '2021-04-12 20:24:34', '登录成功', null, null);
INSERT INTO `record` VALUES ('1247', '35', '谢耳朵', '2021-04-12 20:25:38', '注销成功', null, null);
INSERT INTO `record` VALUES ('1248', '35', '谢耳朵', '2021-04-12 20:26:16', '登录成功', null, null);
INSERT INTO `record` VALUES ('1249', '35', '谢耳朵', '2021-04-12 21:17:35', '注销成功', null, null);
INSERT INTO `record` VALUES ('1250', '1', '汽车之家', '2021-04-12 21:22:42', '注销成功', null, null);
INSERT INTO `record` VALUES ('1251', '35', '谢耳朵', '2021-04-13 13:27:32', '登录成功', null, null);
INSERT INTO `record` VALUES ('1252', '35', '谢耳朵', '2021-04-13 13:27:43', '注销成功', null, null);
INSERT INTO `record` VALUES ('1253', '2', '化腾', '2021-04-13 13:27:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1254', '35', '谢耳朵', '2021-04-13 13:32:11', '登录成功', null, null);
INSERT INTO `record` VALUES ('1255', '35', '谢耳朵', '2021-04-13 13:34:06', '发表动态', '44', '111111111111111');
INSERT INTO `record` VALUES ('1256', '1', '汽车之家', '2021-04-13 15:41:09', '注销成功', null, null);
INSERT INTO `record` VALUES ('1257', '1', '汽车之家', '2021-04-13 15:51:49', '注销成功', null, null);
INSERT INTO `record` VALUES ('1258', '1', '汽车之家', '2021-04-13 16:00:41', '注销成功', null, null);
INSERT INTO `record` VALUES ('1259', '1', '汽车之家', '2021-04-13 16:02:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1260', '1', '汽车之家', '2021-04-13 16:06:18', '注销成功', null, null);
INSERT INTO `record` VALUES ('1261', '1', '汽车之家', '2021-04-13 16:07:21', '注销成功', null, null);
INSERT INTO `record` VALUES ('1262', '1', '汽车之家', '2021-04-13 16:07:47', '注销成功', null, null);
INSERT INTO `record` VALUES ('1263', '1', '汽车之家', '2021-04-13 16:14:41', '注销成功', null, null);
INSERT INTO `record` VALUES ('1264', '1', '汽车之家', '2021-04-13 16:18:32', '注销成功', null, null);
INSERT INTO `record` VALUES ('1265', '1', '汽车之家', '2021-04-13 16:22:56', '注销成功', null, null);
INSERT INTO `record` VALUES ('1266', '1', '汽车之家', '2021-04-13 16:28:33', '注销成功', null, null);
INSERT INTO `record` VALUES ('1267', '1', '汽车之家', '2021-04-13 16:46:21', '登录成功', null, null);
INSERT INTO `record` VALUES ('1268', '1', '汽车之家', '2021-04-13 16:49:45', '注销成功', null, null);
INSERT INTO `record` VALUES ('1269', '1', '汽车之家', '2021-04-13 16:49:50', '登录成功', null, null);
INSERT INTO `record` VALUES ('1271', '1', '汽车之家', '2021-04-13 21:19:10', '注销成功', null, null);
INSERT INTO `record` VALUES ('1272', '1', '汽车之家', '2021-04-14 11:12:58', '注销成功', null, null);
INSERT INTO `record` VALUES ('1273', '35', '谢耳朵', '2021-04-14 11:49:39', '登录成功', null, null);
INSERT INTO `record` VALUES ('1274', '35', '谢耳朵', '2021-04-14 11:49:41', '注销成功', null, null);
INSERT INTO `record` VALUES ('1275', '35', '谢耳朵', '2021-04-14 11:50:31', '登录成功', null, null);
INSERT INTO `record` VALUES ('1276', '35', '谢耳朵', '2021-04-14 11:50:34', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1277', '35', '谢耳朵', '2021-04-14 11:53:05', '注销成功', null, null);
INSERT INTO `record` VALUES ('1278', '1', '汽车之家', '2021-04-14 13:32:38', '注销成功', null, null);
INSERT INTO `record` VALUES ('1279', '1', '汽车之家', '2021-04-14 16:04:03', '注销成功', null, null);
INSERT INTO `record` VALUES ('1280', '1', '汽车之家', '2021-04-14 22:17:22', '注销成功', null, null);
INSERT INTO `record` VALUES ('1281', '2', '化腾', '2021-04-15 09:57:42', '登录成功', null, null);
INSERT INTO `record` VALUES ('1282', '3', '卢本伟', '2021-04-15 09:58:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1283', '3', '卢本伟', '2021-04-15 10:00:40', '发布文章', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1284', '3', '卢本伟', '2021-04-15 10:00:54', '上传图集', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1285', '3', '卢本伟', '2021-04-15 10:00:58', '上传图集', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1286', '3', '卢本伟', '2021-04-15 10:01:02', '上传图集', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1287', '3', '卢本伟', '2021-04-15 10:01:06', '上传图集', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1288', '3', '卢本伟', '2021-04-15 10:03:38', '发布文章', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1289', '3', '卢本伟', '2021-04-15 10:03:45', '上传图集', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1290', '3', '卢本伟', '2021-04-15 10:03:50', '上传图集', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1291', '3', '卢本伟', '2021-04-15 10:03:53', '上传图集', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1292', '3', '卢本伟', '2021-04-15 10:03:57', '上传图集', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1293', '3', '卢本伟', '2021-04-15 10:05:58', '发布文章', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1294', '3', '卢本伟', '2021-04-15 10:06:03', '上传图集', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1295', '3', '卢本伟', '2021-04-15 10:06:07', '上传图集', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1296', '3', '卢本伟', '2021-04-15 10:06:10', '上传图集', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1297', '3', '卢本伟', '2021-04-15 10:06:21', '上传图集', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1298', '3', '卢本伟', '2021-04-15 10:08:14', '发布文章', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1299', '3', '卢本伟', '2021-04-15 10:08:19', '上传图集', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1300', '3', '卢本伟', '2021-04-15 10:08:22', '上传图集', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1301', '3', '卢本伟', '2021-04-15 10:08:25', '上传图集', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1302', '3', '卢本伟', '2021-04-15 10:08:28', '上传图集', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1303', '3', '卢本伟', '2021-04-15 10:10:13', '发布文章', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1304', '3', '卢本伟', '2021-04-15 10:10:17', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1305', '3', '卢本伟', '2021-04-15 10:10:20', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1306', '3', '卢本伟', '2021-04-15 10:10:23', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1307', '3', '卢本伟', '2021-04-15 10:10:26', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1308', '3', '卢本伟', '2021-04-15 10:10:30', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1309', '3', '卢本伟', '2021-04-15 10:14:58', '发布文章', '61', '将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record` VALUES ('1310', '3', '卢本伟', '2021-04-15 10:15:02', '上传图集', '61', '将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record` VALUES ('1311', '3', '卢本伟', '2021-04-15 10:15:06', '上传图集', '61', '将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record` VALUES ('1312', '3', '卢本伟', '2021-04-15 10:15:10', '上传图集', '61', '将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record` VALUES ('1313', '3', '卢本伟', '2021-04-15 10:15:15', '上传图集', '61', '将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record` VALUES ('1314', '2', '化腾', '2021-04-15 13:28:21', '登录成功', null, null);
INSERT INTO `record` VALUES ('1315', '35', '谢耳朵', '2021-04-18 18:13:19', '登录成功', null, null);
INSERT INTO `record` VALUES ('1316', '35', '谢耳朵', '2021-04-18 18:15:47', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1317', '35', '谢耳朵', '2021-04-18 18:16:25', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1318', '35', '谢耳朵', '2021-04-18 18:16:26', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1319', '35', '谢耳朵', '2021-04-18 18:16:31', '取消关注', '4', 'PDD');
INSERT INTO `record` VALUES ('1320', '35', '谢耳朵', '2021-04-18 18:16:32', '关注', '4', 'PDD');

-- ----------------------------
-- Table structure for record_admin
-- ----------------------------
DROP TABLE IF EXISTS `record_admin`;
CREATE TABLE `record_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `text` varchar(255) NOT NULL COMMENT '操作内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of record_admin
-- ----------------------------
INSERT INTO `record_admin` VALUES ('1', '2021-04-14 15:35:25', '驳回文章：RS 6首先是一款非常舒适的车型');
INSERT INTO `record_admin` VALUES ('2', '2021-04-14 15:35:47', '审批通过：4444');
INSERT INTO `record_admin` VALUES ('3', '2021-04-14 15:35:50', '驳回文章：3333333333333');
INSERT INTO `record_admin` VALUES ('4', '2021-04-14 15:36:02', '审批通过：RS 6首先是一款非常舒适的车型');
INSERT INTO `record_admin` VALUES ('5', '2021-04-14 15:36:12', '下架动态：清明时节雨纷纷');
INSERT INTO `record_admin` VALUES ('6', '2021-04-14 15:36:19', '重新上线动态：111111111111111');
INSERT INTO `record_admin` VALUES ('7', '2021-04-14 15:36:31', '删除转发：案发时发出');
INSERT INTO `record_admin` VALUES ('8', '2021-04-14 15:36:39', '重新上线转发：气得我群多无');
INSERT INTO `record_admin` VALUES ('9', '2021-04-14 15:36:54', '删除评论：111');
INSERT INTO `record_admin` VALUES ('10', '2021-04-14 15:37:01', '重新上线评论：擦挫伤');
INSERT INTO `record_admin` VALUES ('11', '2021-04-14 15:37:12', '取消车家号：汽车之家');
INSERT INTO `record_admin` VALUES ('12', '2021-04-14 15:37:22', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('13', '2021-04-14 15:37:31', '取消车家号：null');
INSERT INTO `record_admin` VALUES ('14', '2021-04-14 15:37:45', '添加新标签：1111');
INSERT INTO `record_admin` VALUES ('15', '2021-04-14 15:37:54', '修改标签：11112222222');
INSERT INTO `record_admin` VALUES ('16', '2021-04-14 15:38:04', '禁用标签：11112222222');
INSERT INTO `record_admin` VALUES ('17', '2021-04-14 15:38:10', '开启标签：11112222222');
INSERT INTO `record_admin` VALUES ('22', '2021-04-14 22:10:04', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('23', '2021-04-14 22:10:15', '取消车家号：null');
INSERT INTO `record_admin` VALUES ('24', '2021-04-14 22:10:20', '取消车家号：化腾');
INSERT INTO `record_admin` VALUES ('25', '2021-04-14 22:10:22', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('26', '2021-04-14 22:10:24', '认证用户：化腾为车家号');
INSERT INTO `record_admin` VALUES ('27', '2021-04-14 22:10:30', '取消车家号：汽车之家');
INSERT INTO `record_admin` VALUES ('28', '2021-04-14 22:10:33', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('29', '2021-04-14 22:22:29', '取消车家号：化腾');
INSERT INTO `record_admin` VALUES ('30', '2021-04-14 22:22:38', '认证用户：化腾为车家号');
INSERT INTO `record_admin` VALUES ('31', '2021-04-14 22:22:39', '取消车家号：化腾');
INSERT INTO `record_admin` VALUES ('32', '2021-04-14 22:23:14', '取消车家号：汽车之家');
INSERT INTO `record_admin` VALUES ('33', '2021-04-14 22:23:19', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('34', '2021-04-14 22:23:20', '认证用户：化腾为车家号');
INSERT INTO `record_admin` VALUES ('35', '2021-04-15 10:11:48', '审批通过：或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record_admin` VALUES ('36', '2021-04-15 10:11:50', '审批通过：比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record_admin` VALUES ('37', '2021-04-15 10:11:52', '审批通过：CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record_admin` VALUES ('38', '2021-04-15 10:11:53', '审批通过：两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record_admin` VALUES ('39', '2021-04-15 10:11:55', '审批通过：加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record_admin` VALUES ('40', '2021-04-15 10:15:31', '审批通过：将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record_admin` VALUES ('41', '2021-04-16 10:56:49', '删除折叠板：33333333333');
INSERT INTO `record_admin` VALUES ('42', '2021-04-16 10:56:52', '删除折叠板：前期前期群群');
INSERT INTO `record_admin` VALUES ('43', '2021-04-16 10:56:54', '删除折叠板：吧吧吧v ');
INSERT INTO `record_admin` VALUES ('44', '2021-04-16 10:56:55', '删除折叠板：22222222222222');
INSERT INTO `record_admin` VALUES ('45', '2021-04-16 10:57:31', '禁用标签：路虎揽胜极光');
INSERT INTO `record_admin` VALUES ('46', '2021-04-16 10:57:32', '开启标签：路虎揽胜极光');
INSERT INTO `record_admin` VALUES ('47', '2021-04-16 10:57:48', '修改标签：汽车之家');
INSERT INTO `record_admin` VALUES ('48', '2021-04-19 17:15:26', '编辑折叠板：国潮版提供');
INSERT INTO `record_admin` VALUES ('49', '2021-04-19 17:15:36', '编辑折叠板：国潮版提供');
INSERT INTO `record_admin` VALUES ('50', '2021-04-19 17:15:51', '编辑折叠板：国潮版提供');
INSERT INTO `record_admin` VALUES ('51', '2021-04-19 17:20:23', '新增折叠板：北京BJ80探月');

-- ----------------------------
-- Table structure for style
-- ----------------------------
DROP TABLE IF EXISTS `style`;
CREATE TABLE `style` (
  `style_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '车型id',
  `jgqj` varchar(255) DEFAULT NULL COMMENT '价格区间',
  `cs` int(10) NOT NULL COMMENT '数据字典-厂商',
  `style_name` varchar(35) NOT NULL COMMENT '车型名称',
  `img_lbt` varchar(255) DEFAULT NULL COMMENT '轮播图',
  `style_photo` varchar(150) NOT NULL COMMENT '车型头像',
  `jb` int(10) NOT NULL COMMENT '数据字典-级别-头部筛选',
  `sssj` varchar(35) NOT NULL COMMENT '上市时间',
  `hbbz` int(11) NOT NULL COMMENT '环保标准-Map',
  `nylx` int(11) NOT NULL COMMENT '数据字典-能源类型',
  `pfrs` int(255) DEFAULT NULL COMMENT '评分人数',
  `zpf` int(255) DEFAULT NULL COMMENT '总评分',
  `djl` bigint(255) DEFAULT '0' COMMENT '点击量',
  `xl` int(255) DEFAULT NULL COMMENT '销量',
  `bq` varchar(255) DEFAULT NULL COMMENT '标签 数据字典1-39',
  `wybs` varchar(255) DEFAULT NULL COMMENT '唯一标识',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `update_time` varchar(255) NOT NULL COMMENT '修改时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`style_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of style
-- ----------------------------
INSERT INTO `style` VALUES ('1', '30w - 45w', '70', '宝马3系', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/19/074d8d35a44d46f699a4403d6b504129.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/ee69bbb13d304f6da27e17abbebbc032.jpg', '57', '2021-01-13', '0', '0', '300', '2705', '14252', '888', null, null, '2021-01-13 11:48:20', '2021-04-19 13:05:09', '0');
INSERT INTO `style` VALUES ('2', '42w - 60w', '69', '奔驰E级', '', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/6844073a38c844bb8196d80b389390b1.jpg', '57', '2020-12-15', '0', '0', '270', '2510', '14252', '754', null, null, '2021-01-13 11:48:22', '2021-04-19 14:14:43', '0');
INSERT INTO `style` VALUES ('3', '42w - 60w', '66', '奥迪A6L', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/16e6423816d1457ca5d51daba2e8e800.jpg', '58', '2020-12-15', '0', '0', '350', '3214', '1478', '9896', null, null, '2021-01-13 11:48:24', '2021-04-19 15:06:51', '0');
INSERT INTO `style` VALUES ('4', '3w - 5w', '124', '五菱神车', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/d02f941bca0748c6b662727154d04dde.jpg', '59', '2020-12-13', '0', '0', '140', '1236', '1458', '525', null, null, '2021-01-15 11:13:15', '2021-04-03 19:54:53', '1');
INSERT INTO `style` VALUES ('5', '19w - 24w', '85', '丰田亚洲龙', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/39fec581763d4ffcb6d6a8310158fe19.jpg', '60', '2020-12-15', '0', '0', '580', '5140', '1452', '145253', null, null, '2021-12-14 11:35:59', '2021-04-03 19:54:55', '0');
INSERT INTO `style` VALUES ('6', '78w - 113w', '66', '奥迪A8', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/4316c11a50244362a2deae16b7bb9219.jpg', '61', '2021-12-14', '0', '0', '5870', '54005', '1256', '252', null, null, '2021-12-14 11:35:59', '2021-04-03 19:54:58', '0');
INSERT INTO `style` VALUES ('7', '120w - 224w', '74', '帕拉梅拉', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/df04d28522514b3bb1851e3a4738a820.jpg', '62', '2021-12-14', '0', '0', '2501', '23222', '1869', '1525', null, null, '2021-12-14 11:35:59', '2021-04-03 19:55:00', '0');
INSERT INTO `style` VALUES ('8', '1980w - 2475w', '87', '法拉利--拉法', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/db9d2f3debbe4c908997f2fd9329a43b.jpg', '63', '2021-12-14', '0', '0', '586', '5201', '1478', '25245', null, null, '2021-12-14 11:35:59', '2021-04-03 19:55:03', '0');
INSERT INTO `style` VALUES ('9', '21w - 26w', '82', '大众探岳', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/a865afbefbbc45938b58c77ac9ff66da.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/6681f9e1c1064c979c696162ce199c3c.jpg', '56', '2021-12-18', '0', '0', '250', '2124', '8569', '225', null, null, '2015-12-14 11:11:48', '2021-04-03 19:55:07', '0');
INSERT INTO `style` VALUES ('10', '9w - 13w', '83', '东风508', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/422634613f8f48598c199992dafdf4f7.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/3d88f4cecd2740eebe58c03e063e6eb5.jpg', '56', '2017-12-14', '0', '0', '580', '5453', '7452', '572', null, null, '2013-12-14 11:11:48', '2021-04-03 19:55:10', '0');
INSERT INTO `style` VALUES ('11', '18w - 23w', '71', '本田雅阁', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/410670804b9e43caba6f726dc1ed0165.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/8840357273ed446dab66960ce45b1785.jpg', '57', '2017-12-14', '0', '0', '142', '1400', '1236', '2752', null, null, '2017-12-14 11:11:48', '2021-04-03 19:55:12', '0');
INSERT INTO `style` VALUES ('12', '11w - 13w', '85', '丰田卡罗拉', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/0439b43d1ff742a8b78243528d51fd10.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/234b030c15254ab1a192ee7d0dfa0130.jpg', '56', '2017-12-14', '0', '0', '148', '1456', '1452', '27', null, null, '2011-12-14 11:11:48', '2021-04-03 19:55:15', '0');
INSERT INTO `style` VALUES ('13', '16w - 21w', '91', '红旗H9', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/fad3a42468e44347ac608eddd5751fd4.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/b6d93b347c0447daa64306f90d72a45e.jpg', '57', '2017-12-14', '0', '0', '140', '1008', '1478', '7272', null, null, '2019-12-14 11:11:48', '2021-04-03 19:55:17', '0');
INSERT INTO `style` VALUES ('14', '7w - 9w', '66', '奥拓', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/87cdbe4044a64b08aa9c8f1e8923d45c.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/87f2ce47aace490ba0fe20849ddbfac8.jpg', '58', '2018-12-14', '0', '0', '860', '8412', '152', '2572', null, null, '2018-12-14 12:15:20', '2021-04-19 14:56:17', '0');
INSERT INTO `style` VALUES ('15', '3600w - 4200w', '106', '兰博基尼', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/c8e8142ab34143f6a3156972adb0bfd2.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/55faf809b351443582c8dc5698083dc0.jpg', '60', '2018-12-14', '0', '0', '471', '4300', '896', '0', null, null, '2016-12-14 12:15:20', '2021-04-03 19:55:22', '0');
INSERT INTO `style` VALUES ('16', '980w - 1600w', '105', '劳斯莱斯', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/a4db8f3e5b3743c9b180715ce68e9745.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/0b10dbb70a7f450d93f098ee01f1e09e.jpg', '61', '2018-12-14', '0', '0', '170', '985', '145', '752', null, null, '2010-12-14 12:15:20', '2021-04-03 19:55:25', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `dlh` varchar(255) DEFAULT NULL COMMENT '登录号',
  `user_name` varchar(18) NOT NULL COMMENT '用户名',
  `password` varchar(72) NOT NULL COMMENT '密码',
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `photo` varchar(1024) DEFAULT NULL COMMENT '头像',
  `sign` varchar(150) DEFAULT '这家伙很懒，什么都没有留下。' COMMENT '签名',
  `gender` int(4) unsigned DEFAULT '1' COMMENT '1男0女',
  `date_birth` varchar(35) DEFAULT NULL COMMENT '出生日期',
  `create_time` varchar(255) NOT NULL COMMENT '注册时间',
  `update_time` varchar(255) NOT NULL COMMENT '修改时间',
  `grade` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户等级',
  `graded` int(10) NOT NULL DEFAULT '0' COMMENT '是否已签到',
  `sxts` int(10) NOT NULL DEFAULT '0' COMMENT '私信条数 用户新消息提醒',
  `sfrz` int(10) NOT NULL DEFAULT '0' COMMENT '是否为公众号',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '汽车之家', 'e10adc3949ba59abbe56e057f20f883e', 'admin@qczj.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/f48c282940244b80a768f4f1339f2b1b.jpg', '这家伙很懒，什么都没有留下。', '0', '2020-11-17', '2020-11-17 16:22:07', '2021-04-14 22:23:19', '10', '0', '12', '1', '0');
INSERT INTO `user` VALUES ('2', '2', '化腾', 'c4ca4238a0b923820dcc509a6f75849b', '773@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/32278f5a874546aeb6d8a6dc81b17b12.jpg', '这家伙很懒，什么都没有留下。', '1', '2021-03-27', '2020-11-17T16:38:20', '2021-04-15 09:57:42', '150', '0', '50', '1', '0');
INSERT INTO `user` VALUES ('3', '3', '卢本伟', 'c4ca4238a0b923820dcc509a6f75849b', '7736002@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/ea22e71b2b2348949242293674fd8897.jpg', '这家伙很懒，什么都没有留下。', '0', '2020-11-17', '2021-03-18 09:40:03', '2021-04-15 09:58:37', '20', '0', '12', '1', '0');
INSERT INTO `user` VALUES ('4', '4', 'PDD', 'c4ca4238a0b923820dcc509a6f75849b', '128786@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/b9ebcfb146c445c28eb656a29d43e1ad.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-01-12', '2021-03-19 18:21:52', '2021-04-03 19:24:41', '30', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('5', '5', '大马猴', 'c4ca4238a0b923820dcc509a6f75849b', '7736002@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/44363507b555478ba3e4cb394a254456.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-01-12', '2021-03-22 16:16:23', '2021-04-03 19:24:52', '10', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('6', '6', '药水哥', 'c4ca4238a0b923820dcc509a6f75849b', '773602@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/bef47d94ef4c4a7f8b22fabe0060cb8e.jpg', '1242143ww', '0', '2021-01-15', '2021-03-22 16:34:44', '2021-04-03 19:25:01', '30', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('7', '7', '小阿Giao', 'c4ca4238a0b923820dcc509a6f75849b', '1140193437@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/a83acddcde694293b9f80ecacf59f89a.jpg', '这', '0', '2021-01-12', '2021-03-25 22:03:49', '2021-04-04 12:00:00', '30', '0', '2', '1', '0');
INSERT INTO `user` VALUES ('8', '8', '混元功法保国', 'c4ca4238a0b923820dcc509a6f75849b', '7733333@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/e40f4f27982d4741b7dc7230fe083250.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-01-12', '2021-01-12 22:12:13', '2021-04-03 19:25:24', '10', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('9', '9', '练习生蔡徐坤', 'c4ca4238a0b923820dcc509a6f75849b', '1321@123.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/a17f849dc29c4ed889ccfcc42043ace5.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-12-15', '2021-12-15 15:14:15', '2021-04-03 19:25:34', '0', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('10', '10', '碧萝奶奶', 'c4ca4238a0b923820dcc509a6f75849b', '123@1234.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/817b3ed58dae4699b515e7b822758473.jpg', '这家伙很懒，什么都没有留下。', '0', '2018-12-15', '2018-12-15 15:12:13', '2021-04-04 12:00:00', '10', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('35', '1', '谢耳朵', 'c4ca4238a0b923820dcc509a6f75849b', '1140193437@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/09/8dbc893b718341b5b7edd7be4ffa7ec2.jpg', '简单', '1', '1999-05-24', '2021-03-01 09:38:59', '2021-04-19 12:00:00', '80', '0', '90', '0', '0');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `video_id` varchar(64) NOT NULL,
  `video_url` varchar(1024) NOT NULL COMMENT '视频路径',
  `style_id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '车型id',
  `video_title` varchar(255) NOT NULL COMMENT '视频标题',
  `video_text` varchar(255) DEFAULT NULL COMMENT '视频内容',
  `user_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '发布id',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of video
-- ----------------------------
