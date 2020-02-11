CREATE TABLE `activtiy_center_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_type` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `open_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `pay_status` int(11) DEFAULT '0',
  `putao_id` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dis_count_code` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL COMMENT '团Id',
  `goods_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2269 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;