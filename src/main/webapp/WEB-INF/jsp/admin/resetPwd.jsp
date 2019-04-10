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
		<link href="css/sb-admin-2.css" rel="stylesheet">

		<!-- Custom Fonts -->
		<!-- <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
		<!-- <link href="css/boot-crm.css" rel="stylesheet" type="text/css"> -->


	</head>

	<body>

		<div id="wrapper">

			<!-- Navigation -->
			<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="Awelcome">大学英语四六级报名系统后台管理</a>
				</div>


				<div class="navbar-default sidebar" role="navigation">
					<div class="sidebar-nav navbar-collapse">
						<ul class="nav" id="side-menu">
							<li><a href="${pageContext.request.contextPath}/AinputInfo" ><i class="fa fa-edit fa-fw"></i> 录入信息</a></li>
							<li><a href="Averify" ><i class="fa fa-edit fa-fw"></i> 审核报名</a></li>
							<li><a href="AinputScore"><i class="fa fa-dashboard fa-fw"></i> 录入成绩</a></li>
							<li><a href="AqueryScore" ><i class="fa fa-edit fa-fw"></i> 查询成绩</a></li>
							<li><a href="AresetPwd" class="active"><i class="fa fa-edit fa-fw"></i> 密码重置</a></li>
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
						<h1 class="page-header">重置密码</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="panel panel-default">
					<div class="panel-body">
						<form class="form-inline" action="${pageContext.request.contextPath }/AresetPwd" method="post">
							<div class="form-group">
								<label for="school">学校:</label>
								<select class="form-control" id="school" name="school">
									<option value="">--请选择--</option>
									<c:forEach items="${schoolList}" var="item">
										<c:if test="${item.school!='' and item.school!=null}">
											<option value="${item.school}" <c:if test="${vo.school== item.school}">selected
										</c:if>>${item.school}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="custIndustry">考试科目:</label>
								<select class="form-control" id="kemu" name="kemu">
									<option value="">--请选择--</option>
									<option value="英语四级口语" <c:if test="${vo.kemu=='英语四级口语'}">selected</c:if> >英语四级口语</option>
									<option value="英语四级笔试" <c:if test="${vo.kemu=='英语四级笔试'}">selected</c:if>>英语四级笔试</option>
									<option value="英语六级口语" <c:if test="${vo.kemu=='英语六级口语'}">selected</c:if>>英语六级口语</option>
									<option value="英语六级笔试" <c:if test="${vo.kemu=='英语六级笔试'}">selected</c:if>>英语六级笔试</option>
								</select>
							</div>
							<div class="form-group">
								<label for="customerName">&nbsp;&nbsp;&nbsp;学号：</label>
								<input type="text" class="form-control" id="xuehao" value="${vo.xuehao}" name="xuehao">
							</div>
							<div class="form-group">
								<label for="name">&nbsp;&nbsp;&nbsp;姓名：</label>
								<input type="text" class="form-control" id="name" value="${vo.name }" name="name">
							</div>

							<button type="submit" class="btn btn-primary text-right">查询</button>
						</form>
					</div>
				</div>
				<form action="admin/updateSStatus" method="post">


					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading">学生信息列表</div>
								<!-- /.panel-heading -->
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>学校</th>
											<th>专业</th>
											<th>学号</th>
											<th>姓名</th>
											<th>考试科目</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody class="text-center">
										<c:forEach items="${studentList}" var="item">
											<tr>
												<td>${item.school}</td>
												<td>${item.zhuanye}</td>
												<td>${item.xuehao}</td>
												<td>${item.name}</td>
												<td>${item.kemu}</td>
												<td>
													<button type="button" class="btn-sm btn-danger" onclick="resetPwd(${item.id})">重置密码</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
							<!-- /.panel -->
						</div>
						<!-- /.col-lg-12 -->
					</div>
				</form>
			</div>

		</div>
		<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function resetPwd(id){
				if(confirm("确定要重置密码？")){
					$.post("<%=basePath%>admin/resetPassword",{"id":id},function(date){
						alert("已成功重置密码为：0000");
						window.location.reload();
					});
				}
				
			}
		</script>
	</body>

</html>
