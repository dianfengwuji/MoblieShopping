$(function () {
	$(".bt").click(function () {
		$(".ulogin").addClass("#ulo");
	});
	// 手机号码验证
/*	jQuery.validator.addMethod("Uphone", function (value, element) {
		var length = value.length;
		return this.optional(element) || (/^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(value));
	}, "请输入正确的手机号码");*/
	 jQuery.validator.addMethod("IUseremail", function (value, element) {
		 var length = value.length;
		 return this.optional(element) ||
		 (/^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/.test(value));
		 }, "请填写正确的email格式");

	$(".form1").validate({

		rules: {
			user_name: {
				required: true,
			},
			user_pwd: {
				required: true,
			}
		},
		messages: {
			user_name: {
				required: "用户名不能为空",
			},
			user_pwd: {
				required: "密码不能为空",
			}
		},
		errorPlacement: function (error, element) {
			element.closest(".form-group").next().children().remove(); //删除显示图标
			element.after('<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
			element.closest(".form-group").addClass("has-error");
			element.closest(".form-group").next().append(error); //显示错误消息提示
		},
		success: function (label) {
			label.closest('.lab').prev().removeClass('has-error');
			label.closest('.lab').prev().children().remove("span");
			label.remove();
		},
	});

$(".form2").validate({
		rules: {
			user_email: {
				required: true,
				IUseremail: true,
			},
			user_pwd: {
				required: true,
			}
		},
		messages: {
			user_email: {
				required: "email不能为空",
			},
			user_pwd: {
				required: "密码不能为空",
			}
		},
		errorPlacement: function (error, element) {
			element.closest(".form-group").next().children().remove(); //删除显示图标
			element.after('<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
			element.closest(".form-group").addClass("has-error");
			element.closest(".form-group").next().append(error); //显示错误消息提示
		},
		success: function (label) {
			label.closest('.lab').prev().removeClass('has-error');
			label.closest('.lab').prev().children().remove("span");
			label.remove();
		},
	});


	var audio = document.getElementById("audio");
	var audio1 = document.getElementById("audio1");
	var i = 0;
	$(".bt,.bt1").click(function () {
		if (i == 0) {
			audio.play();
			$(".ulogin").addClass("ulo");
			$(".phonelogin").addClass("plo");
			$(this).attr("src", "images/zuozhu.png");
			$(".zz").attr("src", "images/mr.png");
			$(".zz1").attr("src", "images/mr.png");
			i++;
		} else {
			audio1.play();
			$(".ulogin").removeClass("ulo");
			$(".phonelogin").removeClass("plo");
			$(this).attr("src", "images/mingren.png");
			$(".zz").attr("src", "images/zz.png");
			$(".zz1").attr("src", "images/zz.png");
			i = 0;
		}
	});
	
	$(".sb").click(function() {
		var flag = $(".form1").valid();
		if(!flag){
			return ;
		}
		else{
		$.post("user_loginUser.action", $(".form1").serialize(), function(data) {
			alert(data);
			if (data=="ok") {
				window.location="index.jsp";
			} else {
				alert("登录失败");
			}
		});
		}	
	});
	
	$(".sb1").click(function() {
		var flag = $(".form2").valid();
		if(!flag){
			return ;
		}
		else{
		$.post("user_loginEmail.action", $(".form2").serialize(), function(data) {
			if (data=="ok") {
				window.location="index.jsp";
			} else {
				alert("用户名或密码错误");
			}
		});
		}	
	});
});
