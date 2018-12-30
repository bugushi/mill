# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(15) DEFAULT '',
  `avatar` varchar(100) DEFAULT '',
  `token` char(32) NOT NULL DEFAULT '',
  `followings` int(11) unsigned NOT NULL DEFAULT '0',
  `followers` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8mb4 COMMENT='用户基础信息表';
