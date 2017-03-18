<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap 101 Template</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/register.css" rel="stylesheet">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/iconfont.css">


</head>

<body>
	<!--  头部header开始  -->
	<c:import url="header.jsp"></c:import>
	<!--  头部header结束  -->

	<section class="container sec">
		<div class="row">
			<div class="col-md-6 col-md-offset-1 zc">
				<h3>注册</h3>
				<hr />
			</div>
		</div>


		<form class="form-horizontal form1" role="form" action="" method="">

			<div class="form-group group">
				<label class="col-md-2 col-xs-4 col-sm-3 lab">用户名:</label>
				<div class="col-md-3 col-xs-8 col-sm-5">
					<input type="text" class="form-control forml" id="user_name"
						name="user_name" placeholder="请输入用户名">
				</div>
				<div
					class="col-md-3 col-xs-8 col-xs-offset-4 col-md-offset-0 col-sm-3 col-sm-offset-0 info">
					<p></p>
				</div>
			</div>


			<div class="form-group group">
				<label class="col-md-2 col-xs-4 col-sm-3 lab">email邮箱:</label>
				<div class="col-md-3 col-xs-8 col-sm-5">
					<input type="text" class="form-control forml" id="user_email"
						name="user_email" placeholder="请输入邮箱">
				</div>
				<div
					class="col-md-3 col-xs-8 col-xs-offset-4 col-md-offset-0 col-sm-3 col-sm-offset-0 info">
					<p></p>
				</div>
			</div>

			<div class="form-group group">
				<div
					class="col-md-3 col-md-offset-2 col-xs-8 col-xs-offset-4 col-sm-offset-3">
					<input class="btn btn-info forml" id="user_info" type="button" value="免费获取验证码">
				</div>
			</div>

			<!--         短信动态码           -->
			<div class="form-group group">
				<label class="col-md-2 col-xs-4 col-sm-3 lab">动态验证码:</label>
				<div class="col-md-3 col-xs-8 col-sm-5">
					<input type="text" class="form-control forml" id="email_info"
						name="email_info" maxlength="6" placeholder="请输入收到的短信动态码">
				</div>
				<div
					class="col-md-3 col-xs-8 col-xs-offset-4 col-md-offset-0 col-sm-3 col-sm-offset-0 info">
					<p></p>
				</div>
			</div>

			<div class="form-group group">
				<label class="col-md-2 col-xs-4 col-sm-3 lab">创建密码:</label>
				<div class="col-md-3 col-xs-8 col-sm-5">
					<input type="password" class="form-control forml" id="user_pwd"
						name="user_pwd" placeholder="请输入密码" minlength="3">
				</div>

				<div
					class="col-md-3 col-xs-8 col-xs-offset-4 col-md-offset-0 col-sm-3 col-sm-offset-0 info">
					<p></p>
				</div>
			</div>

			<div class="form-group group">
				<div class="col-md-offset-2 col-md-6 col-sm-offset-3 hidden-xs">
					<div class="div2" class="col-md-1 col-xs-4">
						<p id="passstrength">低</p>
						<div></div>
					</div>
					<div class="div4" class="col-md-1 col-xs-4">
						<p id="passstrength">中</p>
						<div></div>
					</div>
					<div class="div6" class="col-md-1 col-xs-4">
						<p id="passstrength">高</p>
						<div></div>
					</div>
				</div>
			</div>



			<div class="form-group group">
				<label class="col-md-2 col-xs-4 col-sm-3 col-sm-9 lab">确认密码:</label>
				<div class="col-md-3 col-xs-8 col-sm-5">
					<input type="password" class="form-control forml" id="user_newpwd"
						name="user_newpwd" placeholder="请再次输入密码" minlength="3">
				</div>
				<div
					class="col-md-3 col-xs-8 col-xs-offset-4 col-md-offset-0 col-sm-3 col-sm-offset-0 info">
					<p></p>
				</div>
			</div>


			<div class="form-group group">
				<div
					class="col-md-3 col-md-offset-2 col-xs-8 col-xs-offset-4 col-sm-offset-3 forml">
					<input type="checkbox" id="agree" name="agree"> <a href="#"
						class="cb">《Z-buy网用户协议》</a>
				</div>
				<div
					class="col-md-3 col-xs-8 col-xs-offset-4 col-md-offset-0 col-sm-3 col-sm-offset-0 info">
					<p></p>
				</div>
			</div>

			<div class="form-group group">
				<div
					class="col-md-3 col-md-offset-2 col-sm-5 col-sm-offset-3 col-xs-10 col-xs-offset-2">
					<input type="submit" id="register_button" class="form-control btn btn-warning forml"
						value="同意以下协议并注册">
				</div>
			</div>
		</form>
	</section>
	<!-- 友情链接 -->
	<c:import url="footer.jsp" />

	<script src="jquery/jquery-3.1.1.min.js"></script>
	<script src="js/register.js" charset="UTF-8"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="jquery/jquery.validate.min.js"></script>
</body>

</html>
