# Dump of table user_auth
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_auth`;

CREATE TABLE `user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `identity_type` tinyint(4) unsigned NOT NULL DEFAULT '1' comment '1手机号 2微信 3用户名',
  `identifier` varchar(50) NOT NULL DEFAULT '' comment '手机号 用户名 或 微信unionId等',
  `certificate` varchar(20) NOT NULL DEFAULT '' comment '密码凭证',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_auth_identity_type_identifier` (`identity_type`,`identifier`),
  KEY `user_auth_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户授权表';