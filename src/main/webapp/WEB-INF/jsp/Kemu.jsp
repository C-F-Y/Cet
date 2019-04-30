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
<title>选择考试科目</title>
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>css/cet4-6.css" rel="stylesheet">
</head>
<body>
	<%@include file="top.jsp"%>
	
	<div class="container" style="width: 500px; height: 260px; border: solid gray 1px; margin-top: 30px;">
		<div>
			<div class="col-lg-8 col-lg-offset-2">
				<h4 style="margin-top:50px"><b>请选择考试科目：</b></h4>
				<form action="updateStatus" method="post" onsubmit=" return tip()">
					<input type="hidden" value="${student.xuehao}" name="xuehao">
					<input type="hidden" value="${student.id}" name="stuid">
					<input type="hidden" value="${user.id}" name="id">
					<table class="table table-bordered table-hover table-striped table-condensed text-center"
						style="line-height: 50px;" border="0">
					<tr >
						<td >学号：</td>
						<td>${student.xuehao}</td>
					</tr>
					<tr >
						<td >姓名：</td>
						<td>${student.name}</td>
					</tr>
					<tr>
						<td>
							考试科目：
						</td>
						<td>
						<select id="kemu" name="kemu" class="form-control" data-bv-notempty-message="请选择考试科目">
							<option value="">- 请选择 -</option>
							<option value="英语四级口语">英语四级口语</option>
							<option value="英语四级笔试">英语四级笔试</option>
							<c:if test="${examInfo.sbscore>=425}">
								<option value="英语六级口语">英语六级口语</option>
								<option value="英语六级笔试">英语六级笔试</option>
							</c:if>
							
						</select>
						</td>
					</tr>
				</table>
					<button class="btn btn-info btn-large" type="submit"
					contenteditable="true" style="margin-left:90px">确认报名</button>
				</form>
			</div>
		</div>
	</div>
	
	
	
	<!-- 静态包含 -->
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
		function tip(){
			if(confirm("您确定报名？")){
				/* alert("请求已提交！"); */
			}else{
				return false;
			}
		}
	</script>
		
</body>
</html>