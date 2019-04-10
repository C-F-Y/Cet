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
		
		<div class="container">
			<div class="row" style="border: solid gray 1px; text-align: center;margin-top: 30px;">
				<div class="col-lg-5 col-lg-offset-3">
					<div id="zc_main" class="" style="height:auto;">

						<div id="zc_title" class="cen">
							<h2>欢迎登录CET考试报名系统</h1></div>
						<div id="" class="p100">
							<table class="table table-bordered table-hover table-striped table-condensed" style="box-shadow: 2px 2px 5px #ccc;border-radius: 3px;">

								<thead>
									<tr>
										<td colspan="2" class="ufo_table_02_title" align="center">基本信息</td>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td class="td_title">考次名称：</td>

										<td class="td_content">2018年下半年CET考试</td>

									</tr>
									<tr>
										<td class="td_title">报名状态：</td>

										<td class="td_content" style="color:red"><strong class="r">
											<c:if test="${sessionScope.user.status==1}">
												未报名
											</c:if>
											<c:if test="${sessionScope.user.status==2}">
												审核中
											</c:if>
											<c:if test="${sessionScope.user.status==3 or sessionScope.user.status==5}">
												已报名
											</c:if>
											<c:if test="${sessionScope.user.status==4}">
												报名失败
											</c:if>
										</strong></td>
									</tr>
									<tr>
										<td class="td_title">残疾考生合理便利线下申请截止时间：</td>

										<td class="td_content">2018-10-29 20:00</td>

									</tr>
								</tbody>

								<tfoot>
									<tr>
										<td colspan="2" class="ufo_table_02_title" align="center"></td>
									</tr>
								</tfoot>

							</table>
							<form action="selectStudentById" method="post">
								<input type="hidden" name="stuId" value="${sessionScope.user.stuid}"/>
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
								<tbody>
									<tr>
										<td width="40%"></td>
										<td align="center">
											<c:if test="${sessionScope.user.status==1}">
												<a href="selectInfo"><button class="btn btn-info btn-large" type="button" contenteditable="true">开始报名</button></a>
											</c:if>
											<c:if test="${sessionScope.user.status!=1}">
												<!-- <a href="selectStudentById"> -->
												<button class="btn btn-info btn-large" type="submit" contenteditable="true" >查看报名信息</button>
											</c:if>
											
										</td></a> 
										<td width="40%"></td>
									</tr>
								</tbody>
							</table>
							
							</form>
							
						</div>

						<br>

					</div>
				</div>
			</div>
		</div>

		<!-- 静态包含 -->
		<%@include file="footer.jsp" %>
		

		<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
		
	</body>

</html>