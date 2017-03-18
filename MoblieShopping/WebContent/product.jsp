<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/product.js"></script>

<link href="css/product.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${product.name }</title>
<style type="text/css">
/* p_number */
.p_number {
	width: 480px;
	height: 80px;
	margin: 10px auto;
}

.p_number .f_l {
	float: left;
	margin: 20px;
}

.p_number .add_chose {
	width: 105px;
}

.p_number .add_chose a {
	float: left;
	margin: 5px 0 0 0;
	display: block;
	width: 15px;
	height: 15px;
	line-height: 99em;
	overflow: hidden;
	background: url(images/reduce-add.gif) no-repeat;
}

.p_number .add_chose a.reduce {
	background-position: 0 0;
}

.p_number .add_chose a.reduce:hover {
	background-position: 0 -16px;
}

.p_number .add_chose a.add {
	background-position: -16px 0;
}

.p_number .add_chose a.add:hover {
	background-position: -16px;
}

.p_number .add_chose .text {
	float: left;
	margin: 0 5px;
	display: inline;
	border: solid 1px #ccc;
	padding: 4px 3px 4px 8px;
	width: 40px;
	line-height: 18px;
	font-size: 14px;
	color: #990000;
	font-weight: 800;
}

.p_number .buy {
	line-height: 2em;
}

.p_number .buy .total-font {
	font-family: Arial;
	font-size: 26px;
}

.p_number .buy .jifen {
	margin-left: 20px;
	color: #ACACAC;
}

.p_number .buy .jifen b {
	margin: 0 3px;
}
</style>
</head>

<body>
	<c:import url="header.jsp" />
		<div id="main">
			<div class="span1">首页 > ${product.name }</div>
			<div class="pud">
				<div class="pudimg">
					<img src="images/${product.logo }" />
				</div>
				<div class="puddel">
					<div class="pudname">
						${product.name }<br /> <span> ${product.content }</span>
					</div>
					<div class="pudprice">
						价格：<span>￥${product.price }</span>
					</div>
					<div class="choose" id="dress-size">

						<div class="choosetext">
							颜色：<span>未选择</span>
						</div>
						<div class="choosebox">
							<ul class="clearfix">
								<li><input type="radio" name="" value="S" id="" /> <a
									href="javascript:void(0);" class="size_radioToggle"><span
										class="value">红色</span>
								</a></li>
								<li><input type="radio" name="" value="M" id="" /> <a
									href="javascript:void(0);" class="size_radioToggle"><span
										class="value">白色</span>
								</a></li>
								<li><input type="radio" name="" value="L" id="" /> <a
									href="javascript:void(0);" class="size_radioToggle"><span
										class="value">黑色</span>
								</a></li>

							</ul>
						</div>
						<div class="choosetext1">
							网络：<span>未选择</span>
						</div>
						<div class="choosebox1">
							<ul class="clearfix">
								<li><input type="radio" name="" value="S" id="" /> <a
									href="javascript:void(0);" class="size_radioToggle1"><span
										class="value">全网通</span>
								</a></li>
								<li><input type="radio" name="" value="M" id="" /> <a
									href="javascript:void(0);" class="size_radioToggle1"><span
										class="value">移动4G</span>
								</a></li>
								<li><input type="radio" name="" value="L" id="" /> <a
									href="javascript:void(0);" class="size_radioToggle1"><span
										class="value">网通4G</span>
								</a></li>
								<li><input type="radio" name="" value="XL" id="" /> <a
									href="javascript:void(0);" class="size_radioToggle1"><span
										class="value">电信4G</span>
								</a></li>

							</ul>
						</div>

						<input type="hidden" value="${product.id}" name="productid" /> <input
							type="hidden" value="${users.id}" name="userid" />

						<div>
							<button type="submit" class="btn-img">
								<span>立即购买</span>
							</button>
						</div>

					</div>

					<div class="p_number">

						<strong id="price_item_1" class="hide">￥${product.price }</strong>

						<div class="f_l add_chose">
							<a class="reduce" onClick="setAmount.reduce('#qty_item_1')"
								href="javascript:void(0)"> -</a> <input type="text"
								name="qty_item_1" value="1" id="qty_item_1"
								onKeyUp="setAmount.modify('#qty_item_1')" class="text" /> <input
								type="hidden" name="cart.num" id="n" value="1" /> <a class="add"
								onClick="setAmount.add('#qty_item_1')" href="javascript:void(0)">
								+</a>
						</div>
						<br />
						<div class="f_l buy">
							总价：<span class="total-font" id="total_item_1">￥89.00</span> <input
								type="hidden" name="total_price" id="total_price" value="" /> <span
								class="jifen">购买商品可获得：<b id="total_points">18</b>积分</span>
						</div>

					</div>

				</div>
			</div>
		</div>
		
	<div class="pudnav">
		<ul>
			<li><a id="message">商品详情</a>
			</li>
			<li><a id="conment">评论</a>
			</li>
		</ul>
	</div>

	<div id="main1">
		<div class="content " id="click1">

			<div id=cmessage>
				<img src="images/del.png" /> <img src="images/del1.jpg" /> <img
					src="images/del2.jpg" /> <img src="images/del3.jpg" /> <img
					src="images/del4.jpg" /> <img src="images/del5.jpg" />
			</div>

		</div>


		<div class="content hide" id="click2">
			<a>我要评论</a>
			<form>
				<textarea class="conmentext"></textarea>
				<input type="submit" class="sub" value="发表评论" / >
			</form>
			<ul>
				<li><img src="images/touxiang.gif" class="contentimg" /> <span>2016-12-03
						10:30:47</span>
					<p>用了半个月了，宝贝真心不错，今天又邮来商务包，很开心，图片太大，上传不了</p></li>

				<li><img src="images/touxiang.gif" class="contentimg" /> <span>2016-12-03
						10:30:47</span>
					<p>用了半个月了，宝贝真心不错，今天又邮来商务包，很开心，图片太大，上传不了用了半个月了，宝贝真心不错，今天又邮来商务包，很开心，图片太大，上传不了</p>
				</li>

				<li><img src="images/touxiang.gif" class="contentimg" /> <span>2016-12-03
						10:30:47</span>
					<p>用了半个月了，宝贝真心不错，今天又邮来商务包，很开心，图片太大，上传不了</p></li>

				<li><img src="images/touxiang.gif" class="contentimg" /> <span>2016-12-03
						10:30:47</span>
					<p>用了半个月了，宝贝真心不错，今天又邮来商务包，很开心，图片太大，上传不了</p></li>

				<li><img src="images/touxiang.gif" class="contentimg" /> <span>2016-12-03
						10:30:47</span>
					<p>用了半个月了，宝贝真心不错，今天又邮来商务包，很开心，图片太大，上传不了</p></li>
			</ul>

		</div>
	</div>

	<!--右侧工具栏-->
	<div id="left">
		<div class="leftnav">
			<ul class="leftnav1">
				<div class="s1">
					<img src="images/user_.jpg" class="touxiang" />
				</div>
				<div class="s2">
					<img src="images/gwc.png" /><font size="-1">购<br />物<br />车</font>
				</div>
				<div class="s3">
					<img src="images/xingxing.png" />
				</div>
				<div class="s3">
					<img src="images/lishi.png" />
				</div>
				<div class="s3">
					<img src="images/xin.png" />
				</div>
			</ul>
			<div class="returntop">
				<img src="images/TOP.png" />
			</div>
		</div>
	</div>

	<c:import url="footer.jsp" />
</body>
</html>
