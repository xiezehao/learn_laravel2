# Host: localhost  (Version: 5.5.53)
# Date: 2020-06-26 10:59:34
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin_menu"
#

DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_menu"
#

INSERT INTO `admin_menu` VALUES (1,0,1,'首页','fa-bar-chart','/',NULL,NULL,'2020-06-25 08:04:33'),(2,0,3,'系统管理','fa-tasks',NULL,NULL,NULL,'2020-06-25 09:20:05'),(3,2,4,'管理员','fa-users','auth/users',NULL,NULL,'2020-06-25 09:20:05'),(4,2,5,'角色','fa-user','auth/roles',NULL,NULL,'2020-06-25 09:20:05'),(5,2,6,'权限','fa-ban','auth/permissions',NULL,NULL,'2020-06-25 09:20:05'),(6,2,7,'菜单','fa-bars','auth/menu',NULL,NULL,'2020-06-25 09:20:05'),(7,2,8,'操作日志','fa-history','auth/logs',NULL,NULL,'2020-06-25 09:20:05'),(8,0,2,'用户管理','fa-users','/users',NULL,'2020-06-25 09:19:54','2020-06-25 09:20:05');

#
# Structure for table "admin_operation_log"
#

DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_operation_log"
#

INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','::1','[]','2020-06-25 07:59:44','2020-06-25 07:59:44'),(2,1,'admin/auth/menu','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 08:04:01','2020-06-25 08:04:01'),(3,1,'admin/auth/menu/1/edit','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 08:04:11','2020-06-25 08:04:11'),(4,1,'admin/auth/menu/1','PUT','::1','{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"QS3ADCArvKvquDzj4rU0CQfz02gEd67pH5OK4iNr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:1004\\/admin\\/auth\\/menu\"}','2020-06-25 08:04:33','2020-06-25 08:04:33'),(5,1,'admin/auth/menu','GET','::1','[]','2020-06-25 08:04:33','2020-06-25 08:04:33'),(6,1,'admin/auth/menu/2/edit','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 08:09:55','2020-06-25 08:09:55'),(7,1,'admin/auth/menu/2','PUT','::1','{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"QS3ADCArvKvquDzj4rU0CQfz02gEd67pH5OK4iNr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:1004\\/admin\\/auth\\/menu\"}','2020-06-25 08:10:00','2020-06-25 08:10:00'),(8,1,'admin/auth/menu','GET','::1','[]','2020-06-25 08:10:00','2020-06-25 08:10:00'),(9,1,'admin/auth/menu/3/edit','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 08:10:10','2020-06-25 08:10:10'),(10,1,'admin/auth/menu/3','PUT','::1','{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"QS3ADCArvKvquDzj4rU0CQfz02gEd67pH5OK4iNr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:1004\\/admin\\/auth\\/menu\"}','2020-06-25 08:10:14','2020-06-25 08:10:14'),(11,1,'admin/auth/menu','GET','::1','[]','2020-06-25 08:10:14','2020-06-25 08:10:14'),(12,1,'admin/auth/menu/4/edit','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 08:10:22','2020-06-25 08:10:22'),(13,1,'admin/auth/menu/4','PUT','::1','{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"QS3ADCArvKvquDzj4rU0CQfz02gEd67pH5OK4iNr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:1004\\/admin\\/auth\\/menu\"}','2020-06-25 08:10:25','2020-06-25 08:10:25'),(14,1,'admin/auth/menu','GET','::1','[]','2020-06-25 08:10:26','2020-06-25 08:10:26'),(15,1,'admin/auth/menu/5/edit','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 08:10:35','2020-06-25 08:10:35'),(16,1,'admin/auth/menu/5','PUT','::1','{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"QS3ADCArvKvquDzj4rU0CQfz02gEd67pH5OK4iNr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:1004\\/admin\\/auth\\/menu\"}','2020-06-25 08:10:39','2020-06-25 08:10:39'),(17,1,'admin/auth/menu','GET','::1','[]','2020-06-25 08:10:39','2020-06-25 08:10:39'),(18,1,'admin/auth/menu/6/edit','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 08:10:46','2020-06-25 08:10:46'),(19,1,'admin/auth/menu/6','PUT','::1','{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"QS3ADCArvKvquDzj4rU0CQfz02gEd67pH5OK4iNr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:1004\\/admin\\/auth\\/menu\"}','2020-06-25 08:10:49','2020-06-25 08:10:49'),(20,1,'admin/auth/menu','GET','::1','[]','2020-06-25 08:10:50','2020-06-25 08:10:50'),(21,1,'admin/auth/menu/7/edit','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 08:10:57','2020-06-25 08:10:57'),(22,1,'admin/auth/menu/7','PUT','::1','{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"QS3ADCArvKvquDzj4rU0CQfz02gEd67pH5OK4iNr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:1004\\/admin\\/auth\\/menu\"}','2020-06-25 08:11:01','2020-06-25 08:11:01'),(23,1,'admin/auth/menu','GET','::1','[]','2020-06-25 08:11:01','2020-06-25 08:11:01'),(24,1,'admin/auth/menu','GET','::1','[]','2020-06-25 08:24:57','2020-06-25 08:24:57'),(25,1,'admin/auth/menu','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 09:18:45','2020-06-25 09:18:45'),(26,1,'admin/auth/menu','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 09:18:54','2020-06-25 09:18:54'),(27,1,'admin/auth/menu','POST','::1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"QS3ADCArvKvquDzj4rU0CQfz02gEd67pH5OK4iNr\"}','2020-06-25 09:19:54','2020-06-25 09:19:54'),(28,1,'admin/auth/menu','GET','::1','[]','2020-06-25 09:19:55','2020-06-25 09:19:55'),(29,1,'admin/auth/menu','POST','::1','{\"_token\":\"QS3ADCArvKvquDzj4rU0CQfz02gEd67pH5OK4iNr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2020-06-25 09:20:04','2020-06-25 09:20:04'),(30,1,'admin/auth/menu','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 09:20:05','2020-06-25 09:20:05'),(31,1,'admin/auth/menu','GET','::1','[]','2020-06-25 09:20:12','2020-06-25 09:20:12'),(32,1,'admin/users','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-25 09:20:19','2020-06-25 09:20:19'),(33,1,'admin/users','GET','::1','[]','2020-06-25 09:29:28','2020-06-25 09:29:28'),(34,1,'admin','GET','::1','[]','2020-06-26 02:11:04','2020-06-26 02:11:04'),(35,1,'admin/auth/permissions','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-26 02:11:17','2020-06-26 02:11:17'),(36,1,'admin/auth/permissions/create','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-26 02:11:33','2020-06-26 02:11:33'),(37,1,'admin/auth/permissions','POST','::1','{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"vH2MVnOEzpllip4qoArHE89CQrIkgQJAt6x3heAG\",\"_previous_\":\"http:\\/\\/localhost:1004\\/admin\\/auth\\/permissions\"}','2020-06-26 02:12:17','2020-06-26 02:12:17'),(38,1,'admin/auth/permissions','GET','::1','[]','2020-06-26 02:12:18','2020-06-26 02:12:18'),(39,1,'admin/auth/roles','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-26 02:12:40','2020-06-26 02:12:40'),(40,1,'admin/auth/roles/create','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-26 02:12:43','2020-06-26 02:12:43'),(41,1,'admin/auth/roles','POST','::1','{\"slug\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"vH2MVnOEzpllip4qoArHE89CQrIkgQJAt6x3heAG\",\"_previous_\":\"http:\\/\\/localhost:1004\\/admin\\/auth\\/roles\"}','2020-06-26 02:14:46','2020-06-26 02:14:46'),(42,1,'admin/auth/roles','GET','::1','[]','2020-06-26 02:14:47','2020-06-26 02:14:47'),(43,1,'admin/auth/users','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-26 02:16:47','2020-06-26 02:16:47'),(44,1,'admin/auth/users/create','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-26 02:16:51','2020-06-26 02:16:51'),(45,1,'admin/auth/users/create','GET','::1','[]','2020-06-26 02:21:29','2020-06-26 02:21:29'),(46,1,'admin/auth/users/create','GET','::1','[]','2020-06-26 02:23:31','2020-06-26 02:23:31'),(47,1,'admin/auth/users','POST','::1','{\"username\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"vH2MVnOEzpllip4qoArHE89CQrIkgQJAt6x3heAG\"}','2020-06-26 02:24:40','2020-06-26 02:24:40'),(48,1,'admin/auth/users','GET','::1','[]','2020-06-26 02:24:40','2020-06-26 02:24:40'),(49,1,'admin/auth/logout','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-26 02:25:16','2020-06-26 02:25:16'),(50,2,'admin','GET','::1','[]','2020-06-26 02:25:25','2020-06-26 02:25:25'),(51,2,'admin/users','GET','::1','{\"_pjax\":\"#pjax-container\"}','2020-06-26 02:25:31','2020-06-26 02:25:31');

#
# Structure for table "admin_permissions"
#

DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_permissions"
#

INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2020-06-26 02:12:18','2020-06-26 02:12:18');

#
# Structure for table "admin_role_menu"
#

DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_role_menu"
#

INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);

#
# Structure for table "admin_role_permissions"
#

DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_role_permissions"
#

INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL);

#
# Structure for table "admin_role_users"
#

DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_role_users"
#

INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);

#
# Structure for table "admin_roles"
#

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_roles"
#

INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2020-06-25 06:54:30','2020-06-25 06:54:30'),(2,'运营','operation','2020-06-26 02:14:46','2020-06-26 02:14:46');

#
# Structure for table "admin_user_permissions"
#

DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_user_permissions"
#


#
# Structure for table "admin_users"
#

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_users"
#

INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$2Jj0JuDKMcXnAkehkzg4b.qptDiDATJ3KBYHqCjMtrRUyTzJhd4B.','Administrator',NULL,'bdAdjj4vHiYcQIsc8HsU68aqvWbCmxrLoUFQLOUvb4XdXGxQhV1osS13H9qS','2020-06-25 06:54:30','2020-06-25 06:54:30'),(2,'operator','$2y$10$j4CymBoWUEU5sI8Fm3kXfeTT66HO//Y7y4tPbD1lW/..OalHcWqNO','运营',NULL,'sq1mbqyFmi8GTWOKi7Toh6KHmxtHWApzly8vrHynZDmbIunxXYd7bm02D883','2020-06-26 02:24:40','2020-06-26 02:24:40');

#
# Structure for table "failed_jobs"
#

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "failed_jobs"
#


#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_06_21_142530_create_user_addresses_table',2),(5,'2016_01_04_173148_create_admin_tables',3);

#
# Structure for table "password_resets"
#

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "password_resets"
#


#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'xzh','798351803@qq.com','2020-06-22 08:18:24','$2y$10$bf0SJE8.a3EgcWk38GBmq.6hrnnQZVExARInlIVLtrDoG7vhqHp1W','pN6geDuqqYwBUVZhPqtkLc0PvbbaiI4bbSaxgEfD7cI28dcpWixMB4bPGeWk','2020-06-21 08:18:24','2020-06-21 08:18:24');

#
# Structure for table "user_addresses"
#

DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) unsigned NOT NULL,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "user_addresses"
#

INSERT INTO `user_addresses` VALUES (1,1,'江苏省','苏州市','相城区','第14街道第884号',826400,'黄小红','13471143848',NULL,'2020-06-22 08:09:20','2020-06-22 08:09:20'),(2,1,'江苏省','南京市','浦口区','第75街道第135号',592800,'查桂芬','17009491969',NULL,'2020-06-22 08:09:20','2020-06-22 08:09:20'),(3,1,'江苏省','南京市','浦口区','第2街道第984号',16700,'郑桂香','17141607049',NULL,'2020-06-22 08:09:20','2020-06-22 08:09:20');
