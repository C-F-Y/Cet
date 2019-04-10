<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="itheima" uri="http://itcast.cn/common/"%> --%>
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

<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">



<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">
	<link href="<%=basePath%>css/fileinput.min.css" rel="stylesheet">
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/Awelcome">大学英语四六级报名系统后台管理</a>
		</div>


		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a href="${pageContext.request.contextPath}/AinputInfo" class="active"><i class="fa fa-edit fa-fw"></i> 录入信息</a></li>
					<li><a href="${pageContext.request.contextPath}/Averify"><i
							class="fa fa-edit fa-fw"></i> 审核报名</a></li>
					<li><a href="${pageContext.request.contextPath}/AinputScore"
						><i class="fa fa-dashboard fa-fw"></i> 录入成绩</a></li>
					<li><a href="${pageContext.request.contextPath}/AqueryScore"><i
							class="fa fa-edit fa-fw"></i> 查询成绩</a></li>
					<li><a href="${pageContext.request.contextPath}/AresetPwd"><i
							class="fa fa-edit fa-fw"></i> 密码重置</a></li>
					<li><a href="${pageContext.request.contextPath}/AsendNotice" ><i class="fa fa-edit fa-fw"></i> 发布公告</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">录入学生信息</h1>
				</div>
			</div>

			<!-- <input id="f_upload" type="file" class="file" data-show-preview="false" /> -->
			<form action="uploadFile" method="post" enctype="multipart/form-data">
				<br/>
				<img src="<%=basePath%>img/pic.PNG" width="1000px"></img>
				<div style="color:red"><h5>请上传符合以上格式的xls,xlsx文件</h5></div><br/>
				
				<input type="file" name="file" class="file" data-show-preview="false" data-allowed-file-extensions='["xls","xlsx"]'>
				<div style="color:red;">
					<br/><h4>${tip}</h4>
				</div>
			</form>

		</div>




	</div>

	<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/fileinput.min.js"></script>
	<script src="<%=basePath%>js/zh.js"></script>
	<script type="text/javascript">
		
	</script>

</body>

</html>
