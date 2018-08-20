<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>原煤列表</title>
<%@ include file="header.jsp"%>
<script type="text/javascript">
	//定义列
	var columns = [ [ {
		field : 'id',
		checkbox : true,
		title : '编号',
		width : 120,
		align : 'center'
	}, {
		field : 'name',
		title : '指标名称',
		width : 120,
		align : 'center'
	}, {
		field : 'hui',
		title : '灰份',
		width : 120,
		align : 'center'
	}, {
		field : 'liu',
		title : '硫份',
		width : 120,
		align : 'center'
	}, {
		field : 'huifa',
		title : '挥发份',
		width : 120,
		align : 'center'
	}, {
		field : 'zhishu',
		title : '粘结指数',
		width : 120,
		align : 'center'
	}, {
		field : 'huishou',
		title : '回收率',
		width : 120,
		align : 'center'
	}, {
		field : 'chengben',
		title : '成本',
		width : 120,
		align : 'center'
	} ] ];

	function doDblClickRow(rowIndex, rowData) {
		alert("双击表格数据...");
	}

	var url = "${pageContext.request.contextPath }/yuanMei";
	$(function() {
		// 先将body隐藏，再显示，不会出现页面刷新效果
		$("body").css({
			visibility : "visible"
		});
	})
</script>

</head>
<body class="easyui-layout" style="visibility: hidden;">
	<div region="center" border="false">
		<table id="grid"></table>
	</div>

	<div class="easyui-window" title="对原煤添加或者修改" id="addWindow"
		collapsible="false" minimizable="false" maximizable="false"
		style="top: 20px; left: 200px">
		<div region="north" style="height: 31px; overflow: hidden;"
			split="false" border="false">
			<div class="datagrid-toolbar">
				<a id="save" icon="icon-save" href="#" class="easyui-linkbutton"
					plain="true">保存</a>
			</div>
		</div>

		<div region="center" style="overflow: auto; padding: 5px;"
			border="false">
			<form id="addForm"
				action="${pageContext.request.contextPath }/yuanMei/add"
				method="post">
				<table class="table-edit" width="80%" align="center">
					<tr class="title">
						<td colspan="2">原煤信息</td>
					</tr>
					<tr>
						<td>原煤名称</td>
						<td><input type="text" name="name" class="easyui-validatebox"
							required="true" /></td>
					</tr>
					<tr>
						<td>灰分</td>
						<td><input type="text" name="hui" class="easyui-validatebox"
							required="true" /></td>
					</tr>
					<tr>
						<td>硫份</td>
						<td><input type="text" name="liu" class="easyui-validatebox"
							required="true" /></td>
					</tr>
					<tr>
						<td>挥发份</td>
						<td><input type="text" name="huifa" /></td>
					</tr>
					<tr>
						<td>粘结指数</td>
						<td><input type="text" name="zhishu" /></td>
					</tr>
					<tr>
						<td>回收</td>
						<td><input type="text" name="huishou" /></td>
					</tr>
					<tr>
						<td>成本</td>
						<td><input type="text" name="chengben" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>


	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/myDataGrid.js"></script>

</body>


</html>