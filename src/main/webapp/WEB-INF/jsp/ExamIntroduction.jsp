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

		<div id="main" style="color: black; font-size: 14px; margin-top: 26px">
			<div style="margin-right: 5%; margin-left: 5%;">
				<table style="border: 1px solid #FFFFFF;
            margin-right: 10%; margin-left: 10%; height: 50px;" width="80%" cellspacing="0" cellpadding="1" align="center">
					<tbody>
						<tr style="border: 1px solid #FFFFFF; height: 50px;">
							<td colspan="7" style="border: 1px solid #FFFFFF; line-height: 2em;">
								<p style="color: #212963; font-size: 24px; font-weight: bolder; border-bottom: 1px solid #d580be;
                        padding-bottom: 13px;" align="center">
									CET考试简介
								</p>
							</td>
						</tr>
					</tbody>
				</table>
				<br>
				<table>
					<tbody>
						<tr>
							<td colspan="7" style="border: 1px solid #FFFFFF; text-indent: 2em;">
								<p>
									全国大学英语四、六级考试(CET)系教育部主办、教育部考试中心主持和实施的一项大规模标准化考试。自1987年开始实施以来，四、六级考试已走过了近三十年的历程。为顺应我国高等教育发展的形势，深化大学英语的教学改革，四、六级考试经历了多次改革和完善，目前考试内容涵盖听、说、读、写、译等语言技能。
								</p>
								<p>
									CET笔试考试时间为每年6月和12月，CET口试考试时间为每年5月和11月。自2016年12月起，报考同一年度笔试的考生则具备报考同一级别口语考试资格。相关信息详见www.cet.edu.cn.
								</p>
								<p>
									CET同时设有非英语考试科目，包括日语四级(CJT4)、日语六级(CJT6)、俄语四级(CRT4)、俄语六级(CRT6)、德语四级(CGT4)、德语六级(CGT6)和法语四级(CFT4)，非英语考试科目每年6月开考一次，且不含口语考核环节。
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