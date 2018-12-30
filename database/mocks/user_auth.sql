DELETE FROM `user_auth`;

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` (`id`, `uid`, `identity_type`, `identifier`, `certificate`, `created_at`, `updated_at`)
VALUES
	(1,10000,1,'18021100100','','2018-12-30 19:52:28','2018-12-30 19:52:28'),
	(2,10001,1,'13521577678','','2018-12-30 19:52:36','2018-12-30 19:52:36'),
	(3,10002,1,'15921000210','','2018-12-30 19:52:43','2018-12-30 19:52:43');

/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;