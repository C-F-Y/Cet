<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page trimDirectiveWhitespaces="true"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>四六级报名系统后台管理</title>

		<!-- Bootstrap Core CSS -->
		<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">



		<!-- Custom CSS -->
		<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">



	</head>

	<body>

		<div id="wrapper">

			<!-- Navigation -->
			<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-brand" href="${pageContext.request.contextPath}/Awelcome">大学英语四六级报名系统后台管理</a>
					
				</div>


				<div class="navbar-default sidebar" role="navigation">
					<div class="sidebar-nav navbar-collapse">
						<ul class="nav" id="side-menu">
							<li><a href="${pageContext.request.contextPath}/AinputInfo" ><i class="fa fa-edit fa-fw"></i> 录入信息</a></li>
							<li><a href="${pageContext.request.contextPath}/Averify" ><i class="fa fa-edit fa-fw"></i> 审核报名</a></li>
							<li><a href="${pageContext.request.contextPath}/AinputScore"><i class="fa fa-dashboard fa-fw"></i> 录入成绩</a></li>
							<li><a href="${pageContext.request.contextPath}/AqueryScore" ><i class="fa fa-edit fa-fw"></i> 查询成绩</a></li>
							<li><a href="${pageContext.request.contextPath}/AresetPwd" ><i class="fa fa-edit fa-fw"></i> 密码重置</a></li>
							<li><a href="${pageContext.request.contextPath}/AsendNotice" ><i class="fa fa-edit fa-fw"></i> 发布公告</a></li>
						</ul>
					</div>
					<!-- /.sidebar-collapse -->
				</div>
				<!-- /.navbar-static-side -->
			</nav>

			<div id="page-wrapper">
				<div class="row">
					<div class="col-lg-12">
						<div class="main-content">
							<div class="well well-lg" style="width: 100%;height: 600px;">
								<h2 class="text-center" style="line-height: 400px;color: #0088CC;"><b>欢迎登录大学英语四六级报名后台管理系统！</b></h2>

							</div>

						</div>
					</div>
				</div>

			</div>

		</div>


	</body>

</html>
