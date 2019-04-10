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
	<%@include file="top.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-lg-offset-2 col-lg-8">
				<p align="center"
					style="color: #212963; font-size: 24px; font-weight: bolder; border-bottom: 1px solid #d580be; padding-bottom: 13px;">
					<br />快速打印准考证
				</p>
				<div class="row">
					<div class="col-lg-offset-3 col-lg-6">
						<form class="form-horizontal" action="printfZkz" method="post"
							onsubmit="return check()">
							<div class="control-group">
								<label class="control-label" for="idtype">证件类型</label> 
								<select
									id="selIDType" class="form-control" required=""
									data-bv-notempty-message="请选择证件类型">
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
								<label class="control-label" for="idnumber">证件号码</label> <input
									class="form-control placeholder" id="idnumber"
									placeholder="请输入证件号码" maxlength="32" type="text"
									name="idcardnum">
							</div>
							<div class="control-group">
								<label class="control-label" for="name">姓名</label> <input
									class="form-control placeholder" placeholder="请输入姓名"
									maxlength="64" type="text" id="name" name="name">
							</div>
							<div class="row text-center" style="margin: 10px;">
								<span id="error" style="color: red">${error}</span><br />
								<button class="btn btn-info btn-large" type="submit"
									contenteditable="true" style="width:100px">提交</button>
							</div>
						</form>




					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- 静态包含 -->
	<%@include file="footer.jsp"%>


	<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script type="text/javascript">
			function check(){
				var selIDType = $('#selIDType').val();
				var idnumber = $('#idnumber').val();
				var name = $('#name').val();
				if(idnumber==""||name==""){
					$('#error').html("证件号码或姓名不能为空！");
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