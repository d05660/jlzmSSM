/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50558
 Source Host           : localhost:3306
 Source Schema         : jlzm

 Target Server Type    : MySQL
 Target Server Version : 50558
 File Encoding         : 65001

 Date: 22/01/2018 12:30:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'asdasd', 'beijing', '123123', 'asf@sdfa.com', '4');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `partment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '研发', '框架研发', '#126AFF');
INSERT INTO `dept` VALUES (2, '研发', 'BU研发', '#FFD600');
INSERT INTO `dept` VALUES (3, '产品', '公共产品', '#F80728');
INSERT INTO `dept` VALUES (4, '产品', 'BU产品', '#05C147');
INSERT INTO `dept` VALUES (5, '产品', '启明星', '#FF4EB9');
INSERT INTO `dept` VALUES (6, '项目', '项目管理', '#EE810D');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `partment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `creater` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, '591F68A5-87E6-4A6C-810F-5A50953AE747', '宋江', '19bdec7440acd44c669240ed534fc2f6', '框架研发', '19008097890', 'test0@126.com', '研发', 'wlh', '2017-12-07 08:48:15', 'AE0218C4-21F2-4846-9767-28CE3C5D9579C34C0B51-3A68-4297-9C7E-A851B136D34F');
INSERT INTO `emp` VALUES (2, '6998EED4-BB29-469E-B19A-DF4171B1FD12', '卢俊义', '19bdec7440acd44c669240ed534fc2f6', '框架研发', '19008097891', 'test1@126.com', '研发', 'wlh', '2017-12-07 08:48:17', 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (4, '3240870A-538F-4A84-B00E-567E910A30ED', '吴用', '91266e54a7d08e3df4b26839ee946628', '框架研发', '19008097892', 'test2@126.com', '研发', 'wlh', '2017-12-08 15:54:56', '13E2A651-0044-428B-81FD-6ABBB96D663AC34C0B51-3A68-4297-9C7E-A851B136D34F');
INSERT INTO `emp` VALUES (5, '3240870A--4A84-B00E-567E910A30ED', '公孙胜', '91266e54a7d08e3df4b26839ee946628', '框架研发', '19008097893', 'test3@126.com', '研发', 'wlh', '2017-12-08 15:54:54', '4AAF1FC7-E063-4E95-BC02-97AB-443D-B083-4236E550FAD2');
INSERT INTO `emp` VALUES (6, '591F68A5-87E6-4A6C-810F-5A50953AE747', '关胜', '19bdec7440acd44c669240ed534fc2f6', '框架研发', '19008097894', 'test4@126.com', '研发', 'wlh', NULL, NULL);
INSERT INTO `emp` VALUES (7, '6998EED4-BB29-469E-B19A-DF4171B1FD12', '林冲', '19bdec7440acd44c669240ed534fc2f6', '框架研发', '19008097895', 'test5@126.com', '研发', 'wlh', '2017-12-08 15:55:03', 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (8, '3240870A-538F-4A84-B00E-567E910A30ED', '秦明', '91266e54a7d08e3df4b26839ee946628', '启明星', '19008097896', 'test6@126.com', '研发', 'wlh', '2017-12-08 15:54:59', '4AAF1FC7-E063-4E95-BC02-45D3D1C83CE15839849B-97AB-443D-B083-4236E550FAD2');
INSERT INTO `emp` VALUES (9, '3240870A--4A84-B00E-567E910A30ED', '呼延灼', '91266e54a7d08e3df4b26839ee946628', '框架研发', '19008097897', 'test7@126.com', '研发', 'wlh', NULL, '4AAF1FC7-E063-4E95-BC02-97AB-443D-B083-4236E550FAD2');
INSERT INTO `emp` VALUES (10, '591F68A5-87E6-4A6C-810F-5A50953AE747', '花荣', '19bdec7440acd44c669240ed534fc2f6', 'BU产品', '19008097898', 'test8@126.com', '产品', 'wlh', '2017-12-08 15:55:06', NULL);
INSERT INTO `emp` VALUES (11, '6998EED4-BB29-469E-B19A-DF4171B1FD12', '柴进', '19bdec7440acd44c669240ed534fc2f6', 'BU产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (12, '3240870A-538F-4A84-B00E-567E910A30ED', '李应', '91266e54a7d08e3df4b26839ee946628', 'BU研发', '19008097991', 'test10@126.com', '研发', 'wlh', NULL, 'A3BE67F4-D7BE-48BC-AA40-2D6022B4EC7B5839849B-97AB-443D-B083-4236E550FAD2');
INSERT INTO `emp` VALUES (13, '3240870A--4A84-B00E-567E910A30ED', '朱仝', '91266e54a7d08e3df4b26839ee946628', '公共产品', '19008097992', 'test11@126.com', '产品', 'wlh', NULL, '4AAF1FC7-E063-4E95-BC02-97AB-443D-B083-4236E550FAD2');
INSERT INTO `emp` VALUES (14, '591F68A5-87E6-4A6C-810F-5A50953AE747', '鲁智深', '19bdec7440acd44c669240ed534fc2f6', '启明星', '19008097993', 'test12@126.com', '研发', 'wlh', NULL, NULL);
INSERT INTO `emp` VALUES (15, '6998EED4-BB29-469E-B19A-DF4171B1FD12', '武松', '19bdec7440acd44c669240ed534fc2f6', '项目管理', '19008097994', 'test13@126.com', '项目', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (16, '3240870A-538F-4A84-B00E-567E910A30ED', '董平', '91266e54a7d08e3df4b26839ee946628', '项目管理', '19008097995', 'test14@126.com', '项目', 'wlh', NULL, '4AAF1FC7-E063-4E95-BC02-45D3D1C83CE15839849B-97AB-443D-B083-4236E550FAD2');
INSERT INTO `emp` VALUES (17, '3240870A--4A84-B00E-567E910A30ED', '张清', '91266e54a7d08e3df4b26839ee946628', 'BU产品', '19008097996', 'test15@126.com', '产品', 'wlh', NULL, '4AAF1FC7-E063-4E95-BC02-97AB-443D-B083-4236E550FAD2');
INSERT INTO `emp` VALUES (18, 'C9C77472-6672-4B11-9EE2-FA84634D5A13', '杨志', '19bdec7440acd44c669240ed534fc2f6', '框架研发', '19008097997', 'test16@126.com', '研发', 'wlh', NULL, NULL);
INSERT INTO `emp` VALUES (19, 'B06CCEED-F200-40B1-BFB6-0CCFD88C3C27', '徐宁', '19bdec7440acd44c669240ed534fc2f6', '框架研发', '19008097998', 'wukong@126.com', '研发', 'wlh', NULL, NULL);
INSERT INTO `emp` VALUES (20, '631EE7C9-9D9E-49C9-9CAE-7C30E1E6FE09', '索超', '19bdec7440acd44c669240ed534fc2f6', '启明星', '19008097999', 'test17@126.com', '研发', 'wlh', NULL, NULL);
INSERT INTO `emp` VALUES (21, '3636B950-8E65-45D2-A610-0B2AAF4C85CA', '戴宗', '19bdec7440acd44c669240ed534fc2f6', '框架研发', '19008098997', 'test18@126.com', '研发', 'wlh', NULL, NULL);
INSERT INTO `emp` VALUES (22, 'C505CD16-4261-4DDD-9CBB-DCFAF42C96D9', '刘唐', '19bdec7440acd44c669240ed534fc2f6', '公共产品', '19008096997', 'test19@126.com', '研发', NULL, NULL, NULL);
INSERT INTO `emp` VALUES (23, '9109C8F1-0691-4122-9AF3-AC79776D83C0', '李逵', '50cf3051af480981668d167eb4848329', '框架研发', '19008197997', 'test20@126.com', '研发', NULL, NULL, NULL);
INSERT INTO `emp` VALUES (24, '5dcfab94-dbee-11e7-b767-38d5471c7c42', '柴进', '19bdec7440acd44c669240ed534fc2f6', 'BU产品', '19008097899', 'test9@126.com', '产品', 'wlh', '2017-12-08 16:11:10', 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (25, '9e0897eb-dbee-11e7-b767-38d5471c7c42', '穆弘', '19bdec7440acd44c669240ed534fc2f6', 'BU研发', '19008097899', 'test9@126.com', '研发', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (26, '9e0d5fb9-dbee-11e7-b767-38d5471c7c42', '雷横', '19bdec7440acd44c669240ed534fc2f6', 'BU研发', '19008097899', 'test9@126.com', '研发', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (27, '9e13acc2-dbee-11e7-b767-38d5471c7c42', '李俊', '19bdec7440acd44c669240ed534fc2f6', 'BU研发', '19008097899', 'test9@126.com', '研发', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (28, 'afe2d673-dbee-11e7-b767-38d5471c7c42', '阮小二', '19bdec7440acd44c669240ed534fc2f6', 'BU研发', '19008097899', 'test9@126.com', '研发', 'wlh', '2017-12-08 16:11:12', 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (29, 'afe7cdf9-dbee-11e7-b767-38d5471c7c42', '张横', '19bdec7440acd44c669240ed534fc2f6', 'BU产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (30, 'd4957f1c-dbee-11e7-b767-38d5471c7c42', '阮小五', '19bdec7440acd44c669240ed534fc2f6', 'BU产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (31, 'd49c0fef-dbee-11e7-b767-38d5471c7c42', '张顺', '19bdec7440acd44c669240ed534fc2f6', 'BU产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (32, 'd4a12800-dbee-11e7-b767-38d5471c7c42', '阮小七', '19bdec7440acd44c669240ed534fc2f6', '公共产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (33, 'ea3fe15c-dbee-11e7-b767-38d5471c7c42', '杨雄', '19bdec7440acd44c669240ed534fc2f6', '公共产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (34, 'ea48a051-dbee-11e7-b767-38d5471c7c42', '石秀', '19bdec7440acd44c669240ed534fc2f6', '公共产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (35, 'ea4eee3a-dbee-11e7-b767-38d5471c7c42', '解珍', '19bdec7440acd44c669240ed534fc2f6', '公共产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (36, 'ea569515-dbee-11e7-b767-38d5471c7c42', '解宝', '19bdec7440acd44c669240ed534fc2f6', 'BU产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');
INSERT INTO `emp` VALUES (37, 'ea7fde5f-dbee-11e7-b767-38d5471c7c42', '燕青', '19bdec7440acd44c669240ed534fc2f6', 'BU产品', '19008097899', 'test9@126.com', '产品', 'wlh', NULL, 'C0B668AB-A030-4A35-8A3C-422DEF4F9BE2undefined');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price_formatted` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bedroom_number` int(11) DEFAULT NULL,
  `bathroom_number` int(11) DEFAULT NULL,
  `property_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `summary` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (1, '£2,200,000', '/pic/4_bedroom_terraced_house_for_sale_in_st_peters_street_n1_london_108247860326974120.jpg', 'St. Peter\'s Street, London N1', 4, 1, 'house', 'An family home boasting a rich collection of period and contemporar...');
INSERT INTO `house` VALUES (2, '£735,000', '/pic/2_bedroom_flat_for_sale_in_rosebery_avenue_ec1r_london_108247842457117063.jpg', 'Rosebery Avenue, London EC1R - Porter', 2, 1, 'flat', 'A superb two bedroom apartment on the top floor of this prestigious...');
INSERT INTO `house` VALUES (3, '£1,100,000', '/pic/2_bedroom_flat_for_sale_in_union_wharf_n1_london_108247859612066615.jpg', 'Union Wharf, London N1 - Balcony', 2, 0, 'flat', 'Brilliantly located overlooking shepherdess walk park, this ly brig...');
INSERT INTO `house` VALUES (4, '£2,828,950', '/pic/3_bedroom_flat_for_sale_in_one_crown_place_ec2a_london_108247846350377128.jpg', 'One Crown Place, London EC2A - Gym', 3, 3, 'flat', 'Located on the 26th floor of north tower and offering triple aspect...');
INSERT INTO `house` VALUES (5, '£1,300,000', '/pic/2_bedroom_flat_for_sale_in_the_atlas_building_old_street_n1_london_108247852953449894.jpg', 'The Atlas Building, Old Street, London N1', 2, 2, 'flat', 'Please quote asp id 27184entertain friends for the weekend in your ...');
INSERT INTO `house` VALUES (6, '£840,000', '/pic/1_bedroom_flat_for_sale_in_tudor_house_one_tower_bridge_se1_london_108247840486267011.jpg', 'Tudor House, One Tower Bridge, London SE1', 1, 1, 'flat', 'A 1 double bedroom apartment for sale of approx. Situated on the 7t...');
INSERT INTO `house` VALUES (7, '£450,000', '/pic/2_bedroom_flat_for_sale_in_micawber_court_n1_london_108247853784553586.jpg', 'Micawber Court, London, London N1', 3, 1, 'flat', 'Well-presented two bedroom apartment. Situated in the heart of lond...');
INSERT INTO `house` VALUES (8, '£775,000', '/pic/4_bedroom_mews_for_sale_in_aran_mews_st_clements_lane_n7_london_108247857346085044.jpg', 'Aran Mews, St Clements Lane, London N7', 4, 3, 'house', 'A well presented modern freehold mews house with four bedrooms over...');
INSERT INTO `house` VALUES (9, '£1,317,120', '/pic/2_bedroom_flat_for_sale_in_shoreditch_high_street_shoreditch_e1_london_108247858826077989.jpg', 'Shoreditch High Street, Shoreditch, London E1', 2, 2, 'flat', 'The tower benefits from five major transport hubs within walking di...');
INSERT INTO `house` VALUES (10, '£834,240', '/pic/1_bedroom_flat_for_sale_in_shoreditch_high_street_shoreditch_e1_london_108247859082949890.jpg', 'Shoreditch High Street, Shoreditch, London E1', 1, 1, 'flat', 'The tower benefits from five major transport hubs within walking di...');

-- ----------------------------
-- Table structure for sys_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_permissions`;
CREATE TABLE `sys_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_permissions
-- ----------------------------
INSERT INTO `sys_permissions` VALUES (1, 'user:create', '用户模块新增');
INSERT INTO `sys_permissions` VALUES (2, 'user:update', '用户模块修改');
INSERT INTO `sys_permissions` VALUES (3, 'user:select', '用户模块查询');
INSERT INTO `sys_permissions` VALUES (4, 'user:delete', '用户模块删除');

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, 'admin', '管理员');
INSERT INTO `sys_roles` VALUES (2, 'user', '用户管理员');

-- ----------------------------
-- Table structure for sys_roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_permissions`;
CREATE TABLE `sys_roles_permissions`  (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `sys_roles_permissions_ibfk_2`(`permission_id`) USING BTREE,
  CONSTRAINT `sys_roles_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sys_roles_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `sys_permissions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles_permissions
-- ----------------------------
INSERT INTO `sys_roles_permissions` VALUES (1, 1);
INSERT INTO `sys_roles_permissions` VALUES (1, 2);
INSERT INTO `sys_roles_permissions` VALUES (1, 3);
INSERT INTO `sys_roles_permissions` VALUES (2, 3);
INSERT INTO `sys_roles_permissions` VALUES (1, 4);

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `locked` tinyint(255) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES (1, 'david', '5e0c234f74aeb660a829b802b9da2e9d91ff53af', 0);
INSERT INTO `sys_users` VALUES (2, 'ddw', '17626d12d8599b78c121afbe0da2009f84afcb6549f804b5a1dc36d10565965c', 0);

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles`  (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `sys_users_roles_ibfk_2`(`role_id`) USING BTREE,
  CONSTRAINT `sys_users_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sys_users_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES (1, 1);
INSERT INTO `sys_users_roles` VALUES (1, 2);
INSERT INTO `sys_users_roles` VALUES (2, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'david', 'e10adc3949ba59abbe56e057f20f883e');

SET FOREIGN_KEY_CHECKS = 1;
