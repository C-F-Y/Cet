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
		</style>
	</head>

	<body>
		<%@include file="top.jsp" %>

		<div class="container">
			<div class="row" style="border: solid gray 1px; margin: 30px;">
				<div class="col-lg-4 col-lg-offset-4">
					<form class="form-horizontal" action="selectStudent" method="post" onsubmit="return check()">
						<div class="control-group">
							<h2>资格信息查询</h2>
							<label class="control-label" for="idtype">证件类型</label>
							<select id="selIDType" class="form-control" required="" data-bv-notempty-message="请选择证件类型">
								<option value="">- 请选择 -</option>
								<option value="1">中华人民共和国居民身份证</option>
								<option value="2">台湾居民往来大陆通行证</option>
								<option value="3">港澳居民来往内地通行证</option>
								<option value="4">护照</option>
								<option value="5">香港身份证</option>
								<option value="6">澳门身份证</option>
							</select>

						</div>
						<div class="control-group">
							<label class="control-label" for="idnumber">证件号码</label>

							<input class="form-control placeholder" id="idnumber" placeholder="请输入证件号码" maxlength="32" type="text" name="idcardnum">
						</div>
						<div class="control-group">
							<label class="control-label" for="name">姓名</label>
							<input  class="form-control placeholder" placeholder="请输入姓名" maxlength="64" type="text" id="name" name="name" >
						</div>
						<div class="row text-center" style="margin: 10px;">
							<span id="error" style="color:red">${error}</span><br/>
							<button class="btn btn-info btn-large" type="submit" contenteditable="true" >查询</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- 静态包含 -->
		<%@include file="footer.jsp" %>
		

		<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function check(){
				var selIDType = $('#selIDType').val();
				var idnumber = $('#idnumber').val();
				var name = $('#name').val();
				if(idnumber==""||name==""){
					$('#error').html("号码或姓名不能为空！");
					return false;
				}
				if(selIDType!=1){
					$('#error').html("<b>请选择正确的证件类型！</b>");
					return false;
				}
			}
		
		</script>
	</body>

</html>