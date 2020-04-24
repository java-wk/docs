DROP TABLE IF EXISTS `lottery_rule`;
CREATE TABLE `lottery_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NULL DEFAULT NULL COMMENT '单价',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `proportion` decimal(19, 3) NULL DEFAULT NULL COMMENT '中奖几率（百分比）',
  `send_count` int(11) NULL DEFAULT NULL COMMENT '已发数量',
  `stock_quantity` int(11) NULL DEFAULT NULL COMMENT '总库存',
  `stock_remain` int(11) NULL DEFAULT NULL COMMENT '剩余库存',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '奖品名称',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '奖品描述',
  `total_cost` int(11) NULL DEFAULT NULL COMMENT '总成本(单位元)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lottery_rule
-- ----------------------------
INSERT INTO `miniprogram`.`lottery_rule`(`id`, `amount`, `create_time`, `proportion`, `send_count`, `stock_quantity`, `stock_remain`, `name`, `detail`, `total_cost`) VALUES (1, NULL, '2020-01-16 11:56:41', 0.003, NULL, 3, 3, '一等奖', '布鲁可百变越野车', 300);
INSERT INTO `miniprogram`.`lottery_rule`(`id`, `amount`, `create_time`, `proportion`, `send_count`, `stock_quantity`, `stock_remain`, `name`, `detail`, `total_cost`) VALUES (2, NULL, '2020-01-16 11:56:41', 0.005, NULL, 5, 5, '二等奖', '100元京东E卡', 500);
INSERT INTO `miniprogram`.`lottery_rule`(`id`, `amount`, `create_time`, `proportion`, `send_count`, `stock_quantity`, `stock_remain`, `name`, `detail`, `total_cost`) VALUES (3, NULL, '2020-01-16 11:56:41', 0.008, NULL, 8, 8, '三等奖', '50元话费充值卡', 400);
INSERT INTO `miniprogram`.`lottery_rule`(`id`, `amount`, `create_time`, `proportion`, `send_count`, `stock_quantity`, `stock_remain`, `name`, `detail`, `total_cost`) VALUES (4, NULL, '2020-01-16 11:56:41', 0.010, NULL, 10, 10, '四等奖', '12课时', NULL);
INSERT INTO `miniprogram`.`lottery_rule`(`id`, `amount`, `create_time`, `proportion`, `send_count`, `stock_quantity`, `stock_remain`, `name`, `detail`, `total_cost`) VALUES (5, NULL, '2020-01-16 11:56:41', 0.020, NULL, 20, 20, '五等奖', '8课时', NULL);
INSERT INTO `miniprogram`.`lottery_rule`(`id`, `amount`, `create_time`, `proportion`, `send_count`, `stock_quantity`, `stock_remain`, `name`, `detail`, `total_cost`) VALUES (6, NULL, '2020-01-16 11:56:41', 0.350, NULL, 10000000, 10000000, '六等奖', '1课时', NULL);
INSERT INTO `miniprogram`.`lottery_rule`(`id`, `amount`, `create_time`, `proportion`, `send_count`, `stock_quantity`, `stock_remain`, `name`, `detail`, `total_cost`) VALUES (7, NULL, '2020-01-16 11:56:41', 0.603, NULL, 10000000, 10000000, '谢谢参与', '谢谢参与', NULL);
INSERT INTO `miniprogram`.`lottery_rule`(`id`, `amount`, `create_time`, `proportion`, `send_count`, `stock_quantity`, `stock_remain`, `name`, `detail`, `total_cost`) VALUES (8, NULL, '2020-01-16 11:56:41', 0.001, NULL, 1, 1, '特等奖', 'iPad mini5', 2799);

SET FOREIGN_KEY_CHECKS = 1;



CREATE TABLE `lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lottery_id` int(11) DEFAULT NULL COMMENT '奖品Id(lottery_rule表Id)',
  `phone_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户手机号',
  `putao_id` int(11) DEFAULT NULL COMMENT '用户putao_id',
  `ship_status` int(11) DEFAULT '0' COMMENT '发货状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;