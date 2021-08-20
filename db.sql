DROP TABLE IF EXISTS `places`;
CREATE TABLE `places` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(16) NOT NULL UNIQUE,
  `description` varchar(100) NOT NULL DEFAULT '',
  `imageSrc` char(26) DEFAULT NULL,
  `imageCopyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `places` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `attractions`;
CREATE TABLE `attractions` (
  `attraction_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_id` int(11) NOT NULL,
  `name` char(16) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `imageSrc` char(26) DEFAULT NULL,
  `imageCopyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`attraction_id`),
  FOREIGN KEY(place_id) REFERENCES places(place_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `attractions` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` char(16) NOT NULL,
  `password` binary(60) NOT NULL,
  `name` char(16) NOT NULL,
  `authority_level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nickname` (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES ('root',_binary '$2b$10$P.oH.j0fy16XmMBVNvMa2eBVNCNigsYh9BGbT7HUps5ckl.SQtUHO','GM',9,1);
UNLOCK TABLES;
