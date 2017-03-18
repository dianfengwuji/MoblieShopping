<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript">
	$(function() {
		$(".sideMenu").slide({
			titCell : "h3",
			targetCell : "ul",
			defaultIndex : 0,
			effect : 'slideDown',
			delayTime : '500',
			trigger : 'click',
			triggerTime : '150',
			defaultPlay : true,
			returnDefault : false,
			easing : 'easeInQuint',
			endFun : function() {
				scrollWW();
			}
		});
		$(window).resize(function() {
			scrollWW();
		});
	});
	function scrollWW() {
		if ($(".side").height() < $(".sideMenu").height()) {
			$(".scroll").show();
			var pos = $(".sideMenu ul:visible").position().top - 38;
			$('.sideMenu').animate({
				top : -pos
			});
		} else {
			$(".scroll").hide();
			$('.sideMenu').animate({
				top : 0
			});
			n = 1;
		}
	}

	var n = 1;
	function menuScroll(num) {
		var Scroll = $('.sideMenu');
		var ScrollP = $('.sideMenu').position();
		/*alert(n);
		alert(ScrollP.top);*/
		if (num == 1) {
			Scroll.animate({
				top : ScrollP.top - 38
			});
			n = n + 1;
		} else {
			if (ScrollP.top > -38 && ScrollP.top != 0) {
				ScrollP.top = -38;
			}
			if (ScrollP.top < 0) {
				Scroll.animate({
					top : 38 + ScrollP.top
				});
			} else {
				n = 1;
			}
			if (n > 1) {
				n = n - 1;
			}
		}
	}
</script>
<title>后台首页</title>
</head>
<body>
	<div class="top">
		<div id="top_t">
			<div id="logo" class="fl">
				<h1>Z-BUY!手机商城管理</h1>
			</div>
			<div id="photo_info" class="fr">
				<div id="photo" class="fl">
					<a href="#"><img
						src="images/<s:property value="#session.adminlogin.admin_img" />" />
					</a>
				</div>
				<div id="base_info" class="fr">
					<div class="help_info">
						<a href="1" id="hp">&nbsp;</a> <a href="2" id="gy">&nbsp;</a> <a
							href="3" id="out">&nbsp;</a>
					</div>
					<div class="info_center">
						<s:property value="#session.adminlogin.admin_name" />
						<span id="nt">通知</span><span><a href="#" id="notice">3</a>
						</span>
					</div>
				</div>
			</div>
		</div>
		<div id="side_here">
			<div id="side_here_l" class="fl">
				<span>功能菜单</span>
			</div>
			<div id="here_area" class="fl">当前位置：</div>
		</div>
	</div>
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-toggle="collapse"
						data-parent="#accordion" href="#collapseOne"> 个人信息菜单 </a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<ul>
						<li><a href="user_add.action" target="right">个人信息添加</a></li>
						<li><a href="user_findAllUser.action?currentPage=1&name=  " target="right">个人信息列表</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-toggle="collapse"
						data-parent="#accordion" href="#collapseTwo"> 手机管理菜单 </a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body">
					<ul>
						<li><a href="moblie_findAllMoblie.action" target="right">手机列表</a></li>
						<li><a href="moblie_add.action" target="right">手机添加列表</a></li>
						<li><a href="moblieBrand_findAllMoblieBrand.action" target="right">手机品牌列表</a>
						</li>
						<li><a href="moblieBrand_add.action" target="right">手机品牌添加</a></li>
						<li><a href="moblieType_findAllMoblieType.action" target="right">手机机型列表</a>
						</li>
						<li><a href="moblieType_findAllBrand.action" target="right">手机机型添加</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-toggle="collapse"
						data-parent="#accordion" href="#collapseThree"> 导航菜单 </a>
				</h4>
			</div>
			<div id="collapseThree" class="panel-collapse collapse">
				<div class="panel-body">
					<ul>
						<li><a href="#">导航菜单</a></li>
						<li><a href="#">导航菜单</a></li>
						<li><a href="#">导航菜单</a></li>
						<li><a href="#">导航菜单</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="main">
		<iframe name="right" id="rightMain" src="main.jsp" frameborder="no"
			scrolling="auto" width="100%" height="auto" allowtransparency="true">
		</iframe>
	</div>
	<div class="bottom">
		<div id="bottom_bg">版权</div>
	</div>
	<div class="scroll">
		<a href="javascript:;" class="per" title="使用鼠标滚轴滚动侧栏"
			onclick="menuScroll(1);"></a> <a href="javascript:;" class="next"
			title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(2);"></a>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>

</html>



