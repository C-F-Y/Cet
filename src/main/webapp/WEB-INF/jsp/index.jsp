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
		<!-- 静态包含 -->
		<%@include file="top.jsp" %>
		
		<div class="row">
			<img src="<%=basePath%>img/bg.png" / width="100%">
		</div>
		<div class="row">
			<img src="<%=basePath%>img/bz1.png" / width="100%">
		</div>

		<div class="container" style="margin-top:10px ;">
			<div class="row">
				<div class="col-lg-4">
					<a href="cetLogin" class="c_hei cet_banner01">
						<p class="f20">进入报名</p>
						<p class=" ">ENTRY</p>
					</a>
					<a href="register" class="c_hei cet_banner02">
						<p class="f20">注册新用户</p>
						<p class=" ">REGISTER NEW USER</p>
					</a>
					<a href="queryScore" class="c_hei cet_banner03">
						<p class="f20">查询成绩</p>
						<p class=" ">QUERY SCORE</p>
					</a>
					<a href="http://bbcjzm.neea.edu.cn/" class="c_hei cet_banner04" target="_blank">
						<p class="f20">补办成绩证明</p>
						<p class=" ">TRANSCRIPT COPY RE-ORDER</p>
					</a>
					<a href="print" class="c_hei cet_banner05" target="_blank">
						<p class="f20">快速打印准考证</p>
						<p class=" ">PRINT TICKET</p>
					</a>
				</div>
				<div class="col-lg-4">
					<img src="<%=basePath%>img/lun_d.png" />
				</div>

				<div class="col-lg-4">
					<img src="http://resource.etest.net.cn/project/CET/images/news.jpg" alt="" width="380" height="40">
					<div style="padding:10px;" class="main_info_l">
						<h4>2018年下半年考试时间：</h4>
						<ul>
							<li>笔试：2018-12-15</li>
							<li>上午：英语四级</li>
							<li>下午：英语六级</li>
							<li>口试：</li>
							<li>2018-11-17：英语四级 &nbsp; 2018-11-18：英语六级</li>
						</ul>
					</div>
					<hr class="hr_line">
					<div style="padding:10px;line-height:1.8em;" class="main_info_l">
						<h4>2018年下半年考试报名提示</h4>
						<ul>
							<li>2018年下半年考试报名仅限<span style="font-weight:bold;color:red;">北京、天津、河北、吉林、上海、安徽、河南、湖北、山东、福建、广东、广西、海南、重庆、四川、云南、甘肃、青海、澳门(口语)</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 静态包含 -->
		<%@include file="footer.jsp" %>
		

		<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
	</body>

</html>