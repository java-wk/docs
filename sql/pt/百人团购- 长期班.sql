CREATE TABLE `acti_msg_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号',
  `activity_id` int(11) DEFAULT NULL COMMENT '关联活动ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `putao_id` int(11) NOT NULL COMMENT 'putaoId',
  `class_id` int(11) NOT NULL COMMENT 'classId',
  `source` int(11) NOT NULL COMMENT 'source',
  `sended` tinyint(11) DEFAULT '0' COMMENT '是否发送短信： 0，未发送；1，已发送',
  `bought` tinyint(11) DEFAULT '0' COMMENT '是否已购买： 0，未购买；1，已购买',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='活动提醒短信记录表';