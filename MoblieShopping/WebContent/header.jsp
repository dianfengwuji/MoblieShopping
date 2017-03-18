<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<header>
	<div class="header_no">
		<div class="container">
			<div class="row">
				<div class="col-sm-7 hidden-xs">
					<ul class="header_no_ul">
						<li><a href="#">手机商城</a><span>|</span></li>
						<li><a href="#">主题</a><span>|</span></li>
						<li><a href="#">游戏</a><span>|</span></li>
						<li><a href="#">多看阅读</a><span>|</span></li>
						<li><a href="#">app</a><span>|</span></li>
						<li><a href="#">问题反馈</a></li>
					</ul>
				</div>
				<div class="col-sm-5 col-xs-12">
					<ol class="header_no_ol">
						<c:choose>
							<c:when test="${not empty User}">
								<li><img src="images/lufei.png" id="user_img" /><a
									href="login.jsp">${User.user_name}</a></li>
								<li><a href="user_removeUser.action">退出</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="login.jsp">登录</a></li>
								<li><a href="register.jsp">注册</a></li>
							</c:otherwise>
						</c:choose>
						<li><a href="#">消息通知</a><span>|</span></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-shopping-cart"></span>购物车(0)</a></li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<div class="head">
		<div class="row">
			<div class="col-sm-2 col-xs-3">
				<h2>logo</h2>
			</div>
			<div class="col-sm-7 col-md-7 hidden-xs" id="nlist">
				<ul class="navlist">
					<li class="navindex"><a href="#">首页</a></li>
					<li class="active"><a href="#">小米</a></li>
					<li><a href="#">红米</a></li>
					<li><a href="#">笔记本</a></li>
					<li><a href="#">平板</a></li>
					<li><a href="#">电视</a></li>
					<li><a href="#">路由器</a></li>
					<li><a href="#">服务</a>
					</li>
					<li><a href="#">社区</a>
					</li>
				</ul>
			</div>


			<div class="col-sm-3 col-xs-6 col-md-3 navinput">
				<form>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="请输入要搜索的手机">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-search"></span>
							</button> </span>
					</div>
				</form>
			</div>

			<div class="visible-xs col-xs-3 toggle">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#example-navbar-collapse">
								<span class="sr-only">切换导航</span> <span class="icon-bar"></span>
								<span class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse" id="example-navbar-collapse">
							<ul class="nav nav-pills nav-stacked">
								<li class="active"><a href="#">首页</a>
								</li>
								<li><a href="#">小米</a>
								</li>
								<li><a href="#">魅族</a>
								</li>
								<li><a href="#">VB.Net</a>
								</li>
								<li><a href="#">Java</a>
								</li>
								<li><a href="#">PHP</a>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<ol class="hol">
			<li>
				<article class="hidden-sm">
					<div class="item">
						<ul class="item_list">
						</ul>
					</div>
				</article></li>
			<li>
				<article class="hidden-sm">
					<div class="container item">
						<ul class="item_list">
						</ul>
					</div>
				</article></li>
			<li>
				<article class="hidden-sm">
					<div class="container item">
						<ul class="item_list">
						</ul>
					</div>
				</article></li>
			<li>
				<article class="hidden-sm">
					<div class="container item">
						<ul class="item_list">
						</ul>
					</div>
				</article></li>
		</ol>
	</div>
</header>