/*
Navicat MySQL Data Transfer

Source Server         : KD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : car_home

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-03-22 09:56:37
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
INSERT INTO `agree` VALUES ('1', '2', '2020-11-17 19:56:28');
INSERT INTO `agree` VALUES ('2', '3', '2020-11-17 19:57:26');
INSERT INTO `agree` VALUES ('3', '3', '2020-11-17 19:57:47');
INSERT INTO `agree` VALUES ('28', '2', '2021-03-19 19:03:47');
INSERT INTO `agree` VALUES ('23', '3', '2021-03-19 19:08:21');
INSERT INTO `agree` VALUES ('22', '3', '2021-03-19 19:08:23');
INSERT INTO `agree` VALUES ('20', '3', '2021-03-19 19:08:24');

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
INSERT INTO `attention` VALUES ('1', '2', '2020-11-17 19:59:56');
INSERT INTO `attention` VALUES ('1', '3', '2020-11-17 20:00:14');
INSERT INTO `attention` VALUES ('2', '3', '2020-11-17 20:00:33');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车唯一id',
  `style_id` int(11) DEFAULT NULL COMMENT '所属车型',
  `gfzdj` varchar(11) DEFAULT NULL COMMENT '厂商指导价(万)',
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
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of car
-- ----------------------------

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
INSERT INTO `collection` VALUES ('2', '3', '2020-11-17 20:02:50');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_text` varchar(150) NOT NULL COMMENT '评论正文',
  `essay_id` bigint(20) unsigned NOT NULL COMMENT '动态id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '评论者id',
  `create_time` varchar(255) NOT NULL COMMENT '评论时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('宝马三系满足我对汽车的所有需求', '2', '3', '2020-11-17 21:20:21', '0');
INSERT INTO `comment` VALUES ('大奔满足我对汽车的所有需求', '1', '3', '2020-11-20 20:45:35', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `data_dictionary` VALUES ('56', '12', null, '新能源', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('57', '12', null, '微型', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('58', '12', null, '小型', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('59', '12', null, '紧凑型', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('60', '12', null, '中型', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('61', '12', null, '中大型', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('62', '12', null, '大型', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('63', '12', null, 'SUV', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('64', '12', null, 'MPV', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('65', '12', null, '跑车', '2020-11-17 19:15:12', '0');
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

-- ----------------------------
-- Table structure for data_type
-- ----------------------------
DROP TABLE IF EXISTS `data_type`;
CREATE TABLE `data_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type_name` varchar(35) NOT NULL COMMENT '类型名称',
  `update_date` varchar(255) NOT NULL COMMENT '编辑时间',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '逻辑禁用',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of data_type
-- ----------------------------
INSERT INTO `data_type` VALUES ('1', '空间', '2020-11-17 19:56:28', '0');
INSERT INTO `data_type` VALUES ('2', '动力', '2020-11-17 19:56:28', '0');
INSERT INTO `data_type` VALUES ('3', '能耗', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('4', '操控', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('5', '舒适性', '2020-11-17 19:15:12', '0');
INSERT INTO `data_type` VALUES ('6', '外观', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('7', '内饰', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('8', '配置', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('9', '用车', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('10', '国别', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('11', '能源类型', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('12', '级别', '2020-11-17 19:15:12', '0');
INSERT INTO `data_type` VALUES ('13', '厂商', '2020-11-17 19:15:12', '0');

-- ----------------------------
-- Table structure for essay
-- ----------------------------
DROP TABLE IF EXISTS `essay`;
CREATE TABLE `essay` (
  `essay_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态id',
  `essay_title` varchar(150) NOT NULL COMMENT '动态标题',
  `essay_label` int(11) unsigned DEFAULT NULL COMMENT '动态标签',
  `essay_text` varchar(10240) NOT NULL COMMENT '动态正文',
  `create_time` varchar(255) NOT NULL COMMENT '发布时间',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`essay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of essay
-- ----------------------------
INSERT INTO `essay` VALUES ('1', '对宝马三系的热爱', '1', '知觉提车短短八个月已开了两万公里，这节奏开下去没几年又得换车\n陆陆续续也改了东西，也下了几回赛道，丰富了自己生活，也能更好陪伴了家人。\n先说问题，\n后刹车19000磨完，深圳这边4s好像还没收到相关信息，刚开始还是收费换后刹车皮，后来借助车友索赔记录才成功索赔，更换后卡钳还有刹车皮，感谢车友。\n这个问题是由于卡钳活塞制作公差问题导致活塞能及时回弹，轻微拖刹，刹车皮磨损过快。\n冷却液，烧机油问题暂时还未出现，别问题也暂时没有。第步先改了铃，总觉得铃非常重要，套好看铃能立马提升车气质，而宝马我个人觉得又很适合bbs双片抛边款式，就选了facewheels双片锻造，国产精品，款式也错，难得个牌子，点赞！轮胎就ps4s，干湿地性能都非常错。', '2020-11-17 18:56:40', '2', '0');
INSERT INTO `essay` VALUES ('2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5', '1', '各位朋友大家好，汽车之家麋鹿测试半月报来到第五期。前边四期，我们都是按照车型级别来为大家汇总的。而随着时间的推移，各个级别我们还会测试很多新车，所以从这期开始，半月报将按照时间维度来进行呈现。首先本期，我们先把4月和5月测试过的车型(在之前半月报中没汇总过的)做个总结吧，车型有点儿多，11款。', '2020-11-17 18:58:08', '2', '1');
INSERT INTO `essay` VALUES ('3', '换刹车盘也要磨合？刹车维保两三事', '2', '刹车不好使了？有异响？踩着没底？说明你的刹车系统存在衰减或者过度磨损了，关于刹车更换，我们大多数人都会先想到4S店或汽修厂，虽然说更换上不需要太费心，但对于每天都在路上跑的我们来讲，如何及时的发现衰减，得知异常，尽快送修，这却是非常有必要的！毕竟咱们也不会每天都随车带着技师。', '2020-11-17 18:59:05', '2', '0');
INSERT INTO `essay` VALUES ('8', '对宝马三系的热爱', '1', '刹车不好使了？有异响？踩着没底？说明你的刹车系统存在衰减或者过度磨损了，关于刹车更换，我们大多数人都会先想到4S店或汽修厂，虽然说更换上不需要太费心，但对于每天都在路上跑的我们来讲，如何及时的发现衰减，得知异常，尽快送修，这却是非常有必要的！毕竟咱们也不会每天都随车带着技师。', '2020-11-20 19:45:45', '2', '1');
INSERT INTO `essay` VALUES ('9', '对宝马三系的热爱', '2', '刹车不好使了？有异响？踩着没底？说明你的刹车系统存在衰减或者过度磨损了，关于刹车更换，我们大多数人都会先想到4S店或汽修厂，虽然说更换上不需要太费心，但对于每天都在路上跑的我们来讲，如何及时的发现衰减，得知异常，尽快送修，这却是非常有必要的！毕竟咱们也不会每天都随车带着技师。', '2020-11-20 19:45:45', '2', '1');
INSERT INTO `essay` VALUES ('10', '对宝马三系的热爱', '1', '刹车不好使了？有异响？踩着没底？说明你的刹车系统存在衰减或者过度磨损了，关于刹车更换，我们大多数人都会先想到4S店或汽修厂，虽然说更换上不需要太费心，但对于每天都在路上跑的我们来讲，如何及时的发现衰减，得知异常，尽快送修，这却是非常有必要的！毕竟咱们也不会每天都随车带着技师。', '123214343', '2', '0');
INSERT INTO `essay` VALUES ('11', '111', '2', '# 一级标题', '2021-03-18 05:28:49', '3', '0');
INSERT INTO `essay` VALUES ('12', '111', '1', '11', '2021-03-18 05:28:49', '3', '0');
INSERT INTO `essay` VALUES ('13', '2222', '1', '## 二级标题2222', '2021-03-18 05:28:49', '3', '0');
INSERT INTO `essay` VALUES ('14', 'aaaa', '1', 'aazzzz', '2021-03-18 05:28:49', '3', '0');
INSERT INTO `essay` VALUES ('15', 'aaaa', '1', '# 一级标题', '2021-03-18 05:28:49', '3', '0');
INSERT INTO `essay` VALUES ('16', 'fff', '1', '# 一级标题', '2021-03-18 05:48:03', '3', '0');
INSERT INTO `essay` VALUES ('17', '111', '1', '## 11111222', '2021-03-18 08:45:59', '3', '0');
INSERT INTO `essay` VALUES ('18', '1111', '2', '1111', '2021-03-18 08:46:58', '3', '0');
INSERT INTO `essay` VALUES ('19', '汽车保养', '3', '**红红火火恍恍惚惚**^上角标^\nsad撒多~哈哈哈~\n\n*擦拭擦拭擦擦是的*', '2021-03-18 08:48:44', '3', '0');
INSERT INTO `essay` VALUES ('20', '777', '1', '++该吃氨茶碱点石成金阿SV点击++\n\n#### 查数据层框架阿森纳近\n\n# 我回去的好嗲将保持基本', '2021-03-18 09:11:58', '3', '0');
INSERT INTO `essay` VALUES ('21', '1234213123213123', '1', '佛挡杀佛岁发的SV是 ', '2021-03-18 09:16:42', '3', '0');
INSERT INTO `essay` VALUES ('22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb', '1', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '2021-03-18 10:03:43', '3', '0');
INSERT INTO `essay` VALUES ('23', '22222', '3', '2222', '2021-03-18 10:05:27', '3', '1');
INSERT INTO `essay` VALUES ('24', '123', '3', '### prop=\"\"', '2021-03-19 09:57:06', '2', '1');
INSERT INTO `essay` VALUES ('25', 'fdsvfdsvsfdv', '1', '# 吃我吧大呲花不是不报\n### 吃的啥那几次表达式就不好吃巴萨的就不会加\n![搬砖.jpg](1)\n\n\nACSsdacsc', '2021-03-19 01:06:51', '2', '1');
INSERT INTO `essay` VALUES ('26', 'dsafcdscds', null, 'dszcsdfzvf', '2021-03-19 01:07:30', '2', '1');
INSERT INTO `essay` VALUES ('27', 'asdsasa', null, 'asasc', '2021-03-19 01:08:37', '2', '0');
INSERT INTO `essay` VALUES ('28', '111', null, '## 单例模式\n\n> 是一种常用的软件设计模式。在它的核心结构中只包含一个被称为单例的特殊类。通过单例模式可以保证系统中，应用该模式的类一个类只有一个实例。即一个类只有一个对象实例。\n\n 1. 饿汉式\n *之所以称为饿汉式，是因为对象随着类的加载已经创建的，凸显的比较“饥饿”，仅此而已。*\n**优点：避免了线程安全问题，它是绝对线程安全的。\n缺点：很明显，可能容易造成内存浪费，因为对象在类加载时就已经被创建，这是如果暂时用不到，就会造成资源浪费。**\n```java\n//一般方式\nclass Singleton{\n	//创建对象（new一次）\n    private final static Singleton instance = new Singleton();\n    //私有化构造器\n    private Singleton(){}\n    //静态返回\n    public static Singleton getInstance(){\n        return instance;\n    }\n}\n//静态代码块方式\nclass Singleton{\n	//定义但未初始化\n    private final static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    //静态代码块赋值\n    static {\n        instance = new Singleton();\n    }\n    public static Singleton getInstance(){\n        return instance;\n    }\n}\n```\n 2. 懒汉式\n*见名知意，相比饿汉式，它的特点便是，使用时才开始创建，所以比较“懒”。*\n**优点：与饿汉式形成对比，节省内存。**\n**缺点：一般线程不安全，改进扩展后可以。**\n\n```java\n//懒汉式（线程不安全）\nclass Singleton{\n    private static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    //多个线程同时调用的话就会new出多个对象\n    public static Singleton getInstance(){\n    	//多个线程同时进入会判断对象为null\n        if(instance==null){\n        	//从而创建对个对象 不再是单例\n            instance = new Singleton();\n        }\n        return instance;\n    }\n}\n```\n改进：加入同步锁之后，线程安全问题解决，但效率极低\n```java\n//懒汉式（线程安全 效率低）\nclass Singleton{\n    private static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    //同步方法 每次只能有一个线程进入\n    public static synchronized Singleton getInstance(){\n    	//每个线程依次进入进行判断是否为null，效率极低\n        if(instance==null){\n            instance = new Singleton();\n        }\n        return instance;\n    }\n}\n//懒汉式（线程安全 效率低）\nclass Singleton{\n    private static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    \n    public static Singleton getInstance(){\n    	//同步代码块方式(左右与上述一致 写法不同) 每次只能有一个线程进入\n    	//每个线程依次进入进行判断是否为null，效率极低\n        synchronized (Singleton.class){\n            if(instance==null){\n                instance = new Singleton();\n            }\n        }\n        return instance;\n    }\n}\n```\n上述问题：线程安全问题是解决了，但是效率十分低，因为只需要第一个线程进入之后判断是否为null，然后new一个对象，后面的线程进入只需要return返回就行了，如果继续等待同步锁，一次进入，就会造成效率问题。\n**继续改进：进行双重检验，在第二种的基础上再嵌套一层判空，这样的话除了前几个线程（跟随第一个线程同时进入）需要进入等待之外，其他线程在对象创建完成之后，只在最外层判空就行了（这一步骤是所有之后线程可以同时进行的，故效率高）。**\n```java\n//懒汉式（线程安全 推荐）\nclass Singleton{\n    private static volatile Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    public static Singleton getInstance(){\n        //同步代码块（双重检查）\n        if (instance==null){\n        	//这一层只有前几个线程同时进入\n        	//待第一个线程创建对象完成之后，之后的所有线程不会再进入等待\n            synchronized (Singleton.class){\n                if(instance==null){\n                    instance = new Singleton();\n                }\n            }\n        }\n        return instance;\n    }\n}\n```\n 1. 静态内部类\n \n//静态内部类（线程安全 省内存）\n*利用静态内部类的特殊机制（外层类加载时，内部类即便是静态的，也不会随之加载，这样一来，就不会造成内存浪费，只在调用时创建完成，并且线程是绝对安全的）。*\n```java\nclass Singleton{\n    //私有化构造器\n    private Singleton(){}\n    //静态内部类\n    private static class SingletonInstance{\n        private static final Singleton instance = new Singleton();\n    }\n    //return方法\n    public static Singleton getInstance(){\n        return SingletonInstance.instance;\n    }\n}\n```\n 2. 枚举\n简单粗暴枚举法\n*绝对单例，绝对线程安全，绝对不内存浪费*\n```java\n//枚举\nenum Singleton{\n    instance;//属性\n}\n```\n> 以上便是我学习过程中总结的一些思想和笔记，大家可以在学习过程中多交流，共同进步。——一个从入门到入土的程序小白。', '2021-03-19 02:02:35', '2', '0');
INSERT INTO `essay` VALUES ('29', 'smz', '1', '## 宝马三系真香', '2021-03-19 02:54:21', '2', '1');
INSERT INTO `essay` VALUES ('30', '汽车之家', '2', '# 我是一只小鸟', '2021-03-19 18:39:18', '4', '0');

-- ----------------------------
-- Table structure for forward
-- ----------------------------
DROP TABLE IF EXISTS `forward`;
CREATE TABLE `forward` (
  `essay_id` bigint(20) unsigned NOT NULL COMMENT '动态id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '转发用户id',
  `forward_title` varchar(150) DEFAULT NULL COMMENT '转发标题',
  `create_time` varchar(255) NOT NULL COMMENT '转发时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of forward
-- ----------------------------
INSERT INTO `forward` VALUES ('1', '2', '宝马三系真香', '2020-11-17 20:07:39', '0');
INSERT INTO `forward` VALUES ('1', '3', 'nice', '2020-11-17 20:08:11', '0');
INSERT INTO `forward` VALUES ('9', '2', '宝马三系真香', '2020-11-20 19:45:45', '0');
INSERT INTO `forward` VALUES ('3', '2', '宝马三系真香', '2021-03-19 01:53:33', '0');
INSERT INTO `forward` VALUES ('3', '2', '489461416', '2021-03-19 01:54:55', '0');
INSERT INTO `forward` VALUES ('3', '2', '宝马三系真香', '2021-03-19 01:55:20', '0');
INSERT INTO `forward` VALUES ('3', '2', '宝马三系真香', '2021-03-19 01:56:27', '0');
INSERT INTO `forward` VALUES ('27', '2', 'sadas1', '2021-03-19 01:56:35', '0');
INSERT INTO `forward` VALUES ('27', '2', '宝马三系真香', '2021-03-19 01:57:08', '0');
INSERT INTO `forward` VALUES ('27', '2', '宝马三系真香', '2021-03-19 01:57:47', '0');
INSERT INTO `forward` VALUES ('3', '2', 'asdsad', '2021-03-19 01:57:55', '0');
INSERT INTO `forward` VALUES ('29', '2', 'xr', '2021-03-19 02:54:31', '0');
INSERT INTO `forward` VALUES ('1', '3', '111', '2021-03-19 03:11:40', '0');
INSERT INTO `forward` VALUES ('1', '3', '555555555555555555555', '2021-03-19 03:13:03', '0');
INSERT INTO `forward` VALUES ('1', '3', null, '2021-03-19 15:16:05', '0');
INSERT INTO `forward` VALUES ('1', '3', '1234567890', '2021-03-19 03:17:11', '0');
INSERT INTO `forward` VALUES ('1', '3', 'fdscdsvcdsvcdsv   cdscds', '2021-03-19 16:13:58', '0');
INSERT INTO `forward` VALUES ('1', '3', null, '2021-03-19 16:14:16', '0');
INSERT INTO `forward` VALUES ('23', '3', null, '2021-03-19 16:59:01', '0');
INSERT INTO `forward` VALUES ('23', '3', '1111', '2021-03-19 16:59:09', '0');
INSERT INTO `forward` VALUES ('30', '4', '我要吃肉蟹煲', '2021-03-19 18:44:07', '0');
INSERT INTO `forward` VALUES ('30', '4', null, '2021-03-19 18:50:39', '0');
INSERT INTO `forward` VALUES ('30', '4', null, '2021-03-19 18:54:44', '0');
INSERT INTO `forward` VALUES ('30', '4', null, '2021-03-19 19:00:13', '0');
INSERT INTO `forward` VALUES ('30', '4', null, '2021-03-19 19:01:07', '0');
INSERT INTO `forward` VALUES ('30', '4', null, '2021-03-19 19:01:22', '0');
INSERT INTO `forward` VALUES ('30', '4', null, '2021-03-19 19:02:46', '0');
INSERT INTO `forward` VALUES ('30', '4', null, '2021-03-19 19:02:52', '0');
INSERT INTO `forward` VALUES ('30', '4', null, '2021-03-19 19:03:04', '0');
INSERT INTO `forward` VALUES ('28', '2', null, '2021-03-19 19:03:37', '0');
INSERT INTO `forward` VALUES ('28', '2', null, '2021-03-19 19:03:52', '0');
INSERT INTO `forward` VALUES ('23', '3', null, '2021-03-19 19:05:09', '0');
INSERT INTO `forward` VALUES ('23', '3', null, '2021-03-19 19:05:16', '0');
INSERT INTO `forward` VALUES ('23', '3', null, '2021-03-19 19:05:20', '0');
INSERT INTO `forward` VALUES ('1', '3', null, '2021-03-19 19:05:44', '0');
INSERT INTO `forward` VALUES ('1', '3', null, '2021-03-19 19:06:50', '0');
INSERT INTO `forward` VALUES ('1', '3', null, '2021-03-19 19:06:58', '0');
INSERT INTO `forward` VALUES ('23', '3', null, '2021-03-19 19:09:39', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES ('1', '汽车之家', '2020-11-17 19:01:11', '2020-11-17 19:01:11', '0');
INSERT INTO `label` VALUES ('2', '宝马三系', '2020-11-17 19:01:11', '2020-11-17 19:01:11', '0');
INSERT INTO `label` VALUES ('3', '汽车保养', '2020-11-17 19:01:37', '2020-11-17 19:01:37', '0');
INSERT INTO `label` VALUES ('4', '路虎揽胜极光', '2020-11-20 20:14:31', '2020-11-20 20:14:31', '0');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `message_title` varchar(150) NOT NULL COMMENT '消息标题',
  `message_text` varchar(1024) NOT NULL COMMENT '消息正文',
  `that_id` bigint(20) unsigned NOT NULL COMMENT '发送者id',
  `this_id` bigint(20) unsigned NOT NULL COMMENT '接收者id',
  `essay_id` bigint(20) unsigned DEFAULT NULL COMMENT '动态id',
  `message_type` int(1) unsigned NOT NULL COMMENT '消息类型 0系统 1动态 2私信',
  `create_time` varchar(255) NOT NULL COMMENT '发送时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '系统通知', '欢迎注册成功', '1', '2', null, '0', '2020-11-17 20:15:35', '0');
INSERT INTO `message` VALUES ('2', '系统通知', '欢迎注册成功', '1', '2', null, '0', '2020-11-17 20:16:08', '0');
INSERT INTO `message` VALUES ('3', '点赞通知', '用户smz点赞了你的动态', '1', '2', '1', '1', '2020-11-17 20:47:56', '0');
INSERT INTO `message` VALUES ('4', '点赞通知', '用户superb点赞了你的动态', '1', '2', '1', '1', '2020-11-17 20:49:51', '0');
INSERT INTO `message` VALUES ('5', '点赞通知', '用户smz点赞了你的动态', '1', '2', '2', '1', '2020-11-17 21:02:14', '0');
INSERT INTO `message` VALUES ('6', '点赞通知', '用户smz点赞了你的动态', '1', '2', '3', '0', '2020-11-17 21:03:10', '0');
INSERT INTO `message` VALUES ('7', '关注通知', '用户superb关注了你', '1', '2', null, '0', '2020-11-17 21:08:04', '0');
INSERT INTO `message` VALUES ('8', '关注通知', '用户smz关注了你', '1', '2', null, '0', '2020-11-17 21:08:28', '0');
INSERT INTO `message` VALUES ('9', '关注通知', '用户smz关注了你', '1', '2', null, '0', '2020-11-17 21:09:00', '0');
INSERT INTO `message` VALUES ('10', '转发通知', '用户superb转发了你的动态', '1', '2', '1', '1', '2020-11-17 21:14:30', '0');
INSERT INTO `message` VALUES ('11', '转发通知', '用户smz转发了你的动态', '1', '2', '1', '1', '2020-11-17 21:15:28', '0');
INSERT INTO `message` VALUES ('12', '评论通知', '用户smz评论的你的动态', '1', '2', '2', '1', '2020-11-17 21:20:21', '0');
INSERT INTO `message` VALUES ('13', '系统通知', '欢迎注册成功', '1', '2', null, '0', '2020-11-20 20:14:31', '0');
INSERT INTO `message` VALUES ('14', '欢迎注册成功', '欢迎注册成功', '1', '2', null, '2', '欢迎注册成功', '0');
INSERT INTO `message` VALUES ('15', '欢迎注册成功', '欢迎注册成功', '1', '2', null, '2', '欢迎注册成功', '0');
INSERT INTO `message` VALUES ('16', '欢迎注册成功', '欢迎注册成功', '1', '2', null, '2', '欢迎注册成功', '0');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `photo_url` varchar(1024) NOT NULL COMMENT '图片路径',
  `essay_id` bigint(20) unsigned DEFAULT NULL COMMENT '动态id',
  `style_id` int(11) unsigned DEFAULT NULL COMMENT '车型id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of photo
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('17', '0:0:0:0:0:0:0:1', '', '2021-03-17 14:42:11', '用户不存在，登录失败', '', '');
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
INSERT INTO `record` VALUES ('155', '1287414986@qq.com', '', '2021-03-19 18:21:11', '注册接收验证码', '', '');
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

-- ----------------------------
-- Table structure for style
-- ----------------------------
DROP TABLE IF EXISTS `style`;
CREATE TABLE `style` (
  `style_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '车型id',
  `cs` int(10) NOT NULL COMMENT '数据字典-厂商',
  `style_name` varchar(35) NOT NULL COMMENT '车型名称',
  `style_photo` varchar(150) NOT NULL COMMENT '车型头像',
  `jb` int(10) NOT NULL COMMENT '数据字典-级别',
  `sssj` varchar(35) NOT NULL COMMENT '上市时间',
  `hbbz` int(11) NOT NULL COMMENT '环保标准-Map',
  `nylx` int(11) NOT NULL COMMENT '数据字典-能源类型',
  `bq` varchar(255) DEFAULT NULL COMMENT '标签 数据字典1-39',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `update_time` varchar(255) NOT NULL COMMENT '修改时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`style_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of style
-- ----------------------------
INSERT INTO `style` VALUES ('1', '0', '', 'bmw.jpg', '0', '2020-12-15', '0', '0', null, '2021-01-13 11:48:20', '2021-01-13 11:48:26', '0');
INSERT INTO `style` VALUES ('2', '0', '', 'benchi.jpg', '0', '2020-12-15', '0', '0', null, '2021-01-13 11:48:22', '2021-01-13 11:48:28', '0');
INSERT INTO `style` VALUES ('3', '0', '', 'aodi.jpg', '0', '2020-12-15', '0', '0', null, '2021-01-13 11:48:24', '2021-01-13 11:48:30', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(18) NOT NULL COMMENT '用户名',
  `password` varchar(72) NOT NULL COMMENT '密码',
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `photo` varchar(1024) DEFAULT NULL COMMENT '头像',
  `sign` varchar(150) DEFAULT '这家伙很懒，什么都没有留下。' COMMENT '签名',
  `gender` int(4) unsigned DEFAULT '0' COMMENT '性别0未指定1男2女',
  `date_birth` varchar(35) DEFAULT NULL COMMENT '出生日期',
  `create_time` varchar(255) NOT NULL COMMENT '注册时间',
  `update_time` varchar(255) NOT NULL COMMENT '修改时间',
  `grade` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户等级',
  `graded` int(10) NOT NULL DEFAULT '0' COMMENT '是否已签到',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '汽车之家', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '123', '这家伙很懒，什么都没有留下。', '0', '2020-11-17', '2020-11-17 16:22:07', '2021-03-18 02:50:23', '0', '0', '0');
INSERT INTO `user` VALUES ('2', 'Superb', 'c4ca4238a0b923820dcc509a6f75849b', '773@qq.com', '123', '这家伙很懒，什么都没有留下。', '1', '2020-11-17', '2020-11-17 16:38:20', '2021-03-19 12:00:00', '60', '1', '0');
INSERT INTO `user` VALUES ('3', '123456789', 'c4ca4238a0b923820dcc509a6f75849b', '773601602@qq.com', null, '这家伙很懒，什么都没有留下。', '0', '2020-11-17', '2021-03-18 09:40:03', '2021-03-19 12:00:00', '10', '1', '0');
INSERT INTO `user` VALUES ('4', 'smz', 'c4ca4238a0b923820dcc509a6f75849b', '1287414986@qq.com', null, '这家伙很懒，什么都没有留下。', '0', null, '2021-03-19 18:21:52', '2021-03-19 18:21:52', '20', '1', '0');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `video_url` varchar(1024) NOT NULL COMMENT '视频路径',
  `essay_id` bigint(20) unsigned DEFAULT NULL COMMENT '动态id',
  `style_id` int(11) unsigned DEFAULT NULL COMMENT '车型id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of video
-- ----------------------------
