/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : chinese_medicine

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 06/07/2024 23:55:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `adminid` bigint(0) NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int(0) NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614777897911 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客服聊天表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (1608781605725, '2024-02-28 11:46:45', 1608781436204, NULL, '这里可以咨询  可以求救 后台管理员会回复', NULL, 1);
INSERT INTO `chat` VALUES (1614777897910, '2024-03-03 21:24:57', 1, NULL, '‍这个地方可以对医生进行投诉，后台可以进行回复\r\n', '是的呢\r\n', 0);
INSERT INTO `chat` VALUES (1720276705865, '2024-07-06 22:38:25', 1, NULL, '111', NULL, 1);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/yy-ssmj/upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/yy-ssmj/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/yy-ssmj/upload/picture3.jpg');
INSERT INTO `config` VALUES (4, 'picture4', 'http://localhost:8080/yy-ssmj/upload/picture4.jpg');
INSERT INTO `config` VALUES (5, 'picture5', 'http://localhost:8080/yy-ssmj/upload/picture5.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for discussjiankangzixun
-- ----------------------------
DROP TABLE IF EXISTS `discussjiankangzixun`;
CREATE TABLE `discussjiankangzixun`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(0) NOT NULL COMMENT '关联表id',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健康资讯评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussjiankangzixun
-- ----------------------------
INSERT INTO `discussjiankangzixun` VALUES (1, '2024-02-28 11:36:16', 1, 1, '评论内容1', '回复内容1');
INSERT INTO `discussjiankangzixun` VALUES (2, '2024-02-28 11:36:16', 2, 2, '评论内容2', '回复内容2');
INSERT INTO `discussjiankangzixun` VALUES (3, '2024-02-28 11:36:16', 3, 3, '评论内容3', '回复内容3');
INSERT INTO `discussjiankangzixun` VALUES (4, '2024-02-28 11:36:16', 4, 4, '评论内容4', '回复内容4');
INSERT INTO `discussjiankangzixun` VALUES (5, '2024-02-28 11:36:16', 5, 5, '评论内容5', '回复内容5');
INSERT INTO `discussjiankangzixun` VALUES (6, '2024-02-28 11:36:16', 6, 6, '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discussyishengzuozhen
-- ----------------------------
DROP TABLE IF EXISTS `discussyishengzuozhen`;
CREATE TABLE `discussyishengzuozhen`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(0) NOT NULL COMMENT '关联表id',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生坐诊评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussyishengzuozhen
-- ----------------------------
INSERT INTO `discussyishengzuozhen` VALUES (1, '2024-02-28 11:36:16', 1, 1, '评论内容1', '回复内容1');
INSERT INTO `discussyishengzuozhen` VALUES (2, '2024-02-28 11:36:16', 2, 2, '评论内容2', '回复内容2');
INSERT INTO `discussyishengzuozhen` VALUES (3, '2024-02-28 11:36:16', 3, 3, '评论内容3', '回复内容3');
INSERT INTO `discussyishengzuozhen` VALUES (4, '2024-02-28 11:36:16', 4, 4, '评论内容4', '回复内容4');
INSERT INTO `discussyishengzuozhen` VALUES (5, '2024-02-28 11:36:16', 5, 5, '评论内容5', '回复内容5');
INSERT INTO `discussyishengzuozhen` VALUES (6, '2024-02-28 11:36:16', 6, 6, '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for jiankangzixun
-- ----------------------------
DROP TABLE IF EXISTS `jiankangzixun`;
CREATE TABLE `jiankangzixun`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zixunbiaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资讯标题',
  `zixunleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资讯类型',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `neirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `ziliaofujian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资料附件',
  `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健康资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiankangzixun
-- ----------------------------
INSERT INTO `jiankangzixun` VALUES (1, '2024-02-28 11:36:16', '资讯标题1', '资讯类型1', 'http://localhost:8080/yy-ssmj/upload/jiankangzixun_tupian1.jpg', '内容1', '', '2024-02-28');
INSERT INTO `jiankangzixun` VALUES (2, '2024-02-28 11:36:16', '资讯标题2', '资讯类型2', 'http://localhost:8080/yy-ssmj/upload/jiankangzixun_tupian2.jpg', '内容2', '', '2024-02-28');
INSERT INTO `jiankangzixun` VALUES (3, '2024-02-28 11:36:16', '资讯标题3', '资讯类型3', 'http://localhost:8080/yy-ssmj/upload/jiankangzixun_tupian3.jpg', '内容3', '', '2024-02-28');
INSERT INTO `jiankangzixun` VALUES (4, '2024-02-28 11:36:16', '资讯标题4', '资讯类型4', 'http://localhost:8080/yy-ssmj/upload/jiankangzixun_tupian4.jpg', '内容4', '', '2024-02-28');
INSERT INTO `jiankangzixun` VALUES (5, '2024-02-28 11:36:16', '资讯标题5', '资讯类型5', 'http://localhost:8080/yy-ssmj/upload/jiankangzixun_tupian5.jpg', '内容5', '', '2024-02-28');
INSERT INTO `jiankangzixun` VALUES (6, '2024-02-28 11:36:16', '资讯标题6', '资讯类型6', 'http://localhost:8080/yy-ssmj/upload/jiankangzixun_tupian6.jpg', '内容6', '', '2024-02-28');

-- ----------------------------
-- Table structure for keshi
-- ----------------------------
DROP TABLE IF EXISTS `keshi`;
CREATE TABLE `keshi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科室',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `keshi`(`keshi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科室' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keshi
-- ----------------------------
INSERT INTO `keshi` VALUES (1, '2024-02-28 11:36:16', '外科');
INSERT INTO `keshi` VALUES (2, '2024-02-28 11:36:16', '内科');
INSERT INTO `keshi` VALUES (3, '2024-02-28 11:36:16', '儿科');
INSERT INTO `keshi` VALUES (4, '2024-02-28 11:36:16', '妇产科');
INSERT INTO `keshi` VALUES (5, '2024-02-28 11:36:16', '肿瘤科');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `refid` bigint(0) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1720280637019, '2024-07-06 23:43:56', 1, 1, 'yishengzuozhen', '医生姓名1', 'http://localhost:8080/yy-ssmj/upload/yishengzuozhen_touxiang1.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (6, 1, 'patient', 'yonghu', '用户', 'g83giamnjp1oxgwgtuumu5mzuruq87sx', '2024-07-06 22:30:04', '2024-07-07 00:45:54');
INSERT INTO `token` VALUES (7, 1, 'admin', 'users', '管理员', 'jm726efxirf6jfktncrdv72r72fpzo74', '2024-07-06 22:36:30', '2024-07-07 00:11:42');
INSERT INTO `token` VALUES (8, 1, 'doctor', 'yisheng', '医生', 'vuc98lu60ue7ve426hgjm76b506jtsoi', '2024-07-06 23:31:48', '2024-07-07 00:36:24');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2024-02-28 11:36:16');

-- ----------------------------
-- Table structure for yisheng
-- ----------------------------
DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE `yisheng`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yishenggonghao`(`yishenggonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yisheng
-- ----------------------------
INSERT INTO `yisheng` VALUES (1, '2024-02-28 11:36:16', 'doctor', '123456', '医生姓名1', '男', 'http://localhost:8080/yy-ssmj/upload/yisheng_touxiang1.jpg', '职称1', '科室1', '13823888881', '773890001@qq.com', 100);
INSERT INTO `yisheng` VALUES (2, '2024-02-28 11:36:16', '医生2', '123456', '医生姓名2', '男', 'http://localhost:8080/yy-ssmj/upload/yisheng_touxiang2.jpg', '职称2', '科室2', '13823888882', '773890002@qq.com', 100);
INSERT INTO `yisheng` VALUES (3, '2024-02-28 11:36:16', '医生3', '123456', '医生姓名3', '男', 'http://localhost:8080/yy-ssmj/upload/yisheng_touxiang3.jpg', '职称3', '科室3', '13823888883', '773890003@qq.com', 100);
INSERT INTO `yisheng` VALUES (4, '2024-02-28 11:36:16', '医生4', '123456', '医生姓名4', '男', 'http://localhost:8080/yy-ssmj/upload/yisheng_touxiang4.jpg', '职称4', '科室4', '13823888884', '773890004@qq.com', 100);
INSERT INTO `yisheng` VALUES (5, '2024-02-28 11:36:16', '医生5', '123456', '医生姓名5', '男', 'http://localhost:8080/yy-ssmj/upload/yisheng_touxiang5.jpg', '职称5', '科室5', '13823888885', '773890005@qq.com', 100);
INSERT INTO `yisheng` VALUES (6, '2024-02-28 11:36:16', '000', '000', '吴医生', '男', 'http://localhost:8080/yy-ssmj/upload/yisheng_touxiang6.jpg', '主任医师', '外科', '13823888886', '773890006@qq.com', 100);

-- ----------------------------
-- Table structure for yishengzuozhen
-- ----------------------------
DROP TABLE IF EXISTS `yishengzuozhen`;
CREATE TABLE `yishengzuozhen`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shanzhanglingyu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '擅长领域',
  `zuozhenshijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '坐诊时间',
  `guahaojiage` int(0) NOT NULL COMMENT '挂号价格',
  `gerenjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '个人介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614820074077 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生坐诊' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yishengzuozhen
-- ----------------------------
INSERT INTO `yishengzuozhen` VALUES (1, '2024-02-28 11:36:16', '医生工号1', '医生姓名1', '性别1', 'http://localhost:8080/yy-ssmj/upload/yishengzuozhen_touxiang1.jpg', '职称1', '科室1', '773890001@qq.com', '擅长领域1', '坐诊时间1', 1, '个人介绍1');
INSERT INTO `yishengzuozhen` VALUES (2, '2024-02-28 11:36:16', '医生工号2', '医生姓名2', '性别2', 'http://localhost:8080/yy-ssmj/upload/yishengzuozhen_touxiang2.jpg', '职称2', '科室2', '773890002@qq.com', '擅长领域2', '坐诊时间2', 2, '个人介绍2');
INSERT INTO `yishengzuozhen` VALUES (3, '2024-02-28 11:36:16', '医生工号3', '医生姓名3', '性别3', 'http://localhost:8080/yy-ssmj/upload/yishengzuozhen_touxiang3.jpg', '职称3', '科室3', '773890003@qq.com', '擅长领域3', '坐诊时间3', 3, '个人介绍3');
INSERT INTO `yishengzuozhen` VALUES (4, '2024-02-28 11:36:16', '医生工号4', '医生姓名4', '性别4', 'http://localhost:8080/yy-ssmj/upload/yishengzuozhen_touxiang4.jpg', '职称4', '科室4', '773890004@qq.com', '擅长领域4', '坐诊时间4', 4, '个人介绍4');
INSERT INTO `yishengzuozhen` VALUES (5, '2024-02-28 11:36:16', '医生工号5', '医生姓名5', '性别5', 'http://localhost:8080/yy-ssmj/upload/yishengzuozhen_touxiang5.jpg', '职称5', '科室5', '773890005@qq.com', '擅长领域5', '坐诊时间5', 5, '个人介绍5');
INSERT INTO `yishengzuozhen` VALUES (6, '2024-02-28 11:36:16', '医生工号6', '医生姓名6', '性别6', 'http://localhost:8080/yy-ssmj/upload/yishengzuozhen_touxiang6.jpg', '职称6', '科室6', '773890006@qq.com', '擅长领域6', '坐诊时间6', 6, '个人介绍6');
INSERT INTO `yishengzuozhen` VALUES (1614820074076, '2024-03-04 09:07:53', '111', '医生姓名1', '男', 'http://localhost:8080/yy-ssmj/upload/1614820082613.jpg', '职称1', '科室1', '773890001@qq.com', '11111', '2小时', 123, '个人介绍\r\n');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  `blacklist` int(0) NULL DEFAULT 0 COMMENT '是否拉黑',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1608781436205 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '2024-02-28 11:36:16', 'patient', '123456', '姓名1', '男', 'http://localhost:8080/yy-ssmj/upload/1720273857543.JPG', '13823888881', 200, 0);
INSERT INTO `yonghu` VALUES (2, '2024-02-28 11:36:16', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/yy-ssmj/upload/yonghu_touxiang2.jpg', '13823888882', 100, 0);
INSERT INTO `yonghu` VALUES (3, '2024-02-28 11:36:16', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/yy-ssmj/upload/yonghu_touxiang3.jpg', '13823888883', 100, 0);
INSERT INTO `yonghu` VALUES (4, '2024-02-28 11:36:16', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/yy-ssmj/upload/yonghu_touxiang4.jpg', '13823888884', 100, 0);
INSERT INTO `yonghu` VALUES (5, '2024-02-28 11:36:16', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/yy-ssmj/upload/yonghu_touxiang5.jpg', '13823888885', 100, 0);
INSERT INTO `yonghu` VALUES (6, '2024-02-28 11:36:16', '用户6', '123456', '姓名6', '男', 'http://localhost:8080/yy-ssmj/upload/yonghu_touxiang6.jpg', '13823888886', 100, 0);
INSERT INTO `yonghu` VALUES (1608781436204, '2024-02-28 11:43:56', '001', '001', '小叶', '男', 'http://localhost:8080/yy-ssmj/upload/1608781432331.jpg', '13333333333', 300, 0);
INSERT INTO `yonghu` VALUES (1720273825726, '2024-07-06 21:50:25', '', '111', '姓名1', ' ', 'http://localhost:8080/yy-ssmj/upload/1720273808205.JPG', '', 0, 0);

-- ----------------------------
-- Table structure for yonghubingli
-- ----------------------------
DROP TABLE IF EXISTS `yonghubingli`;
CREATE TABLE `yonghubingli`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `binglibianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病例编号',
  `binglimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病例名称',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `bingqing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病情',
  `jianchaxiangmu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '检查项目',
  `jianchajieguo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '检查结果',
  `yaodan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药单',
  `yizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '医嘱',
  `zhuyishixiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注意事项',
  `binglifujian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病例附件',
  `riqi` date NULL DEFAULT NULL COMMENT '日期',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生工号',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `binglibianhao`(`binglibianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614820241404 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户病例' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghubingli
-- ----------------------------
INSERT INTO `yonghubingli` VALUES (1, '2024-02-28 11:36:16', '病例编号1', '病例名称1', '用户名1', '姓名1', '手机1', '病情1', '检查项目1', '检查结果1', '药单1', '医嘱1\r\n', '注意事项1', '', '2024-02-28', '医生工号1', '职称1');
INSERT INTO `yonghubingli` VALUES (2, '2024-07-06 11:36:16', '病例编号2', '病例名称2', '用户名2', '姓名2', '手机2', '病情2', '检查项目2', '检查结果2', '药单2', '医嘱2\r\n', '注意事项2', '', '2024-07-06', '医生工号1', '职称1');

-- ----------------------------
-- Table structure for yuyueguahao
-- ----------------------------
DROP TABLE IF EXISTS `yuyueguahao`;
CREATE TABLE `yuyueguahao`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yuyuebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约编号',
  `yuyuemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约名称',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `yuyueshijian` datetime(0) NULL DEFAULT NULL COMMENT '预约时间',
  `guahaojiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '挂号价格',
  `yuyueneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '预约内容',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yuyuebianhao`(`yuyuebianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614820152307 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预约挂号' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuyueguahao
-- ----------------------------
INSERT INTO `yuyueguahao` VALUES (1, '2024-02-28 11:36:16', '预约编号1', '预约名称1', '医生工号1', '医生姓名1', 'http://localhost:8080/yy-ssmj/upload/yuyueguahao_touxiang1.jpg', '2024-02-28 11:36:16', '挂号价格1', '预约内容1', '备注1', '用户名1', '姓名1', '手机1', '否', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (2, '2024-02-28 11:36:16', '预约编号2', '预约名称2', '医生工号2', '医生姓名2', 'http://localhost:8080/yy-ssmj/upload/yuyueguahao_touxiang2.jpg', '2024-02-28 11:36:16', '挂号价格2', '预约内容2', '备注2', '用户名2', '姓名2', '手机2', '否', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (3, '2024-02-28 11:36:16', '预约编号3', '预约名称3', '医生工号3', '医生姓名3', 'http://localhost:8080/yy-ssmj/upload/yuyueguahao_touxiang3.jpg', '2024-02-28 11:36:16', '挂号价格3', '预约内容3', '备注3', '用户名3', '姓名3', '手机3', '否', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (4, '2024-02-28 11:36:16', '预约编号4', '预约名称4', '医生工号4', '医生姓名4', 'http://localhost:8080/yy-ssmj/upload/yuyueguahao_touxiang4.jpg', '2024-02-28 11:36:16', '挂号价格4', '预约内容4', '备注4', '用户名4', '姓名4', '手机4', '否', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (5, '2024-02-28 11:36:16', '预约编号5', '预约名称5', '医生工号5', '医生姓名5', 'http://localhost:8080/yy-ssmj/upload/yuyueguahao_touxiang5.jpg', '2024-02-28 11:36:16', '挂号价格5', '预约内容5', '备注5', '用户名5', '姓名5', '手机5', '否', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (6, '2024-02-28 11:36:16', '预约编号6', '预约名称6', '医生工号6', '医生姓名6', 'http://localhost:8080/yy-ssmj/upload/yuyueguahao_touxiang6.jpg', '2024-02-28 11:36:16', '挂号价格6', '预约内容6', '备注6', '用户名6', '姓名6', '手机6', '否', '', '未支付');
INSERT INTO `yuyueguahao` VALUES (1614775687649, '2024-03-03 20:48:07', '20243320473824955307', '预约医生1', '医生工号1', '医生姓名1', 'http://localhost:8080/yy-ssmj/upload/yonghu_touxiang1.jpg', '2024-03-17 00:00:00', '1', '<p>请输入预约内容</p>', '没备注', '111', '姓名1', '13823888881', '否', NULL, '已支付');
INSERT INTO `yuyueguahao` VALUES (1614778628016, '2024-03-03 21:37:07', '20243321365655750651', '挂号111111', '医生工号2', '医生姓名2', 'http://localhost:8080/yy-ssmj/upload/yonghu_touxiang1.jpg', '2024-03-03 21:37:04', '2', '<p>请输入预约内容</p>', '13132', '111', '姓名1', '13823888881', '否', NULL, '未支付');
INSERT INTO `yuyueguahao` VALUES (1614820152306, '2024-03-04 09:09:13', '20243498291892454', '只有登录后才可以进行预约、和客服聊天等操作', '111', '医生姓名1', 'http://localhost:8080/yy-ssmj/upload/yonghu_touxiang1.jpg', '2024-03-16 00:00:00', '123', '<p>请输入预约内容1111</p>', '123', '111', '姓名1', '13823888881', '是', '已经来了', '未支付');
INSERT INTO `yuyueguahao` VALUES (1720280769772, '2024-07-06 23:46:08', '2024762346115060654', '111', '医生工号1', '医生姓名1', 'http://localhost:8080/yy-ssmj/upload/1720273857543.JPG', NULL, '1', '<p>请输入预约内容</p>', '', 'patient', '姓名1', '13823888881', '否', NULL, '未支付');

SET FOREIGN_KEY_CHECKS = 1;
