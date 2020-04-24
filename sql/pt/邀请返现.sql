

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for reward_lucky_rule
-- ----------------------------
DROP TABLE IF EXISTS `reward_lucky_rule`;
CREATE TABLE `reward_lucky_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NULL DEFAULT NULL COMMENT '红包金额,单位为分',
  `send_count` int(11) NULL DEFAULT NULL COMMENT '已发数量',
  `proportion` decimal(5, 3) NULL DEFAULT NULL COMMENT '占比',
  `stock_quantity` int(11) NULL DEFAULT NULL COMMENT '库存总数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stock_remain` int(11) NULL DEFAULT NULL COMMENT '剩余库存数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '手气红包库存表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reward_lucky_rule
-- ----------------------------
INSERT INTO `reward_lucky_rule` VALUES (1, 18, 0, 0.200, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (2, 28, 0, 0.140, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (3, 68, 0, 0.120, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (4, 88, 0, 0.105, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (5, 188, 0, 0.090, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (6, 288, 0, 0.080, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (7, 688, 0, 0.070, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (8, 888, 0, 0.060, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (9, 1800, 0, 0.050, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (10, 2800, 0, 0.040, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (11, 6800, 0, 0.025, 0, '2020-01-16 11:56:41', NULL);
INSERT INTO `reward_lucky_rule` VALUES (12, 8800, 0, 0.020, 0, '2020-01-16 11:56:41', NULL);

-- ----------------------------
-- Table structure for reward_lucky_record
-- ----------------------------
DROP TABLE IF EXISTS `reward_lucky_record`;
CREATE TABLE `reward_lucky_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `putao_id` int(11) NOT NULL COMMENT '被邀用户',
  `from_putao_id` int(11) NULL DEFAULT NULL COMMENT '邀请人',
  `reward_amount` int(11) NULL DEFAULT NULL COMMENT '手气红包金额,单位为分',
  `reg` int(11) NULL DEFAULT NULL COMMENT '0，未注册；1，已注册',
  `exp_bought` int(11) NULL DEFAULT NULL COMMENT '0，未购买；1，已购买',
  `exp_finished` int(11) NULL DEFAULT NULL COMMENT '0，未完课；1，已完课',
  `opened` int(11) NULL DEFAULT NULL COMMENT '0，未领取；1，已领取',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '手气红包记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reward_lucky_record
-- ----------------------------
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (1, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:30:17', NULL);
INSERT INTO `reward_lucky_record` VALUES (2, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);
INSERT INTO `reward_lucky_record` VALUES (3, 11, 0, 1, 1, NULL, 0, '2020-01-20 14:36:30', NULL);
INSERT INTO `reward_lucky_record` VALUES (4, 11, 0, 1, 0, NULL, 0, '2020-01-20 14:30:38', NULL);

SET FOREIGN_KEY_CHECKS = 1;




select coursefini0_.id as id1_1_, coursefini0_.cid as cid2_1_, coursefini0_.create_time as create_t3_1_, coursefini0_.putao_id as putao_id4_1_, coursefini0_.start_time as start_ti5_1_, coursefini0_.status as status6_1_, coursefini0_.update_time as update_t7_1_ from course_finished_situation coursefini0_ where coursefini0_.putao_id=? order by coursefini0_.create_time asc limit ?