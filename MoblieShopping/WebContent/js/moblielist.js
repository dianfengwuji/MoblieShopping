$(function () {
	$('#collapse_bf').on('show.bs.collapse', function () {
		$(".panel-info>.panel-heading>.panel-title>a").addClass("arotate");
	});
	$('#collapse_bf').on('hide.bs.collapse', function () {
		$(".panel-info>.panel-heading>.panel-title>a").removeClass("arotate");
	});

	$("#collapse_jx").on('show.bs.collapse', function () {
		$(".panel-success>.panel-heading>.panel-title>a").addClass("arotate");
	});

	$('#collapse_jx').on('hide.bs.collapse', function () {
		$(".panel-success>.panel-heading>.panel-title>a").removeClass("arotate");
	});

	$("#collapse_pp").on('show.bs.collapse', function () {
		$(".panel-danger>.panel-heading>.panel-title>a").addClass("arotate");
	});

	$('#collapse_pp').on('hide.bs.collapse', function () {
		$(".panel-danger>.panel-heading>.panel-title>a").removeClass("arotate");
	});

	$("#collapse_bf .pqb_list>li").click(function () {
		$(this).addClass('amolist').siblings().removeClass('amolist');
	});

	$("#collapse_jx .pqb_list>li").click(function () {
		$(this).addClass('amolist').siblings().removeClass('amolist');
	});

	$("#collapse_pp .pqb_list>li").click(function () {
		$(this).addClass('amolist').siblings().removeClass('amolist');
	});

	$(".navmo>li:not(.anavmo_panel)").click(function () {
		$(this).addClass("anavmo").siblings().removeClass("anavmo");
	});

	var i = 0;
	$(".anavmo_panel").click(function () {

		if (i == 0) {
			$(".panelist").addClass("panelist_left");
			$(this).addClass("anavmo");
			i++;
		} else {

			$(this).removeClass("anavmo");
			i = 0;
		}
	});

	$(".btnpanel").click(function () {
		$(".panelist").removeClass("panelist_left");
	});
});
