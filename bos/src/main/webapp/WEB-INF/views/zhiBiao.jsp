<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 	
 <%@ include file="header.jsp"%> 	
	<script type="text/javascript">
	
	function doAdd(){
		//alert("增加...");
		$('#addZhiBiaoWindow').window("open");
	}
	
	function doView(){
		alert("查看...");
	}
	
	function doDelete(){
		alert("删除...");
	}
	
	function doRestore(){
		alert("将取派员还原...");
	}
	//工具栏
	var toolbar = [ {
		id : 'button-view',	
		text : '查询',
		iconCls : 'icon-search',
		handler : doView
	}, {
		id : 'button-add',
		text : '增加',
		iconCls : 'icon-add',
		handler : doAdd
	}, {
		id : 'button-delete',
		text : '作废',
		iconCls : 'icon-cancel',
		handler : doDelete
	},{
		id : 'button-save',
		text : '还原',
		iconCls : 'icon-save',
		handler : doRestore
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
			pageList: [30,50,100],
			pagination : true,
			toolbar : toolbar,
			url : "${pageContext.request.contextPath }/jinMeiList",
			idField : 'id',
			columns : columns,
			onDblClickRow : doDblClickRow
		});
		
		// 添加精煤指标窗口 有了这个窗口就不会提前显示
		$('#addZhiBiaoWindow').window({
	        title: '添加指标',
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
			var v = $("#addZhiBiaoForm").form("validate");
			if(v){
				//$("#addStaffForm").form("submit");
				$("#addZhiBiaoForm").submit();
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
	<div class="easyui-window" title="对精煤指标要求进行添加或者修改" id="addZhiBiaoWindow" collapsible="false" minimizable="false" maximizable="false" style="top:20px;left:200px">
		<div region="north" style="height:31px;overflow:hidden;" split="false" border="false" >
			<div class="datagrid-toolbar">
				<a id="save" icon="icon-save" href="#" class="easyui-linkbutton" plain="true" >保存</a>
			</div>
		</div>
		
		<div region="center" style="overflow:auto;padding:5px;" border="false">
			<form id="addZhiBiaoForm" action="${pageContext.request.contextPath }/addZhiBiao" method="post">
				<table class="table-edit" width="80%" align="center">
					<tr class="title">
						<td colspan="2">新指标信息</td>
					</tr>
					<tr>
						<td>指标名称</td>
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
					</table>
			</form>
		</div>
	</div>
</body>
</html>