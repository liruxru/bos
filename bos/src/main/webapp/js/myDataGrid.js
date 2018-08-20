//文档加载完成后加载表格
// 工具栏1
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
}, {
	id : 'button-undo',
	text : '隐藏',
	iconCls : 'icon-undo',
	handler : hideThese
} ];

// 工具栏2
var toolbar2 = [ {
	id : 'button-view',
	text : '查询',
	iconCls : 'icon-search',
	handler : doViewAll
}, {
	id : 'button-delete',
	text : '彻底删除',
	iconCls : 'icon-cancel',
	handler : doDelete
}, {
	id : 'button-reCover',
	text : '还原',
	iconCls : 'icon-redo',
	handler : doReCover
} ];
doViewAll();
// 指标信息表格初始化

// 添加原煤窗口 有了这个窗口就不会提前显示 先隐藏
$('#addWindow').window({
	title : '添加',
	width : 400,
	modal : true,
	shadow : true,
	closed : true,
	height : 400,
	resizable : false
});

// 为保存按钮绑定事件 添加指标到数据库
$("#save").click(function() {
	// 表单校验，如果通过，提交表单
	var v = $("#addForm").form("validate");
	if (v) {
		// post 提交表单
		$("#addForm").submit();
	}
});

function doAdd() {
	// 添加原煤窗口打开
	$('#addWindow').window("open");
}
// 在 表格界面移除显示 只能单行移除 不需要再次访问服务器
function hideRow(row) {
	var rowIndex = $('#grid').datagrid('getRowIndex', row);
	console.log(rowIndex)
	$('#grid').datagrid("deleteRow", rowIndex);
}

// 查询隐藏不常用的原煤信息
function doViewAll() {
	// 指标信息表格初始化
	$('#grid').datagrid({
		iconCls : 'icon-forward',
		fit : true,
		border : false,
		rownumbers : true,
		striped : true,
		pageList : [ 10, 20, 30 ],
		pagination : true,
		toolbar : toolbar1,
		url : url+'/list',
		idField : 'id',
		columns : columns,
		onDblClickRow : doDblClickRow,
		queryParams : {
			status : '1',
		}
	});
}

// 查询隐藏不常用的原煤信息
function doView() {
	$('#grid').datagrid({
		iconCls : 'icon-forward',
		fit : true,
		border : false,
		rownumbers : true,
		striped : true,
		pageList : [ 10, 20, 30 ],
		pagination : true,
		toolbar : toolbar2,
		url : url+'/list',
		idField : 'id',
		columns : columns,
		onDblClickRow : doDblClickRow,
		queryParams : {
			status : '0',
		}

	});
}
// 删除原煤
function doDelete() {
	var data = getChecked();
	var ids = new Array();
	for (var i = 0; i < data.length; i++) {
		/*
		 * var jsonStr = JSON.stringify(data[i]); //转为JSON字符串
		 * console.log(jsonStr)
		 */
		ids.push(data[i].id)
	}
	var deleteUrl = url +"/delete";
	$.post(deleteUrl, {
		'ids' : ids
	}, function(result) {
		// alert(result.code)
		// alert(result.msg)
		// 删除成功
		$("#grid").datagrid("reload"); // 删除成功后 刷新页面

	})

}
// 返回被选择的数据行 每行代表一个 YuanMei 类（javaBean）
function getChecked() {
	return $('#grid').datagrid('getChecked');
}

// 取消隐藏
function doReCover() {
	var data = getChecked();
	var ids = new Array();
	for (var i = 0; i < data.length; i++) {
		ids.push(data[i].id)
	}
	var recoverUrl = url+"/recover";
	$.post(recoverUrl, {
		'ids' : ids
	}, function(result) {
		// 隐藏成功
		if (result.code == 0) {
			$("#grid").datagrid("reload"); // 隐藏成功后 刷新页面
		}

	})
}
// 隐藏
function hideThese() {
	var data = getChecked();
	var ids = new Array();
	for (var i = 0; i < data.length; i++) {
		/*
		 * var jsonStr = JSON.stringify(data[i]); //转为JSON字符串
		 * console.log(jsonStr)
		 */
		ids.push(data[i].id)
	}
	var hideUrl = url+"/hide";
	$.post(hideUrl, {
		'ids' : ids
	}, function(result) {
		// 隐藏成功
		if (result.code == 0) {
			$("#grid").datagrid("reload"); // 隐藏成功后 刷新页面
		}

	})
}
