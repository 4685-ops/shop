/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 18/09/2020 17:26:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Banner名称，通常作为标识',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Banner描述',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 212 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'banner管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, '首页置顶9999', '首页轮播图', NULL, 1599721268);
INSERT INTO `banner` VALUES (3, '首页置顶2', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (4, '首页置顶3', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (5, '首页置顶4', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (6, '首页置顶5', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (7, '首页置顶6', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (8, '首页置顶7', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (9, '首页置顶8', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (10, '首页置顶9', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (11, '首页置顶12', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (12, '首页置顶23', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (13, '首页置顶34', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (14, '首页置顶45', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (15, '首页置顶56', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (16, '首页置顶17', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (17, '首页置顶18', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (18, '首页置顶19', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (19, '首页置顶72', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (20, '首页置顶73', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (21, '首页置顶74', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (22, '首页置顶75', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (23, '首页置顶76', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (24, '首页置顶77', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (25, '首页置顶78', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (26, '首页置顶79', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (27, '首页置顶28', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (28, '首页置顶83', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (29, '首页置顶84', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (30, '首页置顶85', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (31, '首页置顶86', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (32, '首页置顶87', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (33, '首页置顶88', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (34, '首页置顶89', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (35, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (36, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (37, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (38, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (39, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (40, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (41, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (42, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (43, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (44, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (45, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (46, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (47, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (48, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (49, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (50, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (51, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (52, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (53, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (54, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (55, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (56, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (57, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (58, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (59, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (60, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (61, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (62, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (63, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (64, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (65, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (66, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (67, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (68, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (69, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (70, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (71, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (72, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (73, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (74, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (75, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (76, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (77, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (78, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (79, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (80, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (81, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (82, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (83, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (84, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (85, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (86, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (87, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (88, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (89, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (90, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (91, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (92, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (93, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (94, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (95, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (96, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (97, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (98, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (99, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (100, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (101, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (102, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (103, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (104, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (105, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (106, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (107, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (108, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (109, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (110, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (111, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (112, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (113, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (114, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (115, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (116, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (117, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (118, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (119, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (120, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (121, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (122, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (123, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (124, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (125, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (126, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (127, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (128, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (129, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (130, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (131, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (132, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (133, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (134, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (135, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (136, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (137, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (138, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (139, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (140, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (141, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (142, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (143, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (144, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (145, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (146, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (147, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (148, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (149, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (150, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (151, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (152, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (153, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (154, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (155, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (156, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (157, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (158, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (159, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (160, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (161, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (162, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (163, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (164, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (165, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (166, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (167, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (168, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (169, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (170, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (171, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (172, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (173, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (174, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (175, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (176, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (177, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (178, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (179, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (180, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (181, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (182, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (183, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (184, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (185, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (186, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (187, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (188, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (189, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (190, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (191, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (192, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (193, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (194, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (195, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (196, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (197, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (198, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (199, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (200, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (201, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (202, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (203, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (204, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (205, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (206, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (207, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (208, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (209, '首页置顶', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (210, 'xiaoy111', '首页轮播图', NULL, NULL);
INSERT INTO `banner` VALUES (211, 'admin', '首页轮播图', NULL, NULL);

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联image表',
  `key_word` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行关键字，根据不同的type含义不同',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '跳转类型，可能导向商品，可能导向专题，可能导向其他。0，无导向；1：导向商品;2:导向专题',
  `delete_time` int(11) DEFAULT NULL,
  `banner_id` int(11) NOT NULL COMMENT '外键，关联banner表',
  `update_time` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'banner子项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES (1, 65, '6', 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `banner_item` VALUES (2, 2, '25', 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `banner_item` VALUES (3, 3, '11', 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `banner_item` VALUES (5, 1, '10', 1, NULL, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `topic_img_id` int(11) DEFAULT NULL COMMENT '外键，关联image表',
  `delete_time` int(11) DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品类目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (2, '果味', 6, NULL, NULL, NULL);
INSERT INTO `category` VALUES (3, '蔬菜', 5, NULL, NULL, NULL);
INSERT INTO `category` VALUES (4, '炒货', 7, NULL, NULL, NULL);
INSERT INTO `category` VALUES (5, '点心', 4, NULL, NULL, NULL);
INSERT INTO `category` VALUES (6, '粗茶', 8, NULL, NULL, NULL);
INSERT INTO `category` VALUES (7, '淡饭', 9, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片路径',
  `from` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 来自本地，2 来自公网',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '图片总表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (1, '/banner-1a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (2, '/banner-2a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (3, '/banner-3a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (4, '/category-cake.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (5, '/category-vg.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (6, '/category-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (7, '/category-fry-a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (8, '/category-tea.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (9, '/category-rice.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (10, '/product-dryfruit@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (13, '/product-vg@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (14, '/product-rice@6.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (16, '/1@theme.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (17, '/2@theme.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (18, '/3@theme.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (19, '/detail-1@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (20, '/detail-2@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (21, '/detail-3@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (22, '/detail-4@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (23, '/detail-5@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (24, '/detail-6@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (25, '/detail-7@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (26, '/detail-8@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (27, '/detail-9@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (28, '/detail-11@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (29, '/detail-10@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (31, '/product-rice@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (32, '/product-tea@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (33, '/product-dryfruit@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (36, '/product-dryfruit@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (37, '/product-dryfruit@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (38, '/product-dryfruit@5.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (39, '/product-dryfruit-a@6.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (40, '/product-dryfruit@7.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (41, '/product-rice@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (42, '/product-rice@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (43, '/product-rice@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (44, '/product-fry@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (45, '/product-fry@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (46, '/product-fry@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (47, '/product-tea@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (48, '/product-tea@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (49, '/1@theme-head.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (50, '/2@theme-head.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (51, '/3@theme-head.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (52, '/product-cake@1.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (53, '/product-cake@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (54, '/product-cake-a@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (55, '/product-cake-a@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (56, '/product-dryfruit@8.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (57, '/product-fry@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (58, '/product-fry@5.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (59, '/product-rice@5.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (60, '/product-rice@7.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (62, '/detail-12@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (63, '/detail-13@1-dryfruit.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (65, '/banner-4a.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (66, '/product-vg@4.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (67, '/product-vg@5.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (68, '/product-vg@2.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (69, '/product-vg@3.png', 1, NULL, NULL);
INSERT INTO `image` VALUES (70, '20200911\\0d3a7b665e6e21dd1eff068b518ef3a0.jpg', 1, NULL, 1599787850);
INSERT INTO `image` VALUES (71, '20200911\\b2dddf0c03e2ef1fa90be269083e4ac8.jpg', 1, NULL, 1599787982);
INSERT INTO `image` VALUES (72, '20200911\\aa28f35b0f7b375f12d788a9f7e8bfde.jpg', 1, NULL, 1599788318);
INSERT INTO `image` VALUES (73, '20200911\\cbe54cce7e7cf27ec395e3652ad99a22.jpg', 1, NULL, 1599788322);
INSERT INTO `image` VALUES (74, '20200911\\5e45cf13860f654a222cbd8a6b96e500.jpg', 1, NULL, 1599788324);
INSERT INTO `image` VALUES (75, '20200911\\ee32f14822d8d82d9f10706b056d9f5e.jpg', 1, NULL, 1599788326);
INSERT INTO `image` VALUES (76, '20200911\\033dfbd6e804c57507e584fd9f9c9443.jpg', 1, NULL, 1599788369);
INSERT INTO `image` VALUES (77, '20200911\\44545ac7a50ced77ab4593965c9de54a.jpg', 1, NULL, 1599788407);
INSERT INTO `image` VALUES (78, '20200911\\cf0236af5b3a0476a2d2463daf5f11e2.jpg', 1, NULL, 1599788410);
INSERT INTO `image` VALUES (79, '20200911\\c298be176e33ff86566d488706c2f588.jpg', 1, NULL, 1599788495);
INSERT INTO `image` VALUES (80, '20200911\\f6a6ee1b457b825e9d0b17b9f2dd80a4.jpg', 1, NULL, 1599788503);
INSERT INTO `image` VALUES (81, '20200911\\cba78de0c890689f63dadbb789bcfcb4.jpg', 1, NULL, 1599788514);
INSERT INTO `image` VALUES (82, '20200911\\975f24884a4c5e85b64418f07784b8bd.jpg', 1, NULL, 1599788522);
INSERT INTO `image` VALUES (83, '20200911\\c30438ac83e7b818bc65fbc9204e5d44.jpg', 1, NULL, 1599788523);
INSERT INTO `image` VALUES (84, '20200911\\bc69b71bd5a03f5f92190a1e3b1f80a5.jpg', 1, NULL, 1599788526);
INSERT INTO `image` VALUES (85, '20200911\\f4723269d7002595b0c965765a2837b4.jpg', 1, NULL, 1599788527);
INSERT INTO `image` VALUES (86, '20200911\\134f742de52c1c3061c7520c01679ac1.jpg', 1, NULL, 1599788546);
INSERT INTO `image` VALUES (87, '20200911\\a7e1e5e99b658dca14f926a0e1dba246.jpg', 1, NULL, 1599788557);
INSERT INTO `image` VALUES (88, '20200911\\5f3b4ad4453f07b02b46bf81d899ae6b.jpg', 1, NULL, 1599788586);
INSERT INTO `image` VALUES (89, '20200911\\67c8af6b548fc6a5eff5cd3bf03678ee.jpg', 1, NULL, 1599788687);
INSERT INTO `image` VALUES (90, '20200911\\96e680908ccc74281e8fee4f999e81f7.jpg', 1, NULL, 1599788689);
INSERT INTO `image` VALUES (91, '20200911\\f47b80fc5f8f5146ce77f11c8d458e8c.jpg', 1, NULL, 1599788704);
INSERT INTO `image` VALUES (92, '20200911\\3ea547f73c5b637e3f492e3bcab7fc94.jpg', 1, NULL, 1599788717);
INSERT INTO `image` VALUES (93, '20200911\\b0c6fc93366c0b6dde2caf656e43aa9c.jpg', 1, NULL, 1599788720);
INSERT INTO `image` VALUES (94, '20200911\\7982bc7f551077f692ebfea75a9232e9.jpg', 1, NULL, 1599788773);
INSERT INTO `image` VALUES (95, '20200911\\552b17877197a4bdb2db91614ec618fe.jpg', 1, NULL, 1599788776);
INSERT INTO `image` VALUES (96, '20200911\\cad3abf294e880870c5de3360af08e8a.jpg', 1, NULL, 1599788779);
INSERT INTO `image` VALUES (97, '20200911\\2d446aead3bb0a4fd7a706e4f60e2933.jpg', 1, NULL, 1599788798);
INSERT INTO `image` VALUES (98, '20200911\\ce729f32ea29e33b60c5848493eb854d.jpg', 1, NULL, 1599788824);
INSERT INTO `image` VALUES (99, '20200911\\1b6e4c3f56e0868b24c9828b53276155.jpg', 1, NULL, 1599788915);
INSERT INTO `image` VALUES (100, '20200911\\060e6843ec1d84616fbb1a1707f9dcd8.jpg', 1, NULL, 1599788942);
INSERT INTO `image` VALUES (101, '20200911\\318f3c0e38908ed7a796b0c2fdd67789.jpg', 1, NULL, 1599788948);
INSERT INTO `image` VALUES (102, '20200911\\eac4cd0adf49f35a1feb04122dbe6092.jpg', 1, NULL, 1599789018);
INSERT INTO `image` VALUES (103, '20200911\\62766d5e5b0b94b68d5e477f9b961aaf.jpg', 1, NULL, 1599789025);
INSERT INTO `image` VALUES (104, '20200911\\a2cdf28ca4e183f8d32e34f9d9539368.jpg', 1, NULL, 1599789048);
INSERT INTO `image` VALUES (105, '20200911\\a2a98ae06b8fcf411d0e6c6429f711d2.jpg', 1, NULL, 1599789096);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `user_id` int(11) NOT NULL COMMENT '外键，用户id，注意并不是openid',
  `delete_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `total_price` decimal(6, 2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:未支付， 2：已支付，3：已发货 , 4: 已支付，但库存不足',
  `snap_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '订单快照图片',
  `snap_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '订单快照名称',
  `total_count` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) DEFAULT NULL,
  `snap_items` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '订单其他信息快照（json)',
  `snap_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址快照',
  `prepay_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '订单微信支付的预订单id（用于发送模板消息）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no`(`order_no`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product`  (
  `order_id` int(11) NOT NULL COMMENT '联合主键，订单id',
  `product_id` int(11) NOT NULL COMMENT '联合主键，商品id',
  `count` int(11) NOT NULL COMMENT '商品数量',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`, `order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `price` decimal(6, 2) NOT NULL COMMENT '价格,单位：分',
  `stock` int(11) NOT NULL DEFAULT 0 COMMENT '库存量',
  `delete_time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `main_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '主图ID号，这是一个反范式设计，有一定的冗余',
  `from` tinyint(4) NOT NULL DEFAULT 1 COMMENT '图片来自 1 本地 ，2公网',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL,
  `summary` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '摘要',
  `img_id` int(11) DEFAULT NULL COMMENT '图片外键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '芹菜 半斤', 0.01, 998, NULL, 3, '/product-vg@1.png', 1, NULL, NULL, NULL, 13);
INSERT INTO `product` VALUES (2, '梨花带雨 3个', 0.01, 984, NULL, 2, '/product-dryfruit@1.png', 1, NULL, NULL, NULL, 10);
INSERT INTO `product` VALUES (3, '素米 327克', 0.01, 996, NULL, 7, '/product-rice@1.png', 1, NULL, NULL, NULL, 31);
INSERT INTO `product` VALUES (4, '红袖枸杞 6克*3袋', 0.01, 998, NULL, 6, '/product-tea@1.png', 1, NULL, NULL, NULL, 32);
INSERT INTO `product` VALUES (5, '春生龙眼 500克', 0.01, 995, NULL, 2, '/product-dryfruit@2.png', 1, NULL, NULL, NULL, 33);
INSERT INTO `product` VALUES (6, '小红的猪耳朵 120克', 0.01, 997, NULL, 5, '/product-cake@2.png', 1, NULL, NULL, NULL, 53);
INSERT INTO `product` VALUES (7, '泥蒿 半斤', 0.01, 998, NULL, 3, '/product-vg@2.png', 1, NULL, NULL, NULL, 68);
INSERT INTO `product` VALUES (8, '夏日芒果 3个', 0.01, 995, NULL, 2, '/product-dryfruit@3.png', 1, NULL, NULL, NULL, 36);
INSERT INTO `product` VALUES (9, '冬木红枣 500克', 0.01, 996, NULL, 2, '/product-dryfruit@4.png', 1, NULL, NULL, NULL, 37);
INSERT INTO `product` VALUES (10, '万紫千凤梨 300克', 0.01, 996, NULL, 2, '/product-dryfruit@5.png', 1, NULL, NULL, NULL, 38);
INSERT INTO `product` VALUES (11, '贵妃笑 100克', 0.01, 994, NULL, 2, '/product-dryfruit-a@6.png', 1, NULL, NULL, NULL, 39);
INSERT INTO `product` VALUES (12, '珍奇异果 3个', 0.01, 999, NULL, 2, '/product-dryfruit@7.png', 1, NULL, NULL, NULL, 40);
INSERT INTO `product` VALUES (13, '绿豆 125克', 0.01, 999, NULL, 7, '/product-rice@2.png', 1, NULL, NULL, NULL, 41);
INSERT INTO `product` VALUES (14, '芝麻 50克', 0.01, 999, NULL, 7, '/product-rice@3.png', 1, NULL, NULL, NULL, 42);
INSERT INTO `product` VALUES (15, '猴头菇 370克', 0.01, 999, NULL, 7, '/product-rice@4.png', 1, NULL, NULL, NULL, 43);
INSERT INTO `product` VALUES (16, '西红柿 1斤', 0.01, 999, NULL, 3, '/product-vg@3.png', 1, NULL, NULL, NULL, 69);
INSERT INTO `product` VALUES (17, '油炸花生 300克', 0.01, 999, NULL, 4, '/product-fry@1.png', 1, NULL, NULL, NULL, 44);
INSERT INTO `product` VALUES (18, '春泥西瓜子 128克', 0.01, 997, NULL, 4, '/product-fry@2.png', 1, NULL, NULL, NULL, 45);
INSERT INTO `product` VALUES (19, '碧水葵花籽 128克', 0.01, 999, NULL, 4, '/product-fry@3.png', 1, NULL, NULL, NULL, 46);
INSERT INTO `product` VALUES (20, '碧螺春 12克*3袋', 0.01, 999, NULL, 6, '/product-tea@2.png', 1, NULL, NULL, NULL, 47);
INSERT INTO `product` VALUES (21, '西湖龙井 8克*3袋', 0.01, 998, NULL, 6, '/product-tea@3.png', 1, NULL, NULL, NULL, 48);
INSERT INTO `product` VALUES (22, '梅兰清花糕 1个', 0.01, 997, NULL, 5, '/product-cake-a@3.png', 1, NULL, NULL, NULL, 54);
INSERT INTO `product` VALUES (23, '清凉薄荷糕 1个', 0.01, 998, NULL, 5, '/product-cake-a@4.png', 1, NULL, NULL, NULL, 55);
INSERT INTO `product` VALUES (25, '小明的妙脆角 120克', 0.01, 999, NULL, 5, '/product-cake@1.png', 1, NULL, NULL, NULL, 52);
INSERT INTO `product` VALUES (26, '红衣青瓜 混搭160克', 0.01, 999, NULL, 2, '/product-dryfruit@8.png', 1, NULL, NULL, NULL, 56);
INSERT INTO `product` VALUES (27, '锈色瓜子 100克', 0.01, 998, NULL, 4, '/product-fry@4.png', 1, NULL, NULL, NULL, 57);
INSERT INTO `product` VALUES (28, '春泥花生 200克', 0.01, 999, NULL, 4, '/product-fry@5.png', 1, NULL, NULL, NULL, 58);
INSERT INTO `product` VALUES (29, '冰心鸡蛋 2个', 0.01, 999, NULL, 7, '/product-rice@5.png', 1, NULL, NULL, NULL, 59);
INSERT INTO `product` VALUES (30, '八宝莲子 200克', 0.01, 999, NULL, 7, '/product-rice@6.png', 1, NULL, NULL, NULL, 14);
INSERT INTO `product` VALUES (31, '深涧木耳 78克', 0.01, 999, NULL, 7, '/product-rice@7.png', 1, NULL, NULL, NULL, 60);
INSERT INTO `product` VALUES (32, '土豆 半斤', 0.01, 999, NULL, 3, '/product-vg@4.png', 1, NULL, NULL, NULL, 66);
INSERT INTO `product` VALUES (33, '青椒 半斤', 0.01, 999, NULL, 3, '/product-vg@5.png', 1, NULL, NULL, NULL, 67);

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联图片表',
  `delete_time` int(11) DEFAULT NULL COMMENT '状态，主要表示是否删除，也可以扩展其他状态',
  `order` int(11) NOT NULL DEFAULT 0 COMMENT '图片排序序号',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES (4, 19, NULL, 1, 11);
INSERT INTO `product_image` VALUES (5, 20, NULL, 2, 11);
INSERT INTO `product_image` VALUES (6, 21, NULL, 3, 11);
INSERT INTO `product_image` VALUES (7, 22, NULL, 4, 11);
INSERT INTO `product_image` VALUES (8, 23, NULL, 5, 11);
INSERT INTO `product_image` VALUES (9, 24, NULL, 6, 11);
INSERT INTO `product_image` VALUES (10, 25, NULL, 7, 11);
INSERT INTO `product_image` VALUES (11, 26, NULL, 8, 11);
INSERT INTO `product_image` VALUES (12, 27, NULL, 9, 11);
INSERT INTO `product_image` VALUES (13, 28, NULL, 11, 11);
INSERT INTO `product_image` VALUES (14, 29, NULL, 10, 11);
INSERT INTO `product_image` VALUES (18, 62, NULL, 12, 11);
INSERT INTO `product_image` VALUES (19, 63, NULL, 13, 11);

-- ----------------------------
-- Table structure for product_property
-- ----------------------------
DROP TABLE IF EXISTS `product_property`;
CREATE TABLE `product_property`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '详情属性名称',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详情属性',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_property
-- ----------------------------
INSERT INTO `product_property` VALUES (1, '品名', '杨梅', 11, NULL, NULL);
INSERT INTO `product_property` VALUES (2, '口味', '青梅味 雪梨味 黄桃味 菠萝味', 11, NULL, NULL);
INSERT INTO `product_property` VALUES (3, '产地', '火星', 11, NULL, NULL);
INSERT INTO `product_property` VALUES (4, '保质期', '180天', 11, NULL, NULL);
INSERT INTO `product_property` VALUES (5, '品名', '梨子', 2, NULL, NULL);
INSERT INTO `product_property` VALUES (6, '产地', '金星', 2, NULL, NULL);
INSERT INTO `product_property` VALUES (7, '净含量', '100g', 2, NULL, NULL);
INSERT INTO `product_property` VALUES (8, '保质期', '10天', 2, NULL, NULL);

-- ----------------------------
-- Table structure for shop_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_admin_user`;
CREATE TABLE `shop_admin_user`  (
  `uid` smallint(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tjdm` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '统计代码',
  `lastip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上次登录IP',
  `nowip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '本次ip',
  `lasttime` int(10) NOT NULL COMMENT '上次登录时间',
  `nowtime` int(10) NOT NULL COMMENT '本次登录时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态1正常',
  `logincount` int(10) NOT NULL COMMENT '登录次数',
  `group_id` smallint(5) NOT NULL COMMENT '管理员组id',
  `salt` tinyint(255) DEFAULT NULL COMMENT '密码加盐 md5（输入的+）',
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_admin_user
-- ----------------------------
INSERT INTO `shop_admin_user` VALUES (1, 'admin', '17f4661ddeade2489e0fe1a3db7055bc', '', '127.0.0.1', '127.0.0.1', 1599557167, 1599617025, 1, 2538, 1, 1);
INSERT INTO `shop_admin_user` VALUES (2, 'guyx', '95bfc9859972c207c5863521fc725dba', '', '222.93.54.196', '218.79.36.153', 1584969522, 1585012465, 1, 68, 2, 1);
INSERT INTO `shop_admin_user` VALUES (4, 'huangzq', '95bfc9859972c207c5863521fc725dba', '', '114.86.140.38', '218.79.36.153', 1585003630, 1585009234, 1, 180, 2, 3);
INSERT INTO `shop_admin_user` VALUES (6, 'gengsh', 'b3079fc96658221f07c6a1a98a9f5ceb', '', '218.79.36.153', '218.79.36.153', 1585020855, 1585020867, 1, 32, 1, 2);
INSERT INTO `shop_admin_user` VALUES (8, 'liuhaiyang', '6978915ee7dbc5aff1bc34b59e8c0fc5', '', '127.0.0.1', '127.0.0.1', 1600046780, 1600077831, 1, 56, 1, 2);
INSERT INTO `shop_admin_user` VALUES (9, 'testgame', '4fb2fc89d6607bd1ef429dc238f7a2d2', '', '114.86.140.38', '218.79.36.153', 1584969521, 1585029336, 1, 21, 8, 3);
INSERT INTO `shop_admin_user` VALUES (10, '程钊', '1e10c1542a7eee55f6799a61b59875ff', '', '114.88.107.190', '114.88.107.190', 1584928466, 1585012207, 1, 59, 7, 2);
INSERT INTO `shop_admin_user` VALUES (11, '潘旻辉', '02c8210be1a9e83fe698b67de2cbbe0e', '', '218.81.23.100', '218.81.188.185', 1584928624, 1585013001, 1, 54, 4, 2);
INSERT INTO `shop_admin_user` VALUES (12, '胡晸煌', '1e10c1542a7eee55f6799a61b59875ff', '', '218.81.23.100', '218.81.188.185', 1584928504, 1585012600, 1, 51, 8, 3);
INSERT INTO `shop_admin_user` VALUES (13, '吴辰辰', '1e10c1542a7eee55f6799a61b59875ff', '', '218.81.23.100', '218.81.188.185', 1584928439, 1585011586, 1, 45, 4, 3);
INSERT INTO `shop_admin_user` VALUES (14, '张薇', '1e10c1542a7eee55f6799a61b59875ff', '', '218.81.23.100', '218.81.188.185', 1584666251, 1585012332, 1, 76, 6, 2);
INSERT INTO `shop_admin_user` VALUES (15, '张屹浩', '1e10c1542a7eee55f6799a61b59875ff', '', '218.81.23.100', '218.81.188.185', 1584928594, 1585011443, 1, 36, 4, 3);
INSERT INTO `shop_admin_user` VALUES (16, '郑启元', '1e10c1542a7eee55f6799a61b59875ff', '', '218.79.227.218', '218.79.227.218', 1584928760, 1585011117, 1, 38, 7, 2);
INSERT INTO `shop_admin_user` VALUES (17, '季宇', '1e10c1542a7eee55f6799a61b59875ff', '', '218.81.188.185', '218.81.188.185', 1584950570, 1585009542, 1, 14, 6, 2);
INSERT INTO `shop_admin_user` VALUES (18, '王虓昊', '1e10c1542a7eee55f6799a61b59875ff', '', '114.88.107.190', '114.88.107.190', 1584928451, 1585011639, 1, 16, 4, 2);

-- ----------------------------
-- Table structure for theme
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '专题名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '专题描述',
  `topic_img_id` int(11) NOT NULL COMMENT '主题图，外键',
  `delete_time` int(11) DEFAULT NULL,
  `head_img_id` int(11) NOT NULL COMMENT '专题列表页，头图',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '主题信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of theme
-- ----------------------------
INSERT INTO `theme` VALUES (1, '专题栏位一', '美味水果世界', 16, NULL, 49, NULL);
INSERT INTO `theme` VALUES (2, '专题栏位二', '新品推荐', 17, NULL, 50, NULL);
INSERT INTO `theme` VALUES (3, '专题栏位三', '做个干物女', 18, NULL, 18, NULL);

-- ----------------------------
-- Table structure for theme_product
-- ----------------------------
DROP TABLE IF EXISTS `theme_product`;
CREATE TABLE `theme_product`  (
  `theme_id` int(11) NOT NULL COMMENT '主题外键',
  `product_id` int(11) NOT NULL COMMENT '商品外键',
  PRIMARY KEY (`theme_id`, `product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '主题所包含的商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of theme_product
-- ----------------------------
INSERT INTO `theme_product` VALUES (1, 2);
INSERT INTO `theme_product` VALUES (1, 5);
INSERT INTO `theme_product` VALUES (1, 8);
INSERT INTO `theme_product` VALUES (1, 10);
INSERT INTO `theme_product` VALUES (1, 12);
INSERT INTO `theme_product` VALUES (2, 1);
INSERT INTO `theme_product` VALUES (2, 2);
INSERT INTO `theme_product` VALUES (2, 3);
INSERT INTO `theme_product` VALUES (2, 5);
INSERT INTO `theme_product` VALUES (2, 6);
INSERT INTO `theme_product` VALUES (2, 16);
INSERT INTO `theme_product` VALUES (2, 33);
INSERT INTO `theme_product` VALUES (3, 15);
INSERT INTO `theme_product` VALUES (3, 18);
INSERT INTO `theme_product` VALUES (3, 19);
INSERT INTO `theme_product` VALUES (3, 27);
INSERT INTO `theme_product` VALUES (3, 30);
INSERT INTO `theme_product` VALUES (3, 31);

-- ----------------------------
-- Table structure for third_app
-- ----------------------------
DROP TABLE IF EXISTS `third_app`;
CREATE TABLE `third_app`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '应用app_id',
  `app_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '应用secret',
  `app_description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '应用程序描述',
  `scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '应用权限',
  `scope_description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限描述',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '访问API的各应用账号密码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of third_app
-- ----------------------------
INSERT INTO `third_app` VALUES (1, 'starcraft', '777*777', 'CMS', '32', 'Super', NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `openid`(`openid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'oTmIB5e7Ldrx2G8o0hAa9rlEBzR8', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收获人姓名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '市',
  `country` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '区',
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '详细地址',
  `delete_time` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '外键',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES (1, '刘海洋', '13382322040', '上海市', '闸北区', '永和一村', '汶水路200浩', NULL, 2, 1600244637);

SET FOREIGN_KEY_CHECKS = 1;
