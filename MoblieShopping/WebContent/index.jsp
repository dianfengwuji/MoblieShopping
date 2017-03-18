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
<title>Bootstrap Starter Template</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/iconfont.css">

</head>

<body>
	<div>
		<div id="fixscroll">
			<div class="scroll">
				<img src="images/lufei.png" data-toggle="tooltip"
					data-placement="top" title="点击有惊喜">

				<ul>
					<li><a href="#znyj">智能硬件</a>
					</li>
					<li><a href="#dp">搭配</a>
					</li>
					<li><a href="#pj">配件</a>
					</li>
					<li><a href="#rpcp">热评产品</a>
					</li>
					<li><a href="#rn">内容</a>
					</li>
				</ul>
				<canvas id="canvas"></canvas>
			</div>
		</div>
	</div>
	<!--  头部header开始  -->
	<c:import url="header.jsp" />
	<!--  头部header结束  -->

	<!--  图片轮播banner开始	-->
	<nav>
		<div class="container navcon">
			<div class="navol">
				<ol>
				</ol>
			</div>
			<ul class="navlb">
			</ul>
			<div class="left">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</div>
			<div class="right">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</div>
		</div>
	</nav>
	<!--  图片轮播banner结束	-->

	<section id="sec">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<menu>
						<ul>
							<li><a class="shouji"> <i
									class="iconfont icon-shumashouji"></i>
									<p>选购手机</p> </a></li>
							<li><a class="shouji"> <i class="iconfont icon-liwu"></i>
									<p>团购</p> </a></li>
							<li><a class="shouji"> <i class="iconfont icon-refresh"></i>
									<p>官方产品</p> </a></li>
							<li><a class="shouji"> <i class="iconfont icon-icon01"></i>
									<p>电话卡</p> </a></li>
							<li><a class="shouji"> <i
									class="iconfont icon-yijiuhuanxin"></i>
									<p>以旧换新</p> </a></li>
							<li><a class="shouji"> <i
									class="iconfont icon-huafeishitiqia"></i>
									<p>话费充值</p> </a></li>
						</ul>
					</menu>
				</div>
				<div class="col-md-9 hidden-xs">
					<ol class="shouol">
					</ol>
				</div>
				<div class="col-sm-4"></div>
			</div>

			<!--	手机明星单品 	-->
			<div class="row">
				<div class="col-xs-6">
					<h3>手机明星单品</h3>
				</div>
				<div class="col-xs-6 run">
					<div class="runright pull-right">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</div>
					<div class="runleft pull-right">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</div>
				</div>

			</div>

			<div class="row">
				<div class="col-md-12 prun">
					<ul class="runul">
					</ul>
				</div>
			</div>
		</div>
	</section>

	<section id="sct">
		<!--	智能硬件开始    -->
		<div class="container">
			<div class="row">
				<div class="col-xs-8">
					<h3 id="znyj">智能硬件</h3>
				</div>
				<div class="col-xs-4 arrow">
					<div>
						<a href="#">查看全部
							<div>
								<span class="glyphicon glyphicon-arrow-right"></span>
							</div> </a>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-sm-3 hidden-xs gg">
					<ul>
						<li><a href="#"><img src="images/guanggao.jpg" alt="">
						</a></li>
					</ul>
				</div>
				<div class="col-sm-9 col-xs-12 glist">
					<ul>
					</ul>
				</div>
			</div>
		</div>
		<!--	智能硬件结束    -->

		<!--   搭配开始     -->
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-xs-3">
					<h3 id="dp">搭配</h3>
				</div>
				<div class="col-sm-9 col-xs-9">
					<ol class="dpol">
						<li class="dpolactive"><span>热门</span>
						</li>
						<li><span>耳机音箱</span>
						</li>
						<li><span>电源</span>
						</li>
						<li><span>电池储存卡</span>
						</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3 hidden-xs gg1">
					<ul>
						<li><a href="#"><img src="images/guanggao1.jpg" alt="">
						</a></li>
						<li><a href="#"><img src="images/guanggao1.jpg" alt="">
						</a></li>
					</ul>
				</div>
				<div class="col-sm-9 glist1 gl">
					<ul>
						

					</ul>
				</div>

				<div class="col-sm-9 glist1">
					<ul>

					</ul>
				</div>

				<div class="col-sm-9 glist1">
					<ul>
					
					</ul>
				</div>
				
				<div class="col-sm-9 glist1">
					<ul>
					
					</ul>
				</div>
			</div>


		</div>
		<!--   搭配结束     -->

		<!--	配件开始	-->
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-xs-3">
					<h3 id="pj">配件</h3>
				</div>
				<div class="col-sm-9 col-xs-9">
					<ol class="dpol1">
						<li class="dpolactive"><span>热门</span>
						</li>
						<li><span>保护套</span>
						</li>
						<li><span>贴膜</span>
						</li>
						<li><span>其他配件</span>
						</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3 hidden-xs gg1">
					<ul>
						<li><a href="#"><img src="images/guanggao1.jpg" alt="">
						</a></li>
						<li><a href="#"><img src="images/guanggao1.jpg" alt="">
						</a></li>
					</ul>
				</div>
				<div class="col-sm-9 glist1 gl">
					<ul>
						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li class="glist1_li">
							<ol>
								<li>
									<div>
										<a href="#">蓝牙feuyfauifheuiahiw</a>
										<p>299元</p>
									</div>
									<div>
										<a href="#"><img src="images/lufei.png"> </a>
									</div></li>
								<li>
									<div>
										<a href="#">浏览更多</a> <a href="#">
											<p>热门</p> </a>
									</div>
									<div>
										<a href="#"><span class="glyphicon glyphicon-arrow-right"></span>
										</a>
									</div></li>
							</ol></li>

					</ul>
				</div>

				<div class="col-sm-9 glist1">
					<ul>
						<li>
							<div>
								<a href="#"><img src="images/zuozhu.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/zuozhu.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/zuozhu.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/zuozhu.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/zuozhu.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li class="glist1_li">
							<ol>
								<li>
									<div>
										<a href="#">蓝牙feuyfauifheuiahiw</a>
										<p>299元</p>
									</div>
									<div>
										<a href="#"><img src="images/zuozhu.png"> </a>
									</div></li>
								<li>
									<div>
										<a href="#">浏览更多</a> <a href="#">
											<p>保护套</p> </a>
									</div>
									<div>
										<a href="#"><span class="glyphicon glyphicon-arrow-right"></span>
										</a>
									</div></li>
							</ol></li>

					</ul>
				</div>

				<div class="col-sm-9 glist1">
					<ul>
						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li class="glist1_li">
							<ol>
								<li>
									<div>
										<a href="#">蓝牙feuyfauifheuiahiw</a>
										<p>299元</p>
									</div>
									<div>
										<a href="#"><img src="images/lufei.png"> </a>
									</div></li>
								<li>
									<div>
										<a href="#">浏览更多</a> <a href="#">
											<p>贴膜</p> </a>
									</div>
									<div>
										<a href="#"><span class="glyphicon glyphicon-arrow-right"></span>
										</a>
									</div></li>
							</ol></li>

					</ul>
				</div>

				<div class="col-sm-9 glist1">
					<ul>
						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li>
							<div>
								<a href="#"><img src="images/lufei.png"> </a>
							</div>
							<div>
								<a href="#">小米手机</a>
							</div>
							<p title="5.7英寸大屏双摄手机，拍照黑科技">5.7英寸大屏双摄手机，拍照黑科技</p>
							<p>2977元</p>
							<div>
								<a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span>
									<p>来自于&nbsp;某某某&nbsp;的评价</p> </a>
							</div></li>

						<li class="glist1_li">
							<ol>
								<li>
									<div>
										<a href="#">蓝牙feuyfauifheuiahiw</a>
										<p>299元</p>
									</div>
									<div>
										<a href="#"><img src="images/lufei.png"> </a>
									</div></li>
								<li>
									<div>
										<a href="#">浏览更多</a> <a href="#">
											<p>其他配件</p> </a>
									</div>
									<div>
										<a href="#"><span class="glyphicon glyphicon-arrow-right"></span>
										</a>
									</div></li>
							</ol></li>

					</ul>
				</div>
			</div>
		</div>
		<!--	配件结束	-->

		<!--	热评产品开始  	-->
		<div class="container">
			<h3 id="rpcp">热评产品</h3>
			<div class="rnul">
				<ul>
					<li>
						<div>
							<a href="#"><img src="images/nr01.jpg"> </a>
						</div>
						<div>
							<a href="#"><span>超级赞超级赞,用起来很顺手,音质也很好,非常喜欢!!!赞 赞 赞</span> </a>
						</div>
						<p>来自于 不上复旦不罢休 的评价</p>

						<div>
							<a href="#">小米笔记本Air 12.5英寸</a>&nbsp;&nbsp;|&nbsp;&nbsp;<span>3499元</span>
						</div></li>

					<li>
						<div>
							<a href="#"><img src="images/nr01.jpg"> </a>
						</div>
						<div>
							<a href="#"><span>超级赞超级赞,用起来很顺手,音质也很好,非常喜欢!!!赞 赞 赞</span> </a>
						</div>
						<p>来自于 不上复旦不罢休 的评价</p>

						<div>
							<a href="#">小米笔记本Air 12.5英寸</a>&nbsp;&nbsp;|&nbsp;&nbsp;<span>3499元</span>
						</div></li>

					<li>
						<div>
							<a href="#"><img src="images/nr01.jpg"> </a>
						</div>
						<div>
							<a href="#"><span>超级赞超级赞,用起来很顺手,音质也很好,非常喜欢!!!赞 赞 赞</span> </a>
						</div>
						<p>来自于 不上复旦不罢休 的评价</p>

						<div>
							<a href="#">小米笔记本Air 12.5英寸</a>&nbsp;&nbsp;|&nbsp;&nbsp;<span>3499元</span>
						</div></li>

					<li>
						<div>
							<a href="#"><img src="images/nr01.jpg"> </a>
						</div>
						<div>
							<a href="#"><span>超级赞超级赞,用起来很顺手,音质也很好,非常喜欢!!!赞 赞 赞</span> </a>
						</div>
						<p>来自于 不上复旦不罢休 的评价</p>

						<div>
							<a href="#">小米笔记本Air 12.5英寸</a>&nbsp;&nbsp;|&nbsp;&nbsp;<span>3499元</span>
						</div></li>
				</ul>
			</div>
		</div>
		<!--	热评产品结束  	-->


		<!--	内容开始	-->
		<div class="container">
			<h3 id="rn">内容</h3>
			<div class="nr">
				<ul>


					<li class="nr_book">
						<h2>图书</h2>
						<ol>
							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>

							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>

							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>
						</ol>

						<ul>
							<li><span class="nractive"></span>
							</li>
							<li><span></span>
							</li>
							<li><span></span>
							</li>
						</ul>

						<div>
							<div class="nrleft">
								<span class="glyphicon glyphicon-chevron-left"></span>
							</div>
							<div class="nrright">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</div>
						</div></li>




					<li class="nr_theme">
						<h2>主题</h2>
						<ol>
							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>

							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>

							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>
						</ol>

						<ul>
							<li><span class="nractive"></span>
							</li>
							<li><span></span>
							</li>
							<li><span></span>
							</li>
						</ul>

						<div>
							<div class="nrleft1">
								<span class="glyphicon glyphicon-chevron-left"></span>
							</div>
							<div class="nrright1">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</div>
						</div></li>




					<li class="nr_game">
						<h2>游戏</h2>
						<ol>
							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>

							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>

							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>
						</ol>

						<ul>
							<li><span class="nractive"></span>
							</li>
							<li><span></span>
							</li>
							<li><span></span>
							</li>
						</ul>

						<div>
							<div class="nrleft2">
								<span class="glyphicon glyphicon-chevron-left"></span>
							</div>
							<div class="nrright2">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</div>
						</div></li>




					<li class="nr_app">
						<h2>应用</h2>
						<ol>
							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>

							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>

							<li>
								<h4>
									<a href="#">哈利·波特与被诅咒的孩子</a>
								</h4>

								<p>
									<a href="#">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！</a>
								</p>

								<p>
									<a href="#">2.95元</a>
								</p>
								<div>
									<a href="#"><img src="images/nr01.jpg"> </a>
								</div></li>
						</ol>

						<ul>
							<li><span class="nractive"></span>
							</li>
							<li><span></span>
							</li>
							<li><span></span>
							</li>
						</ul>

						<div>
							<div class="nrleft3">
								<span class="glyphicon glyphicon-chevron-left"></span>
							</div>
							<div class="nrright3">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</div>
						</div></li>

				</ul>
			</div>
		</div>
		<!--	内容结束	-->

		<!--	视频开始	-->
		<div class="container">
			<h3 id="sp">视频</h3>
			<div class="spul">
				<ul>
					<li>
						<div>
							<a href="#"><img src="images/sp01.jpg"> </a>
						</div>
						<div>
							<a href="#">梁朝伟讲述小米Note2 的冰山理论</a>
						</div>
						<p>第一眼看到的美，只是全部创作的八分之一</p>
						<div>
							<a href="#"><span class="glyphicon glyphicon-play"></span> </a>
						</div></li>

					<li>
						<div>
							<a href="#"><img src="images/sp01.jpg"> </a>
						</div>
						<div>
							<a href="#">梁朝伟讲述小米Note2 的冰山理论</a>
						</div>
						<p>第一眼看到的美，只是全部创作的八分之一</p>
						<div>
							<a href="#"><span class="glyphicon glyphicon-play"></span> </a>
						</div></li>

					<li>
						<div>
							<a href="#"><img src="images/sp01.jpg"> </a>
						</div>
						<div>
							<a href="#">梁朝伟讲述小米Note2 的冰山理论</a>
						</div>
						<p>第一眼看到的美，只是全部创作的八分之一</p>
						<div>
							<a href="#"><span class="glyphicon glyphicon-play"></span> </a>
						</div></li>

					<li>
						<div>
							<a href="#"><img src="images/sp01.jpg"> </a>
						</div>
						<div>
							<a href="#">梁朝伟讲述小米Note2 的冰山理论</a>
						</div>
						<p>第一眼看到的美，只是全部创作的八分之一</p>
						<div>
							<a href="#"><span class="glyphicon glyphicon-play"></span> </a>
						</div></li>
				</ul>
			</div>
		</div>
		<!--	内容结束	-->
		<div class="container">
			<div class="visible-xs di">
				<p>-------------------已经到底了-------------------</p>
			</div>
		</div>
	</section>

	<!-- 友情链接 -->
	<c:import url="footer.jsp" />

	<script src="jquery/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
	</script>
	<script src="js/canvas.js"></script>
	<script src="js/index.js"></script>
</body>

</html>


