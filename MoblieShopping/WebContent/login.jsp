<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
<title>Document</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/fonts.css" >
<link rel="stylesheet" href="css/login.css" >
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/iconfont.css">


</head>

<body>
	<section id="section">
		<div class="container">
			<div class="row sec">
				<div
					class="col-md-4 col-md-push-7 col-sm-6 col-sm-push-3 col-xs-10 col-xs-push-1 ulogin">
					<form role="form" class="form1">

						<div class="form-group">
							<h2>Logo</h2>
							<p class="text-center plogin">用户名登录</p>
							<hr />
						</div>

						<div class="input-group form-group group">
							<label class="input-group-addon icon-user"></label> <input
								type="text" class="form-control forml" name="user_name"
								id="user_name" placeholder="请输入用户名">
						</div>

						<div class="form-group lab"></div>


						<div class="input-group form-group group">
							<label class="input-group-addon icon-lock"></label> <input
								type="password" class="form-control forml" name="user_pwd"
								id="user_pwd" placeholder="请输入密码"> <span
								class="form-control-feedback forml"></span>
						</div>

						<div class="form-group lab"></div>



						<div class="form-group group">
							<input type="button" class="form-control btn btn-info sb"
								value="登录">
						</div>

					</form>
					<div class="row group">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<a href="register.jsp" class="pull-right mfr">免费注册</a> <a
								href="#" class="pull-right urp">忘记密码</a>
						</div>
					</div>


					<div class="row group">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<span
								class="glyphicon glyphicon-hand-right pull-right hidden-xs hidden-sm"></span>
							<span class="pull-right hand hidden-xs hidden-sm">email方式登录</span>
							<span class="pull-right hand hidden-md hidden-lg">email方式登录</span>
							<span
								class="glyphicon glyphicon-hand-down pull-right hidden-md hidden-lg"></span>

						</div>
					</div>
				</div>



				<!--     email登陆        -->
				<div
					class="col-md-4 col-md-push-7 col-sm-6 col-sm-push-3 col-xs-10 col-xs-push-1 phonelogin">
					<form role="form" class="form2">

						<div class="form-group">
							<h2>Logo</h2>
							<p class="text-center plogin">email登录</p>
							<hr />
						</div>



						<div class="input-group form-group group">
							<label class="input-group-addon icon-phone-portrait"></label> <input
								type="text" class="form-control forml" name="user_email"
								id="user_email" placeholder="请输入email"> <span
								class="form-control-feedback forml"></span>
						</div>

						<div class="form-group lab"></div>




						<div class="input-group form-group group">
							<label class="input-group-addon icon-lock"></label> <input
								type="password" class="form-control forml" name="user_pwd"
								id="user_pwd" placeholder="请输入密码"> <span
								class="form-control-feedback forml"></span>
						</div>

						<div class="form-group lab"></div>



						<div class="form-group group">
							<input type="button" class="form-control btn btn-info sb1" value="登录">
						</div>

						<div class="form-group group">
							<a href="register.jsp" class="pull-right mfr">免费注册</a> <a
								href="#" class="pull-right urp">忘记密码</a>
						</div>

						<div class="row group">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<span
									class="glyphicon glyphicon-hand-right pull-right hidden-xs hidden-sm"></span>
								<span class="pull-right hand hidden-xs hidden-sm">用户名方式登录</span>
								<span class="pull-right hand hidden-md hidden-lg">用户名方式登录</span>
								<span
									class="glyphicon glyphicon-hand-down pull-right hidden-md hidden-lg"></span>

							</div>
						</div>
					</form>
				</div>
				
				<div class="col-md-1 col-md-push-11 div1 visible-md visible-lg">
					<div class="div2"></div>
					<img src="images/mingren.png" class="bt" /> <img
						src="images/zz.png" class="zz" />
				</div>
				<div class="row qie visible-xs visible-sm">
					<div class="col-xs-12 xsd">
						<div class="col-xs-5 col-sm-5 qhr">
							<div></div>
						</div>

						<div class="col-xs-2 col-sm-2">
							<img src="images/mingren.png" class="bt1" /> <img
								src="images/zz.png" class="zz1" />
						</div>

						<div class="col-xs-5 col-sm-5 qhr">
							<div></div>
						</div>
					</div>
				</div>

			</div>

			<audio src="audio/zz.mp3" id="audio"></audio>
			<audio src="audio/mr.mp3" id="audio1"></audio>
		</div>

	</section>


	<!--      友情链接      -->
 	<c:import url="footer.jsp" />


	<script src="jquery/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/login.js"></script>
	<script src="js/index.js"></script>
	<script src="jquery/jquery.validate.min.js"></script>
</body>

</html>
