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

		<style type="text/css">
			#zc_box {
				width: 953px;
				margin: 0 auto;
			}
			
			#zc_main {
				background: url(../img/zc_bg.jpg) repeat-y;
			}
			
			#zc_title {
				text-indent: 1.5em;
				background: url(../images/d01.jpg) no-repeat 10px 6px;
				padding: 0 0 5px 0;
				border-bottom: 1px solid #a7aaac;
				width: 828px;
				margin-bottom: 30px;
			}
			
			h1 {
				color: #0097ff;
				font: 24px "微软雅黑";
				padding: 0;
				margin: 0;
			}
			
			#zc_main_room {
				margin: 0 80px 0 80px;
				padding: 30px;
				border: 1px solid #c9c9c9;
				color: #536b82;
				font-size: 1.2em;
				line-height: 2.3em;
				border-radius: 7px;
				box-shadow: 2px 2px 5px #ccc;
			}
			.table-d table{border:1px solid #F00;border-collapse: collapse}
			.table-d table td{border:1px solid #F00;}
		</style>
	</head>

	<body>
		<%@include file="top.jsp" %>

		<div class="container" style="width:38%;height: 410px;border: solid gray 1px; margin-top:30px">
		<div class="row text-center table-d" id="table">
			<c:if test="${examInfo.kemu=='英语四级口语' or examInfo.kemu=='英语四级笔试'}">
				<h4>大学英语四级考试</h4>
				<h5>CET4</h5>
			</c:if>
			<c:if test="${examInfo.kemu=='英语六级口语' or examInfo.kemu=='英语六级笔试'}">
				<h4>大学英语六级考试</h4>
				<h5>CET6</h5>
			</c:if>
			<h4>准考证</h4>
			<table class="table table-bordered  table-striped" id=""  border="1" cellspacing="0" cellpadding="0">
				<tr>
					<td>准考证号：</td>
					<td>${examInfo.zkzh}</td>
				</tr>
				<tr>
					<td>考生姓名：</td>
					<td>${student.name }</td>
				</tr>
				<tr>
					<td>证件号码 ：</td>
					<td>${student.idcardnum }</td>
				</tr>
				<tr>
					<td>考试地点：</td>
					<td>第001考场</td>
				</tr>
				<tr>
					<td>考试时间：</td>
					<td>2019年6月15日09点00分</td>
				</tr>
				<tr>
					<td>学校名称：</td>
					<td>${student.school }</td>
				</tr>
				<tr>
					<td>学院系别：</td>
					<td>${student.xueyuan }</td>
				</tr>
				<tr class="text-left">
					<td colspan='2'>备注：请务必携带准考证、身份证和学生证入场；请自备2B铅笔、黑色签字笔等必要文具。</td>
					
				</tr>
			</table>
			
		</div>
		
	</div>
	
	<div class="text-center">
		<br/>
		<button class="btn btn-success" onclick="dayin()">打印准考证</button>
	</div>
		
		
		
		
		
		

		<!-- 静态包含 -->
		<%@include file="footer.jsp" %>
		

		<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
		<script type="text/javascript">
		function dayin(){
		    var tableToPrint= document.getElementById("table");//要打印的表格
		    var newWin= window.open(""); //打开新的窗口
		        newWin.document.write(tableToPrint.outerHTML);//将表格添加进新的窗口
		        newWin.document.close(); //在IE浏览器中必须加这一句
		        newWin.focus(); //在IE浏览器中必须加这一句
		        newWin.print(); //打印
		        newWin.close(); //关闭窗口

		}
		</script>
	</body>

</html>