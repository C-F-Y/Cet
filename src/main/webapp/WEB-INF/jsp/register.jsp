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
<title>用户注册</title>

<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>css/cet4-6.css" rel="stylesheet">
</head>
<body>
	<!-- 静态包含 -->
	<%@include file="top.jsp"%>

	<div class="container" style="margin-top: 30px;">
		<div class="row" style="text-align: center;">
			<form action="addUser" method="post" onsubmit="return check()">
				<div class="col-lg-6 col-lg-offset-3"
					style="border: solid gray 1px;">
					<h3 class="text-center">
						<b>用户注册</b>
					</h3>
					<span id="error" style="color: red">${error}</span><br />
					&nbsp;&nbsp;&nbsp;用户名： <input type="text" id="username"
						name="username" /><br />
					<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码： <input
						type="password" id="password" name="password" /><br />
					<br /> 确认密码： <input type="password" id="repassword"
						name="repassword" /><br />
					<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱： <input
						type="text" id="email" name="email" /><br />
					
					<br /> &nbsp;&nbsp;&nbsp;验证码： <input type="text" name="checkImg" id="checkCode"
						style="width: 70px;" /> 
					<img id="checkImg" src="checkImg" onclick="changeImg()"/><br />
					<br />
					<button type="submit" class="btn btn-primary"
						style="margin-left: 40px; margin-right: 20px">注册</button>
					<button type="reset" class="btn btn-primary">重置</button>
					<br />
					<br />

				</div>

			</form>

		</div>
	</div>



	<%@include file="footer.jsp"%>

	<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
			var flag=true;
			
			$('#username').blur(function(){
				var username=$('#username').val();
				if(username.trim()!=null && username.trim()!=""){
					$.post("<%=basePath%>selectUsername", {"username" : username}, function(data) {
						if(data=="error"){
							$("#error").html("<font color='red'>此用户名已存在</font>");
							flag=false;
						}
						if(data=="OK"){
							$("#error").html("<font color='green'>此用户名可使用</font>");
							flag=true;
						}
					});
				}
				
		})
			
			function check(){
				var username = $('#username').val();
				var password = $('#password').val();
				var repassword = $('#repassword').val();
				var email = $('#email').val();
				var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
				var email = $('#email').val();
				var checkCode = $('#checkCode').val();
				if(username==""||password==""||repassword==""||email==""){
					$('#error').html("注册信息不能为空！");
					return false;
				}
				if(password!=repassword){
					$('#error').html("两次输入的密码不一致！");
					return false;
				}
				if(checkCode==""){
					$('#error').html("验证码不能为空！");
					return false;
				}
				if(filter.test(email)){
					return true;
				}else{
					$('#error').html("邮箱格式不正确！");
					return false;
				}
				if(!flag){
					$('#error').html("用户名已存在！");
					return false;
				}
				else{
					alert("注册请求已提交！请到邮箱到激活账户！");
				}
			}
			
			function changeImg() {
		        var imgSrc = $("#checkImg");
		        var src = imgSrc.attr("src");
		        imgSrc.attr("src", chgUrl(src));
		    }  
			//加入时间戳，去缓存机制   
		    function chgUrl(url) {
		        var timestamp = (new Date()).valueOf();if ((url.indexOf("&") >= 0)) {
		            url = url + "&timestamp=" + timestamp;
		        } else {
		            url = url + "?timestamp=" + timestamp;
		        }
		        return url;
		    }
			
	</script>
</body>
</html>