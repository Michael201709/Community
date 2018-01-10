/*
 Navicat Premium Data Transfer

 Source Server         : Michael
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : communtiy

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 10/01/2018 23:35:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for com_admin
-- ----------------------------
    DROP TABLE IF EXISTS `com_admin`;
    CREATE TABLE `com_admin`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID-管理员',
      `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '头像',
      `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '登录账号名(可作为登录凭证)',
      `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名-管理员',
      `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '登录密码',
      `sex` tinyint(2) NOT NULL COMMENT '性别-0:女;1:男;2:保密',
      `age` tinyint(3) NULL DEFAULT NULL COMMENT '年龄-1~299岁',
      `mobile` int(20) NULL DEFAULT NULL COMMENT '手机号-联系方式(可作为登录凭证)',
      `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮箱-邮箱地址(可作为登录凭证)',
      `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '地址-联系地址(三、四级联动)',
      `status` tinyint(1) NOT NULL COMMENT '状态-0:禁用;1-启用',
      `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '个性签名',
      `create_time` int(11) NOT NULL COMMENT '注册创建时间',
      `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
      `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
      `is_delete` int(11) NULL DEFAULT NULL COMMENT '允许删除',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_admin
-- ----------------------------
INSERT INTO `com_admin` VALUES (1, '', 'admin', '超级管理员', '11111', 1, 18, 0, 'mashuai21@live.com', '0000000000', 1, 'root权限！我就是我，不一样的烟火', 1567890878, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for com_admin_role
-- ----------------------------
    DROP TABLE IF EXISTS `com_admin_role`;
    CREATE TABLE `com_admin_role`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员_角色表ID',
      `admin_id` int(11) NULL DEFAULT NULL COMMENT '管理员ID',
      `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for com_role
-- ----------------------------
    DROP TABLE IF EXISTS `com_role`;
    CREATE TABLE `com_role`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
      `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色名称',
      `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色说明介绍',
      `status` tinyint(1) NULL DEFAULT NULL COMMENT '角色状态',
      `create_time` int(11) NULL DEFAULT NULL COMMENT '角色创建时间',
      `update_time` int(11) NULL DEFAULT NULL COMMENT '角色更新时间',
      `delete_time` int(11) NULL DEFAULT NULL COMMENT '角色删除时间',
      `is_delete` int(11) NULL DEFAULT NULL COMMENT '允许删除',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for com_role_rule
-- ----------------------------
    DROP TABLE IF EXISTS `com_role_rule`;
    CREATE TABLE `com_role_rule`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色_权限表ID',
      `admin_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
      `role_id` int(11) NULL DEFAULT NULL COMMENT '权限ID',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for com_rule
-- ----------------------------
    DROP TABLE IF EXISTS `com_rule`;
    CREATE TABLE `com_rule`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
      `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '权限名称',
      `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '权限说明介绍',
      `status` tinyint(1) NULL DEFAULT NULL COMMENT '权限状态',
      `create_time` int(11) NULL DEFAULT NULL COMMENT '权限创建时间',
      `update_time` int(11) NULL DEFAULT NULL COMMENT '权限更新时间',
      `delete_time` int(11) NULL DEFAULT NULL COMMENT '权限删除时间',
      `is_delete` int(11) NULL DEFAULT NULL COMMENT '允许删除',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for com_user
-- ----------------------------
DROP TABLE IF EXISTS `com_user`;
CREATE TABLE `com_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID-用户',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '头像',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '登录账号名(可作为登录凭证)',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名-用户',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '登录密码',
  `sex` tinyint(2) NOT NULL COMMENT '性别-0:女;1:男;2:保密',
  `age` tinyint(3) NULL DEFAULT NULL COMMENT '年龄-1~299岁',
  `mobile` int(11) NULL DEFAULT NULL COMMENT '手机号-联系方式(可作为登录凭证)',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮箱-邮箱地址(可作为登录凭证)',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '地址-联系地址(三、四级联动)',
  `status` tinyint(1) NOT NULL COMMENT '状态-0:禁用;1-启用',
  `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '个性签名',
  `create_time` int(11) NOT NULL COMMENT '注册创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '允许删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of com_user
-- ----------------------------
INSERT INTO `com_user` VALUES (1, '', 'Michael', '马成军', '11111', 1, 18, 0, 'mashuai21@live.com', '上海市青浦区徐泾镇明珠路盈港东路1915弄', 1, 'root权限！我就是我，不一样的烟火', 1567890878, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
