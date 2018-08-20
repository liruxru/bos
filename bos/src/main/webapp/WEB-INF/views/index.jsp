<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理首页</title>

    <%@ include file="header.jsp"%> 	
	
	<script type="text/javascript">
		$(function(){
			
			/**
			 * 更换EasyUI主题的方法
			 * @param themeName
			 * 主题名称
			 */
			changeTheme = function(themeName) {
				var $easyuiTheme = $('#easyuiTheme');
				var url = $easyuiTheme.attr('href');
				var href = url.substring(0, url.indexOf('themes')) + 'themes/'
						+ themeName + '/easyui.css';
				$easyuiTheme.attr('href', href);
				var $iframe = $('iframe');
				if ($iframe.length > 0) {
					for ( var i = 0; i < $iframe.length; i++) {
						var ifr = $iframe[i];
						$(ifr).contents().find('#easyuiTheme').attr('href', href);
					}
				}
			};
			
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
            var url = "${pageContext.request.contextPath}/menu";
            $.get(url,{},function(data){
                //调用API初始化ztree
                $.fn.zTree.init($("#ztree3"), setting3, data);
            },'json');
            
          // -- 页面加载完成后，执行这段代码----动态创建ztree结束
		
			// 欢迎框 默认显示在右下角
			$.messager.show({
				title:'欢迎信息',
				msg:'欢迎${admin.adminName}登录',
				showType:'slide',
				timeout:5000,
			});
			// --欢迎框结束  
			
			// 用户修改密码
			
			// 开启窗口
			$("#editPwdBtn").click(function(){
				$("#editPwdWindow").window("open");
				
			})
			// 确定按钮单击
			$("#btnEp").click(function(){
				var bln = $("#editPwdForm").form("validate");
				if(bln){
					var newPass = $("#txtNewPass").val();
					var rePass = $("#txtRePass").val();
					if(newPass == rePass){
						var url = "${pageContext.request.contextPath}/updatePassword";
						var data = {"newPass":newPass};
						// 修改密码
						$.post(url,data,function(result){
							if(result.code == 0){
								// 修改成功，关闭窗口
								$("#editPwdWindow").window("close");
							}else{
								//修改密码失败
								$.messager.alert("错误提示","密码修改失败","warning")
							}
						})
					}else{
						// 弹出警告信息
						$.messager.alert("错误提示","两次密码输入不一致","warning")
					}
				}
			})
			// -- 修改密码结束
			
			// 用户退出
			$("#loginOut").click(function(){
				$.messager.confirm("系统提示","您确定要退出本次登录吗？",function(isConfirm){
					if(isConfirm){
						location.href="${pageContext.request.contextPath}/loginOut";
					}else{
						// 点击取消窗口自动关闭
					}
					
				})
			})
			// --用户退出结束
			
			


			
		})
	
	</script>


</head>
<%--整体布局采用easyui 的布局 东南西北--%>
<body class="easyui-layout">

<%--北部区域--%>
<div data-options="region:'north'" style="height:100px;padding:10px">
	
	<div style="position: absolute;right:5px;top: 10px;">
		[<strong>${admin.adminName}</strong>]欢迎你！	
	</div>
	<div style="position: absolute;right:5px;bottom: 10px;">
	 	<a href="javascript:void(0)" id="themeBtn" class="easyui-menubutton"     
		        data-options="menu:'#themeDiv',iconCls:'icon-ok'">主题修改</a>   
		<!-- 菜单按钮 data-options="menu:'#mm', 对应div的id   -->
		<a href="javascript:void(0)" id="menuBtn" class="easyui-menubutton"     
		        data-options="menu:'#menuDiv',iconCls:'icon-help'">控制面板</a>   
	
	</div>
	<!-- 主题菜单栏 -->
	<div id="themeDiv" style="width:150px;">   
	    <div onclick="changeTheme('default');">default</div>
		<div onclick="changeTheme('gray');">gray</div>
		<div onclick="changeTheme('black');">black</div>
		<div onclick="changeTheme('bootstrap');">bootstrap</div>
		<div onclick="changeTheme('metro');">metro</div>
	</div>  
	<!-- 控制面板菜单栏 -->
	<div id="menuDiv" style="width:150px;">   
	    <div data-options="iconCls:'icon-edit'" id="editPwdBtn">修改密码</div>   
	    <div>联系管理员</div>   
	    <div class="menu-sep"></div>   
	    <div id="loginOut">退出登录</div>   
	</div>  
	



</div>

<%--南部区域--%>
<div data-options="region:'south',title:'South Title',split:true" style="height:50px;"></div>



<%--西部区域--%>
<div data-options="region:'west',title:'菜单导航',split:true" style="width:200px;">
    <!-- 制作accordion折叠面板
			fit:true----自适应(填充父容器)
		-->
    <div class="easyui-accordion" data-options="fit:true">
        <!-- 使用子div表示每个面板 -->
    
        <div title="基本功能">
            <!-- 展示ztree效果 :发送ajax请求获取简单json数据构造ztree-->
            <ul id="ztree3" class="ztree"></ul>
            
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
     maximizable="false" icon="icon-save"  style="width: 300px; height: 160px; padding: 5px;
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
