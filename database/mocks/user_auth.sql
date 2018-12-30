DELETE FROM `user_auth`;

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` (`id`, `uid`, `identity_type`, `identifier`, `certificate`, `created_at`, `updated_at`)
VALUES
	(1,10000,1,'11111111111','','2018-02-24 19:52:28','2018-02-24 19:52:28'),
	(2,10001,1,'22222222222','','2018-02-24 19:52:36','2018-02-24 19:52:36'),
	(3,10002,1,'33333333333','','2018-02-24 19:52:43','2018-02-24 19:52:43');

/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;