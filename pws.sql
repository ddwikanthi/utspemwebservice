# Host: localhost  (Version 5.5.5-10.1.10-MariaDB)
# Date: 2018-05-18 18:16:14
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "buku"
#

DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nmbuku` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pengarang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "buku"
#

INSERT INTO `buku` VALUES (4,'aiueo','oeuia','2018-05-18 17:52:30','2018-05-18 17:52:30'),(5,'Chicken Soup and Soul','aiuep','2018-05-18 18:11:52','2018-05-18 18:11:52'),(6,'Rahasia Bintang','Dyan Nuranindya','2018-05-18 18:12:15','2018-05-18 18:12:15'),(7,'Canting Cantiq','Dyan Nuranindya','2018-05-18 18:12:22','2018-05-18 18:12:22'),(8,'Toto Chan','Tetsuko','2018-05-18 18:12:48','2018-05-18 18:12:48');

#
# Structure for table "kategori"
#

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nmkat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `infokat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kategori"
#

INSERT INTO `kategori` VALUES (2,'Remaja','Buku Remaja','2018-05-18 18:13:51','2018-05-18 18:13:51'),(3,'Anak-Anak','Buku Anak-Anak','2018-05-18 18:14:04','2018-05-18 18:14:04'),(4,'Masakan','Buku Masakan','2018-05-18 18:14:15','2018-05-18 18:14:15'),(5,'Komik','Buku Komik','2018-05-18 18:14:23','2018-05-18 18:14:23'),(6,'Horror','Buku Horror','2018-05-18 18:14:45','2018-05-18 18:14:45');

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2018_05_18_085124_buku',1),(2,'2018_05_18_095701_kategori',2);
