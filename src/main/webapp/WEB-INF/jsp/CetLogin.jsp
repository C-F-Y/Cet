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
		<%@include file="top.jsp" %>

		<div class="container" style="margin-top: 30px;">
			<div class="row" style="text-align: center;">
				<form action="selectUser" method="post" onsubmit="return check()">
					<div class="col-lg-6 col-lg-offset-3" style="border: solid gray 1px;">
					<img src="<%=basePath%>img/login_title.jpg" width="500px" height="67px" />
					<br />
					<span id="error" style="color:red">${error}</span><br/>
					账&nbsp;&nbsp;号：
					<input type="text" id="username" name="username" /><br /><br /> 
					密&nbsp;&nbsp;码：
					<input type="password" id="password" name="password" /><br /><br /> 
					验证码：
					<input type="text" name="checkImg" id="checkCode"
						style="width: 70px;" /> 
					<img id="checkImg" src="checkImg" onclick="changeImg()"/>
					<br /><br />
					<input type="submit" value="登录" style="margin-right: 10px;margin-bottom: 26px;"/>
					<input type="reset" value="重置" style="margin-bottom: 26px;"/>
					</div>
					
				</form>
				
			</div>
		</div>

		<!-- 静态包含 -->
		<%@include file="footer.jsp" %>
		

		<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function check(){
				var xuehao = $('#username').val();
				var password = $('#password').val();
				var checkCode = $('#checkCode').val();
				if(username==""||password==""){
					$('#error').html("账号或密码不能为空");
					return false;
				}
				if(checkCode==""){
					$('#error').html("验证码不能为空！");
					return false;
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