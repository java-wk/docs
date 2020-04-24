select salemaninf0_.id as id1_35_, salemaninf0_.camp_type as camp_typ2_35_, salemaninf0_.class_id as class_id3_35_, salemaninf0_.class_name as class_na4_35_, salemaninf0_.grade as grade5_35_, salemaninf0_.group_code_url as group_co6_35_, salemaninf0_.name as name7_35_, salemaninf0_.nick_name as nick_nam8_35_, salemaninf0_.periods as periods9_35_, salemaninf0_.periods_id as periods10_35_, salemaninf0_.phone as phone11_35_, salemaninf0_.source as source12_35_, salemaninf0_.status as status13_35_, salemaninf0_.teacher_status as teacher14_35_, salemaninf0_.url as url15_35_, salemaninf0_.wx as wx16_35_, salemaninf0_.wxid as wxid17_35_ from sale_man_info salemaninf0_ where salemaninf0_.periods=? and salemaninf0_.class_id=?

alter table sale_rel_user add index index_teacher_id using btree(teacher_id);

SELECT putao_id,
	(
SELECT
	sum( lesson_num ) from
	user_lesson_num_record a1
WHERE
	a1.putao_id = user_lesson_num_record.putao_id
	AND a1.record_type = 1
GROUP BY
	putao_id
-(
SELECT
	sum( lesson_num ) from
	user_lesson_num_record a2
WHERE
	a2.putao_id = user_lesson_num_record.putao_id
	AND a2.record_type = 0
GROUP BY
	putao_id )
	) sumX
FROM
	user_lesson_num_record;



SELECT
	r1.putao_id,
	( r1.s1 - r0.s0 ),
	r1.s1,
	r0.s0
FROM
	( SELECT putao_id, sum( lesson_num ) AS s1 FROM user_lesson_num_record a1 WHERE record_type = 1 GROUP BY putao_id ) AS r1,
	( SELECT putao_id, sum( lesson_num ) AS s0 FROM user_lesson_num_record a2 WHERE record_type = 0 GROUP BY putao_id ) AS r0
WHERE
	r1.putao_id = r0.putao_id ;



	select putao_id,sum(if(record_type = 1,lesson_num, 0 - lesson_num)) from user_lesson_num_record group by putao_id



INSERT INTO `miniprogram`.`sec_kill_round_info`
(`acti_msg_wx_template_record_id`, `add_course_num`, `class_id`, `cycle_label`, `start_time`, `end_time`,
`end_timestamp`, `create_time`, `group_buy_count`, `if_group`, `original_price`, `round_name`, `source`, `start_timestamp`, `type`, `update_time`)
VALUES (6, NULL, 165, 'a', '2020-04-03 20:00:00', '2020-04-03 21:00:00', 0, '2020-03-11 15:57:48', 100, 0, NULL, '秒杀test', 1469, 0, 2, '2020-02-25 15:57:48');


INSERT INTO `miniprogram`.`sec_kill_round_info`
(`acti_msg_wx_template_record_id`, `add_course_num`, `class_id`, `cycle_label`, `start_time`, `end_time`,
`end_timestamp`, `create_time`, `group_buy_count`, `if_group`, `original_price`, `round_name`, `source`, `start_timestamp`, `type`, `update_time`)
VALUES (6, NULL, 165, 'a', '2020-04-04 20:00:00', '2020-04-04 21:00:00', 0, '2020-03-11 15:57:48', 100, 0, NULL, '秒杀test', 1469, 0, 2, '2020-02-25 15:57:48');





select putao_id,
case
when unit=22 then 1
when unit=23 then 1
else 0
end as type
from experience_camp_activity_record where putao_id=20;


SELECT
	*
FROM
	`miniprogram`.`goods_order`
WHERE
	`finish_time` < '2020-04-17 17:46:02' - if(goods_id=274,10,2)
	AND `putao_id` = '526'
	AND `pay_status` = '1'
	AND `goods_id` IN ( 1, 2, 3 )
ORDER BY
	`putao_id` DESC
	LIMIT 3



	SELECT * FROM `goods_order` WHERE
			`finish_time` < DATE_SUB(now(), INTERVAL (case when goods_id=274 then 3 else 10 end) DAY)
			AND `putao_id` = '526'
			AND `pay_status` = '1'
			AND exists(select 1 from course_goods_package where id=goods_order.goods_id and course_type='长期班')
			ORDER BY
			`finish_time` ASC
			LIMIT 1





SELECT * FROM `goods_order` WHERE
			`finish_time` < DATE_SUB(now(), INTERVAL (case when goods_id=274 then 3 else 10 end) DAY)
			AND `putao_id` = ?1
			AND `pay_status` = '1'
			AND exists(select 1 from course_goods_package where id=goods_order.goods_id and course_type='长期班')
			ORDER BY `finish_time` ASC
			LIMIT 1


			CREATE TABLE `zero_learn_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bought` int(11) DEFAULT NULL COMMENT '是否购买',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '购买时间',
  `from_putao_id` int(11) DEFAULT NULL COMMENT '邀请人（null:非邀请购买的0元学）',
  `phone_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '被邀请人手机号',
  `putao_id` int(11) DEFAULT NULL COMMENT '0元学user 或 被邀注册人',
  `source` int(11) DEFAULT NULL COMMENT '注册渠道',
  `sent` int(11) DEFAULT NULL COMMENT '是否发放',
  `share_time` datetime DEFAULT NULL COMMENT '邀请人生成海报时间',
  `end_time` datetime DEFAULT NULL COMMENT '邀请有效期结束时间',
  `zero_learn_user` int(11) DEFAULT NULL COMMENT '是否0元学用户',
  `now_time` datetime DEFAULT NULL COMMENT '服务器时间',
  `reward_cash` int(11) DEFAULT NULL COMMENT '邀请人获得400元',
  `reward_course` int(11) DEFAULT NULL COMMENT '邀请人获得6课时',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






