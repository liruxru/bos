<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>原煤列表</title>
<%@ include file="header.jsp"%> 
<script type="text/javascript">
	
	function doAdd(){
		// 添加原煤窗口打开
		$('#addYuanMeiWindow').window("open");
	}
	
	//查询隐藏不常用的原煤信息
	function doView(){
		// 指标信息表格初始化
		$('#grid').datagrid( {
			iconCls : 'icon-forward',
			fit : true,
			border : false,
			rownumbers : true,
			striped : true,
			pageList: [10,20,30],
			pagination : true,
			toolbar : toolbar2,
			url : "${pageContext.request.contextPath }/yuanMeiList",
			idField : 'id',
			columns : columns,
			onDblClickRow : doDblClickRow,
			queryParams: {
				status: '0',
			}

		});
	}
	
	function doDelete(){
		var data = getChecked();
		for (var i=0;i<data.length;i++)
		{
			alert(data[i].id)
		}
	}
	// 返回被选择的数据行   每行代表一个  YuanMei 类（javaBean）
	function getChecked() {
		return  $('#grid').datagrid('getChecked');
	}
	
	function doReCover(){
		alert("恢复状态");
	}
	function doUndo(){
		alert("隐藏状态");
	}
	//工具栏1
	var toolbar1 = [ {
		id : 'button-view',	
		text : '查询隐藏的',
		iconCls : 'icon-search',
		handler : doView
	}, {
		id : 'button-add',
		text : '增加',
		iconCls : 'icon-add',
		handler : doAdd
	}, {
		id : 'button-delete',
		text : '直接删除',
		iconCls : 'icon-cancel',
		handler : doDelete
	},{
		id : 'button-undo',
		text : '隐藏',
		iconCls : 'icon-undo',
		handler : doUndo
	}];
	
	//工具栏2
	var toolbar2 = [{
		id : 'button-view',	
		text : '查询',
		iconCls : 'icon-search',
		handler : doView
	}, {
		id : 'button-delete',
		text : '彻底删除',
		iconCls : 'icon-cancel',
		handler : doDelete
	},{
		id : 'button-reCover',
		text : '还原',
		iconCls : 'icon-redo',
		handler : doReCover
	}];
	// 定义列
	var columns = [ [ {
		field : 'id',
		checkbox : true,
		title : '编号',
		width : 120,
		align : 'center'
	},{
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
	} , {
		field : 'huishou',
		title : '回收率',
		width : 120,
		align : 'center'
	} , {
		field : 'chengben',
		title : '成本',
		width : 120,
		align : 'center'
	} ] ];
	
	// 文档加载完成后加载表格
	$(function(){
		// 先将body隐藏，再显示，不会出现页面刷新效果
		$("body").css({visibility:"visible"});
		
		// 指标信息表格初始化
		$('#grid').datagrid( {
			iconCls : 'icon-forward',
			fit : true,
			border : false,
			rownumbers : true,
			striped : true,
			pageList: [10,20,30],
			pagination : true,
			toolbar : toolbar1,
			url : "${pageContext.request.contextPath }/yuanMeiList",
			idField : 'id',
			columns : columns,
			onDblClickRow : doDblClickRow,
			
		});
		
		// 添加原煤窗口 有了这个窗口就不会提前显示  先隐藏
		$('#addYuanMeiWindow').window({
	        title: '添加原煤',
	        width: 400,
	        modal: true,
	        shadow: true,
	        closed: true,
	        height: 400,
	        resizable:false
	    });
		
		// 为保存按钮绑定事件 添加指标到数据库
		$("#save").click(function(){
			// 表单校验，如果通过，提交表单
			var v = $("#addYuanMeiForm").form("validate");
			if(v){
				// post 提交表单
				$("#addYuanMeiForm").submit();
			}
		});
		
	});

	function doDblClickRow(rowIndex, rowData){
		alert("双击表格数据...");
	}
	</script>
		
</head>
<body class="easyui-layout" >
	<div region="center" border="false">
    	<table id="grid"></table>
	</div>
	<div class="easyui-window" title="对原煤添加或者修改" id="addYuanMeiWindow" collapsible="false" minimizable="false" maximizable="false" style="top:20px;left:200px">
		<div region="north" style="height:31px;overflow:hidden;" split="false" border="false" >
			<div class="datagrid-toolbar">
				<a id="save" icon="icon-save" href="#" class="easyui-linkbutton" plain="true" >保存</a>
			</div>
		</div>
		
		<div region="center" style="overflow:auto;padding:5px;" border="false">
			<form id="addYuanMeiForm" action="${pageContext.request.contextPath }/addYuanMei" method="post">
				<table class="table-edit" width="80%" align="center">
					<tr class="title">
						<td colspan="2">原煤信息</td>
					</tr>
					<tr>
						<td>原煤名称</td>
						<td><input type="text" name="name" class="easyui-validatebox" required="true"/></td>
					</tr>
					<tr>
						<td>灰分</td>
						<td>
						
						<input type="text" 
							name="hui" class="easyui-validatebox" required="true"/></td>
					</tr>
					<tr>
						<td>硫份</td>
						<td><input type="text" name="liu" class="easyui-validatebox" required="true"/></td>
					</tr>
					<tr>
						<td>挥发份</td>
						<td><input type="text" name="huifa" /></td>
					</tr>
					<tr>
						<td>粘结指数</td>
						<td>
							<input type="text" name="zhishu" />  
						</td>
					</tr>
					<tr>
						<td>回收</td>
						<td>
							<input type="text" name="huishou" />  
						</td>
					</tr>
					<tr>
						<td>成本</td>
						<td>
							<input type="text" name="chengben" />  
						</td>
					</tr>
					</table>
			</form>
		</div>
	</div>
</body>
</html>