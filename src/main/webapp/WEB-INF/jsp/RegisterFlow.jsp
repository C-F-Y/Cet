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
							<td colspan="7" style="border: 1px solid #FFFFFF; line-height: 2em;">
								<p style="color: #212963; font-size: 24px; font-weight: bolder; border-bottom: 1px solid #d580be;
                        padding-bottom: 13px;" align="center">
									考试报名流程
								</p>
							</td>
						</tr>
					</tbody>
				</table>
				<br>
				<div style="font-size: 16px; text-decoration: underline; line-height: 2em;" align="center">
					<br>
					<br>
					<br>
					<p>
						<a href="http://resource.etest.net.cn/project/CET/News/RegisterFlow.pdf?v=182-1">点击查看全国大学英语四六级考试（CET）报名流程</a>
					</p>
					<br>
					<p>
						<a href="http://resource.etest.net.cn/project/CET/News/RegisterAccount.pdf?v=182-1">点击查看全国大学英语四六级考试（CET）注册用户流程</a>
					</p>
					<br>
					<p>
						<a href="http://resource.etest.net.cn/project/CET/News/RetrieveAccount.pdf?v=182-1">点击查看全国大学英语四六级考试（CET）密码及账号找回流程</a>
					</p>
					<br>
					<br>
					<br>
					<br>
					<br>
				</div>
			</div>

			<div style="clear:both"></div>
		</div>

		<!-- 静态包含 -->
		<%@include file="footer.jsp" %>
		

		<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
	</body>

</html>