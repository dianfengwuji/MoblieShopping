<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
		<div class="main_top">



			<div id="table" class="mt10">
				<div class="box span10 oh">
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="list_table">
						<tr>
							<th width="10">选择</th>
							<th width="100">名称</th>
							<th width="100">价格</th>
							<th width="200">图片</th>
							<th width="100">介绍</th>
							<th width="100">是/否(新品)</th>
							<th width="100">机型</th>
							<th width="100">品牌</th>
							<th width="150">操作</th>
						</tr>

						<s:iterator value="list" var="m">
							<tr class="tr">
								<td class="td_center"><input type="checkbox"></td>
								<td align="center"><s:property value="#m.moblie_name" /></td>
								<td align="center"><s:property value="#m.moblie_price" /></td>
								<td align="center"><img
									src="../moblie_images/<s:property value="#m.moblie_img"/>"></img></td>
								<td align="center"><s:property value="#m.moblie_jieshao" /></td>
								<s:if test="#m.moblie_news!=0">
									<td align="center">新品</td>
								</s:if>
								<s:else>
									<td align="center"></td>
								</s:else>

								<td align="center"><s:property
										value="#m.moblieType.moblieBrand.brand_name" /></td>
								<td align="center"><s:property
										value="#m.moblieType.type_name" /></td>
								<td align="center"><a
									href="moblie_deleteMoblie.action?moblie_id=<s:property value="#m.moblie_id"/>">
										<input type="button" name="button" class="btn btn82 btn_del"
										value="删除">
								</a> <a href="moblie_updateMoblie.action?moblie_id=<s:property value="#m.moblie_id"/>"><input type="button" name="button"
										class="btn btn82 btn_del" value="修改"></a></td>
							</tr>
						</s:iterator>
					</table>
					<div class="page mt10">
						<div class="pagination">
							<ul>
								<s:if test="currentPage != 1">
									<li class="first-child"><a
										href="moblie_findAllMoblie.action?currentPage=1">首页</a></li>
									<li class="last-child"><a
										href="moblie_findAllMoblie.action?currentPage=<s:property value="currentPage-1" />">上一页</a></li>
								</s:if>
								<s:if test="currentPage != totalPage">
									<li><a
										href="moblie_findAllMoblie.action?currentPage=<s:property value="currentPage+1" />">下一页</a></li>
									<li class="last-child"><a
										href="moblie_findAllMoblie.action?currentPage=<s:property value="totalPage" />">末页</a></li>
								</s:if>
								<li><span>第<s:property value="currentPage" />/<s:property
											value="totalPage" />页
								</span>&nbsp;&nbsp;</li>
								<li><span>总记录数：<s:property value="count" />&nbsp;&nbsp;每页显示：<s:property
											value="pageSize" /></span></li>
							</ul>



						</div>

					</div>
				</div>
			</div>

		</div>
</body>
</html>

