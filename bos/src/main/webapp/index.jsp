<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>layout</title>
    <link rel="stylesheet"  type="text/css"  href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
    <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
    <script type="text/javascript"  src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script type="text/javascript"  src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript"  src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/js/ztree/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/ztree/jquery.ztree.all-3.5.js"></script>
	
	
	<script type="text/javascript">
		$(function(){
			// alert方法,提示框
		   $.messager.alert("标题","内容","question");
			
			// confirm 确认窗口
			$.messager.confirm('确认','您确认想要删除记录吗？',function(r){    
			    if (r){    
			        alert('确认删除');    
			    }    
			});
			
			/* 
			在屏幕右下角显示一条消息窗口。该选项参数是一个可配置的对象：
			showType：定义将如何显示该消息。可用值有：null,slide,fade,show。默认：slide。
			showSpeed：定义窗口显示的过度时间。默认：600毫秒。
			width：定义消息窗口的宽度。默认：250px。
			height：定义消息窗口的高度。默认：100px。
			title：在头部面板显示的标题文本。
			msg：显示的消息文本。
			style：定义消息窗体的自定义样式。
			timeout：如果定义为0，消息窗体将不会自动关闭，除非用户关闭他。如果定义成非0的树，消息窗体将在超时后自动关闭。默认：4秒。 
			代码示例：
			*/
			// 欢迎框 默认显示在右下角
			$.messager.show({
				title:'欢迎${admin.adminName}',
				msg:'消息将在4秒后关闭。',
				showType:'slide',
				timeout:4000,
			});
			// 欢迎框结束  


			
		})
	
	</script>


</head>
<%--整体布局采用easyui 的布局 东南西北--%>
<body class="easyui-layout">

<%--北部区域--%>
<div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>

<%--南部区域--%>
<div data-options="region:'south',title:'South Title',split:true" style="height:50px;"></div>

<%--东部区域--%>
<div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;">


</div>

<%--西部区域--%>
<div data-options="region:'west',title:'West',split:true" style="width:200px;">
    <!-- 制作accordion折叠面板
			fit:true----自适应(填充父容器)
		-->
    <div class="easyui-accordion" data-options="fit:true">
        <!-- 使用子div表示每个面板 -->
        <div data-options="iconCls:'icon-cut'" title="面板一">
            <a id="addBtn" class="easyui-linkbutton">添加一个选项卡</a>
            <script type="text/javascript">
                $(function(){
                    //页面加载完成后，为上面的按钮绑定事件
                    $("#addBtn").click(function(){
                        //判断“系统管理”选项卡是否存在
                        var e = $("#mytabs").tabs("exists","系统管理");
                        if(e){
                            //已经存在，选中就可以
                            $("#mytabs").tabs("select","系统管理");
                        }else{
                            //调用tabs对象的add方法动态添加一个选项卡
                            $("#mytabs").tabs("add",{
                                title:'系统管理',
                                iconCls:'icon-edit',
                                closable:true,
                                content:'<iframe frameborder="0" height="100%" width="100%" src="https://www.baidu.com"></iframe>'
                            });
                        }
                    });
                });
            </script>
        </div>

        <div title="面板二">
            <!-- 展示ztree效果 :使用标准json数据构造ztree-->
            <ul id="ztree1" class="ztree"></ul>
            <script type="text/javascript">
                $(function(){
                    //页面加载完成后，执行这段代码----动态创建ztree
                    var setting = {};
                    //构造节点数据
                    var zNodes = [
                        {"name":"节点一","children":[
                                {"name":"节点一_1"},
                                {"name":"节点一_2"}
                            ]},//每个json对象表示一个节点数据
                        {"name":"节点二"},
                        {"name":"节点三"}
                    ];
                    //调用API初始化ztree
                    $.fn.zTree.init($("#ztree1"), setting, zNodes);
                });
            </script>
        </div>
        <div title="面板三">
            <!-- 展示ztree效果 :使用简单json数据构造ztree-->
            <ul id="ztree2" class="ztree"></ul>
            <script type="text/javascript">
                $(function(){
                    //页面加载完成后，执行这段代码----动态创建ztree
                    var setting2 = {
                        data: {
                            simpleData: {
                                enable: true//使用简单json数据构造ztree节点
                            }
                        }
                    };
                    //构造节点数据
                    var zNodes2 = [
                        {"id":"1","pId":"2","name":"节点一"},//每个json对象表示一个节点数据
                        {"id":"2","pId":"3","name":"节点二"},
                        {"id":"3","pId":"0","name":"节点三"}
                    ];
                    //调用API初始化ztree
                    $.fn.zTree.init($("#ztree2"), setting2, zNodes2);
                });
            </script>
        </div>
        <div title="面板四">
            <!-- 展示ztree效果 :发送ajax请求获取简单json数据构造ztree-->
            <ul id="ztree3" class="ztree"></ul>
            <script type="text/javascript">
                $(function(){
                    //页面加载完成后，执行这段代码----动态创建ztree
                    var setting3 = {
                        data: {
                            simpleData: {
                                enable: true//使用简单json数据构造ztree节点
                            }
                        },
                        callback: {
                            //为ztree节点绑定单击事件
                            onClick: function(event, treeId, treeNode){
                                if(treeNode.page != undefined){
                                    //判断选项卡是否已经存在
                                    var e = $("#mytabs").tabs("exists",treeNode.name);
                                    if(e){
                                        //已经存在，选中
                                        $("#mytabs").tabs("select",treeNode.name);
                                    }else{
                                        //动态添加一个选项卡
                                        $("#mytabs").tabs("add",{
                                            title:treeNode.name,
                                            closable:true,
                                            content:'<iframe frameborder="0" height="100%" width="100%" src="'+treeNode.page+'"></iframe>'
                                        });
                                    }
                                }
                            }
                        }
                    };

                    //发送ajax请求，获取json数据
                    //jQuery提供 的ajax方法：ajax、post、get、load、getJSON、getScript
                    var url = "${pageContext.request.contextPath}/json/menu.json";
                    $.get(url,{},function(data){
                        //调用API初始化ztree
                        $.fn.zTree.init($("#ztree3"), setting3, data);
                    },'json');
                });
            </script>
        </div>
    </div>




</div>

<%--中间部分区域--%>
<div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
    <!-- 制作一个tabs选项卡面板 -->
    <div id="mytabs" class="easyui-tabs" data-options="fit:true">
        <!-- 使用子div表示每个面板 -->
        <div data-options="iconCls:'icon-cut'" title="面板一">1111</div>
        <div data-options="closable:true" title="面板二">2222</div>
        <div title="面板三">3333</div>
    </div>

</div>

<!--修改密码窗口-->
    <div id="editPwdWindow" class="easyui-window" title="修改密码" collapsible="false" minimizable="false" modal="true" closed="true" resizable="false"
        maximizable="false" icon="icon-save"  style="width: 350px; height: 160px; padding: 5px;
        background: #fafafa">
        <div class="easyui-layout" fit="true">
        
            <div region="center" border="false" style="padding: 10px; background: #fff; border: 1px solid #ccc;">
                <form id="editPwdForm">
	                <table cellpadding=3>
	               
	                <!-- easyui-validatebox  校验规则-->
	                    <tr>
	                        <td>新密码：</td>
	                        <td><input  required="true" data-options="validType:'length[4,6]'" id="txtNewPass" 
	                        	type="Password" class="txt01 easyui-validatebox" /></td>
	                    </tr>
	                    <tr>
	                        <td>确认密码：</td>
	                        <td><input required="true" data-options="validType:'length[4,6]'" id="txtRePass" 
	                        	type="Password" class="txt01 easyui-validatebox" /></td>
	                    </tr>
	                </table>
                </form>
            </div>
            <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;">
                <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" >确定</a> 
                <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">取消</a>
            </div>
        </div>
    </div>


</body>
</html>
