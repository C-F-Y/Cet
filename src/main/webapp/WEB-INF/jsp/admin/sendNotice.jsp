<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>四六级报名系统后台管理</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">



<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">
<link href="<%=basePath%>css/default.css" rel="stylesheet">
<style>
#title {
	display: inline-block;
	width: 92%;
	height: 40px;
	line-height: 40px;
	box-sizing: border-box;
	padding-left: 16px;
	border: none;
	background-color: #efefef;
	color: #4f4f4f;
}

textarea {
	display: block;
}
</style>
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/Awelcome">大学英语四六级报名系统后台管理</a>

		</div>


		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a href="${pageContext.request.contextPath}/AinputInfo"><i
							class="fa fa-edit fa-fw"></i> 录入信息</a></li>
					<li><a href="${pageContext.request.contextPath}/Averify"><i
							class="fa fa-edit fa-fw"></i> 审核报名</a></li>
					<li><a href="${pageContext.request.contextPath}/AinputScore"><i
							class="fa fa-dashboard fa-fw"></i> 录入成绩</a></li>
					<li><a href="${pageContext.request.contextPath}/AqueryScore"><i
							class="fa fa-edit fa-fw"></i> 查询成绩</a></li>
					<li><a href="${pageContext.request.contextPath}/AresetPwd"><i
							class="fa fa-edit fa-fw"></i> 密码重置</a></li>
					<li><a href="${pageContext.request.contextPath}/AsendNotice"
						class="active"><i class="fa fa-edit fa-fw"></i> 发布公告</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">发布公告</h1>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="col-lg-12">
								<input type="text" id="title" 
									placeholder="输入文章标题"/><br />
								<br />
						</div>
						<form>
							<textarea name="content"
								style="width: 800px; height: 400px; visibility: hidden;"></textarea>
						</form>
					</div>
					<div class="col-lg-2">
						<br/><br/><br/><br/><br/>
						<div><input type="button" class="btn btn-success" name="sendnotice" value="发布公告" /></div>
						<br/>
						<div><input type="button" class="btn btn-warning" name="savenotice" value="暂存公告" /></div>
						<br/>
						<div><input type="button" class="btn btn-danger" name="clear" value="清空内容" /></div>
						<br/>
						<br/>
						<br/>
						<br/>
						<div><input type="button" class="btn btn-default" name="mynotice" value="我的草稿" /></div>
						<!-- <div>注：只以读取最近一次保存的草稿！</div> -->
					</div>
				</div>
			</div>

		</div>
	</div>

	<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/kindeditor-min.js"></script>
	<script src="<%=basePath%>js/zh_CN.js"></script>
	<script type="text/javascript">
		var editor;
		KindEditor.ready(function(K) {
			var title = $('#title').val();
			
			editor = K.create('textarea[name="content"]', {
				allowFileManager : true
			});
			K('input[name=sendnotice]').click(function(e) {
				sendnotice();
			});
			K('input[name=savenotice]').click(function(e) {
				savenotice();
			});
			K('input[name=clear]').click(function(e) {
				$('#title').val('');
				editor.html('');
			});
			K('input[name=mynotice]').click(function(e) {
				readnotice();
			});
	
		});	
		
		
			function sendnotice(){
				var title = $('#title').val();
				var content = editor.html();
				if(title.trim()==""||content.trim()==""){
					alert("标题或内容不能为空！");
				}else{
					$.post("saveNotice",{"title":title,"content":content,"state":1},function(response){
						alert(response);
				      });
				}
				
				
			}
			 function savenotice(){
				var title = $('#title').val();
				var content = editor.html();
				if(title.trim()==""&&content.trim()==""){
					alert("标题和内容不能同时为空！");
				}else{
					$.post("saveNotice",{"title":title,"content":content,"state":3},function(response){
						alert(response);
				      });	
				}
				
				/* $.post("saveNotice",{"title":title,"content":content,"state":3},function(response){
					alert(response);
			      }); */
				
			} 
			
			function readnotice(){
				$.ajax({ url: "myNotice",success: function(response){
					if(!response){
						alert("草稿箱暂无内容！");
					}
					$('#title').val(response.title);
					editor.html(response.content);
			      }});
			}
		
		
		
		
	</script>

</body>

</html>