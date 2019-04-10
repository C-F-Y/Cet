<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css">

<style type="text/css">
.zc_goux {
	font-size: 18px;
	text-align: center;
	background-color: #eee;
	width: 754px;
	margin: 10px auto 20px auto;
	padding: 20px;
}
</style>
</head>

<body>
	<%@include file="top.jsp"%>

	<div class="container"
		style="width: 800px; height: 280px; border: solid gray 1px; margin-top: 30px;">
		<table class="ufo_table_02"
			style="width: 827px; margin-bottom: 25px; margin-top: 20px; margin-left: 10px;"
			width="100%" cellspacing="0" cellpadding="0" border="0">
			<tbody>
				<tr>
					<td width="130"><img class="zp"
						style="height: 160px; width: 120px; margin-right:40px" id="imgPhotoShow"
						src="<%=basePath%>img/tx.jpg"></td>
					<td>
						<table cellspacing="0" cellpadding="0" border="0" id="table">
							<tbody>
								<tr style="height: 30px;">
									<td class="lz_td1" align="right"><span>姓 名：</span></td>
									<td class="lz_td2"><span id="lblName">${student.name}</span></td>
								</tr>
								<tr style="height: 30px;">
									<td class="lz_td1" align="right"><span>性 别：</span></td>
									<td class="lz_td2"><span id="lblGender">${student.sex}</span></td>
								</tr>
								<tr style="height: 30px;">
									<td class="lz_td1" align="right"><span>证件类型：</span></td>
									<td class="lz_td2"><span id="lblIDType">中华人民共和国居民身份证</span></td>
								</tr>
								<tr style="height: 30px;">
									<td class="lz_td1" align="right"><span>证件号码：</span></td>
									<td class="lz_td2"><span id="lblIDNumber">${student.idcardnum}</span></td>
								</tr>
								<tr style="height: 30px;">
									<td class="lz_td1" align="right"><span>资格科目：</span></td>
									<td class="lz_td2">
										<c:if test="${examInfo.sbscore>=425}">
											<span id="lblIDNumber" title="CET4、CET6"> 英语四级；英语六级</span>
										</c:if> 
										<c:if test="${examInfo.sbscore==null or examInfo.sbscore<425}">
											<span id="lblIDNumber" title="CET4"> 英语四级</span>
										</c:if></td>
								</tr>
								<tr style="height: 30px;">
									<td>报名状态：</td>
									<td><span style="color: red"> 
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
									</span></td>


								</tr>
								<c:if test="${sessionScope.user.status!=1}">
									<tr style="height: 30px;">
										<td class="lz_td1" align="right"><span>报名科目：</span></td>
										<td class="lz_td2" style="color:red"><span id="lblName">${examInfo.kemu}</span></td>
									</tr>

								</c:if>
								
								<c:if test="${sessionScope.user.status==3 or sessionScope.user.status==5}">
									<tr style="height: 30px;">
										<td class="lz_td1" align="right"><span>准考证号：</span></td>
										<td class="lz_td2" style="color:red">${examInfo.zkzh}
										</td>
										
									</tr>

								</c:if>
								
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
		

	</div>
	<form action="kemu" method="post">
		<input type="hidden" id="id" value="${student.id}" name="id">
		<div class="container"
			style="width: 800px; height: 320px; border: solid gray 1px; margin-top: 30px;">
			<div class="zc_a_box">

				<div class="zc_a_box_title" id="" style="margin-top: 20px;">
					<h4>
						<b>学籍信息</b>
					</h4>
				</div>

				<div class="row">
					<div class="col-md-12" align="center">

						<table
							class="table table-bordered table-hover table-striped table-condensed"
							style="line-height: 50px;" border="0">
							<tbody>
								<tr>
									<td class="lz_td1">笔试报名学校：</td>
									<td class="lz_td2" colspan="3">${student.school}</td>
								</tr>
								<tr>
									<td class="lz_td1">笔试报名校区：</td>
									<td class="lz_td2" colspan="3">${student.xiaoqu}</td>
								</tr>

								<tr>
									<td colspan="4">&nbsp;</td>
								</tr>

								<tr>
									<td class="lz_td1">学 历：</td>
									<td class="lz_td2">大学</td>
									<td class="lz_td1">学 制：</td>
									<td class="lz_td2">${student.xuezhi}</td>
								</tr>

								<tr>
									<td class="lz_td1">入学年份：</td>
									<td class="lz_td2">${student.ruxuetime}</td>
									<td class="lz_td1">年 级：</td>
									<td class="lz_td2">${student.ruxuetime}</td>
								</tr>

								<tr>
									<td class="lz_td1">院 系：</td>
									<td class="lz_td2">${student.xueyuan}</td>
									<td class="lz_td1">专 业：</td>
									<td class="lz_td2">${student.zhuanye}</td>
								</tr>

								<tr>
									<td class="lz_td1">班 级：</td>
									<td class="lz_td2">${student.banji}</td>
									<td class="lz_td1" id="xuehao">学 号：</td>
									<td class="lz_td2 xuehao">${student.xuehao}</td>
								</tr>

								<tr>
									<td class="lz_td1">备 注：</td>
									<td class="lz_td2" colspan="3"></td>
								</tr>

							</tbody>
						</table>

					</div>
				</div>
			</div>

		</div>

		<div class="row text-center">
			<div class="zc_goux md-checkbox-inline">
				<span class="r" style="padding: 0 10px 0 0;"><c:if
						test="${sessionScope.user.status==1}">请检查并确认学籍与资格信息正确！</c:if> <c:if
						test="${sessionScope.user.status==2 or sessionScope.user.status==5}">祝您取得好成绩！</c:if> <c:if
						test="${sessionScope.user.status==3}">请耐心等待我们的审核！</c:if>
						<c:if
						test="${sessionScope.user.status==4}">您可重新提交报名请求或联系学校相关人员！</c:if>
						
				</span>
			</div>
		</div>


		<div class="row text-center" style="margin: 10px;">
			<c:if test="${sessionScope.user.status==1}">
				<a href="#" class="btn btn-info btn-large" data-toggle="modal"
					data-target="#customerEditDialog">修改信息</a>
				<button class="btn btn-info btn-large" type="submit"
					contenteditable="true">保存并继续</button>
			</c:if>
			
			<c:if test="${sessionScope.user.status==4}">
				<button class="btn btn-info btn-large" type="submit"
					contenteditable="true">重新提交报名请求</button>
			</c:if>
		</div>


	</form>



	<!-- 静态包含 -->
	<%@include file="footer.jsp"%>

	<!-- 学生编辑对话框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改学生信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_student_form"
						action="updateStudent" method="post" onsubmit="return tip()">
						<input type="hidden" name="id" value="${student.id}" />

						<div class="form-group">
							<label for="edit_studentFrom"
								style="float: left; padding: 7px 15px 0 27px;">报名学校</label>
							<div class="col-sm-10">
								<select class="form-control" id="School" placeholder="报名学校"
									name="school">
									<!-- <option value="">--请选择--</option> -->
									<c:forEach items="${schoolList}" var="item">
										<c:if test="${item.school!='' and item.school!=null}">
											<option value="${item.school}"
												<c:if test="${ item.school == student.school}">selected</c:if>>${item.school}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="xueyuan"
								style="float: left; padding: 7px 15px 0 27px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;院系</label>
							<div class="col-sm-10">
								<select class="form-control" id="xueyuan" name="xueyuan">
									<!-- <option value="">--请选择--</option> -->
									<c:forEach items="${xueyuanList}" var="item">
										<c:if test="${item.xueyuan!='' and item.xueyuan!=null}">
											<option value="${item.xueyuan}"
												<c:if test="${ item.xueyuan == student.xueyuan}">selected</c:if>>${item.xueyuan}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="zhuanye"
								style="float: left; padding: 7px 15px 0 27px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;专业</label>
							<div class="col-sm-10">
								<select class="form-control" id="zhuanye" name="zhuanye">
									<!-- <option value="">--请选择--</option> -->
									<c:forEach items="${zhuanyeList}" var="item">
										<c:if test="${item.zhuanye!='' and item.zhuanye!=null }">
											<option value="${item.zhuanye}"
												<c:if test="${ item.zhuanye == student.zhuanye}">selected</c:if>>${item.zhuanye}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="banji" class="col-sm-2 control-label">班级</label>
							<div class="col-sm-10">
								<select class="form-control" id="banji" name="banji">
									<c:forEach items="${banjiList}" var="item">
										<c:if test="${item.banji!='' and item.banji!=null }">
											<option value="${item.banji}"
												<c:if test="${ item.banji == student.banji}">selected</c:if>>${item.banji}</option>
										</c:if>
									</c:forEach>

								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="phone" class="col-sm-2 control-label">电话号码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="phone"
									placeholder="电话号码(选填)" name="phone" value="${student.phone}">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="submit" class="btn btn-primary">保存修改</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>


	<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>
	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>
	<script type="text/javascript">
		function tip() {
			if (confirm("确认修改信息？信息错误将导致报名失败！！！")) {
				return true;
			} else {
				return false;
			}
		}
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