/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.18-MariaDB : Database - www
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`www` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `www`;

/*Table structure for table `announcements` */

DROP TABLE IF EXISTS `announcements`;

CREATE TABLE `announcements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `announcements` */

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `articles` */

insert  into `articles`(`id`,`slug_id`,`category_id`,`user_id`,`media_id`,`status`,`title`,`content`,`hit`,`language`,`deleted_at`,`created_at`,`updated_at`) values 
(1,7,1,2,1,0,'www','<p>asdf</p>',0,'tr',NULL,'2022-05-12 16:16:18','2022-05-12 16:16:18');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug_id` bigint(20) unsigned DEFAULT NULL,
  `media_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upper` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`slug_id`,`media_id`,`title`,`upper`,`content`,`type`,`language`,`created_at`,`updated_at`) values 
(1,1,1,'Unnamed',NULL,NULL,'article-category','tr','2022-05-12 15:57:34','2022-05-12 15:57:34'),
(2,2,1,'Articles',NULL,NULL,'article-category','tr','2022-05-12 15:57:34','2022-05-12 15:57:34'),
(3,3,1,'Videos',NULL,NULL,'article-category','tr','2022-05-12 15:57:34','2022-05-12 15:57:34');

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 1,
  `article_id` bigint(20) unsigned NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `comments` */

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `difficulty` tinyint(4) DEFAULT NULL COMMENT '0=All; 1=Easy; 2=Medium; 3=Hard',
  `price_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_cost` int(11) DEFAULT NULL,
  `price_old` int(11) DEFAULT NULL,
  `price_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_to_learn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirements` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_who` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `includes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'null=forever',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `courses` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `suspend` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `files` */

insert  into `files`(`id`,`role`,`collection`,`suspend`,`created_at`,`updated_at`) values 
(1,NULL,'default',0,'2022-05-12 15:57:28','2022-05-12 15:57:28');

/*Table structure for table `lessons` */

DROP TABLE IF EXISTS `lessons`;

CREATE TABLE `lessons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `lesson_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview` tinyint(4) DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lessons` */

/*Table structure for table `links` */

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `links` */

/*Table structure for table `logs` */

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `th_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `th_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `th_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `logs` */

/*Table structure for table `media` */

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `media` */

insert  into `media`(`id`,`model_type`,`model_id`,`uuid`,`collection_name`,`name`,`alt`,`file_name`,`mime_type`,`disk`,`conversions_disk`,`size`,`manipulations`,`custom_properties`,`responsive_images`,`order_column`,`created_at`,`updated_at`) values 
(1,'App\\Models\\File',1,'c19615b9-9ed5-48c0-adf9-79a50a809436','default','empty',NULL,'empty.png','image/png','public','public',1624,'[]','{\"generated_conversions\":{\"thumb\":true}}','[]',1,'2022-05-12 15:57:29','2022-05-12 15:57:33');

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` bigint(20) unsigned DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `menuname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Main Menu',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menus` */

insert  into `menus`(`id`,`order`,`title`,`link`,`icon`,`parent`,`position`,`menuname`,`language`,`created_at`,`updated_at`) values 
(1,NULL,NULL,'#',NULL,NULL,1,'Main Menu','tr','2022-05-12 15:57:34','2022-05-12 15:57:34'),
(2,1,'Blog','blog',NULL,NULL,1,'Main Menu','tr','2022-05-12 15:57:34','2022-05-12 15:57:34'),
(3,2,'Contact','contact',NULL,NULL,1,'Main Menu','tr','2022-05-12 15:57:34','2022-05-12 15:57:34'),
(4,NULL,NULL,'#',NULL,NULL,0,'Footer','tr','2022-05-12 15:57:34','2022-05-12 15:57:34');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2010_10_12_095523_create_slugs_table',1),
(2,'2013_10_10_090705_create_media_table',1),
(3,'2014_10_12_100000_create_password_resets_table',1),
(4,'2015_10_12_000000_create_users_table',1),
(5,'2019_08_19_000000_create_failed_jobs_table',1),
(6,'2019_10_09_102908_create_files_table',1),
(7,'2020_10_12_095731_create_categories_table',1),
(8,'2020_10_12_095901_create_articles_table',1),
(9,'2020_10_14_074334_create_pages_table',1),
(10,'2020_10_14_130517_create_comments_table',1),
(11,'2020_10_15_143405_create_menus_table',1),
(12,'2020_10_19_131545_create_widgets_table',1),
(13,'2021_02_12_105838_create_redirects_table',1),
(14,'2021_02_12_114051_create_links_table',1),
(15,'2021_02_19_194746_create_slides_table',1),
(16,'2021_03_02_210827_create_courses_table',1),
(17,'2021_03_05_131054_create_options_table',1),
(18,'2021_03_08_230204_create_lessons_table',1),
(19,'2021_03_16_085232_create_user_metas_table',1),
(20,'2021_03_16_200119_create_announcements_table',1),
(21,'2021_09_22_200716_create_logs_table',1),
(22,'2022_05_12_161334_create_sessions_table',2);

/*Table structure for table `options` */

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `options` */

insert  into `options`(`id`,`key`,`value`,`language`,`created_at`,`updated_at`) values 
(1,'logo','1','tr','2022-05-12 15:57:35','2022-05-12 15:57:36'),
(2,'favicon','1','tr','2022-05-12 15:57:35','2022-05-12 15:57:36'),
(3,'title',NULL,'tr','2022-05-12 15:57:35','2022-05-12 15:57:35'),
(4,'headcss',NULL,'tr','2022-05-12 15:57:35','2022-05-12 15:57:35'),
(5,'headjs',NULL,'tr','2022-05-12 15:57:35','2022-05-12 15:57:35'),
(6,'footerjs',NULL,'tr','2022-05-12 15:57:36','2022-05-12 15:57:36'),
(7,'no_index',NULL,'tr','2022-05-12 15:57:36','2022-05-12 15:57:36'),
(8,'no_follow',NULL,'tr','2022-05-12 15:57:36','2022-05-12 15:57:36'),
(9,'language','Türkçe','tr','2022-05-12 15:57:36','2022-05-12 15:57:36'),
(10,'language','English','en','2022-05-12 15:57:36','2022-05-12 15:57:36');

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standart',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `sidebar` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pages` */

insert  into `pages`(`id`,`slug_id`,`media_id`,`status`,`title`,`content`,`hit`,`template`,`language`,`sidebar`,`deleted_at`,`created_at`,`updated_at`) values 
(1,4,1,1,'Home',NULL,0,'home','tr',0,NULL,'2022-05-12 15:57:34','2022-05-12 16:19:07'),
(2,5,1,1,'Blog',NULL,0,'blog','tr',0,NULL,'2022-05-12 15:57:35','2022-05-12 15:57:35'),
(3,6,1,1,'Contact',NULL,0,'contact','tr',0,NULL,'2022-05-12 15:57:35','2022-05-12 15:57:35');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `redirects` */

DROP TABLE IF EXISTS `redirects`;

CREATE TABLE `redirects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `redirects` */

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('bDcixB1KerZVVl8Rf9i4oY6abrFuhlKqS0KZqMFI',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZng2N1VEU1hTS1FLeGJ6YWhGRUpBMm92SHZmOURkNFJOMk9iVm9ETiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZWdpc3RlciI7fX0=',1652418732),
('otKPeMC558HZJOCyyO7z6ZI6fHxv9p9iQ6zIqC8A',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibzh6WWhobWlJVkZTZXBpTUVSb0JLcm16dnNvNTBHa3NNaWFlTTZFZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=',1652419889);

/*Table structure for table `slides` */

DROP TABLE IF EXISTS `slides`;

CREATE TABLE `slides` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000',
  `opacity` int(11) NOT NULL DEFAULT 100,
  `is_video` tinyint(4) NOT NULL DEFAULT 0,
  `bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `slides` */

/*Table structure for table `slugs` */

DROP TABLE IF EXISTS `slugs`;

CREATE TABLE `slugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_index` tinyint(4) NOT NULL DEFAULT 0,
  `no_follow` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slugs_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `slugs` */

insert  into `slugs`(`id`,`owner`,`slug`,`seo_title`,`seo_description`,`no_index`,`no_follow`,`language`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'category','unnamed',NULL,NULL,0,0,'tr',NULL,'2022-05-12 15:57:34','2022-05-12 15:57:34'),
(2,'category','articles',NULL,NULL,0,0,'tr',NULL,'2022-05-12 15:57:34','2022-05-12 15:57:34'),
(3,'category','videos',NULL,NULL,0,0,'tr',NULL,'2022-05-12 15:57:34','2022-05-12 15:57:34'),
(4,'page','home',NULL,NULL,0,0,'tr',NULL,'2022-05-12 15:57:34','2022-05-12 15:57:34'),
(5,'page','blog',NULL,NULL,0,0,'tr',NULL,'2022-05-12 15:57:34','2022-05-12 15:57:34'),
(6,'page','contact',NULL,NULL,0,0,'tr',NULL,'2022-05-12 15:57:35','2022-05-12 15:57:35'),
(7,'article','www','ss','ss',0,0,'tr',NULL,'2022-05-12 16:16:18','2022-05-12 16:16:18');

/*Table structure for table `user_metas` */

DROP TABLE IF EXISTS `user_metas`;

CREATE TABLE `user_metas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_metas` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`surname`,`role`,`email`,`email_verified_at`,`password`,`remember_token`,`deleted_at`,`created_at`,`updated_at`) values 
(1,NULL,NULL,'admin','hsdmrsoft@gmail.com',NULL,'$2y$10$S4tA/3D7uxgo7uo83UOEfurI0HYT0mMJOARazCWYM8Z/Kj3ZylDa2',NULL,NULL,'2022-05-12 15:57:36','2022-05-12 15:57:36'),
(2,'sss','sss','admin','admin@admin.com',NULL,'$2y$10$6u4SfrXQQdzSVhU.J/Zonu2FA93P7WJrqykd9Imc5TVKfLqcc6c3W',NULL,NULL,'2022-05-12 16:15:01','2022-05-12 16:15:01'),
(3,'www','www','user','www@gmail.com',NULL,'$2y$10$dXxGqxgAE2KTKCDdqGdtseosF25RZoAwDSpCtgwGSJjthRQ9sbMT6',NULL,NULL,'2022-05-12 16:22:23','2022-05-12 16:22:23'),
(4,'aaa',NULL,'user','aa@gmail.com',NULL,'$2y$10$kVn0kg4AFcrGrBvaDz94VuBAZ5.gkuFaU88an/8h/PsrzcxihvOpi',NULL,NULL,'2022-05-13 00:44:40','2022-05-13 00:44:40'),
(5,'eeee',NULL,'Dad','xxx@admin.com',NULL,'$2y$10$Yfc/Y8bpY6B5a.J7WrF.EeWJ1FGSpeLCDMZGBexB76qTjYTtV00AG',NULL,NULL,'2022-05-13 00:50:07','2022-05-13 00:50:07'),
(6,'abc',NULL,'Expert','abc@gmail.com',NULL,'$2y$10$uT4gbyMf2GR8WtvLsfw0GeMAIM4t/ZJaEUsX919clIBi9pMuxGwqu',NULL,NULL,'2022-05-13 05:46:31','2022-05-13 05:46:31'),
(7,'Test Test',NULL,'Artist','eee@admin.com',NULL,'$2y$10$L9Y/Oke4enHX16WZmOaEpOZz8uD0w3mV1LxaKJ20thEMkEJ1eTR0a',NULL,NULL,'2022-05-13 05:18:18','2022-05-13 05:18:18');

/*Table structure for table `widgets` */

DROP TABLE IF EXISTS `widgets`;

CREATE TABLE `widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `widgets` */

insert  into `widgets`(`id`,`name`,`title`,`content`,`menu`,`language`,`created_at`,`updated_at`) values 
(1,'Footer 1',NULL,NULL,NULL,'tr','2022-05-12 15:57:35','2022-05-12 15:57:35'),
(2,'Footer 2',NULL,NULL,NULL,'tr','2022-05-12 15:57:35','2022-05-12 15:57:35'),
(3,'Footer 3',NULL,NULL,NULL,'tr','2022-05-12 15:57:35','2022-05-12 15:57:35'),
(4,'Footer 4',NULL,NULL,NULL,'tr','2022-05-12 15:57:35','2022-05-12 15:57:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
