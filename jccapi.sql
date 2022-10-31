/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 100425
 Source Host           : localhost:3306
 Source Schema         : jccapi

 Target Server Type    : MySQL
 Target Server Version : 100425
 File Encoding         : 65001

 Date: 19/10/2022 14:07:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `brands_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (1, 'Adidas', 'adidas', 'active', '2020-08-14 11:23:00', '2020-08-14 11:23:00');
INSERT INTO `brands` VALUES (2, 'Nike', 'nike', 'active', '2020-08-14 11:23:08', '2020-08-14 11:23:08');
INSERT INTO `brands` VALUES (3, 'Kappa', 'kappa', 'active', '2020-08-14 11:23:48', '2020-08-14 11:23:48');
INSERT INTO `brands` VALUES (4, 'Prada', 'prada', 'active', '2020-08-14 11:24:08', '2020-08-14 11:24:08');
INSERT INTO `brands` VALUES (7, 'Bandung', 'bandung', 'active', '2022-10-09 12:24:25', '2022-10-09 12:24:25');
INSERT INTO `brands` VALUES (8, 'Sumedang', 'sumedang', 'active', '2022-10-09 12:24:34', '2022-10-09 12:24:34');
INSERT INTO `brands` VALUES (9, 'Subang', 'subang', 'active', '2022-10-09 12:24:59', '2022-10-09 12:24:59');
INSERT INTO `brands` VALUES (10, 'Cianjur', 'cianjur', 'active', '2022-10-09 12:25:07', '2022-10-09 12:25:07');
INSERT INTO `brands` VALUES (11, 'Bogor', 'bogor', 'active', '2022-10-09 12:25:15', '2022-10-09 12:25:15');
INSERT INTO `brands` VALUES (12, 'Soreang1', 'soreang', 'active', '2022-10-13 00:43:06', '2022-10-13 00:47:46');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (9, '2022_10_10_030524_create_user_details_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('008f439abe2b26f5a77ca5ad3a64ffbb231200840624b0be4390afd9610f7cf8c3df5bfdf8ef6607', 2, 1, 'API Token', '[]', 1, '2022-10-11 04:18:31', '2022-10-11 04:18:31', '2023-10-11 04:18:31');
INSERT INTO `oauth_access_tokens` VALUES ('053055456d03c759ebdedfc91fdbf1f4a960bfec982c9294dfe4060a47c137ad629a1738cdf37efa', 2, 1, 'API Token', '[]', 1, '2022-10-11 04:35:34', '2022-10-11 04:35:34', '2023-10-11 04:35:34');
INSERT INTO `oauth_access_tokens` VALUES ('05aa0541e8b6f88653845f042767d0102f0369e163aeb9a77daaa84b9661fd8fe88ae5e746fbba63', 3, 1, 'API Token', '[]', 0, '2022-10-12 14:21:56', '2022-10-12 14:21:56', '2023-10-12 14:21:56');
INSERT INTO `oauth_access_tokens` VALUES ('221873afc3575bca5af8699c380b2b1e39c8360b866410e263f78ac8f73f78f94888465ab75bf105', 2, 1, 'API Token', '[]', 1, '2022-10-11 04:25:14', '2022-10-11 04:25:14', '2023-10-11 04:25:14');
INSERT INTO `oauth_access_tokens` VALUES ('47d312e9dcbcf903e26d22dd57c0875532395de902b7936f87b1eeccd4b1a1278ee3631b7f768b03', 2, 1, 'API Token', '[]', 1, '2022-10-11 04:33:12', '2022-10-11 04:33:12', '2023-10-11 04:33:12');
INSERT INTO `oauth_access_tokens` VALUES ('6087ab4405a50ceee99f4d521a97cd1064fb2bc1bd996f015d21d5934dc916d3a8c49e5334a90020', 2, 1, 'API Token', '[]', 1, '2022-10-11 04:29:53', '2022-10-11 04:29:53', '2023-10-11 04:29:53');
INSERT INTO `oauth_access_tokens` VALUES ('66d46323e2a53205022e71cb9dbd138ffd58d0e849adb525e930870ca758edeaf60a72104805b2fa', 2, 1, 'API Token', '[]', 0, '2022-10-11 04:41:14', '2022-10-11 04:41:14', '2023-10-11 04:41:14');
INSERT INTO `oauth_access_tokens` VALUES ('7a8d336ab0d1aae91c043bc675b12b815c2c8adca9a2be83940b7d15fb2242944b3282cf1c0ceb22', 2, 1, 'API Token', '[]', 1, '2022-10-11 04:32:23', '2022-10-11 04:32:23', '2023-10-11 04:32:23');
INSERT INTO `oauth_access_tokens` VALUES ('b7d5026caa3392369fcd8970d99ffde8a0a2053aec10c481cfe7b4102923e1be4046b8ecb63225c1', 2, 1, 'API Token', '[]', 0, '2022-10-11 06:19:01', '2022-10-11 06:19:01', '2023-10-11 06:19:01');
INSERT INTO `oauth_access_tokens` VALUES ('c03f1299fa2a770d46f7afcb7a6e4baf1788c057ef2722229b5b1d7a6a83665df4bff1004df1755b', 2, 1, 'API Token', '[]', 0, '2022-10-11 06:31:44', '2022-10-11 06:31:44', '2023-10-11 06:31:44');
INSERT INTO `oauth_access_tokens` VALUES ('d13af6d44bb44a96f70ac6b0cb944032423671dcdea873a95852e4808010786a5e4ee9fdbf2f5fcf', 2, 1, 'API Token', '[]', 1, '2022-10-11 03:45:11', '2022-10-11 03:45:11', '2023-10-11 03:45:11');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'JCC Laravel Personal Access Client', 'VYpQ23Mlu933WxSkzhS9OXw63gWAiDEPoRNdmBj1', NULL, 'http://localhost', 1, 0, 0, '2022-10-11 03:36:58', '2022-10-11 03:36:58');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'JCC Laravel Password Grant Client', '55IppitDVH2Nn6LQKS9CsFkn6IKHcVI7NTq6LorA', 'users', 'http://localhost', 0, 1, 0, '2022-10-11 03:36:58', '2022-10-11 03:36:58');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2022-10-11 03:36:58', '2022-10-11 03:36:58');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for user_details
-- ----------------------------
DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_details_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_details
-- ----------------------------
INSERT INTO `user_details` VALUES (1, '2022-10-11 03:36:52', NULL, 1, 'Cikutra', '081573650396', 'Turu', NULL);
INSERT INTO `user_details` VALUES (2, '2022-10-11 03:36:53', '2022-10-11 06:50:15', 2, 'bandung', '081', 'basket', '202210110650152.jpg');
INSERT INTO `user_details` VALUES (3, '2022-10-11 03:36:53', NULL, 3, 'UeJFD2F98X', 'EJ0xkOH4eT', '0I1ZjsgWbV', NULL);
INSERT INTO `user_details` VALUES (4, '2022-10-11 03:36:53', NULL, 4, '86WMASSRC0', 'D75YnONX6r', 'gcMpvvTiRJ', NULL);
INSERT INTO `user_details` VALUES (5, '2022-10-11 03:36:53', NULL, 5, 'gkd92ug7co', 'zQqsAgdY2A', 'R07YYRRoz5', NULL);
INSERT INTO `user_details` VALUES (6, '2022-10-11 03:36:53', NULL, 6, 'wuxrmCCaCR', 'uv7uRD11ok', 'CXkllu4ohy', NULL);
INSERT INTO `user_details` VALUES (7, '2022-10-11 03:36:53', NULL, 7, '2xwmRTpPyN', 'yatqQ6hAH5', 'TQMwPa1I94', NULL);
INSERT INTO `user_details` VALUES (8, '2022-10-11 03:36:53', NULL, 8, 'UyuW7jUsVC', 'U3GmjH2g9x', 'IjVVR4naFY', NULL);
INSERT INTO `user_details` VALUES (9, '2022-10-11 03:36:53', NULL, 9, 'xqYF8ZxvhG', '5hdp4JjS3y', 'mSZ4QNdk76', NULL);
INSERT INTO `user_details` VALUES (10, '2022-10-11 03:36:53', NULL, 10, '013w1EdvXe', 'pJ6jUVW6p3', 'sdoPBHT7mu', NULL);
INSERT INTO `user_details` VALUES (11, '2022-10-11 03:36:53', NULL, 11, 'bcIGMhmO9u', 'jFRI1YgKEB', 'teGfDO7V1W', NULL);
INSERT INTO `user_details` VALUES (12, '2022-10-11 03:36:54', NULL, 12, 'SC1ejoVVj4', 'F1NUKfrLfW', 'U6lfsSMMTe', NULL);
INSERT INTO `user_details` VALUES (13, '2022-10-11 03:36:54', NULL, 13, 'LON81ORgUI', 'e8M4T3l12A', 'LD69Xc387s', NULL);
INSERT INTO `user_details` VALUES (14, '2022-10-11 03:36:54', NULL, 14, 'EdBiAJcMYW', 'QtKkduWa6J', 'RpJIJbgNAv', NULL);
INSERT INTO `user_details` VALUES (15, '2022-10-11 03:36:54', NULL, 15, 'VA5sjsctw0', 'u2x06qxMLg', 'qmSISNwqAF', NULL);
INSERT INTO `user_details` VALUES (16, '2022-10-11 03:36:54', NULL, 16, 'N6F39TftGI', 'hJXGvaqz1q', 'oLYh6pAsUG', NULL);
INSERT INTO `user_details` VALUES (17, '2022-10-11 03:36:54', NULL, 17, '9ykkqDhjHv', '1mYYohKeMl', 'QHmpWK53gB', NULL);
INSERT INTO `user_details` VALUES (18, '2022-10-11 03:36:54', NULL, 18, 'uCnTy8XX62', 'xLDBj4JZiC', 'wZfmA2PWL2', NULL);
INSERT INTO `user_details` VALUES (19, '2022-10-11 03:36:54', NULL, 19, 't2NizZJu1U', 'obJ602P21a', 'Gqt4YjXeXr', NULL);
INSERT INTO `user_details` VALUES (20, '2022-10-11 03:36:55', NULL, 20, 'iXXgytN5nw', 'iMCUWI2bUn', 'csSUj7mEPc', NULL);
INSERT INTO `user_details` VALUES (21, '2022-10-11 03:36:55', NULL, 21, 'LmfgrUDpio', 'qN4ZfmxUjw', 'xTxRrXo2SK', NULL);
INSERT INTO `user_details` VALUES (22, '2022-10-11 03:36:55', NULL, 22, 'mbinnyJOze', 'DhiuEgZewQ', 'XB5tsN0Zzg', NULL);
INSERT INTO `user_details` VALUES (23, '2022-10-11 03:36:55', NULL, 23, '6JAIYuKpHS', '6sPNqb4xof', 'ivvTco9dRD', NULL);
INSERT INTO `user_details` VALUES (24, '2022-10-11 03:36:55', NULL, 24, 'cuJQvr3ixC', 'vd2F78ADsF', 'ajdN5lhGDI', NULL);
INSERT INTO `user_details` VALUES (25, '2022-10-11 03:36:55', NULL, 25, 'EvCs8kkl9k', 'hWo4NWsCNR', 'toIiFawSfz', NULL);
INSERT INTO `user_details` VALUES (26, '2022-10-11 03:36:55', NULL, 26, 'DHMxfi9KcT', 'tfGSU3Id0F', 'by3UXjiLPk', NULL);
INSERT INTO `user_details` VALUES (27, '2022-10-11 03:36:55', NULL, 27, 'b6AUQtieJb', 'dEQukrQ92J', 'PLK8jyULnS', NULL);
INSERT INTO `user_details` VALUES (28, '2022-10-11 03:36:55', NULL, 28, 'fh4nT8Xf6x', 'SrP66d09Eq', 'lRzSCph5KJ', NULL);
INSERT INTO `user_details` VALUES (29, '2022-10-11 03:36:56', NULL, 29, 'HyNkzoeB3R', 'PO2gdvVm9q', 'ogfk1t8NCR', NULL);
INSERT INTO `user_details` VALUES (30, '2022-10-11 03:36:56', NULL, 30, 'vywpX0SOvb', 'zKyl1LjiGe', 'SS0aweLVYC', NULL);
INSERT INTO `user_details` VALUES (31, '2022-10-11 03:36:56', NULL, 31, 'boNeSOzoLx', 'xjVTrIyccQ', 'aD3jorXLN6', NULL);
INSERT INTO `user_details` VALUES (32, '2022-10-11 03:36:56', NULL, 32, '9mOjKk0ilF', 'WoTsCxd4sN', 'QgabJOHTem', NULL);
INSERT INTO `user_details` VALUES (33, '2022-10-11 03:36:56', NULL, 33, '649N31dWFk', 'uf9xiBitrs', 'Y0VqeOLBpF', NULL);
INSERT INTO `user_details` VALUES (34, '2022-10-11 03:36:56', NULL, 34, 'NXAEwJYkrs', 'iSE4g5ZJiX', 'Il6yqb67mu', NULL);
INSERT INTO `user_details` VALUES (35, '2022-10-11 03:36:56', NULL, 35, 'EFNF5fKkci', 'L7oGTStatF', 'yWizF5bqAW', NULL);
INSERT INTO `user_details` VALUES (36, '2022-10-11 03:36:56', NULL, 36, '53TOAIaGaS', 'e5WOg7uLwb', 'YbuhYaNYWC', NULL);
INSERT INTO `user_details` VALUES (37, '2022-10-11 03:36:56', NULL, 37, 'SwkG34SmQz', 'X5fzsbQ8Vd', 'gdi3t4kzBr', NULL);
INSERT INTO `user_details` VALUES (38, '2022-10-11 03:36:56', NULL, 38, 'a3KJKWhXOT', 'ydWNcHVRyG', 'HbAuLwzLlx', NULL);
INSERT INTO `user_details` VALUES (39, '2022-10-11 03:36:57', NULL, 39, '0z3HkBD4CM', 'ajg5JQuVIm', 'oLyzleksrl', NULL);
INSERT INTO `user_details` VALUES (40, '2022-10-11 03:36:57', NULL, 40, 'h2TIFXbju8', 'lWzF4AtRSf', 'beYURYZfJi', NULL);
INSERT INTO `user_details` VALUES (41, '2022-10-11 03:36:57', NULL, 41, 'I3f4y0l0WP', 'UeSZWPEXQZ', 'cqucfubJDG', NULL);
INSERT INTO `user_details` VALUES (42, '2022-10-11 03:36:57', NULL, 42, '8eNtoSt2it', '1qkoQQ4HQu', 'C8lAERNm6p', NULL);
INSERT INTO `user_details` VALUES (43, '2022-10-11 03:36:57', NULL, 43, 'NkrSX0Cgq8', 'CfhFD3MWfv', 'oRHFGuAHWF', NULL);
INSERT INTO `user_details` VALUES (44, '2022-10-11 03:36:57', NULL, 44, 'xgyp7orPPy', 'nWsftI2I82', 'swxxqiZGEv', NULL);
INSERT INTO `user_details` VALUES (45, '2022-10-11 03:36:57', NULL, 45, 'nWFzRTJTYF', 'znbeLrX43Y', 'Yi7jXLNunV', NULL);
INSERT INTO `user_details` VALUES (46, '2022-10-11 03:36:57', NULL, 46, 'QQAa3A0WtJ', 'FH4ncxbNaT', 'c6Mr8JayoX', NULL);
INSERT INTO `user_details` VALUES (47, '2022-10-11 03:36:57', NULL, 47, 'ekL9WUb8WV', 'QFhgrk6TKs', 'bl3TywEZvv', NULL);
INSERT INTO `user_details` VALUES (48, '2022-10-11 03:36:57', NULL, 48, 'e42eaWiF0W', 'xYiivFuFfj', 'ayTLe3uSWK', NULL);
INSERT INTO `user_details` VALUES (49, '2022-10-11 03:36:57', NULL, 49, 'T2gqTQjQlA', 'NX5NDaMIv1', 'nZrlgYH7cc', NULL);
INSERT INTO `user_details` VALUES (50, '2022-10-11 03:36:58', NULL, 50, 'pttLUxzKSr', '5sMMRqHKtj', 'nFmTpC2b9Q', NULL);
INSERT INTO `user_details` VALUES (51, '2022-10-11 03:36:58', NULL, 51, 'aBUqNjPbSo', '7sNNl1U7dU', 'ZwW2AmSfjc', NULL);
INSERT INTO `user_details` VALUES (52, '2022-10-11 03:36:58', NULL, 52, 'uUmC5p3qLx', 'MjJkkfnolJ', 'B0luS0OXRP', NULL);
INSERT INTO `user_details` VALUES (53, '2022-10-12 14:56:55', NULL, 53, 'bandung', '081', 'bola', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Rangga', 'ranggaadipratama96@yahoo.com', NULL, '$2y$10$NFDN4gdJfu3V0t09YutyAuN78I0RXbEeRQvVhHAv6/4ql3KMCLury', NULL, '2022-10-11 03:36:52', NULL, NULL);
INSERT INTO `users` VALUES (2, 'pinan1', 'ckshlerin@example.com', NULL, '$2y$10$m9Fncc/QmHTBfNXDBFjYme/RNFtcgu3ckyWWWQDsrRzBx9A.P5bk2', NULL, '2022-10-11 03:36:53', '2022-10-11 06:50:15', NULL);
INSERT INTO `users` VALUES (3, 'Damian Runte', 'reynold62@example.net', NULL, '$2y$10$1ZSCMtKSuxzKLLvY8LLgeu9GkiQr4itccLmu3/DF5fDyhOx9Mj7KW', NULL, '2022-10-11 03:36:53', NULL, NULL);
INSERT INTO `users` VALUES (4, 'Orpha O\'Kon', 'bednar.jazmin@example.com', NULL, '$2y$10$pZjKSxZBcNjG/oIkn5LhWOBcXoGeD82TWZb8BmuZiZ6fdUzLqnmPu', NULL, '2022-10-11 03:36:53', NULL, NULL);
INSERT INTO `users` VALUES (5, 'Dr. Lora Lindgren', 'dariana.romaguera@example.com', NULL, '$2y$10$rypdlr4z3g30ba4yxKR3JONvjnm8WHXeVu9ALhjSvFU27GeN0qXI2', NULL, '2022-10-11 03:36:53', NULL, NULL);
INSERT INTO `users` VALUES (6, 'Consuelo Muller', 'major83@example.org', NULL, '$2y$10$AN7IJ.0526Ov6y46HTig7eofJakmaT.X1ukXfnSQWSvj4zcmrjiPK', NULL, '2022-10-11 03:36:53', NULL, NULL);
INSERT INTO `users` VALUES (7, 'Giovanny Koelpin', 'nienow.norbert@example.net', NULL, '$2y$10$SX7D/TMywHeb9jabXhq3AujHSZfLQo7LiobmQEh82ND5ddwLCPM0i', NULL, '2022-10-11 03:36:53', NULL, NULL);
INSERT INTO `users` VALUES (8, 'Kali Kunde', 'littel.brooklyn@example.org', NULL, '$2y$10$Fke/y07VlGjibetgRblfq.52STrnFJ282uF8/TgwQ9I16xs6cf4Xm', NULL, '2022-10-11 03:36:53', NULL, NULL);
INSERT INTO `users` VALUES (9, 'Greyson Bernier', 'zboncak.kelley@example.net', NULL, '$2y$10$a1v2GtCQUqOirhHhdPCsk./SPvtmjW3PWLkPcbRfyk2Gk/.MegRyG', NULL, '2022-10-11 03:36:53', NULL, NULL);
INSERT INTO `users` VALUES (10, 'Amaya Adams III', 'gkub@example.net', NULL, '$2y$10$vScSWvlOOnkBKtXla6WCqewvSpigEiw2tUBXPt4H4xyk6ruxLGyc2', NULL, '2022-10-11 03:36:53', NULL, NULL);
INSERT INTO `users` VALUES (11, 'Elenora Lubowitz', 'gudrun.smitham@example.net', NULL, '$2y$10$LexkJqQu1C03uRDyLF1q0uIscemj.oyaeAUCBsnU/RhqllSTKGRp2', NULL, '2022-10-11 03:36:53', NULL, NULL);
INSERT INTO `users` VALUES (12, 'Zoie Cassin I', 'trantow.elisa@example.net', NULL, '$2y$10$x7wRd/o.ix9vrq3jZ5lyueZU68VuJq5d9fgj8vChLUrB/xrwZbvqm', NULL, '2022-10-11 03:36:54', NULL, NULL);
INSERT INTO `users` VALUES (13, 'Nelle Boyer', 'dickinson.cristina@example.net', NULL, '$2y$10$/rPCZHgycG3e2jmTi5qEDeKYGCD8YIDGt.Su0zsLPr8HVXqPz8QUm', NULL, '2022-10-11 03:36:54', NULL, NULL);
INSERT INTO `users` VALUES (14, 'Monte Brekke', 'elwin.thompson@example.com', NULL, '$2y$10$jzytYDJ16DOm73i806cg5envJ.rzY7/vu3lnCVSV7hRAjaTjccQKC', NULL, '2022-10-11 03:36:54', NULL, NULL);
INSERT INTO `users` VALUES (15, 'Mr. Jerrod Okuneva', 'waters.aliyah@example.org', NULL, '$2y$10$40.UcVWa3LP43BLJUGnIo.LHSuzaMNIfN.bMvQ.VX5AAWjv.W0Phy', NULL, '2022-10-11 03:36:54', NULL, NULL);
INSERT INTO `users` VALUES (16, 'Felipe Beer', 'demario.reilly@example.com', NULL, '$2y$10$UCNO8ep1nZo0EV/09kXDTuaCZkq.zApZ76JTJqyAbDIxHhIv1m40G', NULL, '2022-10-11 03:36:54', NULL, NULL);
INSERT INTO `users` VALUES (17, 'Dr. Lonny Ernser', 'cleffler@example.com', NULL, '$2y$10$kJlryBX8gAb5r/9q/bvA3uV95wXtO4YnEP9bShjzmwDdW7SEggkwG', NULL, '2022-10-11 03:36:54', NULL, NULL);
INSERT INTO `users` VALUES (18, 'Mr. Virgil Gibson V', 'charles.oreilly@example.com', NULL, '$2y$10$x3JwdDvV/0dQOQVPMnuMf.LydEfxT.OtdACpSkQJTVV7G27QmFnG6', NULL, '2022-10-11 03:36:54', NULL, NULL);
INSERT INTO `users` VALUES (19, 'Hilda Schulist', 'schaden.cathryn@example.org', NULL, '$2y$10$Ki7sq3y6Q0FOmUYMiqK5v.L3fSLFatlq2PvRWncWwQ23lYM/EcBbC', NULL, '2022-10-11 03:36:54', NULL, NULL);
INSERT INTO `users` VALUES (20, 'Jody Jacobs', 'jesse34@example.org', NULL, '$2y$10$0jwcvG3n6McxWuPAmmGDvevUR483NHAKD/G5UiDRCphBCI.p8f66G', NULL, '2022-10-11 03:36:55', NULL, NULL);
INSERT INTO `users` VALUES (21, 'Prof. D\'angelo Mills', 'camron.johnson@example.org', NULL, '$2y$10$r5T1Rt1GQrY6sLAGDdI5YO8T34PCtN/onliIKXBdNJ8/8XJnjscOy', NULL, '2022-10-11 03:36:55', NULL, NULL);
INSERT INTO `users` VALUES (22, 'Mr. Fausto Gibson', 'schimmel.jaydon@example.org', NULL, '$2y$10$dhq3tl.o5NXptuD4/JCyqOcEjpR/.EwAMWEUCD0RFKLOv18tGqzQC', NULL, '2022-10-11 03:36:55', NULL, NULL);
INSERT INTO `users` VALUES (23, 'Nichole Jones', 'king.reynolds@example.net', NULL, '$2y$10$TuR0lYhSyKLfd47RiZcU1.ctT7SXacB1V01imbkys4AhTkrVndXyW', NULL, '2022-10-11 03:36:55', NULL, NULL);
INSERT INTO `users` VALUES (24, 'Fred Fay', 'grayson.lesch@example.net', NULL, '$2y$10$j/2p1Sru4zUEUpxf85jHhe9Ko1p7JnqjcaAeZciZpMRzHrfbqWMqa', NULL, '2022-10-11 03:36:55', NULL, NULL);
INSERT INTO `users` VALUES (25, 'Prof. Yolanda Bashirian', 'cummerata.delores@example.net', NULL, '$2y$10$pOCJMf9dVU233EG8EXMm7uDswmPfviPWCj69KSOigT8D3o0c0VZH.', NULL, '2022-10-11 03:36:55', NULL, NULL);
INSERT INTO `users` VALUES (26, 'Doris McClure', 'kacie.dach@example.net', NULL, '$2y$10$EivD2A/KyeTFNSCzKLinEOOg7K/SDyGGEwAyZVfNQ8s2QZmL1yCyq', NULL, '2022-10-11 03:36:55', NULL, NULL);
INSERT INTO `users` VALUES (27, 'Kiel Murray', 'cortez47@example.net', NULL, '$2y$10$ws2pl/phGQl4Ga3aR/WUou.2hpgzBDnfeHerTJ5I6NMFZXg9E0//O', NULL, '2022-10-11 03:36:55', NULL, NULL);
INSERT INTO `users` VALUES (28, 'Mr. Elmer Bogan V', 'daphnee.wisoky@example.net', NULL, '$2y$10$2p/oln2/OHSSqmLwNTHyLuJJpwYvTvBHu.m3TYNIEy95Z2fDXKDe.', NULL, '2022-10-11 03:36:55', NULL, NULL);
INSERT INTO `users` VALUES (29, 'Prof. Donny Schowalter Sr.', 'imani64@example.net', NULL, '$2y$10$S5iiy8J2fn4a2SQ9ItdiOOYdMzxfJdTVqeOMafw6hcWCTMHue1Yau', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (30, 'Jessika Dietrich V', 'dean.zulauf@example.com', NULL, '$2y$10$0Fblhf2I40mL577p8DlvZ.rEhTZ8uQqdbehrkNOOMJI3JWZY1.mw6', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (31, 'Zechariah VonRueden', 'shawna.jenkins@example.com', NULL, '$2y$10$5FZQsFG5Fsat3E9Op1QD9OgAM.I4MTFnzkM.eIJ8OZ0TGE.ET6.Qi', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (32, 'Mckenna Ritchie V', 'vanderson@example.net', NULL, '$2y$10$MHa9y3j9DX.ZRZHpax.4zetnqCTTqrMf6EUeoB93AZDESJ6Y2xrfO', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (33, 'Lorenz Adams', 'jeanne.fahey@example.com', NULL, '$2y$10$XTLNvGQ4e9LuvyMsFh.zu.Q5evFS0VOUH745CrcvV9VCMDkw1mAhK', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (34, 'Dr. Rahul Barrows PhD', 'jovan93@example.org', NULL, '$2y$10$KPxHo6JRVcxvMZYdWcUuH.aS2WGVUZmJ/y7z0HQb0OtVMjmwmLM5W', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (35, 'Arnulfo Schowalter', 'matteo32@example.org', NULL, '$2y$10$ir/ENJNPFZR.fp8KvkRZMuO8D6EoIem1BSfdTR7X4RQAMCNWHGoQm', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (36, 'Mittie Kuhn', 'friesen.jeff@example.net', NULL, '$2y$10$JP.EjhPbGadHmEG3zo9DtuYIBVi5s8VnafXN54c1/xhEApXt7YvFC', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (37, 'Earnestine Schneider V', 'milton.oberbrunner@example.net', NULL, '$2y$10$wMm.yZrdfj.McdpNXfLm9Oqf7Kmi6IKvwwPVcgTrH3ycEbM.j4PhK', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (38, 'Consuelo Conroy Sr.', 'fadel.ena@example.net', NULL, '$2y$10$Azke0ybDWNY.oSHg9VRQe.jg4FByx8T/CfCjGjXOHcIeGid7VofZW', NULL, '2022-10-11 03:36:56', NULL, NULL);
INSERT INTO `users` VALUES (39, 'Theron Emard', 'annette47@example.org', NULL, '$2y$10$Sm5ROeIGgmYeCZTVbrcb3exR2B7pX3LptLuKgK5FyB3aK4vS7ZUZK', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (40, 'Mrs. Caitlyn Borer', 'balistreri.mathias@example.com', NULL, '$2y$10$/YCdVxDYINoCXF7vQRtnLeE6W6adXYjwmTGL1E9UZWVz34QbYAoJ.', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (41, 'Mrs. Hilma Emmerich DVM', 'anissa.veum@example.com', NULL, '$2y$10$XVNGIMjMvluCaewlHLgUOu7tjJCsMTBJ7VnHDUIJj/Lt4bh.4uUPm', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (42, 'Delilah DuBuque Sr.', 'deonte57@example.net', NULL, '$2y$10$H1EGaTNN1mjLfziAQrexTehHrMnFcMqzH7iuztUj.cjsbQX3xMx82', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (43, 'Prof. Guillermo Cormier', 'magdalen.effertz@example.com', NULL, '$2y$10$LdnMngjCmrAGU9sYzjC3jOjvbgMfCcih7RjDyEH3euWozXJQw3Cq.', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (44, 'Herta Zemlak', 'adah82@example.org', NULL, '$2y$10$51s9Z/Y3sqDsgSAq6Oneie43VqcNj.AaMtxFWM0XdefuX4gOQFo4q', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (45, 'Rogelio Shields', 'otis.rogahn@example.net', NULL, '$2y$10$eDdgkEAn85D1iM1DyCehGut/wMtFXBGRRC3v1clEh4ShnbmkXtubW', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (46, 'Delta Lebsack', 'reynold.okeefe@example.net', NULL, '$2y$10$E28SSc/fcUseRbEDWSp/JeuzC/ncOQ2Pq0QlXpbPUuVTFl5bQg4aC', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (47, 'Prof. Marion Marquardt IV', 'davis.lupe@example.org', NULL, '$2y$10$dQ8QDJDVNeugSr.ouJFGJux2GbwQErPwd7gMdKnetmVQvycOfLj6W', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (48, 'Elvera Hauck', 'vmurazik@example.org', NULL, '$2y$10$NkdahOSqYLBGF2rh4sCmwuiNh2enklj26U.1yDassD9gfGc0NyLSu', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (49, 'Prof. Trever Leuschke Jr.', 'orland08@example.net', NULL, '$2y$10$8k2i67Bh7EVfS4xCsALPM.lKoQnqq6POksU4aZE22tAIX5MK5dwW2', NULL, '2022-10-11 03:36:57', NULL, NULL);
INSERT INTO `users` VALUES (50, 'Dale Hayes PhD', 'lemke.dannie@example.com', NULL, '$2y$10$cHPYkSi4Y93Bx9bXST5vMOYWkihm62mb0o0j.RlAsd.0N3nPMDVjG', NULL, '2022-10-11 03:36:58', NULL, NULL);
INSERT INTO `users` VALUES (51, 'Alysha Kessler', 'meghan51@example.org', NULL, '$2y$10$JI36jmi9Y3t1dpw7MPmWC.uXnck63QbKPWbRk976GbVHS4NMpOb1K', NULL, '2022-10-11 03:36:58', NULL, NULL);
INSERT INTO `users` VALUES (52, 'Miss Whitney Brown I', 'ehill@example.com', NULL, '$2y$10$O7tZAUxsfOridHYKZfuDZuijx55Vv0.vp9tumq.cyvDgZhlQV4sBS', NULL, '2022-10-11 03:36:58', NULL, NULL);
INSERT INTO `users` VALUES (53, 'pinan', 'armani71@example.net', NULL, '$2y$10$.Jkk1.dCjtzUuIw5zS/fe.R8VnGWy.WI..HtADNq/xLw3ymUyWQQ2', NULL, '2022-10-12 14:56:55', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
