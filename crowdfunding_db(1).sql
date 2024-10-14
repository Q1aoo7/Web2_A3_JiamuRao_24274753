
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE IF NOT EXISTS `crowdfunding_db`
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE `crowdfunding_db`;


DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(11) NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `category` VALUES (1, 'medical treatment');
INSERT INTO `category` VALUES (2, 'education');
INSERT INTO `category` VALUES (3, 'social impact');
INSERT INTO `category` VALUES (4, 'environmental protection');


DROP TABLE IF EXISTS `donation`;
CREATE TABLE `donation`  (
  `donation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '时间',
  `amount` decimal(13, 2) NULL DEFAULT NULL COMMENT '捐赠金额',
  `giver` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '捐赠人',
  `fundraiser_id` bigint(12) NULL DEFAULT NULL,
  PRIMARY KEY (`donation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `donation` VALUES (1, '2024-10-10 19:12:47', 12.00, 'jack', 1);
INSERT INTO `donation` VALUES (2, '2024-10-10 19:13:18', 20.00, 'marry', 1);
INSERT INTO `donation` VALUES (3, '2024-10-11 19:13:34', 30.00, 'James', 1);
INSERT INTO `donation` VALUES (4, '2024-10-11 19:14:34', 100.00, 'Emily', 1);
INSERT INTO `donation` VALUES (5, '2024-10-11 19:14:48', 200.00, 'Michael', 1);
INSERT INTO `donation` VALUES (6, '2024-10-11 19:15:11', 300.00, 'Olivia', 1);
INSERT INTO `donation` VALUES (7, '2024-10-11 19:15:25', 400.00, 'William', 1);
INSERT INTO `donation` VALUES (8, '2024-10-11 19:15:25', 60.00, 'Sophia', 1);
INSERT INTO `donation` VALUES (9, '2024-10-11 19:15:25', 40.00, 'Alexander', 1);
INSERT INTO `donation` VALUES (10, '2024-10-11 19:15:25', 99.00, 'Isabella', 1);
INSERT INTO `donation` VALUES (11, '2024-10-11 21:05:19', 100.00, 'my name is zhangsan', 3);
INSERT INTO `donation` VALUES (12, '2024-10-12 09:52:00', 100.00, 'alis', 1);
INSERT INTO `donation` VALUES (13, '2024-10-12 09:52:41', 300.00, 'mingming', 1);
INSERT INTO `donation` VALUES (14, '2024-10-12 09:55:20', 300.00, 'mingming', 1);
INSERT INTO `donation` VALUES (15, '2024-10-12 09:55:26', 300.00, 'zz', 1);
INSERT INTO `donation` VALUES (16, '2024-10-12 10:38:20', 300.00, 'cc', 1);
INSERT INTO `donation` VALUES (17, '2024-10-12 10:38:34', 400.00, 'hh', 1);
INSERT INTO `donation` VALUES (18, '2024-10-12 10:38:46', 99.00, 'jj', 1);
INSERT INTO `donation` VALUES (19, '2024-10-12 10:38:55', 100.00, 'll', 1);
INSERT INTO `donation` VALUES (20, '2024-10-12 10:39:10', 88.00, 'qq', 1);
INSERT INTO `donation` VALUES (21, '2024-10-12 18:35:13', 200.00, 'lisi', 3);
INSERT INTO `donation` VALUES (22, '2024-10-12 18:35:37', 2000.00, 'wangwu', 1);


DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `organizer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织者',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `target_funding` decimal(13, 2) NULL DEFAULT NULL COMMENT '目标资金',
  `current_funding` decimal(13, 2) NULL DEFAULT 0.00 COMMENT '当前资金',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `active` int(11) NULL DEFAULT 0 COMMENT '活跃度',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `category_id` bigint(12) NULL DEFAULT NULL COMMENT '类型ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `fundraiser` VALUES (1, 'Richard', 'medical treatment', 10000.00, 5348.00, 'Hangzhou', 47, 0, 1);
INSERT INTO `fundraiser` VALUES (2, 'Mary', 'education', 10000.00, 0.00, 'Beijing', 9, 0, 2);
INSERT INTO `fundraiser` VALUES (3, 'Finn', 'social impact', 10000.00, 200.00, 'Shanghai', 64, 0, 3);
INSERT INTO `fundraiser` VALUES (4, 'Bob', 'Educational Fundraising', 10000.00, 0.00, 'Dalian', 2, 0, 2);
INSERT INTO `fundraiser` VALUES (5, 'Jame', 'Social Security Donations', 10000.00, 0.00, 'Shanghai', 2, 0, 1);
INSERT INTO `fundraiser` VALUES (6, 'Chris', 'Hope to donate to primary schools', 10000.00, 0.00, 'Beijing', 2, 0, 2);
INSERT INTO `fundraiser` VALUES (7, 'Lisa', 'Social Sunshine Project', 10000.00, 0.00, 'Hangzhou', 2, 0, 3);
INSERT INTO `fundraiser` VALUES (8, 'Lusi', 'Social infrastructure', 10000.00, 0.00, 'Shaoxing', 2, 0, 2);
INSERT INTO `fundraiser` VALUES (9, 'Frederick', 'Clean up marine debris', 10000.00, 0.00, 'Shanghai', 2, 0, 4);
INSERT INTO `fundraiser` VALUES (11, 'alis', 'zzc', 30000.00, 0.00, 'alis', 0, 0, 1);
INSERT INTO `fundraiser` VALUES (13, 'mary', 'cc', 10000.00, 0.00, 'mary', 2, 1, 1);
INSERT INTO `fundraiser` VALUES (14, 'ook', 'zxcc', 10000.00, 0.00, 'city', 0, 0, 3);
INSERT INTO `fundraiser` VALUES (15, 'jack', 'ccvt', 20000.00, 0.00, 'Beijing', 1, 1, 2);

SET FOREIGN_KEY_CHECKS = 1;
