<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>职工列表</title>
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
		title : 'name',
		width : 120,
		align : 'center'
	}, {
		field : 'age',
		title : 'age',
		width : 120,
		align : 'center',
		editor:{type:'numberbox',options:{precision:0}}
	}, {
		field : 'sex',
		title : 'sex',
		width : 120,
		align : 'center',
		editor:{
			type:'combobox',
			options:{
				valueField:'id',
				textField:'sex',
				method:'get',
				url:'sex.json',
				required:true
			}
		}
	}, {
		field : 'birth',
		title : 'birth',
		width : 120,
		align : 'center',
		editor:{
			type:'datebox'
		}
		
	} ] ];

	function doDblClickRow(rowIndex, rowData) {
		alert("双击表格数据...");
	}

	$(function() {
		// 先将body隐藏，再显示，不会出现页面刷新效果
		$("body").css({
			visibility : "visible"
		});
		
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
			url : "${pageContext.request.contextPath }/json/staff.json",
			idField : 'id',
			columns : columns,
			onDblClickRow : doDblClickRow
		});
		
	})
	
	
</script>

</head>
<body class="easyui-layout" style="visibility: hidden;">
	<div region="center" border="false">
		<table id="grid"></table>
	</div>



</body>


</html>