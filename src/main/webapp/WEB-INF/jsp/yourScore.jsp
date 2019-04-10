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
<title>查询成绩</title>

<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>css/cet4-6.css" rel="stylesheet">
</head>
<body>
	<!-- 静态包含 -->
	<%@include file="top.jsp"%>
	
	<div class="container" style="width:60%;height: 380px;border: solid gray 1px; margin-top:30px">
		<div class="row text-center">
			<h3>全国大学英语考试成绩报告单</h3><br/>
			<table class="table table-bordered table-striped">
				<tr>
					<td>姓名：</td>
					<td>${student.name}</td>
				</tr>
				<tr>
					<td>学校：</td>
					<td>${student.school}</td>
				</tr>
				<tr>
					<td>院系：</td>
					<td>${student.xueyuan}</td>
				</tr>
				<tr>
					<td>身份证号：</td>
					<td>${student.idcardnum}</td>
				</tr>
				<tr>
					<td>准考证号：</td>
					<td>${examInfo.zkzh}</td>
				</tr>
				<tr>
					<td>考试科目：</td>
					<td>${examInfo.kemu}</td>
				</tr>
				<tr>
					<td>考试成绩：</td>
					<td>${score}</td>
				</tr>
			
			</table>
			
		</div>
	</div>
		
		
	<%@include file="footer.jsp"%>

	<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script type="text/javascript">
			function check(){
				var zkzh = $('#zkzh').val();
				var date = $('#date').val();
				if(zkzh==""||date==""){
					$('#error').html("准考证或日期不能为空");
					return false;
				}
			}
		</script>
</body>
</html>