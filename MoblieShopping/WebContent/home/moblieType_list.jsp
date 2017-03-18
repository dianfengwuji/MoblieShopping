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
							<th width="50">选择</th>
							<th width="100">id</th>
							<th width="100">机型名称</th>
							<th width="100">品牌名称</th>
							<th>操作</th>
						</tr>

						<s:iterator value="list" var="mt">
							<tr class="tr">
								<td class="td_center"><input type="checkbox"></td>
								<td align="center"><s:property value="#mt.type_id" /></td>
								<td align="center"><s:property value="#mt.type_name" /></td>
								<td align="center"><s:property value="#mt.moblieBrand.brand_name" /></td>
								<td align="center"><a href="moblieType_deleteMoblieType.action?type_id=<s:property value="#mt.type_id"/>">
										<input type="button" name="button" class="btn btn82 btn_del"
										value="删除">
								</a><a href="moblieType_editMoblieType.action?type_id=<s:property value="#mt.type_id"/>"><input type="button" name="button"
										class="btn btn82 btn_del" value="修改"></a></td>
							</tr>
						</s:iterator>
					</table>
					<div class="page mt10">
						<div class="pagination">
							<ul>
								<s:if test="currentPage != 1">
									<li class="first-child"><a
										href="moblieType_findAllMoblieType.action?currentPage=1">首页</a></li>
									<li class="last-child"><a
										href="moblieType_findAllMoblieType.action?currentPage=<s:property value="currentPage-1" />">上一页</a></li>
								</s:if>
								<s:if test="currentPage != totalPage">
									<li><a
										href="moblieType_findAllMoblieType.action?currentPage=<s:property value="currentPage+1" />">下一页</a></li>
									<li class="last-child"><a
										href="moblieType_findAllMoblieType.action?currentPage=<s:property value="totalPage" />">末页</a></li>
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

