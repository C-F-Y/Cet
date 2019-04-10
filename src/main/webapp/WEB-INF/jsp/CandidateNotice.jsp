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
	<%@include file="top.jsp"%>

	<div id="main" class=""
		style="color: black; font-size: 14px; margin-top: 26px;">

		<div style="margin-right: 5%; margin-left: 5%;">
			<table
				style="margin-right: 10%; margin-left: 10%; height: 50px;"
				width="80%" cellspacing="0" cellpadding="1" align="center">
				<tbody>
					<tr style="border: 1px solid #FFFFFF; height: 50px;">
						<td colspan="7"
							style="border: 1px solid #FFFFFF; line-height: 2em;">
							<p
								style="color: #212963; font-size: 24px; font-weight: bolder; border-bottom: 1px solid #d580be; padding-bottom: 13px;"
								align="center">${notice.title}</p>
						</td>
					</tr>
				</tbody>
			</table>
			<br>

			<div style="clear: both"></div>
		</div>

	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-2">
				<c:forEach items="${noticeList}" var="item">
					<div style="font-size: 10px; margin: 7px 0px">
						<a href="candidateNotice?id=${item.id}">${item.title}</a>
					</div>
				</c:forEach>

			</div>
			<div class="col-lg-10">
				<div>
					${notice.content}
				</div>
			</div>
		</div>
	</div>


	<!-- 静态包含 -->
	<%@include file="footer.jsp"%>


	<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
</body>

</html>