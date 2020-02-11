2020-02-06 23:00:22.358  INFO 27505 --- [io-8789-exec-10] c.p.a.interceptor.CostInterceptor        : [URL]: dev.putaoabc.net.cn/course_v2/activityCenter/zt/dailyDataUpload4FreeDraw?date=2020-02-05&
Hibernate: select activtiyce0_.id as id1_14_, activtiyce0_.activity_id as activity2_14_, activtiyce0_.activity_type as activity3_14_, activtiyce0_.class_id as class_id4_14_, activtiyce0_.create_time as create_t5_14_, activtiyce0_.dis_count_code as dis_coun6_14_, activtiyce0_.goods_id as goods_id7_14_, activtiyce0_.group_id as group_id8_14_, activtiyce0_.open_id as open_id9_14_, activtiyce0_.order_id as order_i10_14_, activtiyce0_.pay_status as pay_sta11_14_, activtiyce0_.price as price12_14_, activtiyce0_.putao_id as putao_i13_14_, activtiyce0_.source as source14_14_, activtiyce0_.unit as unit15_14_, activtiyce0_.unit_adjustment_times as unit_ad16_14_, activtiyce0_.update_time as update_17_14_, activtiyce0_.user_phone as user_ph18_14_, activtiyce0_.zt_id as zt_id19_14_ from activtiy_center_order activtiyce0_ where (activtiyce0_.create_time between ? and ?) and (activtiyce0_.zt_id is not null)
2020-02-06 23:00:22.360 TRACE 27505 --- [io-8789-exec-10] o.h.type.descriptor.sql.BasicBinder      : binding parameter [1] as [TIMESTAMP] - [Wed Feb 05 00:00:00 CST 2020]
2020-02-06 23:00:22.361 TRACE 27505 --- [io-8789-exec-10] o.h.type.descriptor.sql.BasicBinder      : binding parameter [2] as [TIMESTAMP] - [Wed Feb 05 23:59:59 CST 2020]
java.lang.NullPointerException
	at com.putaoabc.activitiescommonservice.util.zt.CSVUtils.writeRow(CSVUtils.java:55)
	at com.putaoabc.activitiescommonservice.util.zt.CSVUtils.createCSVFile(CSVUtils.java:26)
	at com.putaoabc.activitiescommonservice.controller.zt.ActivityZTLongTermController.dailyDataUpload4FreeDraw(ActivityZTLongTermController.java:136)
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
2020-02-06 23:00:22.366  INFO 27505 --- [io-8789-exec-10] c.p.a.c.zt.ActivityZTLongTermController  : [com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@5ace5304, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@65f1b41a, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@498bf54d, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@3924af1f, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@115a8d4c, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@79e3ba19, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@6fd419f5, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@73940f47, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@3661cc94, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@52b68b33, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@1de23b21, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@4e5ff1ed, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@766281de, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@10eb6332, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@1c5c793d, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@2dbd33c2, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@4f332bda, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@40a33fd, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@7b6037d0, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@3f87285d, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@69bcb98c]
2020-02-06 23:00:22.368  INFO 27505 --- [io-8789-exec-10] c.p.a.c.zt.ActivityZTLongTermController  : list-[
	{
		"classId":106,
		"createTime":1580869889000,
		"goodsId":212,
		"id":837,
		"putaoId":738130,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003990",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580871082000,
		"goodsId":212,
		"id":838,
		"putaoId":738131,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006613",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580871851000,
		"goodsId":212,
		"id":839,
		"putaoId":738132,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006614",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580871926000,
		"goodsId":212,
		"id":840,
		"putaoId":738134,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003991",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580872689000,
		"goodsId":212,
		"id":841,
		"putaoId":738135,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006615",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580872824000,
		"goodsId":212,
		"id":842,
		"putaoId":738136,
		"unitAdjustmentTimes":0,
		"userPhone":"14500002220",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580872901000,
		"goodsId":212,
		"id":843,
		"putaoId":738138,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006616",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873122000,
		"goodsId":212,
		"id":844,
		"putaoId":738137,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003992",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873181000,
		"goodsId":212,
		"id":845,
		"putaoId":738139,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006617",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873268000,
		"goodsId":212,
		"id":846,
		"putaoId":738140,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006618",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873327000,
		"goodsId":212,
		"id":847,
		"putaoId":738141,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006619",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873378000,
		"goodsId":212,
		"id":848,
		"putaoId":738142,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006620",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873478000,
		"goodsId":212,
		"id":849,
		"putaoId":738143,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006621",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580874110000,
		"goodsId":212,
		"id":850,
		"putaoId":738144,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006622",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580874653000,
		"goodsId":212,
		"id":851,
		"putaoId":738145,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006623",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580876688000,
		"goodsId":212,
		"id":852,
		"putaoId":738146,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003994",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580878044000,
		"goodsId":212,
		"id":853,
		"putaoId":738148,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006626",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580878490000,
		"goodsId":212,
		"id":854,
		"putaoId":738149,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006627",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580883692000,
		"goodsId":212,
		"id":855,
		"putaoId":738151,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003995",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580883769000,
		"goodsId":212,
		"id":856,
		"putaoId":738152,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003996",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580884368000,
		"goodsId":212,
		"id":857,
		"putaoId":738153,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003997",
		"ztId":"1"
	}
]
2020-02-06 23:00:22.369  INFO 27505 --- [io-8789-exec-10] c.p.a.c.zt.ActivityZTLongTermController  : listlist-[
	[
		{
			"classId":106,
			"createTime":1580869889000,
			"goodsId":212,
			"id":837,
			"putaoId":738130,
			"unitAdjustmentTimes":0,
			"userPhone":"14500003990",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580871082000,
			"goodsId":212,
			"id":838,
			"putaoId":738131,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006613",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580871851000,
			"goodsId":212,
			"id":839,
			"putaoId":738132,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006614",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580871926000,
			"goodsId":212,
			"id":840,
			"putaoId":738134,
			"unitAdjustmentTimes":0,
			"userPhone":"14500003991",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580872689000,
			"goodsId":212,
			"id":841,
			"putaoId":738135,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006615",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580872824000,
			"goodsId":212,
			"id":842,
			"putaoId":738136,
			"unitAdjustmentTimes":0,
			"userPhone":"14500002220",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580872901000,
			"goodsId":212,
			"id":843,
			"putaoId":738138,
			"source":123,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006616",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580873122000,
			"goodsId":212,
			"id":844,
			"putaoId":738137,
			"unitAdjustmentTimes":0,
			"userPhone":"14500003992",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580873181000,
			"goodsId":212,
			"id":845,
			"putaoId":738139,
			"source":123,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006617",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580873268000,
			"goodsId":212,
			"id":846,
			"putaoId":738140,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006618",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580873327000,
			"goodsId":212,
			"id":847,
			"putaoId":738141,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006619",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580873378000,
			"goodsId":212,
			"id":848,
			"putaoId":738142,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006620",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580873478000,
			"goodsId":212,
			"id":849,
			"putaoId":738143,
			"source":123,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006621",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580874110000,
			"goodsId":212,
			"id":850,
			"putaoId":738144,
			"source":123,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006622",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580874653000,
			"goodsId":212,
			"id":851,
			"putaoId":738145,
			"source":123,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006623",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580876688000,
			"goodsId":212,
			"id":852,
			"putaoId":738146,
			"unitAdjustmentTimes":0,
			"userPhone":"14500003994",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580878044000,
			"goodsId":212,
			"id":853,
			"putaoId":738148,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006626",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580878490000,
			"goodsId":212,
			"id":854,
			"putaoId":738149,
			"unitAdjustmentTimes":0,
			"userPhone":"14500006627",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580883692000,
			"goodsId":212,
			"id":855,
			"putaoId":738151,
			"unitAdjustmentTimes":0,
			"userPhone":"14500003995",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580883769000,
			"goodsId":212,
			"id":856,
			"putaoId":738152,
			"unitAdjustmentTimes":0,
			"userPhone":"14500003996",
			"ztId":"1"
		},
		{
			"classId":106,
			"createTime":1580884368000,
			"goodsId":212,
			"id":857,
			"putaoId":738153,
			"unitAdjustmentTimes":0,
			"userPhone":"14500003997",
			"ztId":"1"
		}
	]
]
2020-02-06 23:00:22.369  INFO 27505 --- [io-8789-exec-10] c.p.a.c.zt.ActivityZTLongTermController  : csvFile-"/20200202.csv"
























2020-02-07 02:29:24.306  INFO 32042 --- [nio-8789-exec-5] c.p.a.c.zt.ActivityZTLongTermController  : [com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@6ec49004, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@5b357437, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@7cb06bfc, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@1cb98843, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@56377f60, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@26d33d5d, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@59434df0, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@9683d0b, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@64c98f39, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@5bcf6f28, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@1820856c, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@50e87306, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@78709e65, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@58e6186c, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@4471edf9, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@5792d632, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@2b6df913, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@43a0b16a, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@87582c2, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@4917f6b8, com.putaoabc.activitiescommonservice.entity.ActivtiyCenterOrder@d762be8]
2020-02-07 02:29:24.307  INFO 32042 --- [nio-8789-exec-5] c.p.a.c.zt.ActivityZTLongTermController  : list-[
	{
		"classId":106,
		"createTime":1580869889000,
		"goodsId":212,
		"id":837,
		"keyString":"ztId,price",
		"putaoId":738130,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003990",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580871082000,
		"goodsId":212,
		"id":838,
		"keyString":"ztId,price",
		"putaoId":738131,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006613",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580871851000,
		"goodsId":212,
		"id":839,
		"keyString":"ztId,price",
		"putaoId":738132,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006614",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580871926000,
		"goodsId":212,
		"id":840,
		"keyString":"ztId,price",
		"putaoId":738134,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003991",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580872689000,
		"goodsId":212,
		"id":841,
		"keyString":"ztId,price",
		"putaoId":738135,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006615",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580872824000,
		"goodsId":212,
		"id":842,
		"keyString":"ztId,price",
		"putaoId":738136,
		"unitAdjustmentTimes":0,
		"userPhone":"14500002220",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580872901000,
		"goodsId":212,
		"id":843,
		"keyString":"ztId,price",
		"putaoId":738138,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006616",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873122000,
		"goodsId":212,
		"id":844,
		"keyString":"ztId,price",
		"putaoId":738137,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003992",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873181000,
		"goodsId":212,
		"id":845,
		"keyString":"ztId,price",
		"putaoId":738139,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006617",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873268000,
		"goodsId":212,
		"id":846,
		"keyString":"ztId,price",
		"putaoId":738140,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006618",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873327000,
		"goodsId":212,
		"id":847,
		"keyString":"ztId,price",
		"putaoId":738141,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006619",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873378000,
		"goodsId":212,
		"id":848,
		"keyString":"ztId,price",
		"putaoId":738142,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006620",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580873478000,
		"goodsId":212,
		"id":849,
		"keyString":"ztId,price",
		"putaoId":738143,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006621",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580874110000,
		"goodsId":212,
		"id":850,
		"keyString":"ztId,price",
		"putaoId":738144,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006622",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580874653000,
		"goodsId":212,
		"id":851,
		"keyString":"ztId,price",
		"putaoId":738145,
		"source":123,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006623",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580876688000,
		"goodsId":212,
		"id":852,
		"keyString":"ztId,price",
		"putaoId":738146,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003994",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580878044000,
		"goodsId":212,
		"id":853,
		"keyString":"ztId,price",
		"putaoId":738148,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006626",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580878490000,
		"goodsId":212,
		"id":854,
		"keyString":"ztId,price",
		"putaoId":738149,
		"unitAdjustmentTimes":0,
		"userPhone":"14500006627",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580883692000,
		"goodsId":212,
		"id":855,
		"keyString":"ztId,price",
		"putaoId":738151,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003995",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580883769000,
		"goodsId":212,
		"id":856,
		"keyString":"ztId,price",
		"putaoId":738152,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003996",
		"valueString":"1,null",
		"ztId":"1"
	},
	{
		"classId":106,
		"createTime":1580884368000,
		"goodsId":212,
		"id":857,
		"keyString":"ztId,price",
		"putaoId":738153,
		"unitAdjustmentTimes":0,
		"userPhone":"14500003997",
		"valueString":"1,null",
		"ztId":"1"
	}
]
2020-02-07 02:29:24.307  INFO 32042 --- [nio-8789-exec-5] c.p.a.c.zt.ActivityZTLongTermController  : csvFile/search/odin/daemon/activities-common-service/tmp/zt/csv/zt_free.20200205.csv
2020-02-07 02:29:24.308  INFO 32042 --- [yTaskExecutor-3] c.p.a.service.zt.ZTDataUploadService     : /search/odin/daemon/activities-common-service/tmp/zt/csv/zt_free.20200205.csv
2020-02-07 02:29:24.308 ERROR 32042 --- [nio-8789-exec-5] c.p.a.exception.GlobalExceptionHandler   : defaultErrorHandler-系统异常:{}

org.springframework.aop.AopInvocationException: Null return value from advice does not match primitive return type for: public boolean com.putaoabc.activitiescommonservice.service.zt.ZTDataUploadService.genCSVToCOS(java.lang.String,java.lang.String)
	at org.springframework.aop.framework.CglibAopProxy.processReturnType(CglibAopProxy.java:391)
	at org.springframework.aop.framework.CglibAopProxy.access$000(CglibAopProxy.java:84)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:690)
	at com.putaoabc.activitiescommonservice.service.zt.ZTDataUploadService$$EnhancerBySpringCGLIB$$9e063a02.genCSVToCOS(<generated>)
	at com.putaoabc.activitiescommonservice.controller.zt.ActivityZTLongTermController.dailyDataUpload4FreeDraw(ActivityZTLongTermController.java:171)
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

2020-02-07 02:29:24.309  INFO 32042 --- [nio-8789-exec-5] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=9,http_code=200,ip=null,putaoid=null,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/zt/dailyDataUpload4FreeDraw,uuid=null]



















2020-02-07 19:53:02.660  INFO 740 --- [nio-8789-exec-8] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/admission/checkAdmission[PARAMS]uuid:10.10.38.141|;putaoid:738164|;sign:f07eb741674286f8db2e5c3e5f17ecec|;ts:1581076383760|;from:weixin|;putaoId:738164|;token:4d87dd7cc5|;source:946|;sourceToken:|;classId:|;tId:|;
2020-02-07 19:53:02.662 ERROR 740 --- [nio-8789-exec-8] c.p.a.exception.GlobalExceptionHandler   : defaultErrorHandler-系统异常:{}

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
	at com.sun.proxy.$Proxy127.findById(Unknown Source)
	at com.putaoabc.activitiescommonservice.controller.ActivityAdmissionController.checkAdmission(ActivityAdmissionController.java:42)
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
	at sun.reflect.GeneratedMethodAccessor173.invoke(Unknown Source)
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
	... 64 common frames omitted

2020-02-07 19:53:02.664  INFO 740 --- [nio-8789-exec-8] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=3,http_code=200,ip=124.64.58.196,putaoid=738164,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/admission/checkAdmission,uuid=2b6c042f-0de6-426a-827a-6564412fd841]






















2020-02-08 15:09:46.707  INFO 740 --- [io-8789-exec-10] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/admission/checkAdmission[PARAMS]uuid:10.10.38.141|;putaoid:738185|;sign:f39c5a6975d99bd1ee0ffa50ff8679a6|;ts:1581145786495|;from:weixin|;putaoId:738185|;token:0af3889736|;source:946|;sourceToken:|;classId:106|;tId:|;
Hibernate: select periodscla0_.class_id as class_id1_29_0_, periodscla0_.activity_id as activity2_29_0_, periodscla0_.activity_type as activity3_29_0_, periodscla0_.camp_id as camp_id4_29_0_, periodscla0_.class_code_url as class_co5_29_0_, periodscla0_.class_name as class_na6_29_0_, periodscla0_.class_status as class_st7_29_0_, periodscla0_.course_type as course_t8_29_0_, periodscla0_.course_type_details as course_t9_29_0_, periodscla0_.create_time as create_10_29_0_, periodscla0_.device as device11_29_0_, periodscla0_.grade as grade12_29_0_, periodscla0_.opening_date as opening13_29_0_, periodscla0_.periods as periods14_29_0_, periodscla0_.periods_describe as periods15_29_0_, periodscla0_.periods_type as periods16_29_0_, periodscla0_.pred_num as pred_nu17_29_0_, periodscla0_.school_id as school_18_29_0_, periodscla0_.school_name as school_19_29_0_, periodscla0_.st_name as st_name20_29_0_, periodscla0_.teacher_id as teacher21_29_0_, periodscla0_.teacher_wx_num as teacher22_29_0_, periodscla0_.update_code_num as update_23_29_0_, periodscla0_.update_code_type as update_24_29_0_, periodscla0_.update_time as update_25_29_0_ from periods_class_info periodscla0_ where periodscla0_.class_id=?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
2020-02-08 15:09:46.709  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : {"conditions":{"condition_forbid":[[{"leftoperator":"ifForbidOther","predicate":"eq","rightoperator":0}]],"condition_course":[[{"leftoperator":"mainCourse","predicate":"eq","rightoperator":0},{"leftoperator":"experienceCourse","predicate":"eq","rightoperator":0},{"leftoperator":"specialCourse","predicate":"eq","rightoperator":0}]],"condition_source":[[{"leftoperator":"isNew","predicate":"eq","rightoperator":1}],[{"leftoperator":"sameSource","predicate":"eq","rightoperator":1}],[{"leftoperator":"withinOneDay","predicate":"eq","rightoperator":1}]]}}
2020-02-08 15:09:46.709  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : conditions_sub[[{"leftoperator":"mainCourse","predicate":"eq","rightoperator":0},{"leftoperator":"experienceCourse","predicate":"eq","rightoperator":0},{"leftoperator":"specialCourse","predicate":"eq","rightoperator":0}]]
2020-02-08 15:09:46.709  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : 3
Hibernate: select experience0_.id as id1_20_, experience0_.create_time as create_t2_20_, experience0_.end_time as end_time3_20_, experience0_.level as level4_20_, experience0_.putao_id as putao_id5_20_, experience0_.type as type6_20_, experience0_.unit as unit7_20_ from experience_camp_activity_record experience0_ where experience0_.putao_id=? and (experience0_.unit in (? , ? , ? , ?))
2020-02-08 15:09:46.710  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : judgeExperienceCamp  putaoId:738185  records[]
Hibernate: select experience0_.id as id1_20_, experience0_.create_time as create_t2_20_, experience0_.end_time as end_time3_20_, experience0_.level as level4_20_, experience0_.putao_id as putao_id5_20_, experience0_.type as type6_20_, experience0_.unit as unit7_20_ from experience_camp_activity_record experience0_ where experience0_.putao_id=? and (experience0_.unit in (? , ? , ? , ?))
2020-02-08 15:09:46.711  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : judgeSpecialCamp  putaoId:738185  records[]
2020-02-08 15:09:46.711 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : substring0==0&&0==0&&0==0
2020-02-08 15:09:46.711  INFO 740 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [0==0, &&, 0==0, &&, 0==0]stack
2020-02-08 15:09:46.711 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subSubResult ==>>true
2020-02-08 15:09:46.711  INFO 740 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [true]stack
2020-02-08 15:09:46.711  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subResult =>true
2020-02-08 15:09:46.711  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : conditions_sub[[{"leftoperator":"isNew","predicate":"eq","rightoperator":1}],[{"leftoperator":"sameSource","predicate":"eq","rightoperator":1}],[{"leftoperator":"withinOneDay","predicate":"eq","rightoperator":1}]]
2020-02-08 15:09:46.711  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : 1
2020-02-08 15:09:46.713 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : substring1==1
2020-02-08 15:09:46.713  INFO 740 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [1==1]stack
2020-02-08 15:09:46.713 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subSubResult ==>>true
2020-02-08 15:09:46.713  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : 1
Hibernate: select channelinf0_.id as id1_15_, channelinf0_.activity_id as activity2_15_, channelinf0_.activity_rule as activity3_15_, channelinf0_.camp_id as camp_id4_15_, channelinf0_.channel as channel5_15_, channelinf0_.channel_classify as channel_6_15_, channelinf0_.channel_instruction as channel_7_15_, channelinf0_.channel_level as channel_8_15_, channelinf0_.channel_type as channel_9_15_, channelinf0_.channel_url as channel10_15_, channelinf0_.class_id as class_i11_15_, channelinf0_.delay_type as delay_t12_15_, channelinf0_.first_echeon as first_e13_15_, channelinf0_.five_echeon as five_ec14_15_, channelinf0_.fourth_echeon as fourth_15_15_, channelinf0_.group_id as group_i16_15_, channelinf0_.if_own as if_own17_15_, channelinf0_.if_statistics as if_stat18_15_, channelinf0_.new_sale as new_sal19_15_, channelinf0_.old_sale as old_sal20_15_, channelinf0_.producer_shop_id as produce21_15_, channelinf0_.second_echeon as second_22_15_, channelinf0_.shop_id as shop_id23_15_, channelinf0_.source as source24_15_, channelinf0_.statistics_date as statist25_15_, channelinf0_.statistics_type as statist26_15_, channelinf0_.status as status27_15_, channelinf0_.subdivide_channel as subdivi28_15_, channelinf0_.third_echeon as third_e29_15_, channelinf0_.third_product_group as third_p30_15_, channelinf0_.url_type as url_typ31_15_, channelinf0_.user_name as user_na32_15_ from channel_info channelinf0_ where channelinf0_.source=? limit ?
Hibernate: select channelinf0_.id as id1_15_, channelinf0_.activity_id as activity2_15_, channelinf0_.activity_rule as activity3_15_, channelinf0_.camp_id as camp_id4_15_, channelinf0_.channel as channel5_15_, channelinf0_.channel_classify as channel_6_15_, channelinf0_.channel_instruction as channel_7_15_, channelinf0_.channel_level as channel_8_15_, channelinf0_.channel_type as channel_9_15_, channelinf0_.channel_url as channel10_15_, channelinf0_.class_id as class_i11_15_, channelinf0_.delay_type as delay_t12_15_, channelinf0_.first_echeon as first_e13_15_, channelinf0_.five_echeon as five_ec14_15_, channelinf0_.fourth_echeon as fourth_15_15_, channelinf0_.group_id as group_i16_15_, channelinf0_.if_own as if_own17_15_, channelinf0_.if_statistics as if_stat18_15_, channelinf0_.new_sale as new_sal19_15_, channelinf0_.old_sale as old_sal20_15_, channelinf0_.producer_shop_id as produce21_15_, channelinf0_.second_echeon as second_22_15_, channelinf0_.shop_id as shop_id23_15_, channelinf0_.source as source24_15_, channelinf0_.statistics_date as statist25_15_, channelinf0_.statistics_type as statist26_15_, channelinf0_.status as status27_15_, channelinf0_.subdivide_channel as subdivi28_15_, channelinf0_.third_echeon as third_e29_15_, channelinf0_.third_product_group as third_p30_15_, channelinf0_.url_type as url_typ31_15_, channelinf0_.user_name as user_na32_15_ from channel_info channelinf0_ where channelinf0_.source=? limit ?
2020-02-08 15:09:46.720 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : substring0==1
2020-02-08 15:09:46.720  INFO 740 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [0==1]stack
2020-02-08 15:09:46.720 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subSubResult ==>>false
2020-02-08 15:09:46.720  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : 1
Hibernate: select channelinf0_.id as id1_15_, channelinf0_.activity_id as activity2_15_, channelinf0_.activity_rule as activity3_15_, channelinf0_.camp_id as camp_id4_15_, channelinf0_.channel as channel5_15_, channelinf0_.channel_classify as channel_6_15_, channelinf0_.channel_instruction as channel_7_15_, channelinf0_.channel_level as channel_8_15_, channelinf0_.channel_type as channel_9_15_, channelinf0_.channel_url as channel10_15_, channelinf0_.class_id as class_i11_15_, channelinf0_.delay_type as delay_t12_15_, channelinf0_.first_echeon as first_e13_15_, channelinf0_.five_echeon as five_ec14_15_, channelinf0_.fourth_echeon as fourth_15_15_, channelinf0_.group_id as group_i16_15_, channelinf0_.if_own as if_own17_15_, channelinf0_.if_statistics as if_stat18_15_, channelinf0_.new_sale as new_sal19_15_, channelinf0_.old_sale as old_sal20_15_, channelinf0_.producer_shop_id as produce21_15_, channelinf0_.second_echeon as second_22_15_, channelinf0_.shop_id as shop_id23_15_, channelinf0_.source as source24_15_, channelinf0_.statistics_date as statist25_15_, channelinf0_.statistics_type as statist26_15_, channelinf0_.status as status27_15_, channelinf0_.subdivide_channel as subdivi28_15_, channelinf0_.third_echeon as third_e29_15_, channelinf0_.third_product_group as third_p30_15_, channelinf0_.url_type as url_typ31_15_, channelinf0_.user_name as user_na32_15_ from channel_info channelinf0_ where channelinf0_.source=? limit ?
Hibernate: select channelinf0_.id as id1_15_, channelinf0_.activity_id as activity2_15_, channelinf0_.activity_rule as activity3_15_, channelinf0_.camp_id as camp_id4_15_, channelinf0_.channel as channel5_15_, channelinf0_.channel_classify as channel_6_15_, channelinf0_.channel_instruction as channel_7_15_, channelinf0_.channel_level as channel_8_15_, channelinf0_.channel_type as channel_9_15_, channelinf0_.channel_url as channel10_15_, channelinf0_.class_id as class_i11_15_, channelinf0_.delay_type as delay_t12_15_, channelinf0_.first_echeon as first_e13_15_, channelinf0_.five_echeon as five_ec14_15_, channelinf0_.fourth_echeon as fourth_15_15_, channelinf0_.group_id as group_i16_15_, channelinf0_.if_own as if_own17_15_, channelinf0_.if_statistics as if_stat18_15_, channelinf0_.new_sale as new_sal19_15_, channelinf0_.old_sale as old_sal20_15_, channelinf0_.producer_shop_id as produce21_15_, channelinf0_.second_echeon as second_22_15_, channelinf0_.shop_id as shop_id23_15_, channelinf0_.source as source24_15_, channelinf0_.statistics_date as statist25_15_, channelinf0_.statistics_type as statist26_15_, channelinf0_.status as status27_15_, channelinf0_.subdivide_channel as subdivi28_15_, channelinf0_.third_echeon as third_e29_15_, channelinf0_.third_product_group as third_p30_15_, channelinf0_.url_type as url_typ31_15_, channelinf0_.user_name as user_na32_15_ from channel_info channelinf0_ where channelinf0_.source=? limit ?
2020-02-08 15:09:46.723 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : substring0==1
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [0==1]stack
2020-02-08 15:09:46.723 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subSubResult ==>>false
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [false, ||, false, ||, true]stack
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subResult =>true
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : conditions_sub[[{"leftoperator":"ifForbidOther","predicate":"eq","rightoperator":0}]]
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : 1
Hibernate: select activityre0_.id as id1_9_, activityre0_.activity_id as activity2_9_, activityre0_.activity_name as activity3_9_, activityre0_.class_id as class_id4_9_, activityre0_.create_time as create_t5_9_, activityre0_.experience_id as experien6_9_, activityre0_.putao_id as putao_id7_9_, activityre0_.return_day as return_d8_9_, activityre0_.return_money as return_m9_9_, activityre0_.return_platform as return_10_9_, activityre0_.return_type as return_11_9_, activityre0_.status as status12_9_ from activity_return_money_record activityre0_ where activityre0_.putao_id=?
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : activityReturnMoneyRecordRepository.findAllByPutaoId(putaoId :738185), result:[]
2020-02-08 15:09:46.723 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : substring2==0
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [2==0]stack
2020-02-08 15:09:46.723 ERROR 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subSubResult ==>>false
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [false]stack
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : subResult =>false
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.service.ActivityAdmissionService   : change to true
2020-02-08 15:09:46.723  INFO 740 --- [io-8789-exec-10] c.p.a.util.ActivityAdmissionUtil         : [true, &&, true, &&, true]stack
2020-02-08 15:09:46.724  INFO 740 --- [io-8789-exec-10] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=15,http_code=200,ip=106.121.71.201,putaoid=738185,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/admission/checkAdmission,uuid=8fa08640-2b48-4bbc-8c73-f591d4526674]
2020-02-08 15:09:46.791  INFO 740 --- [nio-8789-exec-3] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/system/zhangtong/mainCourseCount[PARAMS]uuid:10.10.38.141|;putaoid:738185|;sign:38d8843df7bae4968b312d1e1db8f7dc|;ts:1581145786748|;from:weixin|;putaoId:738185|;token:0af3889736|;source:946|;sourceToken:|;classId:106|;tId:|;
2020-02-08 15:09:46.792  INFO 740 --- [nio-8789-exec-3] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=0,http_code=200,ip=106.121.71.201,putaoid=738185,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/system/zhangtong/mainCourseCount,uuid=694fadc3-117a-4a07-9e46-333f3ddb465e]
2020-02-08 15:09:46.851  INFO 740 --- [nio-8789-exec-1] c.p.a.interceptor.CostInterceptor        : [URL]/course_v2/activityCenter/zt/getZTLongTermGoodsList[PARAMS]uuid:10.10.38.141|;putaoid:738185|;sign:31cf736422f60989ad7e05be8d5c8d34|;ts:1581145786808|;from:weixin|;putaoId:738185|;token:0af3889736|;source:946|;sourceToken:|;classId:106|;tId:|;
Hibernate: select periodscla0_.class_id as class_id1_29_0_, periodscla0_.activity_id as activity2_29_0_, periodscla0_.activity_type as activity3_29_0_, periodscla0_.camp_id as camp_id4_29_0_, periodscla0_.class_code_url as class_co5_29_0_, periodscla0_.class_name as class_na6_29_0_, periodscla0_.class_status as class_st7_29_0_, periodscla0_.course_type as course_t8_29_0_, periodscla0_.course_type_details as course_t9_29_0_, periodscla0_.create_time as create_10_29_0_, periodscla0_.device as device11_29_0_, periodscla0_.grade as grade12_29_0_, periodscla0_.opening_date as opening13_29_0_, periodscla0_.periods as periods14_29_0_, periodscla0_.periods_describe as periods15_29_0_, periodscla0_.periods_type as periods16_29_0_, periodscla0_.pred_num as pred_nu17_29_0_, periodscla0_.school_id as school_18_29_0_, periodscla0_.school_name as school_19_29_0_, periodscla0_.st_name as st_name20_29_0_, periodscla0_.teacher_id as teacher21_29_0_, periodscla0_.teacher_wx_num as teacher22_29_0_, periodscla0_.update_code_num as update_23_29_0_, periodscla0_.update_code_type as update_24_29_0_, periodscla0_.update_time as update_25_29_0_ from periods_class_info periodscla0_ where periodscla0_.class_id=?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
Hibernate: select periodscla0_.class_id as class_id1_29_0_, periodscla0_.activity_id as activity2_29_0_, periodscla0_.activity_type as activity3_29_0_, periodscla0_.camp_id as camp_id4_29_0_, periodscla0_.class_code_url as class_co5_29_0_, periodscla0_.class_name as class_na6_29_0_, periodscla0_.class_status as class_st7_29_0_, periodscla0_.course_type as course_t8_29_0_, periodscla0_.course_type_details as course_t9_29_0_, periodscla0_.create_time as create_10_29_0_, periodscla0_.device as device11_29_0_, periodscla0_.grade as grade12_29_0_, periodscla0_.opening_date as opening13_29_0_, periodscla0_.periods as periods14_29_0_, periodscla0_.periods_describe as periods15_29_0_, periodscla0_.periods_type as periods16_29_0_, periodscla0_.pred_num as pred_nu17_29_0_, periodscla0_.school_id as school_18_29_0_, periodscla0_.school_name as school_19_29_0_, periodscla0_.st_name as st_name20_29_0_, periodscla0_.teacher_id as teacher21_29_0_, periodscla0_.teacher_wx_num as teacher22_29_0_, periodscla0_.update_code_num as update_23_29_0_, periodscla0_.update_code_type as update_24_29_0_, periodscla0_.update_time as update_25_29_0_ from periods_class_info periodscla0_ where periodscla0_.class_id=?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
Hibernate: select periodscla0_.class_id as class_id1_29_0_, periodscla0_.activity_id as activity2_29_0_, periodscla0_.activity_type as activity3_29_0_, periodscla0_.camp_id as camp_id4_29_0_, periodscla0_.class_code_url as class_co5_29_0_, periodscla0_.class_name as class_na6_29_0_, periodscla0_.class_status as class_st7_29_0_, periodscla0_.course_type as course_t8_29_0_, periodscla0_.course_type_details as course_t9_29_0_, periodscla0_.create_time as create_10_29_0_, periodscla0_.device as device11_29_0_, periodscla0_.grade as grade12_29_0_, periodscla0_.opening_date as opening13_29_0_, periodscla0_.periods as periods14_29_0_, periodscla0_.periods_describe as periods15_29_0_, periodscla0_.periods_type as periods16_29_0_, periodscla0_.pred_num as pred_nu17_29_0_, periodscla0_.school_id as school_18_29_0_, periodscla0_.school_name as school_19_29_0_, periodscla0_.st_name as st_name20_29_0_, periodscla0_.teacher_id as teacher21_29_0_, periodscla0_.teacher_wx_num as teacher22_29_0_, periodscla0_.update_code_num as update_23_29_0_, periodscla0_.update_code_type as update_24_29_0_, periodscla0_.update_time as update_25_29_0_ from periods_class_info periodscla0_ where periodscla0_.class_id=?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
Hibernate: select periodscla0_.class_id as class_id1_29_0_, periodscla0_.activity_id as activity2_29_0_, periodscla0_.activity_type as activity3_29_0_, periodscla0_.camp_id as camp_id4_29_0_, periodscla0_.class_code_url as class_co5_29_0_, periodscla0_.class_name as class_na6_29_0_, periodscla0_.class_status as class_st7_29_0_, periodscla0_.course_type as course_t8_29_0_, periodscla0_.course_type_details as course_t9_29_0_, periodscla0_.create_time as create_10_29_0_, periodscla0_.device as device11_29_0_, periodscla0_.grade as grade12_29_0_, periodscla0_.opening_date as opening13_29_0_, periodscla0_.periods as periods14_29_0_, periodscla0_.periods_describe as periods15_29_0_, periodscla0_.periods_type as periods16_29_0_, periodscla0_.pred_num as pred_nu17_29_0_, periodscla0_.school_id as school_18_29_0_, periodscla0_.school_name as school_19_29_0_, periodscla0_.st_name as st_name20_29_0_, periodscla0_.teacher_id as teacher21_29_0_, periodscla0_.teacher_wx_num as teacher22_29_0_, periodscla0_.update_code_num as update_23_29_0_, periodscla0_.update_code_type as update_24_29_0_, periodscla0_.update_time as update_25_29_0_ from periods_class_info periodscla0_ where periodscla0_.class_id=?
Hibernate: select activityin0_.activity_id as activity1_6_0_, activityin0_.acti_msg_fixed as acti_msg2_6_0_, activityin0_.acti_msg_sms_record as acti_msg3_6_0_, activityin0_.acti_msg_wx_template_record as acti_msg4_6_0_, activityin0_.activity_name as activity5_6_0_, activityin0_.activity_type as activity6_6_0_, activityin0_.activity_url as activity7_6_0_, activityin0_.cash_condition as cash_con8_6_0_, activityin0_.conditions as conditio9_6_0_, activityin0_.create_by as create_10_6_0_, activityin0_.create_time as create_11_6_0_, activityin0_.goods_price as goods_p12_6_0_, activityin0_.if_renew as if_rene13_6_0_, activityin0_.if_return_cash as if_retu14_6_0_, activityin0_.package_id as package15_6_0_, activityin0_.package_name as package16_6_0_, activityin0_.package_type as package17_6_0_, activityin0_.personal_type as persona18_6_0_, activityin0_.supple_id as supple_19_6_0_, activityin0_.unit as unit20_6_0_, activityin0_.update_by as update_21_6_0_, activityin0_.update_time as update_22_6_0_ from activity_info activityin0_ where activityin0_.activity_id=?
2020-02-08 15:09:46.870  INFO 740 --- [nio-8789-exec-1] c.p.a.interceptor.CostInterceptor        : [Putao-Observer,hostName=VM_0_4_centos,cost=18,http_code=200,ip=106.121.71.201,putaoid=738185,serviceName=activities-common-service:8789,uri=/course_v2/activityCenter/zt/getZTLongTermGoodsList,uuid=3cac8c1e-9014-42a3-ba27-06523d29baed]




activities-common-service.jar