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




2019-12-14 20:00:58.978  INFO 8700 --- [nio-8789-exec-9] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/miniCallBack/messageCallBackGroupBuyExp[PARAMS]signature:64da480a00e4e17aedc771a32ad848590f057006|;timestamp:1576324858|;nonce:131504385|;openid:ooLDX5dJiiB9HZmTRYdmfABmXDVw|;
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


