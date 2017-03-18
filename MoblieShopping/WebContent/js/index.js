$(function() {
	$.post("banner_findList.action", null, function(data) {
		$.each(data, function(i, b) {
			if (i == 0) {
				$(".navlb").append(
						'<li class="bg"><a href="' + b.banner_url
								+ '"><img src="images/' + b.banner_img
								+ '" alt="">');
				$(".navol>ol").append('<li class="bga"><a href="#"></a></li>');
			} else {
				$(".navlb").append(
						'<li><a href="' + b.banner_url + '"><img src="images/'
								+ b.banner_img + '" alt="">');
				$(".navol>ol").append('<li><a href="#"></a></li>');
			}
		});
		var index = 0;
		var len = $(".navlb>li").length;
		function show(num) {
			$(".navlb>li").eq(num).addClass("bg").siblings().removeClass("bg");
			$(".navol>ol>li").eq(num).addClass("bga").siblings().removeClass("bga");
		}

		function m() {
			if (index == len - 1) {
				index = 0;
			} else {
				index += 1;
			}
			show(index);
		}

		var t;
		if (len > 0) {
			t = setInterval(m, 5000);
		}

		$(".navol>ol>li").hover(function() {
			show($(this).index());
			clearInterval(t);
		}, function() {
			index = $(this).index();
			t = setInterval(m, 3000);
		});

		$(".left,.right").hover(function() {
			clearInterval(t);
		}, function() {
			t = setInterval(m, 3000);
		});

		$(".left").click(function(e) {
			if (index == len - 1) {
				index = 0;
			} else {
				index++;
			}
			show(index);
		});

		$(".right").click(function(e) {
			if (index == 1 - len) {
				index = 0;
			} else {
				index--;
			}
			show(index);
		});
	});
	
	$.post("advert_findList.action",null,function(data){
		$.each(data,function(i,a){
				$(".shouol").append('<li><a href="'+a.advert_url+'"><img src="images/'+a.advert_img+'"> </a></li>');
		});
	});
	
	$(".navlist>li:not(.navindex)").hover(function() {
		var index = $(this).index() - 1;
		var moblie_name=$(this).children("a").text();
		$.get("moblielist_findNavList.action",{moblie_name:moblie_name},function(data){
			if($(".hol>li").eq(index).find(".item_list:has(li)").length==0){		
			$.each(data,function(i,m){
				$(".hol>li").eq(index).find(".item_list").append('<li><div class="figure"><a href="#"><img src="images/'+m.moblie_img+'"></a></div><div class="title"><a href="#">'+m.moblie_name+'</a></div><p><span>￥</span>'+m.moblie_price+'<span>元起</span></p></li>');
			     });
     		}
		 });
		$(".hol>li").eq(index).addClass("art").siblings().removeClass("art");
		$(this).eq(index).children("a").css("color","#ff9300").siblings().css("color","#000");
	}, function() {
		var index=$(this).index()-1;
		$(".hol>li").hover(function(){
			$(".hol>li").eq(index).addClass("art").siblings().removeClass("art");
		},function(){
			$(".hol>li").eq(index).removeClass("art");
		});
		$(".hol>li").eq(index).removeClass("art");
	});
	
	
	
	

	/* ======================图片左右滚动=============================== */
	$.post("moblielist_findList.action", null, function(data) {
		$.each(data, function(i, m) {
			$(".runul").append(
					'<li><div><a href="#"><img src="images/' + m.moblie_img
							+ '"> </a></div><div><a href="#">' + m.moblie_name
							+ '</a></div><p title="' + m.moblie_jieshao + '">'
							+ m.moblie_jieshao + '</p><p>' + m.moblie_price
							+ '<span>元起</span></p></li>');
		});
		var runnum = 0;
		var runulength = $(".runul>li").length;
		function showrun(i) {
			$(".runul").css("transform", "translate3d(" + i * (-10) + "%,0px,0px)");
		}

		function run() {
			if (runnum == runulength / 2) {
				runnum = 0;
			} else {
				runnum++;

			}
			showrun(runnum);
		}
		var trun;
		if (runnum <= runulength / 2 - 1) {
			trun = setInterval(run, 5000);
		}

		$(".runleft,.runright").hover(function() {
			clearInterval(trun);
		}, function() {
			trun = setInterval(run, 5000);
		});

		$(".runleft").click(function() {
			if (runnum == runulength/2) {
				runnum = runulength/2;
			} else {
				runnum++;
			}
			showrun(runnum);
		});

		$(".runright").click(function() {
			if (runnum == 0) {
				runnum = 0;
			} else {
				runnum--;
			}
			showrun(runnum);
		});
	});
	
	
	$.get("moblielist_findType.action",{type_id:8},function(data){
		$.each(data, function(i, m) {
		$(".glist>ul").append('<li><div><a href="#"><img src="images/'+m.moblie_img+'"> </a></div><div><a href="#">'+m.moblie_name+'</a></div><p title="'+m.moblie_jieshao+'">'+m.moblie_jieshao+'</p><p>'+m.moblie_price+'元</p></li>');
		});
	});
	

	


	/* ================================================= */
	var moblie_name=null;
	var dp = 0;
	$.get("moblielist_find.action",{moblie_name:moblie_name,type_id:9},function(data){
		$.each(data, function(i, m) {
			if(i==5){
				$(".glist1>ul").eq(dp).append('<li class="glist1_li"><ol><li><div><a href="#">'+m.moblie_name+'</a><p>'+m.moblie_price+'元</p></div><div><a href="#"><img src="images/'+m.moblie_img+'"> </a></div></li><li><div><a href="#">浏览更多</a> <a href="#"><p>'+moblie_name+'</p></a></div><div><a href="#"><span class="glyphicon glyphicon-arrow-right"></span></a></div></li></ol></li>');
			}else{
				$(".glist1>ul").eq(dp).append('<li><div><a href="#"><img src="images/'+m.moblie_img+'"> </a></div><div><a href="#">'+m.moblie_name+'</a></div><p title="5.7英寸大屏双摄手机，拍照黑科技">'+m.moblie_jieshao+'</p><p>'+m.moblie_price+'元</p><div><a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span><p>来自于&nbsp;某某某&nbsp;的评价</p> </a></div></li>');
			}
		});
	$(".dpol>li").hover(
			function() {
				 dp = $(this).index();
				moblie_name=$(this).children("span").text();
				if(moblie_name!="热门"){
					$.get("moblielist_find.action",{moblie_name:moblie_name,type_id:9},function(data){
						if($(".glist1>ul").eq(dp).has("li").length==0){
						$.each(data, function(i, m) {
								if(i==5){
									$(".glist1>ul").eq(dp).append('<li class="glist1_li"><ol><li><div><a href="#">'+m.moblie_name+'</a><p>'+m.moblie_price+'元</p></div><div><a href="#"><img src="images/'+m.moblie_img+'"> </a></div></li><li><div><a href="#">浏览更多</a> <a href="#"><p>'+moblie_name+'</p></a></div><div><a href="#"><span class="glyphicon glyphicon-arrow-right"></span></a></div></li></ol></li>');

								}
								else{
									$(".glist1>ul").eq(dp).append('<li><div><a href="#"><img src="images/'+m.moblie_img+'"> </a></div><div><a href="#">'+m.moblie_name+'</a></div><p title="5.7英寸大屏双摄手机，拍照黑科技">'+m.moblie_jieshao+'</p><p>'+m.moblie_price+'元</p><div><a href="#"> <span>音质超震撼！！！我要给666个赞赞赞</span><p>来自于&nbsp;某某某&nbsp;的评价</p> </a></div></li>');
								}
						   });
						}
					});
				}
				
				$(this).addClass("dpolactive").siblings().removeClass(
						"dpolactive");
				$(".dpol").parents("div.row").next().children("div.glist1").eq(
						dp).addClass("gl").siblings().removeClass("gl");
				return moblie_name;
				 return dp;
			});
	});
	
	$(".dpol1>li").hover(function () {
		var dp = $(this).index();
		$(this).addClass("dpolactive").siblings().removeClass("dpolactive");
		$(".dpol1").parents("div.row").next().children("div.glist1").eq(dp).addClass("gl").siblings().removeClass("gl");
	});
	
	
	/* ====================内容============================== */
	/* ==================.nr_book====================== */
	var nr = $(".nr_book>ul>li").length;
	var nrnum = 0;
	$(".nrleft").click(function() {
		if (nrnum == nr - 1) {
			nrnum = nr - 1;
		} else {
			nrnum++;
		}
		nrshow(nrnum);
	});

	$(".nrright").click(function() {
		if (nrnum == nr - 1) {
			nrnum--;
		} else {
			nrnum = 0;
		}
		nrshow(nrnum);
	});

	$(".nr_book>ul>li").click(function() {
		nrshow($(this).index());
	});

	function nrshow(nr) {
		$(".nr_book>ol").css("transform",
				"translate3d(" + nr * (-30) + "%,0px,0px)");
		$(".nr_book>ul>li").eq(nr).children("span").addClass("nractive");
		$(".nr_book>ul>li").eq(nr).siblings().children("span").removeClass(
				"nractive");
	}

	/* ==================.nr_theme====================== */
	var nr1 = $(".nr_theme>ul>li").length;
	var nrnum1 = 0;
	$(".nrleft1").click(function() {
		if (nrnum1 == nr1 - 1) {
			nrnum1 = nr1 - 1;
		} else {
			nrnum1++;
		}
		nrshow_theme(nrnum1);
	});

	$(".nrright1").click(function() {
		if (nrnum1 == nr1 - 1) {
			nrnum1--;
		} else {
			nrnum1 = 0;
		}
		nrshow_theme(nrnum1);
	});

	$(".nr_theme>ul>li").click(function() {
		nrshow_theme($(this).index());
	});

	function nrshow_theme(nr) {
		$(".nr_theme>ol").css("transform",
				"translate3d(" + nr * (-30) + "%,0px,0px)");
		$(".nr_theme>ul>li").eq(nr).children("span").addClass("nractive");
		$(".nr_theme>ul>li").eq(nr).siblings().children("span").removeClass(
				"nractive");
	}

	/* ==================.nr_game====================== */
	var nr2 = $(".nr_game>ul>li").length;
	var nrnum2 = 0;
	$(".nrleft2").click(function() {
		if (nrnum2 == nr2 - 1) {
			nrnum2 = nr2 - 1;
		} else {
			nrnum2++;
		}
		nrshow_game(nrnum2);
	});

	$(".nrright2").click(function() {
		if (nrnum2 == nr2 - 1) {
			nrnum2--;
		} else {
			nrnum2 = 0;
		}
		nrshow_game(nrnum2);
	});

	$(".nr_game>ul>li").click(function() {
		nrshow_game($(this).index());
	});

	function nrshow_game(nr) {
		$(".nr_game>ol").css("transform",
				"translate3d(" + nr * (-30) + "%,0px,0px)");
		$(".nr_game>ul>li").eq(nr).children("span").addClass("nractive");
		$(".nr_game>ul>li").eq(nr).siblings().children("span").removeClass(
				"nractive");
	}

	/* ==================.nr_app====================== */
	var nr3 = $(".nr_app>ul>li").length;
	var nrnum3 = 0;
	$(".nrleft3").click(function() {
		if (nrnum3 == nr3 - 1) {
			nrnum3 = nr3 - 1;
		} else {
			nrnum3++;
		}
		nrshow_app(nrnum3);
	});

	$(".nrright3").click(function() {
		if (nrnum3 == nr3 - 1) {
			nrnum3--;
		} else {
			nrnum3 = 0;
		}
		nrshow_app(nrnum3);
	});

	$(".nr_app>ul>li").click(function() {
		nrshow_app($(this).index());
	});

	function nrshow_app(nr) {
		$(".nr_app>ol").css("transform",
				"translate3d(" + nr * (-30) + "%,0px,0px)");
		$(".nr_app>ul>li").eq(nr).children("span").addClass("nractive");
		$(".nr_app>ul>li").eq(nr).siblings().children("span").removeClass(
				"nractive");
	}

	/* ================================ */

	$(window).scroll(function() {
		if ($(window).scrollTop() <= 90) {
			$(".scroll>img").tooltip('hide');
		} else {
			$(".scroll>img").tooltip('show');
			$(".scroll>img").click(function() {
				$(document.body).animate({
					'scrollTop' : 0
				}, 1000);
			});
		}
	});
});
