<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap Starter Template</title>

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/moblielist.css">
	<link rel="stylesheet" href="css/iconfont.css">


</head>

<body>
	<!--  头部header开始  -->
	<c:import url="header.jsp" />
	<!--  头部header结束  -->

	<!--    手机列表开始   -->
	<section id="stion">
		<div class="panel-group" id="accordion">
			<div class="col-md-4 col-sm-3 col-xs-12 panelist">

				<div class="panel panel-info">
					<div class="panel-heading">
						<h4 class="panel-title">
							分类:
							<a data-toggle="collapse" data-parent="#accordion" href="#collapse_bf"><span class="glyphicon glyphicon-chevron-down"></span></a>
						</h4>
					</div>


					<div id="collapse_bf" class="panel-collapse collapse">

						<div class="panel-body">
							<ul class="pqb_list">
								<li class="amolist">
									<a href="#"><span class="glyphicon glyphicon-tasks"></span>全部</a>
								</li>
								<li>
									<a href="#"><img src="images/mlist01.jpg"><span>(华为)</span></a>
								</li>

								<li>
									<a href="#"><img src="images/mlist02.jpg"><span>(小米)</span></a>
								</li>
								<li>
									<a href="#"><img src="images/mlist03.jpg"><span>(魅族)</span></a>
								</li>
							</ul>
						</div>
					</div>


				</div>


				<div class="panel panel-success">
					<div class="panel-heading">
						<h4 class="panel-title">
							机型:
							<a data-toggle="collapse" data-parent="#accordion" href="#collapse_jx"><span class="glyphicon glyphicon-chevron-down"></span></a>
						</h4>
					</div>
					<div id="collapse_jx" class="panel-collapse collapse">
						<div class="panel-body">
							<ul class="pqb_list">
								<li class="amolist">
									<a href="#"><span class="glyphicon glyphicon-align-left"></span>全部</a>
								</li>
								<li>
									<a href="#"><span>小米Note2</span></a>
								</li>

								<li>
									<a href="#"><span>小米MIX</span></a>
								</li>
								<li>
									<a href="#"><span>魅族</span></a>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="panel panel-danger">
					<div class="panel-heading">
						<h4 class="panel-title">
							品牌:
							<a data-toggle="collapse" data-parent="#accordion" href="#collapse_pp"><span class="glyphicon glyphicon-chevron-down"></span></a>
						</h4>
					</div>
					<div id="collapse_pp" class="panel-collapse collapse">
						<div class="panel-body">
							<ul class="pqb_list">
								<li class="amolist">
									<a href="#"><span class="glyphicon glyphicon-align-center"></span>全部</a>
								</li>
								<li>
									<a href="#"><span>华为</span></a>
								</li>

								<li>
									<a href="#"><span>小米</span></a>
								</li>
								<li>
									<a href="#"><span>魅族</span></a>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<button class="btn btn-danger btnpanel hidden-md hidden-lg">确定</button>
			</div>

			<div class="col-md-8 col-sm-9 col-xs-12">
				<div class="col-sm-12">
					<ul class="navmo">
						<li class="anavmo"><a href="#">推荐</a></li>
						<li><a href="#">新品</a></li>
						<li><a href="#">价格<span class="glyphicon glyphicon-arrow-down"></span></a></li>
						<li><a href="#">评论最多</a></li>
						<li class="visible-xs anavmo_panel"><a href="#">筛选</a></li>
					</ul>
				</div>

				<div class="col-sm-12">
					<ul class="navmolist">
						<li>
							<div>
								<a href="#"><img src="images/lufei.png"></a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元&nbsp;起</p>
							<div>
								<div class="navmolist_empty">
									<a href="#">
										<span class="glyphicon glyphicon-heart-empty"></span> 喜欢
									</a>
								</div>

								<div class="navmolist_cart">
									<a href="#">
										<span class="glyphicon glyphicon-shopping-cart"></span> 立即购买
									</a>
								</div>
							</div>
						</li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"></a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元&nbsp;起</p>
							<div>
								<div class="navmolist_empty">
									<a href="#">
										<span class="glyphicon glyphicon-heart-empty"></span> 喜欢
									</a>
								</div>

								<div class="navmolist_cart">
									<a href="#">
										<span class="glyphicon glyphicon-shopping-cart"></span> 立即购买
									</a>
								</div>
							</div>
						</li>


						<li>
							<div>
								<a href="#"><img src="images/lufei.png"></a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元&nbsp;起</p>
							<div>
								<div class="navmolist_empty">
									<a href="#">
										<span class="glyphicon glyphicon-heart-empty"></span> 喜欢
									</a>
								</div>

								<div class="navmolist_cart">
									<a href="#">
										<span class="glyphicon glyphicon-shopping-cart"></span> 立即购买
									</a>
								</div>
							</div>
						</li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"></a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元&nbsp;起</p>
							<div>
								<div class="navmolist_empty">
									<a href="#">
										<span class="glyphicon glyphicon-heart-empty"></span> 喜欢
									</a>
								</div>

								<div class="navmolist_cart">
									<a href="#">
										<span class="glyphicon glyphicon-shopping-cart"></span> 立即购买
									</a>
								</div>
							</div>
						</li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"></a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元&nbsp;起</p>
							<div>
								<div class="navmolist_empty">
									<a href="#">
										<span class="glyphicon glyphicon-heart-empty"></span> 喜欢
									</a>
								</div>

								<div class="navmolist_cart">
									<a href="#">
										<span class="glyphicon glyphicon-shopping-cart"></span> 立即购买
									</a>
								</div>
							</div>
						</li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"></a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元&nbsp;起</p>
							<div>
								<div class="navmolist_empty">
									<a href="#">
										<span class="glyphicon glyphicon-heart-empty"></span> 喜欢
									</a>
								</div>

								<div class="navmolist_cart">
									<a href="#">
										<span class="glyphicon glyphicon-shopping-cart"></span> 立即购买
									</a>
								</div>
							</div>
						</li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"></a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元&nbsp;起</p>
							<div>
								<div class="navmolist_empty">
									<a href="#">
										<span class="glyphicon glyphicon-heart-empty"></span> 喜欢
									</a>
								</div>

								<div class="navmolist_cart">
									<a href="#">
										<span class="glyphicon glyphicon-shopping-cart"></span> 立即购买
									</a>
								</div>
							</div>
						</li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"></a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元&nbsp;起</p>
							<div>
								<div class="navmolist_empty">
									<a href="#">
										<span class="glyphicon glyphicon-heart-empty"></span> 喜欢
									</a>
								</div>

								<div class="navmolist_cart">
									<a href="#">
										<span class="glyphicon glyphicon-shopping-cart"></span> 立即购买
									</a>
								</div>
							</div>
						</li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"></a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元&nbsp;起</p>
							<div>
								<div class="navmolist_empty">
									<a href="#">
										<span class="glyphicon glyphicon-heart-empty"></span> 喜欢
									</a>
								</div>

								<div class="navmolist_cart">
									<a href="#">
										<span class="glyphicon glyphicon-shopping-cart"></span> 立即购买
									</a>
								</div>
							</div>
						</li>

					</ul>
				</div>

				<ul class="pagination">
					<li><a href="#">&laquo;</a></li>
					<li class="active"><a href="#">1</a></li>
					<li class="disabled"><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>



		</div>
	</section>

	<!--    手机列表结束   -->

	<!-- 友情链接 -->
	<c:import url="footer.jsp" />


	<script src="jquery/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/moblielist.js"></script>

</body>

</html>
