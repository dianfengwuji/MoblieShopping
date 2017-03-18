<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/colResizable-1.3.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>

<script type="text/javascript">
	$(function() {
		$(".list_table").colResizable({
			liveDrag : true,
			gripInnerHtml : "<div class='grip'></div>",
			draggingClass : "dragging",
			minWidth : 30
		});

	});
</script>
<title>Document</title>
</head>
<body>
	<div class="container">

		<div id="forms" class="mt10">
			<div class="box">
				<div class="box_border">
					<div class="box_top">
						<b class="pl15">表单</b>
					</div>
					<div class="box_center">
						<s:form action="moblie_addMoblie" method="post" class="jqtransform"
							enctype="multipart/form-data">
							<table class="form_table pt15 pb15" width="100%" border="0"
								cellpadding="0" cellspacing="0">
   							  <tr>
									<td class="td_right">手机名称：</td>
									<td><input type="text" name="moblie_name"
										class="input-text lh30" size="40"></td>
								</tr>

								<tr>
									<td class="td_right">手机价格：</td>
									<td><input type="text" name="moblie_price"
										class="input-text lh30" size="40"></td>
								</tr>
								<tr>
									<td class="td_right">机型选择：</td>
									<td><s:select name="type_id" list="list" listKey="type_id"
											listValue="type_name" headerKey="" headerValue="-----请选择----"
											theme="simple"></s:select></td>
									<td><h3>
											<s:actionerror />
										</h3></td>
								</tr>  
								<tr>
									<td class="td_right">文件：</td>
									<td><input type="file" name="upload" class="input-text lh30"
										size="30"></td>
								</tr>
 								<tr>
									<td class="td_right">手机介绍：</td>
									<td><textarea name="moblie_jieshao" id="" cols="30"
											rows="10" class="textarea"></textarea></td>
								</tr>
								<tr>
									<td class="td_right">是/否(新品)：</td>
									<td class=""><input type="radio" name="moblie_news"
										value="0">不是 <input type="radio" name="moblie_news"
										value="1">是</td>
								</tr> 

								<tr>
									<td class="td_right">&nbsp;</td>
									<td><input type="submit" class="btn btn82 btn_save2"
										value="保存"> <input type="button" name="button"
										class="btn btn82 btn_res" value="重置"></td>
								</tr>
							</table>
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

