DELETE FROM `user`;
-- LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `nick`, `avatar`, `token`, `followings`, `followers`, `created_at`, `updated_at`)
VALUES
	(10000,'堺雅人','https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1353675638.54.webp','jieyaren',0,0,'2018-12-30 19:52:28','2018-12-30 19:52:28'),
	(10001,'新垣结衣','https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1747.webp','xinyuanjieyi',0,0,'2018-12-30 19:52:36','2018-12-30 19:52:36'),
	(10002,'生濑胜久','https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p56518.webp','shenglaishengjiu',0,0,'2018-12-30 19:52:43','2018-12-30 19:52:43');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;