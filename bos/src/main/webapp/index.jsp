<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>layout</title>
  <!-- 全局字体样式  保证其他样式与easyui统一-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/default.css">
<!-- 图标样式 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
<!-- easyui主题修改 -->
<link id="easyuiTheme" rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/easyui/ext/portal.css">

<!-- 导入jquery核心类库 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/js/ztree/zTreeStyle.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/ztree/jquery.ztree.all-3.5.js"></script>
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
		align : 'center',
		editor:{type:'textbox'}
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
				url:'${pageContext.request.contextPath }/json/sex.json',
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
	
	//工具栏
	var toolbar = [ {
		id : 'button-append',	
		text : 'append',
		iconCls : 'icon-add',
		handler : append
	}, {
		id : 'button-add',
		text : 'remove',
		iconCls : 'icon-remove',
		handler : removeit
	}, {
		id : 'button-add',
		text : 'accept',
		iconCls : 'icon-save',
		handler : accept
	}, {
		id : 'button-delete',
		text : 'reject',
		iconCls : 'icon-undo',
		handler : reject
	},{
		id : 'button-save',
		text : 'getChanges',
		iconCls : 'icon-search',
		handler : getChanges
	}];

	function doDblClickRow(rowIndex, rowData) {
		alert("双击表格数据...");
	}

	$(function() {
		// 先将body隐藏，再显示，不会出现页面刷新效果
		$("body").css({
			visibility : "visible"
		});
		
		// 指标信息表格初始化
		$('#dg').datagrid( {
			iconCls : 'icon-forward',
			fit : true,
			border : false,
			rownumbers : true,
			striped : true,
			pageList: [30,50,100],
			pagination : true,
			toolbar : toolbar,
			method:'get',
			url : "${pageContext.request.contextPath }/json/staff.json",
			idField : 'id',
			columns : columns,
			onClickCell: onClickCell,
			onEndEdit: onEndEdit
		});
		
	})
	
	var editIndex = undefined;
		function endEditing(){
			if (editIndex == undefined){return true}
			if ($('#dg').datagrid('validateRow', editIndex)){
				$('#dg').datagrid('endEdit', editIndex);
				editIndex = undefined;
				return true;
			} else {
				return false;
			}
		}
		// 单击单元格 index：点击的行的索引值，该索引值从0开始。row：对应于点击行的记录。
		function onClickCell(index, field){
			if (editIndex != index){
				if (endEditing()){
					$('#dg').datagrid('selectRow', index)
							.datagrid('beginEdit', index);
					var ed = $('#dg').datagrid('getEditor', {index:index,field:field});
					if (ed){
						($(ed.target).data('textbox') ? $(ed.target).textbox('textbox') : $(ed.target)).focus();
					}
					editIndex = index;
				} else {
					setTimeout(function(){
						$('#dg').datagrid('selectRow', editIndex);
					},0);
				}
			}
		}
		function onEndEdit(index, row){
			var ed = $(this).datagrid('getEditor', {
				index: index,
				field: 'sex'
			});
			row.sex = $(ed.target).combobox('getText');
		}
		function append(){
			if (endEditing()){
				$('#dg').datagrid('appendRow');
				editIndex = $('#dg').datagrid('getRows').length-1;
				$('#dg').datagrid('selectRow', editIndex)
						.datagrid('beginEdit', editIndex);
			}
		}
		function removeit(){
			if (editIndex == undefined){return}
			$('#dg').datagrid('cancelEdit', editIndex)
					.datagrid('deleteRow', editIndex);
			editIndex = undefined;
		}
		function accept(){
			if (endEditing()){
				$('#dg').datagrid('acceptChanges');
			}
		}
		function reject(){
			$('#dg').datagrid('rejectChanges');
			editIndex = undefined;
		}
		function getChanges(){
			var rows = $('#dg').datagrid('getChanges');
			alert(rows.length+' rows are changed!');
		}
	
	
</script>

</head>
<body class="easyui-layout" style="visibility: hidden;">
	<div region="center" border="false">
		<table id="dg"></table>
	</div>



</body>


</html>