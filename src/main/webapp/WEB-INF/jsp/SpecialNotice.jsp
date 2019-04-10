<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>英语四六级报名系统</title>
		<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
		<link href="<%=basePath%>css/cet4-6.css" rel="stylesheet">

	</head>

	<body>
		<%@include file="top.jsp" %>

		<div id="main" class="" style="color: black; font-size: 14px; margin-top: 26px;">

			<div style="margin-right: 5%; margin-left: 5%;">
				<table style="border: 1px solid #FFFFFF;
            margin-right: 10%; margin-left: 10%; height: 50px;" width="80%" cellspacing="0" cellpadding="1" align="center">
					<tbody>
						<tr style="border: 1px solid #FFFFFF; height: 50px;">
							<td colspan="7" style="border: 1px solid #FFFFFF; line-height: 2em; height: 2em;">
								<p style="color: #212963; font-size: 24px; font-weight: bolder; border-bottom: 1px solid #d580be;
                        padding-bottom: 3px;" align="center">
									2018年下半年考试特别提示
								</p>
							</td>
						</tr>
					</tbody>
				</table>
				<br>
				<table style="text-indent: 2em; line-height: 2em;">
					<tbody>
						<tr>
							<td colspan="7" align="left">
								<p style="font-weight:bold;">
									1、全国大学英语四、六级考试口语考试（CET-SET）报考资格为大学英语四级口试仅接受完成当次大学英语四级笔试报考的考生，大学 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;英语六级口试仅接受完成当次大学英语六级笔试报考及缴费的考生。使用本系统进行报名的考生，可同时完成报考笔试和对应级别的口 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 试科目。CET-SET为非必考项目。
								</p>
								<p style="font-weight:bold;">
									2、CET-SET不单独颁发成绩报告单，考生在同一考次获得CET笔试（非0分）和口试（C等级及以上）中一项及以上有效成绩，将对其发&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;放成绩报告单。考生按学校规定领取成绩报告单。
								</p>

								<p style="font-weight:bold;">
									3、考生在作答题笔试前，请认真完成以下内容：
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 请检查试题册背面条形码粘贴条、答题卡的印刷质量，如有问题及时向监考员反应，确认无误后完成以下两点要求。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 请将试题册背面条形码粘贴条揭下后粘贴在答题卡1的条形码粘贴框内，并将姓名和准考证号填写在试题册背面相应位置。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 请在答题卡1和答题卡2指定位置用黑色签字笔填写准考证号、姓名和学校名称，并用HB-2B铅笔将对应准考证号的信息点涂黑。
								</p>

								<p style="font-weight:bold;">
									4、考生在笔试考试过程中，请注意以下内容：
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 所有题目必须在答题卡上规定位置作答，在试题册上或答题卡上非规定位置的作答一律无效。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 请在规定时间内在答题卡指定位置依次完成作文、听力、阅读、翻译各部分考试，作答作文期间不得翻阅该试题册。听力录音播放&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;完毕后，请立即停止作答，监考员将立即回收答题卡1，得到监考员指令后方可继续作答。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 作文题内容印在试题册背面，作文题及其他主观题必须用黑色签字笔在答题卡指定区域内作答。
								</p>

								<p style="font-weight:bold;">
									5、CET-SET为计算机化考试，请提前登录www.cet.edu.cn，熟悉考试系统操作。
								</p>

								<p style="font-weight:bold;">
									6、考生在CET-SET考试过程中请注意以下内容：
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 考生须按准考证上规定时间到达考场，入场时必须携带准考证（准考证空白处不得书写与考试相关内容）和与准考证上一致的&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;身份证件；禁止将手机、其他具有通讯功能的电子产品及考试用书、参考材料等与考试无关的物品带入考场。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 考生进入考场后须在指定考试用机上按系统提示在规定时间内进行登录、测试设备、作答；考试结束后，经监考员允许方可离开考&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;场。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 考试期间考生须遵守考试纪律，服从管理人员安排。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 考生未在规定时间内入场，按弃考处理；入场后未按要求进行登录、测试设备、考试，或未得到监考员允许离开考场的，按违规处&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;理，成绩无效。
								</p>

								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• 考试期间考试系统出现问题时，考生须及时举手示意，经系统管理员和监考员确认后认为本场不能排除系统故障，将安排其至另外&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;场次进行考试。
								</p>

							</td>
						</tr>
					</tbody>
				</table>
				<br>
			</div>

		</div>

		<!-- 静态包含 -->
		<%@include file="footer.jsp" %>
		

		<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
	</body>

</html>