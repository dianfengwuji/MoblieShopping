$(function() {
	var strong = new RegExp(
			"(?=.{0,18})(?=.*[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]{1})");
	var medium = new RegExp(
			"(?=.{6,18})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$",
			"g");
	var digital = new RegExp("(?=.{0,6}).*", "g");

	// 验证
	$('#user_pwd').keyup(function() {
		var pass = $(this).val();
		if (pass.length == 0 || pass == null) {
			$('.div2').children("div").removeClass('div3');
			$('.div4').children("div").removeClass('div5');
			$('.div6').children("div").removeClass('div7');
		} else if (digital.test(pass) && pass.length <= 6) {
			$('.div6').children("div").removeClass('div7');
			$('.div4').children("div").removeClass('div5');
			$('.div2').children("div").addClass('div3');
		} else if (medium.test(pass)) {
			$('.div6').children("div").removeClass('div7');
			$('.div2').children("div").removeClass('div3');
			$('.div4').children("div").addClass('div5');
		} else if (strong.test(pass) && medium.test(pass)) {
			$('.div2').children("div").removeClass('div3');
			$('.div4').children("div").removeClass('div5');
			$('.div6').children("div").addClass('div7');
		}
		return true;
	});

	// 手机号码验证
	// jQuery.validator.addMethod("IUserphone", function (value, element) {
	// var length = value.length;
	// return this.optional(element) ||
	// (/^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(value));
	// }, "请正确填写您的电话号码");
	// 手机号码验证
	jQuery.validator
			.addMethod(
					"IUseremail",
					function(value, element) {
						var length = value.length;
						return this.optional(element)
								|| (/^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/
										.test(value));
					}, "请填写正确的email格式");

	$("#register_button").click(function() {
		var flag = $(".form1").valid();
		if (!flag) {
			return;
		} else {
			var user_name = $("#user_name").val();
			var user_email = $("#user_email").val();
			var user_pwd = $("#user_pwd").val();
			alert(user_name);
			$.post("user_register.action", {
				user_name : user_name,
				user_email : user_email,
				user_pwd : user_pwd
			}, function(data) {
				if (data == "ok") {
					window.location = "login.jsp";
				} else {
					alert("注册失败");
				}
			});
		}
	});

	var i = 60;
	var t;

	$("#user_info").click(function() {
		var user_email = $("#user_email").val();
		$.get("user_findEmail.action", {
			user_email : user_email
		}, function(data) {
			if (data == "false") {
				alert("邮件地址已存在");
			} else {
				t = setInterval(show, 1000);
				alert(user_email);
				$.get("user_sendMail.action", {
					user_email : user_email
				}, function(data) {
					alert(data);
				});
			}
		});
	});

	function show() {
		i--;
		var info = document.getElementById("user_info");
		if (i == 0) {
			clearInterval(t);
			info.value = "免费获取验证码";
			info.removeAttribute("disabled");
			i = 60;
		} else {
			info.value = "正在发送过去" + i + "秒";
			info.setAttribute("disabled", "disabled");
		}

	}

	$(".form1").validate(
			{
				rules : {
					user_name : {
						required : true,
						minlength : 3,
						remote : {
							url : "user_findName.action", // 后台处理程序
							type : "get", // 数据发送方式
							dataType : "json",
							data : { // 要传递的数据
								user_name : function() {
									return $("#user_name").val();
								}
							}
						}
					},
					user_email : {
						required : true,
						IUseremail : true,
						remote : {
							url : "user_findEmail.action", // 后台处理程序
							type : "get", // 数据发送方式
							dataType : "json",
							data : { // 要传递的数据
								user_email : function() {
									return $("#user_email").val();
								}
							}
						}
					},
					email_info : {
						required : true,
						remote : {
							url : "user_emailInfo.action", // 后台处理程序
							type : "get", // 数据发送方式
							dataType : "json",
							data : { // 要传递的数据
								email_info : function() {
									return $("#email_info").val();
								}
							}
						}
					},
					user_pwd : {
						required : true,
						minlength : 3,
					},
					user_newpwd : {
						required : true,
						minlength : 3,
						equalTo : "#user_pwd"
					},
					agree : "required"
				},

				messages : {
					user_name : {
						required : "用户名不能为空",
						minlength : "用户名长度最少需要3位！",
					},
					user_email : {
						required : "email不能为空",
						IUseremail : "请填写正确的email格式",
					},
					email_info : {
						required : "动态验证码不能为空",
					},
					user_pwd : {
						required : "密码不能为空",
						minlength : "密码的长度最少需要3位！",
					},
					user_newpwd : {
						required : "请输入密码",
						minlength : "密码长度最少需要3位！",
						equalTo : "两次密码输入不一致",
					},
					agree : {
						required : "请接受我们的协议",
					},
				},
				errorPlacement : function(error, element) {
					var p = element.parent().next().find("p");
					p.children().remove();
					error.appendTo(p);
					p.children().removeClass("glyphicon glyphicon-ok checked")
							.addClass("error");
				},
				success : function(label) {
					label.addClass("glyphicon glyphicon-ok checked")
							.removeClass("error");
				},
			});
});
