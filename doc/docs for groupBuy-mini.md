com.putaoabc.activitiescommonservice.controller.ActivityMiniGroupBuyController#getIndex
说明

// Integer btn; //1,我要开团2,立即加入拼团3,邀请好友参团4,点此回复“1”去上课
// Integer userType; //0,putaoId==null
1,老用户（非当前团团长、团员,无购买权限）2,新用户（可开团or参团）3,当前团长4,当前团员
// int groupStatus = -1; //团的状态 -1没有团 0开团中 1拼团成功

//1.groupId == null  未开团
//  1.1.putaoId == null  拉注册取putaoId
//  1.2.putaoId != null
//      1.2.1.putaoId老用户
//      1.2.2.putaoId新用户                    开团拉支付
//2.groupId != null 当前团
//  2.1.putaoId == null  拉注册取putaoId
//  2.2.putaoId != null
//      2.2.1putaoId != null 当前团未满
//          2.2.1.1团长
//          2.2.1.2老用户
//          2.2.1.3新用户                      参团拉支付
//      2.2.2putaoId != null 当前团已满
//          2.2.2.1团长
//          2.2.2.2团员
//          2.2.2.3老用户
//          2.2.2.4新用户                      跳转去开新团


### {#ip}/course_v2/activityCenter/miniGroupBuy/index

#### 入参

#### 出参



#### 示例




2019-12-14 20:00:58.978  INFO 8700 --- [nio-8789-exec-9] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniCallBack/messageCallBackGroupBuyExp[PARAMS]signature:64da480a00e4e17aedc771a32ad848590f057006&timestamp:1576324858&nonce:131504385&openid:ooLDX5dJiiB9HZmTRYdmfABmXDVw&
2019-12-14 20:00:58.978  INFO 8700 --- [nio-8789-exec-9] c.p.a.c.ActivityWxMiniCallBackController : activity wx messageCallBackGroupBuyExp miniType2 callBack body:<xml><ToUserName><![CDATA[gh_e305c7f6799a]]></ToUserName>
<FromUserName><![CDATA[ooLDX5dJiiB9HZmTRYdmfABmXDVw]]></FromUserName>
<CreateTime>1576324858</CreateTime>
<MsgType><![CDATA[text]]></MsgType>
<Content><![CDATA[1]]></Content>
<MsgId>22567547392683965</MsgId>
</xml>
2019-12-14 20:00:58.980  INFO 8700 --- [nio-8789-exec-9] c.p.a.c.ActivityWxMiniCallBackController : activity wx messageCallBackGroupBuyExp miniType2 fromUserName:ooLDX5dJiiB9HZmTRYdmfABmXDVw
Hibernate: select activitywx0_.id as id1_7_, activitywx0_.avatar_url as avatar_u2_7_, activitywx0_.class_id as class_id3_7_, activitywx0_.create_time as create_t4_7_, activitywx0_.mini_type as mini_typ5_7_, activitywx0_.nick_name as nick_nam6_7_, activitywx0_.open_id as open_id7_7_, activitywx0_.putao_id as putao_id8_7_, activitywx0_.service_openid as service_9_7_, activitywx0_.unionid as unionid10_7_ from activity_wx_mini_user_info activitywx0_ where activitywx0_.open_id=? order by activitywx0_.create_time desc limit ?
Hibernate: select salereluse0_.id as id1_22_, salereluse0_.camp_type as camp_typ2_22_, salereluse0_.class_id as class_id3_22_, salereluse0_.class_name as class_na4_22_, salereluse0_.create_time as create_t5_22_, salereluse0_.grade as grade6_22_, salereluse0_.open_id as open_id7_22_, salereluse0_.periods as periods8_22_, salereluse0_.periods_id as periods_9_22_, salereluse0_.putao_id as putao_i10_22_, salereluse0_.sale_phone as sale_ph11_22_, salereluse0_.source as source12_22_, salereluse0_.teacher_id as teacher13_22_, salereluse0_.teacher_nickname as teacher14_22_, salereluse0_.unit as unit15_22_, salereluse0_.url as url16_22_ from sale_rel_user salereluse0_ where salereluse0_.putao_id=? and salereluse0_.class_id=? limit ?
2019-12-14 20:00:58.985  INFO 8700 --- [nio-8789-exec-9] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=6,http_code=200,ip=121.51.66.16,putaoid=null,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniCallBack/messageCallBackGroupBuyExp,uuid=9dcb4e5e-d76e-4f9e-945c-b23d108b25c7]





rsync /search/user/pmm/online/activities-common-service.jar server01.bj3::root/odin/daemon/activities-common-service/bin/
rsync /search/user/pmm/online/activities-common-service.jar server02.bj3::root/odin/daemon/activities-common-service/bin/
rsync /search/user/pmm/online/activities-common-service.jar server03.bj3::root/odin/daemon/activities-common-service/bin/
rsync /search/user/pmm/online/activities-common-service.jar server04.bj3::root/odin/daemon/activities-common-service/bin/


@RequestParam(value = "click_id", required = false) String clickId,
                                        @RequestParam(value = "action_type",required = false) String actionType,
                                        @RequestParam("miniType") Integer miniType
openId:oo
                               xLDX5S7oHQ1NoxPIXtmV4mQNHGs&from:mini-2&miniType:2&source:772&classId:26&tok
                               xen:900b42539a&putaoId:116534&putaoid:116534|;phone:15726608628|;uuid:10.10.38.
                               x141|;sign:d8803f682e1e4f48034698b1fa79716a|;ts:1576823601237|;click_id=wx0qqfssbjkubek4&action_type=RESERVATION&miniType=2



/course_v2/activityCenter/pay/aliPay?uuid=10.10.38.141&putaoid=737697&sign=ed4318d96cb69b525ac4aa3220d4d174&ts=1576828416366&from=weixin&token=aeba13266f&classId=30&goodsId=162&source=2052&sourceToken=fKdj/9Ju&userPhone=14500000833


appid：wx969582cf18a722de
appsecret：1e7fc521e593a007fc084690501674da




https://api.weixin.qq.com/marketing/user_actions/add?version=v1.0&access_token=%s



2019-12-26 15:15:48.196  INFO 24704 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/index[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:55c829752b|;putaoId:737724|;putaoid:737724|;phone:18810539359|;uuid:10.10.38.141|;sign:3a2afd801ff6a7b4f082f1e8db6e1f66|;ts:1577344546377|;groupId:|;

2019-12-26 15:15:48.200  INFO 24704 --- [nio-8789-exec-4] c.p.a.c.ActivityMiniGroupBuyController   : ActivityMiniGroupBuyController.getIndex ( Integer putaoId:737724, Integer groupId:null,)

2019-12-26 15:20:41.073  INFO 24704 --- [nio-8789-exec-9] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/phone[PARAMS]openId:|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:|;putaoId:|;putaoid:|;phone:|;uuid:10.10.38.141|;sign:fc2f85a8855b45814e149aa7cac3614f|;ts:1577344839484|;encryptedData:9LCw477TFiGcaYh373ALZ7/DFFOgn7owVK3zDEfARs8GJbXzBIdJ0t8dW3EYwGzuwNGTBJMnbhT6t75jBSIPO2DMaeNbPoEh42AshJrYGL6mtHaO5+giN8ivI2ekhaTg11iA4Ri/JXofn1OrN1JP9OOqTMbQfMQrzqqXlzWdkbCWRN5tnAxNfvqlOX15Qs0n8oNM+2TyipF9j4evE4j1Aw==|;iv:x0xmSKujIbmw3SgnjrHK9w==|;nickName:|;
Hibernate: select activitywx0_.id as id1_9_, activitywx0_.appid as appid2_9_, activitywx0_.class_id as class_id3_9_, activitywx0_.create_time as create_t4_9_, activitywx0_.description as descript5_9_, activitywx0_.secret as secret6_9_, activitywx0_.service_appid as service_7_9_, activitywx0_.service_secret as service_8_9_, activitywx0_.source as source9_9_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2019-12-26 15:20:41.076  INFO 24704 --- [nio-8789-exec-9] c.p.a.controller.ActivityMiniController  : ActivityMiniController.userPhone: miniType:2,source:649,classId:26,


2019-12-26 15:23:13.298  INFO 24704 --- [nio-8789-exec-2] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/phone[PARAMS]openId:|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:|;putaoId:|;putaoid:|;phone:|;uuid:10.10.38.141|;sign:32b93b75d2a689089707ad3ec51878e3|;ts:1577344991751|;encryptedData:5VavITGTFGWyfDiDqww37ZXTRAvjPxI92zENRIJwdtOAVhdwm09SNKY9XNFuqPFWRztmVVpDQ7B1ng3sErwYWHnNzOhNTP2N40EYZEYa8+QYFM/3SOJy3YV/vUv97n1Yzh2QMC+TqgwllIPGKnb7QOq6hdfgw4ET0Q1vMepgurMLUwWuKrRGU9wIc50psbLCNNYDbSN/A87fZ1LqZSFgTQ==|;iv:FyPCHXEXMIPXa711Aye4gA==|;nickName:|;
Hibernate: select activitywx0_.id as id1_9_, activitywx0_.appid as appid2_9_, activitywx0_.class_id as class_id3_9_, activitywx0_.create_time as create_t4_9_, activitywx0_.description as descript5_9_, activitywx0_.secret as secret6_9_, activitywx0_.service_appid as service_7_9_, activitywx0_.service_secret as service_8_9_, activitywx0_.source as source9_9_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2019-12-26 15:23:13.316  INFO 24704 --- [nio-8789-exec-2] c.p.a.controller.ActivityMiniController  : ActivityMiniController.userPhone: miniType:2,source:649,classId:26,
2019-12-26 15:23:13.316  INFO 24704 --- [nio-8789-exec-2] c.p.a.controller.ActivityMiniController  : user phone encryptedData:5VavITGTFGWyfDiDqww37ZXTRAvjPxI92zENRIJwdtOAVhdwm09SNKY9XNFuqPFWRztmVVpDQ7B1ng3sErwYWHnNzOhNTP2N40EYZEYa8+QYFM/3SOJy3YV/vUv97n1Yzh2QMC+TqgwllIPGKnb7QOq6hdfgw4ET0Q1vMepgurMLUwWuKrRGU9wIc50psbLCNNYDbSN/A87fZ1LqZSFgTQ==
2019-12-26 15:23:13.318  INFO 24704 --- [nio-8789-exec-2] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=19,http_code=200,ip=121.69.42.54,putaoid=,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/phone,uuid=e240e6fe-22f0-42c2-a4a4-e4c8caeb6d3d]
2019-12-26 15:23:20.598  INFO 24704 --- [nio-8789-exec-3] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/phone[PARAMS]openId:|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:|;putaoId:|;putaoid:|;phone:|;uuid:10.10.38.141|;sign:e62542fb19e7a423ba3bef6495f17be5|;ts:1577344999101|;encryptedData:0Q4gqb27M8S4/9LIi8a3mfWuFG84SkjBHikbqYssFl8D6qhbf9g3aJNrCzvm33BOCY0Md77yZae6ztbNDqVk7plkR7KqcLx5ACRwjr3jEM5VT5ymWxnFhgd7fF8Zrf5ofhkpoq4xt96G9vKxB7RLHJWyZd9FiFIWn2nhtSn+nVSwPl9Bo6AvHtwLLBHSrVgJnVUq2RfAkM494u+r3ZIRvw==|;iv:5HadpwR6yTt7z4lNzTgbxw==|;nickName:|;
Hibernate: select activitywx0_.id as id1_9_, activitywx0_.appid as appid2_9_, activitywx0_.class_id as class_id3_9_, activitywx0_.create_time as create_t4_9_, activitywx0_.description as descript5_9_, activitywx0_.secret as secret6_9_, activitywx0_.service_appid as service_7_9_, activitywx0_.service_secret as service_8_9_, activitywx0_.source as source9_9_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2019-12-26 15:23:20.601  INFO 24704 --- [nio-8789-exec-3] c.p.a.controller.ActivityMiniController  : ActivityMiniController.userPhone: miniType:2,source:649,classId:26,
2019-12-26 15:23:20.601  INFO 24704 --- [nio-8789-exec-3] c.p.a.controller.ActivityMiniController  : user phone encryptedData:0Q4gqb27M8S4/9LIi8a3mfWuFG84SkjBHikbqYssFl8D6qhbf9g3aJNrCzvm33BOCY0Md77yZae6ztbNDqVk7plkR7KqcLx5ACRwjr3jEM5VT5ymWxnFhgd7fF8Zrf5ofhkpoq4xt96G9vKxB7RLHJWyZd9FiFIWn2nhtSn+nVSwPl9Bo6AvHtwLLBHSrVgJnVUq2RfAkM494u+r3ZIRvw==
2019-12-26 15:23:20.602  INFO 24704 --- [nio-8789-exec-3] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=3,http_code=200,ip=121.69.42.54,putaoid=,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/phone,uuid=1a2dea26-842b-4052-9ce8-349872091e3a]



4.1.1、上课前一天提醒
发送用户：体验营报名用户
短信触发：开课日期前1天19：00
短信内容：【葡萄英语】家长您好，您报名的葡萄英语体验营明天就要开课啦！提醒您安排好时间上课，不见不散哦！

4.1.2、开课当天未出勤提醒
发送用户：未学习体验营的用户
短信触发：开课日期当天20：00
短信内容：【葡萄英语】家长您好，葡萄英语体验营今天开课啦！提醒您记得上课哦。完成第1课，即可获得首课学习电子证书！

4.1.3、次日缺勤提醒
发送用户：未学习体验营的用户
短信触发：开课次日10：00
短信内容：【葡萄英语】家长您好，您已缺勤葡萄英语体验营昨天的课程，今天记得补课哦~其他小朋友已经学习课程获得了首课学习证书哦，快来学习吧！

4.2、特训营短信
4.2.1、上课前一天提醒
发送用户：特训营报名用户
短信触发：开课日期前1天19：00
短信内容：【葡萄英语】家长您好，您报名的葡萄英语特训营明天就要开课啦！提醒您安排好时间上课，不见不散哦！

4.2.2、开课当天未出勤提醒
发送用户：报名后未学习特训营的用户
短信触发：开课日期当天20：00
短信内容：【葡萄英语】家长您好，葡萄英语特训营今天开课啦！提醒您安排时间上课哦。

4.2.3、次日缺勤提醒
发送用户：报名后未学习特训营的用户
短信触发：开课次日10：00
短信内容：【葡萄英语】家长您好，您已缺勤葡萄英语特训营昨天的课程，今天记得补课哦，再不学习就要落后咯~


'SF6026028931122'
'SF1006566478419'
'SF1006566478428'
'SF1006566478455'
'SF1006566478437'
'SF1006566478446'



UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省福州市福清市\",\"town\":\"福清市江镜镇酒店村委对面\"}', `consignee_phone` = '18567902602', `create_time` = '2019-12-21 08:57:43', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF6026028931122', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210857439611', `order_id` = 32068, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '薛云琴', `user_phone` = '18567902602', `update_time` = '2019-12-21 08:57:44', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17735;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省福州市闽侯县\",\"town\":\"万科又一城\"}', `consignee_phone` = '13055255205', `create_time` = '2019-12-21 08:57:49', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478419', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210857496566', `order_id` = 32067, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '薛女士', `user_phone` = '13055255205', `update_time` = '2019-12-21 08:57:50', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17736;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省福州市平潭县\",\"town\":\"世界城一期\"}', `consignee_phone` = '15280095598', `create_time` = '2019-12-21 08:58:26', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478428', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210858261901', `order_id` = 32071, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '江作坦', `user_phone` = '13655087600', `update_time` = '2019-12-21 08:58:26', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17737;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省福州市平潭县\",\"town\":\"世界城一期29＃508\"}', `consignee_phone` = '13609577160', `create_time` = '2019-12-21 09:03:55', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478455', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210903551472', `order_id` = 32069, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '郑凌艳', `user_phone` = '13609577160', `update_time` = '2019-12-21 09:03:55', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17739;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"辽宁省盘锦市大洼区\",\"town\":\"剑桥小镇24号楼一单元402\"}', `consignee_phone` = '13188586998', `create_time` = '2019-12-21 09:27:32', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478437', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210927329252', `order_id` = 32077, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '荣艳华', `user_phone` = '13188586998', `update_time` = '2019-12-21 09:27:33', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17741;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"吉林省长春市绿园区\",\"town\":\"汽车大路君瑞天成三期\"}', `consignee_phone` = '13578974257', `create_time` = '2019-12-21 12:18:31', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478446', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912211218312062', `order_id` = 32053, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '邓维娜', `user_phone` = '13578974257', `update_time` = '2019-12-21 12:18:32', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17766;




Hibernate: select supplepack0_.id as id1_34_, supplepack0_.days as days2_34_, supplepack0_.supple_name as supple_n3_34_, supplepack0_.supple_type as supple_t4_34_, supplepack0_.unit as unit5_34_ from supple_package_info supplepack0_ where supplepack0_.id in (?)
Hibernate: select actimsgsms0_.id as id1_1_0_, actimsgsms0_.activity_id as activity2_1_0_, actimsgsms0_.content as content3_1_0_, actimsgsms0_.course_type as course_t4_1_0_, actimsgsms0_.create_time as create_t5_1_0_, actimsgsms0_.del as del6_1_0_, actimsgsms0_.description as descript7_1_0_, actimsgsms0_.title as title8_1_0_ from acti_msg_sms_record actimsgsms0_ where actimsgsms0_.id=?
Hibernate: select activtiyce0_.id as id1_14_, activtiyce0_.activity_id as activity2_14_, activtiyce0_.activity_type as activity3_14_, activtiyce0_.class_id as class_id4_14_, activtiyce0_.create_time as create_t5_14_, activtiyce0_.dis_count_code as dis_coun6_14_, activtiyce0_.goods_id as goods_id7_14_, activtiyce0_.group_id as group_id8_14_, activtiyce0_.open_id as open_id9_14_, activtiyce0_.order_id as order_i10_14_, activtiyce0_.pay_status as pay_sta11_14_, activtiyce0_.putao_id as putao_i12_14_, activtiyce0_.source as source13_14_, activtiyce0_.unit as unit14_14_, activtiyce0_.user_phone as user_ph15_14_ from activtiy_center_order activtiyce0_ where activtiyce0_.putao_id=? order by activtiyce0_.create_time desc limit ?
java.lang.Exception: cannot find order By putaoId or firstByPutaoId.getActivityId() is null
	at com.putaoabc.activitiescommonservice.service.ActivityMsgService.getPackageName(ActivityMsgService.java:102)
	at com.putaoabc.activitiescommonservice.service.ActivityMsgService.replacePlaceholder(ActivityMsgService.java:172)
	at com.putaoabc.activitiescommonservice.service.ActivityMsgService.sendCustomizedSMS(ActivityMsgService.java:217)
	at com.putaoabc.activitiescommonservice.service.ActivityMsgService.sendMsg(ActivityMsgService.java:187)
	at com.putaoabc.activitiescommonservice.controller.ActivityZeroClassIdController.OpenCourse(ActivityZeroClassIdController.java:169)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)
	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:866)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)
	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)
	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)
	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)
	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)
	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)
	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)
	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)
	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)
	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)
	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)
	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
	at java.lang.Thread.run(Thread.java:748)
Hibernate: select periodscla0_.class_id as class_id1_29_, periodscla0_.activity_id as activity2_29_, periodscla0_.activity_type as activity3_29_, periodscla0_.camp_id as camp_id4_29_, periodscla0_.class_code_url as class_co5_29_, periodscla0_.class_name as class_na6_29_, periodscla0_.class_status as class_st7_29_, periodscla0_.course_type as course_t8_29_, periodscla0_.course_type_details as course_t9_29_, periodscla0_.create_time as create_10_29_, periodscla0_.device as device11_29_, periodscla0_.grade as grade12_29_, periodscla0_.opening_date as opening13_29_, periodscla0_.periods as periods14_29_, periodscla0_.periods_describe as periods15_29_, periodscla0_.periods_type as periods16_29_, periodscla0_.pred_num as pred_nu17_29_, periodscla0_.school_id as school_18_29_, periodscla0_.school_name as school_19_29_, periodscla0_.st_name as st_name20_29_, periodscla0_.teacher_id as teacher21_29_, periodscla0_.teacher_wx_num as teacher22_29_, periodscla0_.update_code_num as update_23_29_, periodscla0_.update_code_type as update_24_29_, periodscla0_.update_time as update_25_29_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
2020-01-08 12:52:35.843  INFO 19191 --- [nio-8789-exec-4] s.c.a.AnnotationConfigApplicationContext : Refreshing SpringClientFactory-order-service: startup date [Wed Jan 08 12:52:35 CST 2020]; parent: org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext@7085bdee
2020-01-08 12:52:35.864  INFO 19191 --- [nio-8789-exec-4] f.a.AutowiredAnnotationBeanPostProcessor : JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
2020-01-08 12:52:35.874  INFO 19191 --- [nio-8789-exec-4] c.netflix.config.ChainedDynamicProperty  : Flipping property: order-service.ribbon.ActiveConnectionsLimit to use NEXT property: niws.loadbalancer.availabilityFilteringRule.activeConnectionsLimit = 2147483647
2020-01-08 12:52:35.875  INFO 19191 --- [nio-8789-exec-4] c.n.u.concurrent.ShutdownEnabledTimer    : Shutdown hook installed for: NFLoadBalancer-PingTimer-order-service
2020-01-08 12:52:35.876  INFO 19191 --- [nio-8789-exec-4] c.netflix.loadbalancer.BaseLoadBalancer  : Client: order-service instantiated a LoadBalancer: DynamicServerListLoadBalancer:{NFLoadBalancer:name=order-service,current list of Servers=[],Load balancer stats=Zone stats: {},Server stats: []}ServerList:null
2020-01-08 12:52:35.877  INFO 19191 --- [nio-8789-exec-4] c.n.l.DynamicServerListLoadBalancer      : Using serverListUpdater PollingServerListUpdater
2020-01-08 12:52:35.878  INFO 19191 --- [nio-8789-exec-4] c.netflix.config.ChainedDynamicProperty  : Flipping property: order-service.ribbon.ActiveConnectionsLimit to use NEXT property: niws.loadbalancer.availabilityFilteringRule.activeConnectionsLimit = 2147483647
2020-01-08 12:52:35.878  INFO 19191 --- [nio-8789-exec-4] c.n.l.DynamicServerListLoadBalancer      : DynamicServerListLoadBalancer for client order-service initialized: DynamicServerListLoadBalancer:{NFLoadBalancer:name=order-service,current list of Servers=[172.21.0.4:8771],Load balancer stats=Zone stats: {defaultzone=[Zone:defaultzone;	Instance count:1;	Active connections count: 0;	Circuit breaker tripped count: 0;	Active connections per server: 0.0;]
},Server stats: [[Server:172.21.0.4:8771;	Zone:defaultZone;	Total Requests:0;	Successive connection failure:0;	Total blackout seconds:0;	Last connection made:Thu Jan 01 08:00:00 CST 1970;	First connection made: Thu Jan 01 08:00:00 CST 1970;	Active Connections:0;	total failure count in last (1000) msecs:0;	average resp time:0.0;	90 percentile resp time:0.0;	95 percentile resp time:0.0;	min resp time:0.0;	max resp time:0.0;	stddev resp time:0.0]
]}ServerList:org.springframework.cloud.netflix.ribbon.eureka.DomainExtractingServerList@6b53b485
2020-01-08 12:52:35.925  INFO 19191 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=1253,http_code=200,ip=121.69.42.54,putaoid=737820,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/zero/openCourse/classId,uuid=0e00bed4-b777-4266-97c1-eb1ee056ffd4]



Hibernate: select activtiyce0_.id as id1_14_, activtiyce0_.activity_id as activity2_14_, activtiyce0_.activity_type as activity3_14_, activtiyce0_.class_id as class_id4_14_, activtiyce0_.create_time as create_t5_14_, activtiyce0_.dis_count_code as dis_coun6_14_, activtiyce0_.goods_id as goods_id7_14_, activtiyce0_.group_id as group_id8_14_, activtiyce0_.open_id as open_id9_14_, activtiyce0_.order_id as order_i10_14_, activtiyce0_.pay_status as pay_sta11_14_, activtiyce0_.putao_id as putao_i12_14_, activtiyce0_.source as source13_14_, activtiyce0_.unit as unit14_14_, activtiyce0_.user_phone as user_ph15_14_ from activtiy_center_order activtiyce0_ where activtiyce0_.putao_id=? order by activtiyce0_.create_time desc limit ?
org.springframework.dao.InvalidDataAccessApiUsageException: The given id must not be null!; nested exception is java.lang.IllegalArgumentException: The given id must not be null!
	at org.springframework.orm.jpa.EntityManagerFactoryUtils.convertJpaAccessExceptionIfPossible(EntityManagerFactoryUtils.java:367)
	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:227)
	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:527)
	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)
	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:242)
	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:153)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:135)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.data.repository.core.support.SurroundingTransactionDetectorMethodInterceptor.invoke(SurroundingTransactionDetectorMethodInterceptor.java:61)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)
	at com.sun.proxy.$Proxy159.findById(Unknown Source)
	at com.putaoabc.activitiescommonservice.service.ActivityMsgService.getPackageName(ActivityMsgService.java:115)
	at com.putaoabc.activitiescommonservice.service.ActivityMsgService.replacePlaceholder(ActivityMsgService.java:183)
	at com.putaoabc.activitiescommonservice.service.ActivityMsgService.sendCustomizedSMS(ActivityMsgService.java:228)
	at com.putaoabc.activitiescommonservice.service.ActivityMsgService.sendMsg(ActivityMsgService.java:198)
	at com.putaoabc.activitiescommonservice.controller.ActivityZeroClassIdController.OpenCourse(ActivityZeroClassIdController.java:169)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)
	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:866)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)
	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)
	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)
	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)
	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)
	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)
	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)
	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)
	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)
	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)
	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)
	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
	at java.lang.Thread.run(Thread.java:748)
Caused by: java.lang.IllegalArgumentException: The given id must not be null!
	at org.springframework.util.Assert.notNull(Assert.java:193)
	at org.springframework.data.jpa.repository.support.SimpleJpaRepository.findById(SimpleJpaRepository.java:223)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.data.repository.core.support.RepositoryComposition$RepositoryFragments.invoke(RepositoryComposition.java:377)
	at org.springframework.data.repository.core.support.RepositoryComposition.invoke(RepositoryComposition.java:200)
	at org.springframework.data.repository.core.support.RepositoryFactorySupport$ImplementationMethodExecutionInterceptor.invoke(RepositoryFactorySupport.java:629)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.data.repository.core.support.RepositoryFactorySupport$QueryExecutorMethodInterceptor.doInvoke(RepositoryFactorySupport.java:593)
	at org.springframework.data.repository.core.support.RepositoryFactorySupport$QueryExecutorMethodInterceptor.invoke(RepositoryFactorySupport.java:578)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.data.projection.DefaultMethodInvokingMethodInterceptor.invoke(DefaultMethodInvokingMethodInterceptor.java:59)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)
	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)
	... 68 more
Hibernate: select periodscla0_.class_id as class_id1_29_, periodscla0_.activity_id as activity2_29_, periodscla0_.activity_type as activity3_29_, periodscla0_.camp_id as camp_id4_29_, periodscla0_.class_code_url as class_co5_29_, periodscla0_.class_name as class_na6_29_, periodscla0_.class_status as class_st7_29_, periodscla0_.course_type as course_t8_29_, periodscla0_.course_type_details as course_t9_29_, periodscla0_.create_time as create_10_29_, periodscla0_.device as device11_29_, periodscla0_.grade as grade12_29_, periodscla0_.opening_date as opening13_29_, periodscla0_.periods as periods14_29_, periodscla0_.periods_describe as periods15_29_, periodscla0_.periods_type as periods16_29_, periodscla0_.pred_num as pred_nu17_29_, periodscla0_.school_id as school_18_29_, periodscla0_.school_name as school_19_29_, periodscla0_.st_name as st_name20_29_, periodscla0_.teacher_id as teacher21_29_, periodscla0_.teacher_wx_num as teacher22_29_, periodscla0_.update_code_num as update_23_29_, periodscla0_.update_code_type as update_24_29_, periodscla0_.update_time as update_25_29_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fi





UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"广东省东莞市厚街镇\",\"town\":\"涌口红花林厚环路73号之一（二楼）\"}', `consignee_phone` = '13712911322', `create_time` = '2019-12-31 14:07:21', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912311407213406', `order_id` = 34120, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '王小姐', `user_phone` = '13712911322', `update_time` = '2019-12-31 14:07:21', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19867;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"北京市北京市朝阳区\",\"town\":\"北京朝阳区东坝北京奥林匹克花园151-2-401\"}', `consignee_phone` = '13811938648', `create_time` = '2019-12-31 10:49:11', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912311049118139', `order_id` = 34079, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '夏侯', `user_phone` = '13811938648', `update_time` = '2019-12-31 10:49:12', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19796;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"四川省成都市双流区\",\"town\":\"成都双流文星光电大道289号蓝润华府春天\"}', `consignee_phone` = '18030535900', `create_time` = '2019-12-30 20:31:07', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912302031074852', `order_id` = 33961, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '王海燕', `user_phone` = '18030535900', `update_time` = '2019-12-30 20:31:08', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19705;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"四川省成都市双流区\",\"town\":\"西航港街道双华路三段邦泰华府公馆\"}', `consignee_phone` = '18117838668', `create_time` = '2019-12-30 20:30:22', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912302030229533', `order_id` = 33973, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '殷霞', `user_phone` = '18117838668', `update_time` = '2019-12-30 20:30:22', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19703;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"广东省广州市荔湾区\",\"town\":\"流花路君湖华庭t2栋1304\"}', `consignee_phone` = '18578627413', `create_time` = '2019-12-30 19:35:57', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912301935575401', `order_id` = 33912, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '叶欣然', `user_phone` = '18578627413', `update_time` = '2019-12-30 19:35:57', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19667;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"广东省广州市海珠区\",\"town\":\"江南大道中隔山新街15号303\"}', `consignee_phone` = '15902097249', `create_time` = '2019-12-30 19:19:51', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912301919516506', `order_id` = 33941, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '陈建杭', `user_phone` = '13751833751', `update_time` = '2019-12-30 19:19:52', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19660;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"江苏省南京市浦口区\",\"town\":\"江浦街道新浦路105号江佑铂庭16幢1002室\"}', `consignee_phone` = '18652980721', `create_time` = '2019-12-30 18:41:26', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912301841266380', `order_id` = 33925, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '郭婷玉', `user_phone` = '18652980721', `update_time` = '2019-12-30 18:41:27', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19644;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"江苏省南京市浦口区\",\"town\":\"新浦路105号江佑铂庭16-1002室\"}', `consignee_phone` = '18651826461', `create_time` = '2019-12-30 18:40:44', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912301840441452', `order_id` = 33927, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '梁少卿', `user_phone` = '18651826461', `update_time` = '2019-12-30 18:40:45', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19643;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"天津市天津市西青区\",\"town\":\"外环实业公司院内新增2号（天津标信检测有限公司四楼）\"}', `consignee_phone` = '18622232343', `create_time` = '2019-12-30 10:40:38', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912301040388442', `order_id` = 33783, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '周琳', `user_phone` = '18622232343', `update_time` = '2019-12-30 10:40:38', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19533;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省厦门市思明区\",\"town\":\"珍珠湾花园小区\"}', `consignee_phone` = '13799732160', `create_time` = '2019-12-29 18:34:12', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291834129324', `order_id` = 33606, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '花园', `user_phone` = '13799732160', `update_time` = '2019-12-29 18:34:12', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19440;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省厦门市思明区\",\"town\":\"珍珠湾花园小区\"}', `consignee_phone` = '18150891630', `create_time` = '2019-12-29 18:27:58', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291827582019', `order_id` = 33678, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '珍珠', `user_phone` = '18150891630', `update_time` = '2019-12-29 18:27:58', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19438;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省厦门市思明区\",\"town\":\"珍珠湾花园小区\"}', `consignee_phone` = '18250817836', `create_time` = '2019-12-29 18:21:41', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291821411828', `order_id` = 33682, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '丁丁', `user_phone` = '18250817836', `update_time` = '2019-12-29 18:21:41', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19435;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"广东省佛山市顺德区\",\"town\":\"北滘镇坤洲一街三巷9号\"}', `consignee_phone` = '13690820921', `create_time` = '2019-12-29 17:41:37', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291741371812', `order_id` = 33641, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '黄小姐', `user_phone` = '13690820921', `update_time` = '2019-12-29 17:41:37', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19411;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"吉林省长春市二道区\",\"town\":\"昆山路与东环路交汇东润枫景10-2-1728\"}', `consignee_phone` = '13134458723', `create_time` = '2019-12-29 17:36:16', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291736166856', `order_id` = 33633, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '柏亟亟', `user_phone` = '13134458723', `update_time` = '2019-12-29 17:36:17', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19410;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省厦门市思明区\",\"town\":\"珍珠湾花园小区\"}', `consignee_phone` = '18959219150', `create_time` = '2019-12-29 17:02:48', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291702487056', `order_id` = 33612, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '光谷', `user_phone` = '18959219150', `update_time` = '2019-12-29 17:02:49', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19382;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"陕西省西安市长安区\",\"town\":\"子午大道智慧城西门\"}', `consignee_phone` = '13289391887', `create_time` = '2019-12-29 16:41:31', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291641313050', `order_id` = 33600, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '张培', `user_phone` = '13289391887', `update_time` = '2019-12-29 16:41:31', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19368;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"陕西省咸阳市三原县\",\"town\":\"疾控中心\"}', `consignee_phone` = '13402935155', `create_time` = '2019-12-29 16:39:30', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291639301811', `order_id` = 33603, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '周阿丽', `user_phone` = '13402935155', `update_time` = '2019-12-29 16:39:31', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19367;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"黑龙江省哈尔滨市道外区\",\"town\":\"大新街333号B栋2单元3001\"}', `consignee_phone` = '13936019039', `create_time` = '2019-12-29 13:23:14', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291323145203', `order_id` = 33559, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '王伟', `user_phone` = '13936019039', `update_time` = '2019-12-29 13:23:14', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19350;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"黑龙江省哈尔滨市南岗区\",\"town\":\"崇德街17号\"}', `consignee_phone` = '13069877783', `create_time` = '2019-12-29 13:18:20', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912291318206253', `order_id` = 33563, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '贾小猫', `user_phone` = '13069877783', `update_time` = '2019-12-29 13:18:20', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 19349;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"北京市北京市海淀区\",\"town\":\"银谷大厦9层910\"}', `consignee_phone` = '15726608628', `create_time` = '2019-12-25 17:09:19', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912251709193047', `order_id` = 32887, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '刘星玮', `user_phone` = '15726608628', `update_time` = '2019-12-25 17:09:20', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 18576;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"北京市北京市朝阳区\",\"town\":\"建外SOHOB座2902\"}', `consignee_phone` = '15617660346', `create_time` = '2019-12-25 17:06:28', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912251706281405', `order_id` = 32889, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '杨薇', `user_phone` = '15617660346', `update_time` = '2019-12-25 17:06:28', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 18575;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"贵州省黔东南苗族侗族自治州凯里市\",\"town\":\"洗马河状元府\"}', `conasignee_phone` = '15885836688', `create_time` = '2019-12-24 07:27:35', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = NULL, `express_com_name` = NULL, `express_status` = 0, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912240727358097', `order_id` = 32636, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '胡彤', `user_phone` = '15329559922', `update_time` = '2019-12-24 07:27:35', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 18314;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"吉林省长春市绿园区\",\"town\":\"汽车大路君瑞天成三期\"}', `consignee_phone` = '13578974257', `create_time` = '2019-12-21 12:18:31', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478446', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912211218312062', `order_id` = 32053, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '邓维娜', `user_phone` = '13578974257', `update_time` = '2019-12-21 12:18:32', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17766;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"辽宁省盘锦市大洼区\",\"town\":\"剑桥小镇24号楼一单元402\"}', `consignee_phone` = '13188586998', `create_time` = '2019-12-21 09:27:32', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478437', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210927329252', `order_id` = 32077, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '荣艳华', `user_phone` = '13188586998', `update_time` = '2019-12-21 09:27:33', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17741;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省福州市平潭县\",\"town\":\"世界城一期29＃508\"}', `consignee_phone` = '13609577160', `create_time` = '2019-12-21 09:03:55', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478455', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210903551472', `order_id` = 32069, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '郑凌艳', `user_phone` = '13609577160', `update_time` = '2019-12-21 09:03:55', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17739;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省福州市平潭县\",\"town\":\"世界城一期\"}', `consignee_phone` = '15280095598', `create_time` = '2019-12-21 08:58:26', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478428', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210858261901', `order_id` = 32071, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '江作坦', `user_phone` = '13655087600', `update_time` = '2019-12-21 08:58:26', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17737;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省福州市闽侯县\",\"town\":\"万科又一城\"}', `consignee_phone` = '13055255205', `create_time` = '2019-12-21 08:57:49', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF1006566478419', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210857496566', `order_id` = 32067, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '薛女士', `user_phone` = '13055255205', `update_time` = '2019-12-21 08:57:50', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17736;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省福州市福清市\",\"town\":\"福清市江镜镇酒店村委对面\"}', `consignee_phone` = '18567902602', `create_time` = '2019-12-21 08:57:43', `detail` = '[{\"id\":\"1001\",\"name\":\"精美绘本\",\"num\":5,\"url\":\"abc.url\"\n}]', `express_code` = 'SF6026028931122', `express_com_name` = '顺丰速运', `express_status` = 1, `finish_time` = NULL, `goods_id` = 28, `order_code` = '201912210857439611', `order_id` = 32068, `order_name` = '葡萄英语体验营绘本礼包', `user_name` = '薛云琴', `user_phone` = '18567902602', `update_time` = '2019-12-21 08:57:44', `delivery_time` = NULL, `suspend_shipment` = NULL WHERE `pd_id` = 17735;



UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"广东省东莞市厚街镇\"	\"town\":\"涌口红花林厚环路73号之一（二楼）\"}',`consignee_phone` = '13712911322',`create_time` = '2019-12-31 14:07:21',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611372768',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912311407213406',`order_id` = 34120,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '王小姐',`user_phone` = '13712911322',`update_time` = '2019-12-31 14:07:21',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19867;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"北京市北京市朝阳区\"	\"town\":\"北京朝阳区东坝北京奥林匹克花园151-2-401\"}',`consignee_phone` = '13811938648',`create_time` = '2019-12-31 10:49:11',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611372889',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912311049118139',`order_id` = 34079,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '夏侯',`user_phone` = '13811938648',`update_time` = '2019-12-31 10:49:12',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19796;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"四川省成都市双流区\"	\"town\":\"成都双流文星光电大道289号蓝润华府春天\"}',`consignee_phone` = '18030535900',`create_time` = '2019-12-30 20:31:07',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611372986',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912302031074852',`order_id` = 33961,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '王海燕',`user_phone` = '18030535900',`update_time` = '2019-12-30 20:31:08',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19705;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"四川省成都市双流区\"	\"town\":\"西航港街道双华路三段邦泰华府公馆\"}',`consignee_phone` = '18117838668',`create_time` = '2019-12-30 20:30:22',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611373040',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912302030229533',`order_id` = 33973,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '殷霞',`user_phone` = '18117838668',`update_time` = '2019-12-30 20:30:22',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19703;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"广东省广州市荔湾区\"	\"town\":\"流花路君湖华庭t2栋1304\"}',`consignee_phone` = '18578627413',`create_time` = '2019-12-30 19:35:57',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611373147',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912301935575401',`order_id` = 33912,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '叶欣然',`user_phone` = '18578627413',`update_time` = '2019-12-30 19:35:57',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19667;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"广东省广州市海珠区\"	\"town\":\"江南大道中隔山新街15号303\"}',`consignee_phone` = '15902097249',`create_time` = '2019-12-30 19:19:51',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611373273',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912301919516506',`order_id` = 33941,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '陈建杭',`user_phone` = '13751833751',`update_time` = '2019-12-30 19:19:52',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19660;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"江苏省南京市浦口区\"	\"town\":\"江浦街道新浦路105号江佑铂庭16幢1002室\"}',`consignee_phone` = '18652980721',`create_time` = '2019-12-30 18:41:26',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611373392',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912301841266380',`order_id` = 33925,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '郭婷玉',`user_phone` = '18652980721',`update_time` = '2019-12-30 18:41:27',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19644;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"江苏省南京市浦口区\"	\"town\":\"新浦路105号江佑铂庭16-1002室\"}',`consignee_phone` = '18651826461',`create_time` = '2019-12-30 18:40:44',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611373422',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912301840441452',`order_id` = 33927,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '梁少卿',`user_phone` = '18651826461',`update_time` = '2019-12-30 18:40:45',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19643;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"天津市天津市西青区\"	\"town\":\"外环实业公司院内新增2号（天津标信检测有限公司四楼）\"}',`consignee_phone` = '18622232343',`create_time` = '2019-12-30 10:40:38',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611373501',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912301040388442',`order_id` = 33783,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '周琳',`user_phone` = '18622232343',`update_time` = '2019-12-30 10:40:38',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19533;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省厦门市思明区\"	\"town\":\"珍珠湾花园小区\"}',`consignee_phone` = '13799732160',`create_time` = '2019-12-29 18:34:12',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '邮政',`express_com_name` = '9897536706772,`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291834129324',`order_id` = 33606,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '花园',`user_phone` = '13799732160',`update_time` = '2019-12-29 18:34:12',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19440;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省厦门市思明区\"	\"town\":\"珍珠湾花园小区\"}',`consignee_phone` = '18150891630',`create_time` = '2019-12-29 18:27:58',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '邮政',`express_com_name` = '9897536706773',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291827582019',`order_id` = 33678,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '珍珠',`user_phone` = '18150891630',`update_time` = '2019-12-29 18:27:58',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19438;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省厦门市思明区\"	\"town\":\"珍珠湾花园小区\"}',`consignee_phone` = '18250817836',`create_time` = '2019-12-29 18:21:41',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '邮政',`express_com_name` = '9897536706774',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291821411828',`order_id` = 33682,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '丁丁',`user_phone` = '18250817836',`update_time` = '2019-12-29 18:21:41',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19435;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"广东省佛山市顺德区\"	\"town\":\"北滘镇坤洲一街三巷9号\"}',`consignee_phone` = '13690820921',`create_time` = '2019-12-29 17:41:37',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325611373655',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291741371812',`order_id` = 33641,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '黄小姐',`user_phone` = '13690820921',`update_time` = '2019-12-29 17:41:37',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19411;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"吉林省长春市二道区\"	\"town\":\"昆山路与东环路交汇东润枫景10-2-1728\"}',`consignee_phone` = '13134458723',`create_time` = '2019-12-29 17:36:16',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325614214917',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291736166856',`order_id` = 33633,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '柏亟亟',`user_phone` = '13134458723',`update_time` = '2019-12-29 17:36:17',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19410;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"福建省厦门市思明区\"	\"town\":\"珍珠湾花园小区\"}',`consignee_phone` = '18959219150',`create_time` = '2019-12-29 17:02:48',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '邮政',`express_com_name` = '9897536706775',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291702487056',`order_id` = 33612,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '光谷',`user_phone` = '18959219150',`update_time` = '2019-12-29 17:02:49',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19382;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"陕西省西安市长安区\"	\"town\":\"子午大道智慧城西门\"}',`consignee_phone` = '13289391887',`create_time` = '2019-12-29 16:41:31',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325614215057',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291641313050',`order_id` = 33600,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '张培',`user_phone` = '13289391887',`update_time` = '2019-12-29 16:41:31',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19368;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"陕西省咸阳市三原县\"	\"town\":\"疾控中心\"}',`consignee_phone` = '13402935155',`create_time` = '2019-12-29 16:39:30',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325614215155',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291639301811',`order_id` = 33603,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '周阿丽',`user_phone` = '13402935155',`update_time` = '2019-12-29 16:39:31',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19367;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"黑龙江省哈尔滨市道外区\"	\"town\":\"大新街333号B栋2单元3001\"}',`consignee_phone` = '13936019039',`create_time` = '2019-12-29 13:23:14',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325614215262',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291323145203',`order_id` = 33559,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '王伟',`user_phone` = '13936019039',`update_time` = '2019-12-29 13:23:14',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19350;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"黑龙江省哈尔滨市南岗区\"	\"town\":\"崇德街17号\"}',`consignee_phone` = '13069877783',`create_time` = '2019-12-29 13:18:20',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325614215386',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912291318206253',`order_id` = 33563,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '贾小猫',`user_phone` = '13069877783',`update_time` = '2019-12-29 13:18:20',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 19349;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"北京市北京市海淀区\"	\"town\":\"银谷大厦9层910\"}',`consignee_phone` = '15726608628',`create_time` = '2019-12-25 17:09:19',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325614215457',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912251709193047',`order_id` = 32887,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '刘星玮',`user_phone` = '15726608628',`update_time` = '2019-12-25 17:09:20',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 18576;
UPDATE `miniprogram`.`pd_order` SET `address` = '{\"province\":\"贵州省黔东南苗族侗族自治州凯里市\"	\"town\":\"洗马河状元府\"}',`consignee_phone` = '15885836688',`create_time` = '2019-12-24 07:27:35',`detail` = '[{\"id\":\"1001\"	\"name\":\"精美绘本\"	\"num\":5	\"url\":\"abc.url\"\n}]',`express_code` = '圆通',`express_com_name` = 'YT4325614215531',`express_status` = 1,`finish_time` = NULL,`goods_id` = 28,`order_code` = '201912240727358097',`order_id` = 32636,`order_name` = '葡萄英语体验营绘本礼包',`user_name` = '胡彤',`user_phone` = '15329559922',`update_time` = '2019-12-24 07:27:35',`delivery_time` = NULL,`suspend_shipment` = NULL WHERE `pd_id` = 18314;





/course_v2/activityCenter/admission/checkAdmission?uuid=10.10.38.141&putaoid=737853&sign=33ad534e623c4cfb867e846fe71251f3&ts=1578624526181&from=weixin&putaoId=737853&token=98277d9b25&source=2055&sourceToken=&classId=99&tId=41














/course_v2/activityCenter/miniGroupBuy/pay?openId=ooLDX5U5gNash6O3cwpHt_objNK8&from=mini-2&miniType=2&source=771&classId=119&token=37d36fbbfb&putaoId=737912&putaoid=737912&phone=17812768861&uuid=10.10.38.141&sign=093bb30ff5f39d71820f5bdad99a72ee&ts=1578648586056&goodsId=178&userPhone=17812768861&ip=10.10.38.141&accountKey=wx_ptyyfwh3&unit=23&groupId=&


2020-01-10 19:09:55.869  INFO 12995 --- [nio-8789-exec-6] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/reg[PARAMS]openId:|;from:mini-1|;miniType:1|;source:758|;classId:107|;token:|;putaoId:|;putaoid:|;phone:|;tId:|;uuid:10.10.38.141|;sign:a81b4bce2f99aba2849363f77355ab68|;ts:1578654594854|;code:021yjJQs1rw81g0PqGSs1LGwQs1yjJQ1|;
Hibernate: select activitywx0_.id as id1_12_, activitywx0_.appid as appid2_12_, activitywx0_.class_id as class_id3_12_, activitywx0_.create_time as create_t4_12_, activitywx0_.description as descript5_12_, activitywx0_.secret as secret6_12_, activitywx0_.service_appid as service_7_12_, activitywx0_.service_secret as service_8_12_, activitywx0_.source as source9_12_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2020-01-10 19:09:56.067  INFO 12995 --- [nio-8789-exec-6] c.p.a.controller.ActivityMiniController  : info{
	"openid":"o0RZt5c2rQbyXDxFYHo_o-t3Ynzk",
	"session_key":"RVofTZyAZdJlav4c16ndaQ=="
}
Hibernate: select activitywx0_.id as id1_13_, activitywx0_.avatar_url as avatar_u2_13_, activitywx0_.class_id as class_id3_13_, activitywx0_.create_time as create_t4_13_, activitywx0_.mini_type as mini_typ5_13_, activitywx0_.nick_name as nick_nam6_13_, activitywx0_.open_id as open_id7_13_, activitywx0_.phone_num as phone_nu8_13_, activitywx0_.putao_id as putao_id9_13_, activitywx0_.service_openid as service10_13_, activitywx0_.unionid as unionid11_13_ from activity_wx_mini_user_info activitywx0_ where activitywx0_.open_id=? order by activitywx0_.create_time desc limit ?
2020-01-10 19:09:56.069  INFO 12995 --- [nio-8789-exec-6] c.p.a.controller.ActivityMiniController  : awmunull
2020-01-10 19:09:56.069  INFO 12995 --- [nio-8789-exec-6] c.p.a.controller.ActivityMiniController  : result{
	"openId":"o0RZt5c2rQbyXDxFYHo_o-t3Ynzk"
}
2020-01-10 19:09:56.070  INFO 12995 --- [nio-8789-exec-6] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=200,http_code=200,ip=121.69.42.54,putaoid=,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/reg,uuid=e3a7ca2f-f825-47e8-9558-17823768d361]
2020-01-10 19:10:02.416  INFO 12995 --- [nio-8789-exec-5] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/phone[PARAMS]openId:o0RZt5c2rQbyXDxFYHo_o-t3Ynzk|;from:mini-1|;miniType:1|;source:758|;classId:107|;token:|;putaoId:|;putaoid:|;phone:|;tId:|;uuid:10.10.38.141|;sign:d32ccdf489b2b3c48fef8ca7a37494bd|;ts:1578654601522|;encryptedData:rJ+KE9x/tvG9v9+kEHA4QRZ1ErvtA/dMKVXzfnBmjdvgF1oiSlgGoKhqHmUAEqoFzHCYgaiqZt4bOhziloxGamB51FucCPbUa530EG84n7B5xghqyCKSJCnrKqFo061ewbuMsiKR+THQOs8Oj0dNI3ctVOdnrob/hmz1vnBhNpKjNIyMW2a+KmIodn0Er70m8Ghxs/XNz+tUWspGxf9ISA==|;iv:Zthn5rRuCt/zYi5JXTMG0A==|;nickName:|;
Hibernate: select activitywx0_.id as id1_12_, activitywx0_.appid as appid2_12_, activitywx0_.class_id as class_id3_12_, activitywx0_.create_time as create_t4_12_, activitywx0_.description as descript5_12_, activitywx0_.secret as secret6_12_, activitywx0_.service_appid as service_7_12_, activitywx0_.service_secret as service_8_12_, activitywx0_.source as source9_12_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2020-01-10 19:10:02.417  INFO 12995 --- [nio-8789-exec-5] c.p.a.controller.ActivityMiniController  : ActivityMiniController.userPhone: miniType:1,source:758,classId:107,
2020-01-10 19:10:02.417  INFO 12995 --- [nio-8789-exec-5] c.p.a.controller.ActivityMiniController  : user phone encryptedData:rJ+KE9x/tvG9v9+kEHA4QRZ1ErvtA/dMKVXzfnBmjdvgF1oiSlgGoKhqHmUAEqoFzHCYgaiqZt4bOhziloxGamB51FucCPbUa530EG84n7B5xghqyCKSJCnrKqFo061ewbuMsiKR+THQOs8Oj0dNI3ctVOdnrob/hmz1vnBhNpKjNIyMW2a+KmIodn0Er70m8Ghxs/XNz+tUWspGxf9ISA==
PMM::{"phoneNumber":"18810539359","purePhoneNumber":"18810539359","countryCode":"86","watermark":{"timestamp":1578654600,"appid":"wxb3421a31d942a608"}}
Hibernate: select activitywx0_.id as id1_13_, activitywx0_.avatar_url as avatar_u2_13_, activitywx0_.class_id as class_id3_13_, activitywx0_.create_time as create_t4_13_, activitywx0_.mini_type as mini_typ5_13_, activitywx0_.nick_name as nick_nam6_13_, activitywx0_.open_id as open_id7_13_, activitywx0_.phone_num as phone_nu8_13_, activitywx0_.putao_id as putao_id9_13_, activitywx0_.service_openid as service10_13_, activitywx0_.unionid as unionid11_13_ from activity_wx_mini_user_info activitywx0_ where activitywx0_.open_id=? order by activitywx0_.create_time desc limit ?
Hibernate: insert into activity_wx_mini_user_info (avatar_url, class_id, mini_type, nick_name, open_id, phone_num, putao_id, service_openid, unionid) values (?, ?, ?, ?, ?, ?, ?, ?, ?)
2020-01-10 19:10:02.433  INFO 12995 --- [nio-8789-exec-5] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=17,http_code=200,ip=121.69.42.54,putaoid=,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/phone,uuid=726bd9b1-27a2-4dd3-8aae-ab5109b2ea4b]
2020-01-10 19:10:02.656  INFO 12995 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/system/experience/buyAuth[PARAMS]openId:o0RZt5c2rQbyXDxFYHo_o-t3Ynzk|;from:mini-1|;miniType:1|;source:758|;classId:107|;token:738341700d|;putaoId:737939|;putaoid:737939|;phone:18810539359|;tId:|;uuid:10.10.38.141|;sign:f6098fc2a9500b41f787759a993fad7d|;ts:1578654601750|;
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
2020-01-10 19:10:02.658  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : {"conditions":{"condition_forbid":[[{"leftoperator":"ifForbidOther","predicate":"eq","rightoperator":0}]],"condition_course":[[{"leftoperator":"mainCourse","predicate":"eq","rightoperator":0},{"leftoperator":"experienceCourse","predicate":"eq","rightoperator":0},{"leftoperator":"specialCourse","predicate":"eq","rightoperator":0}]],"condition_source":[[]]}}
2020-01-10 19:10:02.658  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : conditions_sub[[{"leftoperator":"mainCourse","predicate":"eq","rightoperator":0},{"leftoperator":"experienceCourse","predicate":"eq","rightoperator":0},{"leftoperator":"specialCourse","predicate":"eq","rightoperator":0}]]
2020-01-10 19:10:02.658  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : 3
Hibernate: select experience0_.id as id1_20_, experience0_.create_time as create_t2_20_, experience0_.end_time as end_time3_20_, experience0_.level as level4_20_, experience0_.putao_id as putao_id5_20_, experience0_.type as type6_20_, experience0_.unit as unit7_20_ from experience_camp_activity_record experience0_ where experience0_.putao_id=? and (experience0_.unit in (? , ? , ? , ?))
2020-01-10 19:10:02.660  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : judgeExperienceCamp  putaoId:737939  records[]
Hibernate: select experience0_.id as id1_20_, experience0_.create_time as create_t2_20_, experience0_.end_time as end_time3_20_, experience0_.level as level4_20_, experience0_.putao_id as putao_id5_20_, experience0_.type as type6_20_, experience0_.unit as unit7_20_ from experience_camp_activity_record experience0_ where experience0_.putao_id=? and (experience0_.unit in (? , ? , ? , ?))
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : judgeSpecialCamp  putaoId:737939  records[]
2020-01-10 19:10:02.661 ERROR 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : substring0==0&&0==0&&0==0
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.util.ActivityAdmissionUtil         : [0==0, &&, 0==0, &&, 0==0]stack
2020-01-10 19:10:02.661 ERROR 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : subSubResult ==>>true
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.util.ActivityAdmissionUtil         : [true]stack
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : subResult =>true
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : conditions_sub[[]]
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : 0
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.util.ActivityAdmissionUtil         : [1==1]stack
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : subResult =>true
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : conditions_sub[[{"leftoperator":"ifForbidOther","predicate":"eq","rightoperator":0}]]
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : 1
Hibernate: select activityre0_.id as id1_9_, activityre0_.activity_id as activity2_9_, activityre0_.activity_name as activity3_9_, activityre0_.class_id as class_id4_9_, activityre0_.create_time as create_t5_9_, activityre0_.experience_id as experien6_9_, activityre0_.putao_id as putao_id7_9_, activityre0_.return_day as return_d8_9_, activityre0_.return_money as return_m9_9_, activityre0_.return_platform as return_10_9_, activityre0_.return_type as return_11_9_, activityre0_.status as status12_9_ from activity_return_money_record activityre0_ where activityre0_.putao_id=?
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : activityReturnMoneyRecordRepository.findAllByPutaoId(putaoId :737939), result:[]
2020-01-10 19:10:02.661 ERROR 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : substring2==0
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.util.ActivityAdmissionUtil         : [2==0]stack
2020-01-10 19:10:02.661 ERROR 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : subSubResult ==>>false
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.util.ActivityAdmissionUtil         : [false]stack
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : subResult =>false
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.service.ActivityAdmissionService   : change to true
2020-01-10 19:10:02.661  INFO 12995 --- [nio-8789-exec-4] c.p.a.util.ActivityAdmissionUtil         : [true, &&, true, &&, true]stack
2020-01-10 19:10:02.662  INFO 12995 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=6,http_code=200,ip=121.69.42.54,putaoid=737939,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/system/experience/buyAuth,uuid=a6c17dff-760f-4d94-bc81-33431e2a56c2]
2020-01-10 19:10:06.631  INFO 12995 --- [io-8789-exec-10] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/openCourse[PARAMS]openId:o0RZt5c2rQbyXDxFYHo_o-t3Ynzk|;from:mini-1|;miniType:1|;source:758|;classId:107|;token:738341700d|;putaoId:737939|;putaoid:737939|;phone:18810539359|;tId:|;uuid:10.10.38.141|;sign:799e731db767e59e449810fa83dcf80a|;ts:1578654605738|;level:1|;
Hibernate: select activitywx0_.id as id1_12_, activitywx0_.appid as appid2_12_, activitywx0_.class_id as class_id3_12_, activitywx0_.create_time as create_t4_12_, activitywx0_.description as descript5_12_, activitywx0_.secret as secret6_12_, activitywx0_.service_appid as service_7_12_, activitywx0_.service_secret as service_8_12_, activitywx0_.source as source9_12_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select activityca0_.id as id1_33_0_, activityca0_.activity_ids as activity2_33_0_, activityca0_.activity_type as activity3_33_0_, activityca0_.course_type as course_t4_33_0_, activityca0_.course_type_details as course_t5_33_0_, activityca0_.course_type_time as course_t6_33_0_, activityca0_.create_time as create_t7_33_0_, activityca0_.first_leads_end_time as first_le8_33_0_, activityca0_.first_leads_start_time as first_le9_33_0_, activityca0_.leads_type as leads_t10_33_0_, activityca0_.name as name11_33_0_, activityca0_.opening_date as opening12_33_0_, activityca0_.pred_num as pred_nu13_33_0_, activityca0_.second_leads_end_time as second_14_33_0_, activityca0_.second_leads_start_time as second_15_33_0_, activityca0_.second_opening_date as second_16_33_0_, activityca0_.update_code_cycle as update_17_33_0_, activityca0_.update_code_value as update_18_33_0_, activityca0_.update_periods_time as update_19_33_0_, activityca0_.update_time as update_20_33_0_ from t_activity_camp_info activityca0_ where activityca0_.id=?
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
2020-01-10 19:10:06.642  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : {"conditions":{"condition_forbid":[[{"leftoperator":"ifForbidOther","predicate":"eq","rightoperator":0}]],"condition_course":[[{"leftoperator":"mainCourse","predicate":"eq","rightoperator":0},{"leftoperator":"experienceCourse","predicate":"eq","rightoperator":0},{"leftoperator":"specialCourse","predicate":"eq","rightoperator":0}]],"condition_source":[[]]}}
2020-01-10 19:10:06.642  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : conditions_sub[[{"leftoperator":"mainCourse","predicate":"eq","rightoperator":0},{"leftoperator":"experienceCourse","predicate":"eq","rightoperator":0},{"leftoperator":"specialCourse","predicate":"eq","rightoperator":0}]]
2020-01-10 19:10:06.642  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : 3
Hibernate: select experience0_.id as id1_20_, experience0_.create_time as create_t2_20_, experience0_.end_time as end_time3_20_, experience0_.level as level4_20_, experience0_.putao_id as putao_id5_20_, experience0_.type as type6_20_, experience0_.unit as unit7_20_ from experience_camp_activity_record experience0_ where experience0_.putao_id=? and (experience0_.unit in (? , ? , ? , ?))
2020-01-10 19:10:06.643  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : judgeExperienceCamp  putaoId:737939  records[]
Hibernate: select experience0_.id as id1_20_, experience0_.create_time as create_t2_20_, experience0_.end_time as end_time3_20_, experience0_.level as level4_20_, experience0_.putao_id as putao_id5_20_, experience0_.type as type6_20_, experience0_.unit as unit7_20_ from experience_camp_activity_record experience0_ where experience0_.putao_id=? and (experience0_.unit in (? , ? , ? , ?))
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : judgeSpecialCamp  putaoId:737939  records[]
2020-01-10 19:10:06.644 ERROR 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : substring0==0&&0==0&&0==0
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [0==0, &&, 0==0, &&, 0==0]stack
2020-01-10 19:10:06.644 ERROR 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subSubResult ==>>true
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [true]stack
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subResult =>true
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : conditions_sub[[]]
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : 0
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [1==1]stack
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subResult =>true
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : conditions_sub[[{"leftoperator":"ifForbidOther","predicate":"eq","rightoperator":0}]]
2020-01-10 19:10:06.644  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : 1
Hibernate: select activityre0_.id as id1_9_, activityre0_.activity_id as activity2_9_, activityre0_.activity_name as activity3_9_, activityre0_.class_id as class_id4_9_, activityre0_.create_time as create_t5_9_, activityre0_.experience_id as experien6_9_, activityre0_.putao_id as putao_id7_9_, activityre0_.return_day as return_d8_9_, activityre0_.return_money as return_m9_9_, activityre0_.return_platform as return_10_9_, activityre0_.return_type as return_11_9_, activityre0_.status as status12_9_ from activity_return_money_record activityre0_ where activityre0_.putao_id=?
2020-01-10 19:10:06.645  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : activityReturnMoneyRecordRepository.findAllByPutaoId(putaoId :737939), result:[]
2020-01-10 19:10:06.645 ERROR 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : substring2==0
2020-01-10 19:10:06.645  INFO 12995 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [2==0]stack
2020-01-10 19:10:06.645 ERROR 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subSubResult ==>>false
2020-01-10 19:10:06.645  INFO 12995 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [false]stack
2020-01-10 19:10:06.645  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subResult =>false
2020-01-10 19:10:06.645  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : change to true
2020-01-10 19:10:06.645  INFO 12995 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [true, &&, true, &&, true]stack
Hibernate: select activityin0_.activity_id as activity1_6_, activityin0_.acti_msg_fixed as acti_msg2_6_, activityin0_.acti_msg_sms_record as acti_msg3_6_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_, activityin0_.activity_name as activity5_6_, activityin0_.activity_type as activity6_6_, activityin0_.activity_url as activity7_6_, activityin0_.cash_condition as cash_con8_6_, activityin0_.conditions as conditio9_6_, activityin0_.create_by as create_10_6_, activityin0_.create_time as create_11_6_, activityin0_.goods_price as goods_p12_6_, activityin0_.if_renew as if_rene13_6_, activityin0_.if_return_cash as if_retu14_6_, activityin0_.package_id as package15_6_, activityin0_.package_name as package16_6_, activityin0_.package_type as package17_6_, activityin0_.personal_type as persona18_6_, activityin0_.supple_id as supple_19_6_, activityin0_.unit as unit20_6_, activityin0_.update_by as update_21_6_, activityin0_.update_time as update_22_6_ from activity_info activityin0_ where activityin0_.activity_id=? limit ?
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select salereluse0_.id as id1_31_, salereluse0_.activity_id as activity2_31_, salereluse0_.back_teacher_name as back_tea3_31_, salereluse0_.camp_id as camp_id4_31_, salereluse0_.camp_type as camp_typ5_31_, salereluse0_.class_id as class_id6_31_, salereluse0_.class_name as class_na7_31_, salereluse0_.create_time as create_t8_31_, salereluse0_.grade as grade9_31_, salereluse0_.open_id as open_id10_31_, salereluse0_.opening_date as opening11_31_, salereluse0_.periods as periods12_31_, salereluse0_.periods_id as periods13_31_, salereluse0_.personal_type as persona14_31_, salereluse0_.putao_id as putao_i15_31_, salereluse0_.sale_phone as sale_ph16_31_, salereluse0_.source as source17_31_, salereluse0_.teacher_id as teacher18_31_, salereluse0_.teacher_nickname as teacher19_31_, salereluse0_.unit as unit20_31_, salereluse0_.url as url21_31_ from sale_rel_user salereluse0_ where salereluse0_.putao_id=? and salereluse0_.camp_id=? limit ?
Hibernate: select activitygr0_.id as id1_34_, activitygr0_.activity_type as activity2_34_, activitygr0_.camp_id as camp_id3_34_, activitygr0_.create_time as create_t4_34_, activitygr0_.leads_type as leads_ty5_34_, activitygr0_.name as name6_34_, activitygr0_.type as type7_34_, activitygr0_.update_code_num as update_c8_34_, activitygr0_.update_code_type as update_c9_34_, activitygr0_.update_time as update_10_34_ from t_activity_group activitygr0_ where activitygr0_.camp_id=? limit ?
Hibernate: select * from t_activity_group_teacher where group_id=? and code_num<?  order by code_num desc ,teacher_id;
Hibernate: select salemaninf0_.id as id1_30_, salemaninf0_.camp_type as camp_typ2_30_, salemaninf0_.class_id as class_id3_30_, salemaninf0_.class_name as class_na4_30_, salemaninf0_.grade as grade5_30_, salemaninf0_.group_code_url as group_co6_30_, salemaninf0_.name as name7_30_, salemaninf0_.nick_name as nick_nam8_30_, salemaninf0_.periods as periods9_30_, salemaninf0_.periods_id as periods10_30_, salemaninf0_.phone as phone11_30_, salemaninf0_.source as source12_30_, salemaninf0_.status as status13_30_, salemaninf0_.teacher_status as teacher14_30_, salemaninf0_.url as url15_30_, salemaninf0_.wx as wx16_30_, salemaninf0_.wxid as wxid17_30_ from sale_man_info salemaninf0_ where salemaninf0_.id=? limit ?
Hibernate: insert into activity_save_teacher_fail (camp_id, class_id, fail_message, group_id, putao_id, save_status, source, unit) values (?, ?, ?, ?, ?, ?, ?, ?)
Hibernate: insert into activity_center_record (putao_id, refer_id, source) values (?, ?, ?)
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select activityin0_.activity_id as activity1_6_, activityin0_.acti_msg_fixed as acti_msg2_6_, activityin0_.acti_msg_sms_record as acti_msg3_6_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_, activityin0_.activity_name as activity5_6_, activityin0_.activity_type as activity6_6_, activityin0_.activity_url as activity7_6_, activityin0_.cash_condition as cash_con8_6_, activityin0_.conditions as conditio9_6_, activityin0_.create_by as create_10_6_, activityin0_.create_time as create_11_6_, activityin0_.goods_price as goods_p12_6_, activityin0_.if_renew as if_rene13_6_, activityin0_.if_return_cash as if_retu14_6_, activityin0_.package_id as package15_6_, activityin0_.package_name as package16_6_, activityin0_.package_type as package17_6_, activityin0_.personal_type as persona18_6_, activityin0_.supple_id as supple_19_6_, activityin0_.unit as unit20_6_, activityin0_.update_by as update_21_6_, activityin0_.update_time as update_22_6_ from activity_info activityin0_ where activityin0_.activity_id=? limit ?
Hibernate: select supplepack0_.id as id1_32_, supplepack0_.days as days2_32_, supplepack0_.supple_name as supple_n3_32_, supplepack0_.supple_type as supple_t4_32_, supplepack0_.unit as unit5_32_ from supple_package_info supplepack0_ where supplepack0_.id in (?)
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
2020-01-10 19:10:06.691  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityMsgService         : openingDate:2020-01-25 00:00:00.0
2020-01-10 19:10:06.691  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityMsgService         : sendSMSxxl(putaoId, classId);
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
2020-01-10 19:10:06.692  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityMsgService         : sendCustomizedSMS(putaoId:737939, classId:107);
2020-01-10 19:10:06.692  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityMsgService         : 111 ??"737939_107"
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
2020-01-10 19:10:06.693  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityMsgService         : 222 actiMsgWxTemplateRecordIdnull
2020-01-10 19:10:06.693  INFO 12995 --- [io-8789-exec-10] c.p.a.service.ActivityMsgService         : sendWXTemplateMsg(putaoId, classId);
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
2020-01-10 19:10:06.702  INFO 12995 --- [io-8789-exec-10] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=70,http_code=200,ip=121.69.42.54,putaoid=737939,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/openCourse,uuid=46754998-e767-42be-a90a-77804b8b61e6]
^C
















2020-01-10 19:20:49.410  INFO 12995 --- [nio-8789-exec-8] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/index[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:0d9139d077|;putaoId:121656|;putaoid:121656|;phone:18810539359|;uuid:10.10.38.141|;sign:d5481a453555f7ca905b7806760a9e1c|;ts:1578655248111|;groupId:|;
2020-01-10 19:20:49.415  INFO 12995 --- [nio-8789-exec-7] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/reg[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:0d9139d077|;putaoId:121656|;putaoid:121656|;phone:18810539359|;uuid:10.10.38.141|;sign:f571f0c313752a89cc9697094150cdd2|;ts:1578655248208|;code:011Zd2oM0AXDi829LnoM06CJnM0Zd2oE|;
Hibernate: select activitywx0_.id as id1_12_, activitywx0_.appid as appid2_12_, activitywx0_.class_id as class_id3_12_, activitywx0_.create_time as create_t4_12_, activitywx0_.description as descript5_12_, activitywx0_.secret as secret6_12_, activitywx0_.service_appid as service_7_12_, activitywx0_.service_secret as service_8_12_, activitywx0_.source as source9_12_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2020-01-10 19:20:49.418  INFO 12995 --- [nio-8789-exec-8] c.p.a.c.ActivityMiniGroupBuyController   : ActivityMiniGroupBuyController.getIndex ( Integer putaoId:121656, Integer groupId:null,)
2020-01-10 19:20:49.476  INFO 12995 --- [nio-8789-exec-8] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=66,http_code=200,ip=152.136.97.194,putaoid=121656,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniGroupBuy/index,uuid=374ab400-a21a-4921-a1c7-50b0ca7605af]
2020-01-10 19:20:49.606  INFO 12995 --- [nio-8789-exec-7] c.p.a.controller.ActivityMiniController  : info{
	"openid":"ooLDX5dJiiB9HZmTRYdmfABmXDVw",
	"session_key":"lFRGXSSAbEjfxskS96fmvw=="
}
Hibernate: select activitywx0_.id as id1_13_, activitywx0_.avatar_url as avatar_u2_13_, activitywx0_.class_id as class_id3_13_, activitywx0_.create_time as create_t4_13_, activitywx0_.mini_type as mini_typ5_13_, activitywx0_.nick_name as nick_nam6_13_, activitywx0_.open_id as open_id7_13_, activitywx0_.phone_num as phone_nu8_13_, activitywx0_.putao_id as putao_id9_13_, activitywx0_.service_openid as service10_13_, activitywx0_.unionid as unionid11_13_ from activity_wx_mini_user_info activitywx0_ where activitywx0_.open_id=? order by activitywx0_.create_time desc limit ?
2020-01-10 19:20:49.607  INFO 12995 --- [nio-8789-exec-7] c.p.a.controller.ActivityMiniController  : awmunull
2020-01-10 19:20:49.607  INFO 12995 --- [nio-8789-exec-7] c.p.a.controller.ActivityMiniController  : result{
	"openId":"ooLDX5dJiiB9HZmTRYdmfABmXDVw"
}
2020-01-10 19:20:49.608  INFO 12995 --- [nio-8789-exec-7] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=192,http_code=200,ip=152.136.97.194,putaoid=121656,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/reg,uuid=5afc11fa-2397-4310-a1c7-6537b42e3d51]
2020-01-10 19:20:49.759  INFO 12995 --- [nio-8789-exec-1] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/index[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:0d9139d077|;putaoId:121656|;putaoid:121656|;phone:18810539359|;uuid:10.10.38.141|;sign:8e5a9d57ee03ea136a46ef98343777bd|;ts:1578655248625|;groupId:|;
2020-01-10 19:20:49.759  INFO 12995 --- [nio-8789-exec-1] c.p.a.c.ActivityMiniGroupBuyController   : ActivityMiniGroupBuyController.getIndex ( Integer putaoId:121656, Integer groupId:null,)
2020-01-10 19:20:49.782  INFO 12995 --- [nio-8789-exec-1] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=23,http_code=200,ip=152.136.97.194,putaoid=121656,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniGroupBuy/index,uuid=af5bcddd-1c39-45aa-8f7b-f7418a12aff9]
2020-01-10 19:20:55.555  INFO 12995 --- [nio-8789-exec-5] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/phone[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:0d9139d077|;putaoId:121656|;putaoid:121656|;phone:18810539359|;uuid:10.10.38.141|;sign:1a3834a74fc6e4806e0c567d5acc1aa0|;ts:1578655254389|;encryptedData:/XwWIhHMvxilC5s9QhEcTYoSqJh9KodQe5QqZkenvHfqbzIGhqW967tuuDBzJo/Kb1ZAJQlxicC9JEDihB9MPELdQkqhOwkmNVljCgpF5fqzTjpItqu5tPCc7W2ompcMp60EVYdj2uf9fYSbhUVOEPXbAK6Z06uCVpLfmlxiFuHj+SZ2ZPDtWKu2CzCxcUWdNR/Ux2A7MVMrn1o18nZafA==|;iv:omE5wXfyRbkhT2hNNgpomw==|;nickName:|;
Hibernate: select activitywx0_.id as id1_12_, activitywx0_.appid as appid2_12_, activitywx0_.class_id as class_id3_12_, activitywx0_.create_time as create_t4_12_, activitywx0_.description as descript5_12_, activitywx0_.secret as secret6_12_, activitywx0_.service_appid as service_7_12_, activitywx0_.service_secret as service_8_12_, activitywx0_.source as source9_12_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2020-01-10 19:20:55.556  INFO 12995 --- [nio-8789-exec-5] c.p.a.controller.ActivityMiniController  : ActivityMiniController.userPhone: miniType:2,source:649,classId:26,
2020-01-10 19:20:55.556  INFO 12995 --- [nio-8789-exec-5] c.p.a.controller.ActivityMiniController  : user phone encryptedData:/XwWIhHMvxilC5s9QhEcTYoSqJh9KodQe5QqZkenvHfqbzIGhqW967tuuDBzJo/Kb1ZAJQlxicC9JEDihB9MPELdQkqhOwkmNVljCgpF5fqzTjpItqu5tPCc7W2ompcMp60EVYdj2uf9fYSbhUVOEPXbAK6Z06uCVpLfmlxiFuHj+SZ2ZPDtWKu2CzCxcUWdNR/Ux2A7MVMrn1o18nZafA==
PMM::{"phoneNumber":"18810539359","purePhoneNumber":"18810539359","countryCode":"86","watermark":{"timestamp":1578655254,"appid":"wxaa3dfe6a4618a88a"}}
Hibernate: select activitywx0_.id as id1_13_, activitywx0_.avatar_url as avatar_u2_13_, activitywx0_.class_id as class_id3_13_, activitywx0_.create_time as create_t4_13_, activitywx0_.mini_type as mini_typ5_13_, activitywx0_.nick_name as nick_nam6_13_, activitywx0_.open_id as open_id7_13_, activitywx0_.phone_num as phone_nu8_13_, activitywx0_.putao_id as putao_id9_13_, activitywx0_.service_openid as service10_13_, activitywx0_.unionid as unionid11_13_ from activity_wx_mini_user_info activitywx0_ where activitywx0_.open_id=? order by activitywx0_.create_time desc limit ?
Hibernate: insert into activity_wx_mini_user_info (avatar_url, class_id, mini_type, nick_name, open_id, phone_num, putao_id, service_openid, unionid) values (?, ?, ?, ?, ?, ?, ?, ?, ?)
2020-01-10 19:20:55.578  INFO 12995 --- [nio-8789-exec-5] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=22,http_code=200,ip=152.136.97.194,putaoid=121656,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/phone,uuid=803b176a-e9eb-4fd3-8023-66cce6850b5d]
2020-01-10 19:20:55.681  INFO 12995 --- [nio-8789-exec-6] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/index[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:fb9fc376dc|;putaoId:737940|;putaoid:737940|;phone:18810539359|;uuid:10.10.38.141|;sign:f91a05215b18f1a74638baad9ac73b9c|;ts:1578655254577|;groupId:|;
2020-01-10 19:20:55.682  INFO 12995 --- [nio-8789-exec-6] c.p.a.c.ActivityMiniGroupBuyController   : ActivityMiniGroupBuyController.getIndex ( Integer putaoId:737940, Integer groupId:null,)
2020-01-10 19:20:55.704  INFO 12995 --- [nio-8789-exec-6] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=22,http_code=200,ip=152.136.97.194,putaoid=737940,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniGroupBuy/index,uuid=5843aea6-0caa-441f-a904-1a4d91bf4eba]
2020-01-10 19:20:57.377  INFO 12995 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/pay[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:fb9fc376dc|;putaoId:737940|;putaoid:737940|;phone:18810539359|;uuid:10.10.38.141|;sign:199dbc0d17dc30ba3942160605263b50|;ts:1578655256245|;goodsId:178|;userPhone:18810539359|;ip:10.10.38.141|;accountKey:wx_ptyyfwh3|;unit:23|;groupId:|;
Hibernate: select periodscla0_.class_id as class_id1_27_0_, periodscla0_.activity_id as activity2_27_0_, periodscla0_.activity_type as activity3_27_0_, periodscla0_.camp_id as camp_id4_27_0_, periodscla0_.class_code_url as class_co5_27_0_, periodscla0_.class_name as class_na6_27_0_, periodscla0_.class_status as class_st7_27_0_, periodscla0_.course_type as course_t8_27_0_, periodscla0_.course_type_details as course_t9_27_0_, periodscla0_.create_time as create_10_27_0_, periodscla0_.device as device11_27_0_, periodscla0_.grade as grade12_27_0_, periodscla0_.opening_date as opening13_27_0_, periodscla0_.periods as periods14_27_0_, periodscla0_.periods_describe as periods15_27_0_, periodscla0_.periods_type as periods16_27_0_, periodscla0_.pred_num as pred_nu17_27_0_, periodscla0_.school_id as school_18_27_0_, periodscla0_.school_name as school_19_27_0_, periodscla0_.st_name as st_name20_27_0_, periodscla0_.teacher_id as teacher21_27_0_, periodscla0_.teacher_wx_num as teacher22_27_0_, periodscla0_.update_code_num as update_23_27_0_, periodscla0_.update_code_type as update_24_27_0_, periodscla0_.update_time as update_25_27_0_ from periods_class_info periodscla0_ where periodscla0_.class_id=?
2020-01-10 19:20:57.389 ERROR 12995 --- [nio-8789-exec-4] c.p.a.exception.GlobalExceptionHandler   : defaultErrorHandler-????:{}

org.springframework.dao.InvalidDataAccessApiUsageException: The given id must not be null!; nested exception is java.lang.IllegalArgumentException: The given id must not be null!
	at org.springframework.orm.jpa.EntityManagerFactoryUtils.convertJpaAccessExceptionIfPossible(EntityManagerFactoryUtils.java:367)
	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:227)
	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:527)
	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)
	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:242)
	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:153)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:135)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.data.repository.core.support.SurroundingTransactionDetectorMethodInterceptor.invoke(SurroundingTransactionDetectorMethodInterceptor.java:61)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)
	at com.sun.proxy.$Proxy156.findById(Unknown Source)
	at com.putaoabc.activitiescommonservice.controller.ActivityMiniGroupBuyController.activityOrder(ActivityMiniGroupBuyController.java:388)
	at com.putaoabc.activitiescommonservice.controller.ActivityMiniGroupBuyController$$FastClassBySpringCGLIB$$9b97b36e.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)
	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)
	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)
	at com.putaoabc.activitiescommonservice.controller.ActivityMiniGroupBuyController$$EnhancerBySpringCGLIB$$f5aa7b6b.activityOrder(<generated>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)
	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:866)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)
	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)
	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)
	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)
	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)
	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)
	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)
	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)
	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)
	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)
	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)
	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)
	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
	at java.lang.Thread.run(Thread.java:748)
Caused by: java.lang.IllegalArgumentException: The given id must not be null!
	at org.springframework.util.Assert.notNull(Assert.java:193)
	at org.springframework.data.jpa.repository.support.SimpleJpaRepository.findById(SimpleJpaRepository.java:223)
	at sun.reflect.GeneratedMethodAccessor279.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.data.repository.core.support.RepositoryComposition$RepositoryFragments.invoke(RepositoryComposition.java:377)
	at org.springframework.data.repository.core.support.RepositoryComposition.invoke(RepositoryComposition.java:200)
	at org.springframework.data.repository.core.support.RepositoryFactorySupport$ImplementationMethodExecutionInterceptor.invoke(RepositoryFactorySupport.java:629)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.data.repository.core.support.RepositoryFactorySupport$QueryExecutorMethodInterceptor.doInvoke(RepositoryFactorySupport.java:593)
	at org.springframework.data.repository.core.support.RepositoryFactorySupport$QueryExecutorMethodInterceptor.invoke(RepositoryFactorySupport.java:578)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.data.projection.DefaultMethodInvokingMethodInterceptor.invoke(DefaultMethodInvokingMethodInterceptor.java:59)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)
	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)
	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)
	... 73 common frames omitted

2020-01-10 19:20:57.390  INFO 12995 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=12,http_code=200,ip=152.136.97.194,putaoid=737940,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniGroupBuy/pay,uuid=35452d6a-21b9-48f6-b4c5-92782d7c5f91]
2020-01-10 19:21:00.732  INFO 12995 --- [trap-executor-0] c.n.d.s.r.aws.ConfigClusterResolver      : Resolving eureka endpoints via configuration
^C








2020-01-13 10:40:05.841  INFO 3611 --- [nio-8789-exec-8] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/reg[PARAMS]openId:|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:|;putaoId:|;putaoid:|;phone:|;uuid:10.10.38.141|;sign:f71913b1931a10415d6ef5d42ec30704|;ts:1578883205609|;code:001I1IKH1bKIG30kZZJH1epIKH1I1IKy|;
Hibernate: select activitywx0_.id as id1_12_, activitywx0_.appid as appid2_12_, activitywx0_.class_id as class_id3_12_, activitywx0_.create_time as create_t4_12_, activitywx0_.description as descript5_12_, activitywx0_.secret as secret6_12_, activitywx0_.service_appid as service_7_12_, activitywx0_.service_secret as service_8_12_, activitywx0_.source as source9_12_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2020-01-13 10:40:06.128  INFO 3611 --- [nio-8789-exec-8] c.p.a.controller.ActivityMiniController  : info{
	"openid":"ooLDX5dJiiB9HZmTRYdmfABmXDVw",
	"session_key":"P7Gg0UWMWMaUV7VRZk/uVA=="
}
Hibernate: select activitywx0_.id as id1_13_, activitywx0_.avatar_url as avatar_u2_13_, activitywx0_.class_id as class_id3_13_, activitywx0_.create_time as create_t4_13_, activitywx0_.mini_type as mini_typ5_13_, activitywx0_.nick_name as nick_nam6_13_, activitywx0_.open_id as open_id7_13_, activitywx0_.phone_num as phone_nu8_13_, activitywx0_.putao_id as putao_id9_13_, activitywx0_.service_openid as service10_13_, activitywx0_.unionid as unionid11_13_ from activity_wx_mini_user_info activitywx0_ where activitywx0_.open_id=? order by activitywx0_.create_time desc limit ?
2020-01-13 10:40:06.144  INFO 3611 --- [nio-8789-exec-8] c.p.a.controller.ActivityMiniController  : awmu{
	"classId":26,
	"createTime":1578656076000,
	"id":72,
	"miniType":2,
	"openId":"ooLDX5dJiiB9HZmTRYdmfABmXDVw",
	"phoneNum":"18810539359",
	"putaoId":737941
}
2020-01-13 10:40:06.155  INFO 3611 --- [nio-8789-exec-8] c.p.a.controller.ActivityMiniController  : result{
	"phone":"18810539359",
	"openId":"ooLDX5dJiiB9HZmTRYdmfABmXDVw",
	"putaoId":737941,
	"token":"1e4527e567"
}
2020-01-13 10:40:06.156  INFO 3611 --- [nio-8789-exec-8] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=314,http_code=200,ip=152.136.97.194,putaoid=,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/reg,uuid=5f0f2d86-47f3-4e96-832a-f43ac46cda60]
2020-01-13 10:40:06.336  INFO 3611 --- [io-8789-exec-10] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/index[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:1e4527e567|;putaoId:737941|;putaoid:737941|;phone:18810539359|;uuid:10.10.38.141|;sign:d9037d69d6395502df7aee036d9dcb6b|;ts:1578883206418|;groupId:|;
2020-01-13 10:40:06.344  INFO 3611 --- [io-8789-exec-10] c.p.a.c.ActivityMiniGroupBuyController   : ActivityMiniGroupBuyController.getIndex ( Integer putaoId:737941, Integer groupId:null,)
2020-01-13 10:40:06.445  INFO 3611 --- [io-8789-exec-10] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=108,http_code=200,ip=152.136.97.194,putaoid=737941,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniGroupBuy/index,uuid=7e454b9e-fd6e-46b0-a805-9d8a3ea1c6b9]
2020-01-13 10:40:14.731  INFO 3611 --- [nio-8789-exec-9] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/phone[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:1e4527e567|;putaoId:737941|;putaoid:737941|;phone:18810539359|;uuid:10.10.38.141|;sign:354843335f41964b10926a0e84f907f0|;ts:1578883214805|;encryptedData:+vnR2Hd/QYA4Zue7pC8B+Ubuoff9Yj2h3mIC6cm8Eac0lSpbdYMlmxDkQ27L7GWZ9EycbtNw/vdpELhf86qgCD3xrTyS6MKOZpEkRallXFimRkQ3ydC9iz94KzFFUeMQ+OSenbWuh/60MCnkzD2RSLc6RoWk1e6S1WGGVbpTB2M0Gvxg6cxUbMLWhkF3rknOFQLJJ26V4puMPNdgbdQKcw==|;iv:d4fcJHZiPz1jc/y5lnsDGw==|;nickName:|;
Hibernate: select activitywx0_.id as id1_12_, activitywx0_.appid as appid2_12_, activitywx0_.class_id as class_id3_12_, activitywx0_.create_time as create_t4_12_, activitywx0_.description as descript5_12_, activitywx0_.secret as secret6_12_, activitywx0_.service_appid as service_7_12_, activitywx0_.service_secret as service_8_12_, activitywx0_.source as source9_12_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2020-01-13 10:40:14.761  INFO 3611 --- [nio-8789-exec-9] c.p.a.controller.ActivityMiniController  : ActivityMiniController.userPhone: miniType:2,source:649,classId:26,
2020-01-13 10:40:14.761  INFO 3611 --- [nio-8789-exec-9] c.p.a.controller.ActivityMiniController  : user phone encryptedData:+vnR2Hd/QYA4Zue7pC8B+Ubuoff9Yj2h3mIC6cm8Eac0lSpbdYMlmxDkQ27L7GWZ9EycbtNw/vdpELhf86qgCD3xrTyS6MKOZpEkRallXFimRkQ3ydC9iz94KzFFUeMQ+OSenbWuh/60MCnkzD2RSLc6RoWk1e6S1WGGVbpTB2M0Gvxg6cxUbMLWhkF3rknOFQLJJ26V4puMPNdgbdQKcw==
PMM::{"phoneNumber":"18810539359","purePhoneNumber":"18810539359","countryCode":"86","watermark":{"timestamp":1578883213,"appid":"wxaa3dfe6a4618a88a"}}
Hibernate: select activitywx0_.id as id1_13_, activitywx0_.avatar_url as avatar_u2_13_, activitywx0_.class_id as class_id3_13_, activitywx0_.create_time as create_t4_13_, activitywx0_.mini_type as mini_typ5_13_, activitywx0_.nick_name as nick_nam6_13_, activitywx0_.open_id as open_id7_13_, activitywx0_.phone_num as phone_nu8_13_, activitywx0_.putao_id as putao_id9_13_, activitywx0_.service_openid as service10_13_, activitywx0_.unionid as unionid11_13_ from activity_wx_mini_user_info activitywx0_ where activitywx0_.open_id=? order by activitywx0_.create_time desc limit ?
2020-01-13 10:40:17.016  INFO 3611 --- [nio-8789-exec-9] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=2281,http_code=200,ip=152.136.97.194,putaoid=737941,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/phone,uuid=d87b6579-5a7d-4f52-aaeb-f189adaa6620]





2020-01-13 10:55:05.120  INFO 3611 --- [nio-8789-exec-2] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/reg[PARAMS]openId:|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:|;putaoId:|;putaoid:|;phone:|;uuid:10.10.38.141|;sign:cda99a31e6f103c3c24eb5f3650fd074|;ts:1578884105001|;code:0014MNXO0KNBx62JdyZO0nL5YO04MNX7|;
Hibernate: select activitywx0_.id as id1_12_, activitywx0_.appid as appid2_12_, activitywx0_.class_id as class_id3_12_, activitywx0_.create_time as create_t4_12_, activitywx0_.description as descript5_12_, activitywx0_.secret as secret6_12_, activitywx0_.service_appid as service_7_12_, activitywx0_.service_secret as service_8_12_, activitywx0_.source as source9_12_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2020-01-13 10:55:05.299  INFO 3611 --- [nio-8789-exec-2] c.p.a.controller.ActivityMiniController  : info{
	"openid":"ooLDX5dJiiB9HZmTRYdmfABmXDVw",
	"session_key":"fdqV5Xl9SRK4u5NrDzyoYQ=="
}
Hibernate: select activitywx0_.id as id1_13_, activitywx0_.avatar_url as avatar_u2_13_, activitywx0_.class_id as class_id3_13_, activitywx0_.create_time as create_t4_13_, activitywx0_.mini_type as mini_typ5_13_, activitywx0_.nick_name as nick_nam6_13_, activitywx0_.open_id as open_id7_13_, activitywx0_.phone_num as phone_nu8_13_, activitywx0_.putao_id as putao_id9_13_, activitywx0_.service_openid as service10_13_, activitywx0_.unionid as unionid11_13_ from activity_wx_mini_user_info activitywx0_ where activitywx0_.open_id=? order by activitywx0_.create_time desc limit ?
2020-01-13 10:55:05.301  INFO 3611 --- [nio-8789-exec-2] c.p.a.controller.ActivityMiniController  : awmunull
2020-01-13 10:55:05.301  INFO 3611 --- [nio-8789-exec-2] c.p.a.controller.ActivityMiniController  : result{
	"openId":"ooLDX5dJiiB9HZmTRYdmfABmXDVw"
}
2020-01-13 10:55:05.302  INFO 3611 --- [nio-8789-exec-2] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=181,http_code=200,ip=152.136.97.194,putaoid=,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/reg,uuid=e50af88c-115e-4a98-b4d0-b4f8c2fc3b7a]
2020-01-13 10:55:05.438  INFO 3611 --- [nio-8789-exec-3] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/index[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:|;putaoId:|;putaoid:|;phone:|;uuid:10.10.38.141|;sign:a66a973574ac30201a93c1059b7e8d72|;ts:1578884105521|;groupId:|;
2020-01-13 10:55:05.438  INFO 3611 --- [nio-8789-exec-3] c.p.a.c.ActivityMiniGroupBuyController   : ActivityMiniGroupBuyController.getIndex ( Integer putaoId:null, Integer groupId:null,)
2020-01-13 10:55:05.452  INFO 3611 --- [nio-8789-exec-3] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=13,http_code=200,ip=152.136.97.194,putaoid=,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniGroupBuy/index,uuid=f8e76884-4efb-4c7a-976f-065e832594fc]
2020-01-13 10:55:10.144  INFO 3611 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/mini/phone[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:|;putaoId:|;putaoid:|;phone:|;uuid:10.10.38.141|;sign:6b612c58a319fc88f7fa9e3797c4d763|;ts:1578884110206|;encryptedData:BEypihXRB2+YO4NePkd2dlLd9UatiXqTOU4doIptBdDdwSR0GtasKOOxLyQLq3u2DIAdw4VqGWmv3naKk6m4bt3ULVMa1b8efEJpsiBUMlZil3PGDCjHEXB+el2am6MtFY/lt9TcUO2haM/pwYlgZ4JFjGiMeC9mrlPAyXR+uw0m264r7HT7vDLQ3Z7mdHNo+zkDnk8l9paCm561BcHvAg==|;iv:aiSWBixlJj2Hza6DjOloeA==|;nickName:|;
Hibernate: select activitywx0_.id as id1_12_, activitywx0_.appid as appid2_12_, activitywx0_.class_id as class_id3_12_, activitywx0_.create_time as create_t4_12_, activitywx0_.description as descript5_12_, activitywx0_.secret as secret6_12_, activitywx0_.service_appid as service_7_12_, activitywx0_.service_secret as service_8_12_, activitywx0_.source as source9_12_ from activity_wx_mini_info activitywx0_ where activitywx0_.id=? limit ?
2020-01-13 10:55:10.147  INFO 3611 --- [nio-8789-exec-4] c.p.a.controller.ActivityMiniController  : ActivityMiniController.userPhone: miniType:2,source:649,classId:26,
2020-01-13 10:55:10.147  INFO 3611 --- [nio-8789-exec-4] c.p.a.controller.ActivityMiniController  : user phone encryptedData:BEypihXRB2+YO4NePkd2dlLd9UatiXqTOU4doIptBdDdwSR0GtasKOOxLyQLq3u2DIAdw4VqGWmv3naKk6m4bt3ULVMa1b8efEJpsiBUMlZil3PGDCjHEXB+el2am6MtFY/lt9TcUO2haM/pwYlgZ4JFjGiMeC9mrlPAyXR+uw0m264r7HT7vDLQ3Z7mdHNo+zkDnk8l9paCm561BcHvAg==
PMM::{"phoneNumber":"18810539359","purePhoneNumber":"18810539359","countryCode":"86","watermark":{"timestamp":1578884108,"appid":"wxaa3dfe6a4618a88a"}}
Hibernate: select activitywx0_.id as id1_13_, activitywx0_.avatar_url as avatar_u2_13_, activitywx0_.class_id as class_id3_13_, activitywx0_.create_time as create_t4_13_, activitywx0_.mini_type as mini_typ5_13_, activitywx0_.nick_name as nick_nam6_13_, activitywx0_.open_id as open_id7_13_, activitywx0_.phone_num as phone_nu8_13_, activitywx0_.putao_id as putao_id9_13_, activitywx0_.service_openid as service10_13_, activitywx0_.unionid as unionid11_13_ from activity_wx_mini_user_info activitywx0_ where activitywx0_.open_id=? order by activitywx0_.create_time desc limit ?
Hibernate: insert into activity_wx_mini_user_info (avatar_url, class_id, mini_type, nick_name, open_id, phone_num, putao_id, service_openid, unionid) values (?, ?, ?, ?, ?, ?, ?, ?, ?)
2020-01-13 10:55:10.170  INFO 3611 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=25,http_code=200,ip=152.136.97.194,putaoid=,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/mini/phone,uuid=95834c86-3bfc-47d3-be1b-096c579a6521]
2020-01-13 10:55:10.307  INFO 3611 --- [nio-8789-exec-5] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/index[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:5681dbb3b6|;putaoId:738005|;putaoid:738005|;phone:18810539359|;uuid:10.10.38.141|;sign:e2db473ac981b0764063f4d3ae9fdbf9|;ts:1578884110410|;groupId:|;
2020-01-13 10:55:10.308  INFO 3611 --- [nio-8789-exec-5] c.p.a.c.ActivityMiniGroupBuyController   : ActivityMiniGroupBuyController.getIndex ( Integer putaoId:738005, Integer groupId:null,)
2020-01-13 10:55:10.360  INFO 3611 --- [nio-8789-exec-5] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=51,http_code=200,ip=152.136.97.194,putaoid=738005,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniGroupBuy/index,uuid=d30e6bf9-67d7-4716-b197-53710134d184]
2020-01-13 10:55:12.632  INFO 3611 --- [nio-8789-exec-6] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/pay[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:5681dbb3b6|;putaoId:738005|;putaoid:738005|;phone:18810539359|;uuid:10.10.38.141|;sign:5e0404c12330d44731580594f8a5b23a|;ts:1578884112722|;goodsId:178|;userPhone:18810539359|;ip:10.10.38.141|;accountKey:wx_ptyyfwh3|;unit:23|;groupId:|;
Hibernate: select periodscla0_.class_id as class_id1_27_0_, periodscla0_.activity_id as activity2_27_0_, periodscla0_.activity_type as activity3_27_0_, periodscla0_.camp_id as camp_id4_27_0_, periodscla0_.class_code_url as class_co5_27_0_, periodscla0_.class_name as class_na6_27_0_, periodscla0_.class_status as class_st7_27_0_, periodscla0_.course_type as course_t8_27_0_, periodscla0_.course_type_details as course_t9_27_0_, periodscla0_.create_time as create_10_27_0_, periodscla0_.device as device11_27_0_, periodscla0_.grade as grade12_27_0_, periodscla0_.opening_date as opening13_27_0_, periodscla0_.periods as periods14_27_0_, periodscla0_.periods_describe as periods15_27_0_, periodscla0_.periods_type as periods16_27_0_, periodscla0_.pred_num as pred_nu17_27_0_, periodscla0_.school_id as school_18_27_0_, periodscla0_.school_name as school_19_27_0_, periodscla0_.st_name as st_name20_27_0_, periodscla0_.teacher_id as teacher21_27_0_, periodscla0_.teacher_wx_num as teacher22_27_0_, periodscla0_.update_code_num as update_23_27_0_, periodscla0_.update_code_type as update_24_27_0_, periodscla0_.update_time as update_25_27_0_ from periods_class_info periodscla0_ where periodscla0_.class_id=?
2020-01-13 10:55:12.664  INFO 3611 --- [nio-8789-exec-6] c.p.a.c.ActivityMiniGroupBuyController   : 0_????????????
2020-01-13 10:55:12.664  INFO 3611 --- [nio-8789-exec-6] c.p.a.c.ActivityMiniGroupBuyController   : ***0_????????????
2020-01-13 10:55:12.983  INFO 3611 --- [nio-8789-exec-6] c.p.a.c.ActivityMiniGroupBuyController   : orderResult{
	"package":"prepay_id=null",
	"orderId":20934,
	"nonceStr":"53fhbuVaN8rrNJwVHXVyYsOMdtZC9G3e",
	"timeStamp":"1578884112",
	"paySign":"0AEB8015DB3C8CFF09D9E14536738E04",
	"signType":"MD5"
}
2020-01-13 10:55:12.992  INFO 3611 --- [nio-8789-exec-6] c.p.a.c.ActivityMiniGroupBuyController   : aco{
	"classId":26,
	"goodsId":178,
	"openId":"ooLDX5dJiiB9HZmTRYdmfABmXDVw",
	"orderId":20934,
	"putaoId":738005,
	"source":649,
	"unit":23,
	"userPhone":"18810539359"
}
Hibernate: insert into activtiy_center_order (activity_id, activity_type, class_id, dis_count_code, goods_id, group_id, open_id, order_id, pay_status, putao_id, source, unit, user_phone) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
2020-01-13 10:55:13.001  INFO 3611 --- [nio-8789-exec-6] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=368,http_code=200,ip=152.136.97.194,putaoid=738005,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniGroupBuy/pay,uuid=fc4f5d55-4e04-4f76-9f71-23b8f90ffe31]




/course_v2/activityCenter/miniGroupBuy/pay?openId=ooLDX5dJiiB9HZmTRYdmfABmXDVw&from=mini-2&miniType=2&source=649&classId=26&token=5681dbb3b6&putaoId=738005&putaoid=738005&phone=18810539359&uuid=10.10.38.141&sign=5e0404c12330d44731580594f8a5b23a&ts=1578884112722&goodsId=178&userPhone=18810539359&ip=10.10.38.141&accountKey=wx_ptyyfwh3&unit=23&groupId=




2020-01-13 11:40:09.146  INFO 3611 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniGroupBuy/pay[PARAMS]openId:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;from:mini-2|;miniType:2|;source:649|;classId:26|;token:5681dbb3b6|;putaoId:738005|;putaoid:738005|;phone:18810539359|;uuid:10.10.38.141|;sign:5e0404c12330d44731580594f8a5b23a|;ts:1578884112722|;goodsId:178|;userPhone:18810539359|;ip:10.10.38.141|;accountKey:wx_ptyyfwh3|;unit:23|;groupId:|;
Hibernate: select periodscla0_.class_id as class_id1_27_0_, periodscla0_.activity_id as activity2_27_0_, periodscla0_.activity_type as activity3_27_0_, periodscla0_.camp_id as camp_id4_27_0_, periodscla0_.class_code_url as class_co5_27_0_, periodscla0_.class_name as class_na6_27_0_, periodscla0_.class_status as class_st7_27_0_, periodscla0_.course_type as course_t8_27_0_, periodscla0_.course_type_details as course_t9_27_0_, periodscla0_.create_time as create_10_27_0_, periodscla0_.device as device11_27_0_, periodscla0_.grade as grade12_27_0_, periodscla0_.opening_date as opening13_27_0_, periodscla0_.periods as periods14_27_0_, periodscla0_.periods_describe as periods15_27_0_, periodscla0_.periods_type as periods16_27_0_, periodscla0_.pred_num as pred_nu17_27_0_, periodscla0_.school_id as school_18_27_0_, periodscla0_.school_name as school_19_27_0_, periodscla0_.st_name as st_name20_27_0_, periodscla0_.teacher_id as teacher21_27_0_, periodscla0_.teacher_wx_num as teacher22_27_0_, periodscla0_.update_code_num as update_23_27_0_, periodscla0_.update_code_type as update_24_27_0_, periodscla0_.update_time as update_25_27_0_ from periods_class_info periodscla0_ where periodscla0_.class_id=?
2020-01-13 11:40:09.156  INFO 3611 --- [nio-8789-exec-4] c.p.a.c.ActivityMiniGroupBuyController   : 0_????????????
2020-01-13 11:40:09.156  INFO 3611 --- [nio-8789-exec-4] c.p.a.c.ActivityMiniGroupBuyController   : ***0_????????????
2020-01-13 11:40:09.328  INFO 3611 --- [nio-8789-exec-4] c.p.a.c.ActivityMiniGroupBuyController   : orderResult{
	"package":"prepay_id=null",
	"orderId":20945,
	"nonceStr":"CCKYMwY8UwAFPnI0mq6u3SReq5qzJN05",
	"timeStamp":"1578886809",
	"paySign":"CC96DB5698F754DD3F1A268D80868372",
	"signType":"MD5"
}
2020-01-13 11:40:09.329  INFO 3611 --- [nio-8789-exec-4] c.p.a.c.ActivityMiniGroupBuyController   : aco{
	"classId":26,
	"goodsId":178,
	"openId":"ooLDX5dJiiB9HZmTRYdmfABmXDVw",
	"orderId":20945,
	"putaoId":738005,
	"source":649,
	"unit":23,
	"userPhone":"18810539359"
}
Hibernate: insert into activtiy_center_order (activity_id, activity_type, class_id, dis_count_code, goods_id, group_id, open_id, order_id, pay_status, putao_id, source, unit, user_phone) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
2020-01-13 11:40:09.334  INFO 3611 --- [nio-8789-exec-4] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=187,http_code=200,ip=121.69.42.54,putaoid=738005,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/miniGroupBuy/pay,uuid=a649b7e4-61fd-4953-a832-ac27d558f3e2]
2020-01-13 11:40:10.058  INFO 3611 --- [nio-8789-exec-6] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/campInfo/genPosterImage[PARAMS]uuid:10.10.38.141|;putaoid:21534|;sign:294f76217f9bcedf3aa09624743e8956|;ts:1578886810047|;from:weixin|;putaoId:21534|;token:c4cd6d3053|;source:2048|;sourceToken:|;classId:104|;tId:|;
Hibernate: select salereluse0_.id as id1_31_, salereluse0_.activity_id as activity2_31_, salereluse0_.back_teacher_name as back_tea3_31_, salereluse0_.camp_id as camp_id4_31_, salereluse0_.camp_type as camp_typ5_31_, salereluse0_.class_id as class_id6_31_, salereluse0_.class_name as class_na7_31_, salereluse0_.create_time as create_t8_31_, salereluse0_.grade as grade9_31_, salereluse0_.open_id as open_id10_31_, salereluse0_.opening_date as opening11_31_, salereluse0_.periods as periods12_31_, salereluse0_.periods_id as periods13_31_, salereluse0_.personal_type as persona14_31_, salereluse0_.putao_id as putao_i15_31_, salereluse0_.sale_phone as sale_ph16_31_, salereluse0_.source as source17_31_, salereluse0_.teacher_id as teacher18_31_, salereluse0_.teacher_nickname as teacher19_31_, salereluse0_.unit as unit20_31_, salereluse0_.url as url21_31_ from sale_rel_user salereluse0_ where salereluse0_.putao_id=? and salereluse0_.class_id=? limit ?
2020-01-13 11:40:10.067 ERROR 3611 --- [nio-8789-exec-6] c.p.a.controller.CampInfoController      : ???html?????? reportH5Url:https://www.putaoabc.com/onlinepages/mini_qrcode/teacher.html?name=abcde-123-%E8%80%81%E5%B8%88&qrcode=https%3A%2F%2Fcourse-app-1256571289.cos.ap-beijing.myqcloud.com%2Fmini2%2Fteacher0817%2F1%25E5%2585%25833-zhang.jpg, reportPath:poster/experience_putin_poster, fileName:putaoId_21534classId_104.jpg, error:status 500 reading PosterRestClient#genPoster(PosterParam); content:
{"timestamp":"2020-01-13T03:40:10.066+0000","status":500,"error":"Internal Server Error","message":"Null return value from advice does not match primitive return type for: public boolean com.putaoabc.push.message.service.impl.PosterServiceImpl.genPosterToCOS(com.putaoabc.push.message.api.param.poster.PosterParam)","path":"/course_v2/push/gen_poster"}
2020-01-13 11:40:10.068  INFO 3611 --- [nio-8789-exec-6] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=9,http_code=200,ip=121.69.42.54,putaoid=21534,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/campInfo/genPosterImage,uuid=b718eb61-93ee-49dd-91a2-5da71a993bea



{
    "code": 200,
    "msg": null,
    "data": {
        "package": "Sign=WXPay",
        "orderId": 20953,
        "sign": "31BA87FD13D48D7A550B096E0F61BCE0",
        "noncestr": "XY99rBunc1Se52wR2IRPCovBQkc72bz0",
        "appid": "wx3ac95cbd0df1881d",
        "partnerid": "1510569371",
        "prepayid": "wx131208561741493e2acb37ff1293313700",
        "mwebUrl": "https://wx.tenpay.com/cgi-bin/mmpayweb-bin/checkmweb?prepay_id=wx131208561741493e2acb37ff1293313700&package=2847262589",
        "timestamp": "1578888536"
    },
    "success": true
    
    
    
    /course_v2/activityCenter/price/getGoodsListByClassId[PARAMS]uuid:10.10.38.141|;putaoid:|;sign:9d70804b452f09f4149320e324abbcc1|;ts:1578919328586|;from:weixin|;putaoId:|;token:|;source:784|;sourceToken:sCfIBJgP|;classId:130|;tId:41|;
    
    
2020-01-13 21:23:37.892  INFO 6080 --- [MessageThread_1] c.p.a.s.ActivityOrderCallBackService     : activity center longTerm OpenCourse success,putaoid:738032
Hibernate: select activtiyce0_.id as id1_14_0_, activtiyce0_.activity_id as activity2_14_0_, activtiyce0_.activity_type as activity3_14_0_, activtiyce0_.class_id as class_id4_14_0_, activtiyce0_.create_time as create_t5_14_0_, activtiyce0_.dis_count_code as dis_coun6_14_0_, activtiyce0_.goods_id as goods_id7_14_0_, activtiyce0_.group_id as group_id8_14_0_, activtiyce0_.open_id as open_id9_14_0_, activtiyce0_.order_id as order_i10_14_0_, activtiyce0_.pay_status as pay_sta11_14_0_, activtiyce0_.putao_id as putao_i12_14_0_, activtiyce0_.source as source13_14_0_, activtiyce0_.unit as unit14_14_0_, activtiyce0_.user_phone as user_ph15_14_0_ from activtiy_center_order activtiyce0_ where activtiyce0_.id=?
Hibernate: update activtiy_center_order set activity_id=?, activity_type=?, class_id=?, dis_count_code=?, goods_id=?, group_id=?, open_id=?, order_id=?, pay_status=?, putao_id=?, source=?, unit=?, user_phone=? where id=?
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select activityin0_.activity_id as activity1_6_, activityin0_.acti_msg_fixed as acti_msg2_6_, activityin0_.acti_msg_sms_record as acti_msg3_6_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_, activityin0_.activity_name as activity5_6_, activityin0_.activity_type as activity6_6_, activityin0_.activity_url as activity7_6_, activityin0_.cash_condition as cash_con8_6_, activityin0_.conditions as conditio9_6_, activityin0_.create_by as create_10_6_, activityin0_.create_time as create_11_6_, activityin0_.goods_price as goods_p12_6_, activityin0_.if_renew as if_rene13_6_, activityin0_.if_return_cash as if_retu14_6_, activityin0_.package_id as package15_6_, activityin0_.package_name as package16_6_, activityin0_.package_type as package17_6_, activityin0_.personal_type as persona18_6_, activityin0_.supple_id as supple_19_6_, activityin0_.unit as unit20_6_, activityin0_.update_by as update_21_6_, activityin0_.update_time as update_22_6_ from activity_info activityin0_ where activityin0_.activity_id=? limit ?
Hibernate: select supplepack0_.id as id1_32_, supplepack0_.days as days2_32_, supplepack0_.supple_name as supple_n3_32_, supplepack0_.supple_type as supple_t4_32_, supplepack0_.unit as unit5_32_ from supple_package_info supplepack0_ where supplepack0_.id in (?)
2020-01-13 21:23:37.918  INFO 6080 --- [MessageThread_1] s.c.a.AnnotationConfigApplicationContext : Refreshing SpringClientFactory-subsidiary-course-service: startup date [Mon Jan 13 21:23:37 CST 2020]; parent: org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext@5bcab519
2020-01-13 21:23:37.950  INFO 6080 --- [MessageThread_1] f.a.AutowiredAnnotationBeanPostProcessor : JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
2020-01-13 21:23:38.064  INFO 6080 --- [MessageThread_1] c.netflix.config.ChainedDynamicProperty  : Flipping property: subsidiary-course-service.ribbon.ActiveConnectionsLimit to use NEXT property: niws.loadbalancer.availabilityFilteringRule.activeConnectionsLimit = 2147483647
2020-01-13 21:23:38.074  INFO 6080 --- [MessageThread_1] c.n.u.concurrent.ShutdownEnabledTimer    : Shutdown hook installed for: NFLoadBalancer-PingTimer-subsidiary-course-service
2020-01-13 21:23:38.075  INFO 6080 --- [MessageThread_1] c.netflix.loadbalancer.BaseLoadBalancer  : Client: subsidiary-course-service instantiated a LoadBalancer: DynamicServerListLoadBalancer:{NFLoadBalancer:name=subsidiary-course-service,current list of Servers=[],Load balancer stats=Zone stats: {},Server stats: []}ServerList:null
2020-01-13 21:23:38.076  INFO 6080 --- [MessageThread_1] c.n.l.DynamicServerListLoadBalancer      : Using serverListUpdater PollingServerListUpdater
2020-01-13 21:23:38.077  INFO 6080 --- [MessageThread_1] c.netflix.config.ChainedDynamicProperty  : Flipping property: subsidiary-course-service.ribbon.ActiveConnectionsLimit to use NEXT property: niws.loadbalancer.availabilityFilteringRule.activeConnectionsLimit = 2147483647
2020-01-13 21:23:38.078  INFO 6080 --- [MessageThread_1] c.n.l.DynamicServerListLoadBalancer      : DynamicServerListLoadBalancer for client subsidiary-course-service initialized: DynamicServerListLoadBalancer:{NFLoadBalancer:name=subsidiary-course-service,current list of Servers=[localhost:8783],Load balancer stats=Zone stats: {defaultzone=[Zone:defaultzone;	Instance count:1;	Active connections count: 0;	Circuit breaker tripped count: 0;	Active connections per server: 0.0;]
},Server stats: [[Server:localhost:8783;	Zone:defaultZone;	Total Requests:0;	Successive connection failure:0;	Total blackout seconds:0;	Last connection made:Thu Jan 01 08:00:00 CST 1970;	First connection made: Thu Jan 01 08:00:00 CST 1970;	Active Connections:0;	total failure count in last (1000) msecs:0;	average resp time:0.0;	90 percentile resp time:0.0;	95 percentile resp time:0.0;	min resp time:0.0;	max resp time:0.0;	stddev resp time:0.0]
]}ServerList:org.springframework.cloud.netflix.ribbon.eureka.DomainExtractingServerList@1b29b99d
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
Hibernate: select activityca0_.id as id1_33_0_, activityca0_.activity_ids as activity2_33_0_, activityca0_.activity_type as activity3_33_0_, activityca0_.course_type as course_t4_33_0_, activityca0_.course_type_details as course_t5_33_0_, activityca0_.course_type_time as course_t6_33_0_, activityca0_.create_time as create_t7_33_0_, activityca0_.first_leads_end_time as first_le8_33_0_, activityca0_.first_leads_start_time as first_le9_33_0_, activityca0_.leads_type as leads_t10_33_0_, activityca0_.name as name11_33_0_, activityca0_.opening_date as opening12_33_0_, activityca0_.pred_num as pred_nu13_33_0_, activityca0_.second_leads_end_time as second_14_33_0_, activityca0_.second_leads_start_time as second_15_33_0_, activityca0_.second_opening_date as second_16_33_0_, activityca0_.update_code_cycle as update_17_33_0_, activityca0_.update_code_value as update_18_33_0_, activityca0_.update_periods_time as update_19_33_0_, activityca0_.update_time as update_20_33_0_ from t_activity_camp_info activityca0_ where activityca0_.id=?
2020-01-13 21:23:38.122  INFO 6080 --- [MessageThread_1] c.p.a.service.ActivityMsgService         : openingDate:2020-01-10 00:00:00.0
2020-01-13 21:23:38.122  INFO 6080 --- [MessageThread_1] c.p.a.service.ActivityMsgService         : sendSMSxxl(putaoId, classId);
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
2020-01-13 21:23:38.128  INFO 6080 --- [MessageThread_1] c.p.a.service.ActivityMsgService         : sendCustomizedSMS(putaoId:738032, classId:120);
2020-01-13 21:23:38.128  INFO 6080 --- [MessageThread_1] c.p.a.service.ActivityMsgService         : 111 入参"738032_120"
Hibernate: select periodscla0_.class_id as class_id1_27_, periodscla0_.activity_id as activity2_27_, periodscla0_.activity_type as activity3_27_, periodscla0_.camp_id as camp_id4_27_, periodscla0_.class_code_url as class_co5_27_, periodscla0_.class_name as class_na6_27_, periodscla0_.class_status as class_st7_27_, periodscla0_.course_type as course_t8_27_, periodscla0_.course_type_details as course_t9_27_, periodscla0_.create_time as create_10_27_, periodscla0_.device as device11_27_, periodscla0_.grade as grade12_27_, periodscla0_.opening_date as opening13_27_, periodscla0_.periods as periods14_27_, periodscla0_.periods_describe as periods15_27_, periodscla0_.periods_type as periods16_27_, periodscla0_.pred_num as pred_nu17_27_, periodscla0_.school_id as school_18_27_, periodscla0_.school_name as school_19_27_, periodscla0_.st_name as st_name20_27_, periodscla0_.teacher_id as teacher21_27_, periodscla0_.teacher_wx_num as teacher22_27_, periodscla0_.update_code_num as update_23_27_, periodscla0_.update_code_type as update_24_27_, periodscla0_.update_time as update_25_27_ from periods_class_info periodscla0_ where periodscla0_.class_id=? limit ?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
2020-01-13 21:23:38.138  INFO 6080 --- [MessageThread_1] c.p.a.service.ActivityMsgService         : 222 actiMsgWxTemplateRecordIdnull
2020-01-13 21:23:38.138  INFO 6080 --- [MessageThread_1] c.p.a.service.ActivityMsgService         : sendWXTemplateMsg(putaoId, classId);
Hibernate: select activtiyce0_.id as id1_14_, activtiyce0_.activity_id as activity2_14_, activtiyce0_.activity_type as activity3_14_, activtiyce0_.class_id as class_id4_14_, activtiyce0_.create_time as create_t5_14_, activtiyce0_.dis_count_code as dis_coun6_14_, activtiyce0_.goods_id as goods_id7_14_, activtiyce0_.group_id as group_id8_14_, activtiyce0_.open_id as open_id9_14_, activtiyce0_.order_id as order_i10_14_, activtiyce0_.pay_status as pay_sta11_14_, activtiyce0_.putao_id as putao_i12_14_, activtiyce0_.source as source13_14_, activtiyce0_.unit as unit14_14_, activtiyce0_.user_phone as user_ph15_14_ from activtiy_center_order activtiyce0_ where activtiyce0_.order_id=? limit ?
2020-01-13 21:23:38.140  INFO 6080 --- [MessageThread_1] c.p.a.service.ActivityCommonService      : before changeSource
2020-01-13 21:23:38.550  INFO 6080 --- [erListUpdater-0] c.netflix.config.ChainedDynamicProperty  : Flipping property: course-service.ribbon.ActiveConnectionsLimit to use NEXT property: niws.loadbalancer.availabilityFilteringRule.activeConnectionsLimit = 2147483647
2020-01-13 21:23:39.077  INFO 6080 --- [erListUpdater-1] c.netflix.config.ChainedDynamicProperty  : Flipping property: subsidiary-course-service.ribbon.ActiveConnectionsLimit to use NEXT property: niws.loadbalancer.availabilityFilteringRule.activeConnectionsLimit = 2147483647