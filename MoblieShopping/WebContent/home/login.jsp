<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#sub_btn").click(function() {
			var admin_name = $("#admin_name").val();
			var admin_pwd = $("#admin_pwd").val();
			$.get("admin_login.action", {
				admin_name : admin_name,
				admin_pwd : admin_pwd
			}, function(data) {
				alert(data);
			});
		});
	});
</script>
<title>后台登陆</title>
</head>
<body>
	<div id="login_top">
		<div id="welcome">欢迎使用手机商城管理系统</div>
		<div id="back">
			<a href="#">返回首页</a>&nbsp;&nbsp; | &nbsp;&nbsp; <a href="#">帮助</a>
		</div>
	</div>
	<div id="login_center">
		<div id="login_area">
			<div id="login_form">
				<!-- 				<s:form action="" method="get" class="login"  namespace="/"> -->
				<div id="login_tip">管理员登录&nbsp;&nbsp;UserLogin</div>
				<h3>
					<s:actionerror />
				</h3>
				<div>
					<input type="text" name="admin_name" id="admin_name"
						class="username">
				</div>
				<div>
					<input type="text" name="admin_pwd" id="admin_pwd" class="pwd">
				</div>
				<div id="btn_area">
					<input type="submit" id="sub_btn" value="登&nbsp;&nbsp;录">&nbsp;&nbsp;
					<input type="text" class="verify"> <img
						src="images/login/verify.png" alt="" width="80" height="40">
				</div>
				<!-- 				</s:form> -->
			</div>
		</div>
	</div>
	<div id="login_bottom">版权所有</div>
</body>
</html>