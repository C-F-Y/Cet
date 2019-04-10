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

	<div class="container" style="margin-top: 30px;">
			<div class="row" style="text-align: center;">
				<form action="${pageContext.request.contextPath}/selectStudentScore" method="post" onsubmit="return check()">
					<div class="col-lg-6 col-lg-offset-3" style="border: solid gray 1px;">
					<h3 class="text-center"><b>考生成绩查询</b></h3>
					<span id="error" style="color:red">${error}</span><br/>
					准考证号：
					<input type="text" id="zkzh" name="zkzh" /><br /><br /> <br/>
					出生年月：
					<input type="text" id="date" name="date" placeholder="输入身份证前四位即可" /><br /><br /> 
					<br/>
					<button type="submit" class="btn btn-primary" style="width:100px">查询</button>
					<br /><br />
					
					</div>
					
				</form>
				
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