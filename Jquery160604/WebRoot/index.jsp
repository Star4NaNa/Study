<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="<%=path%>/themes/base/jquery.ui.all.css"/>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.ui.core.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.ui.widget.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.ui.dialog.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#div1").dialog({
				height:50,
				width:50,
				modal:true,
				buttons:{
					"关闭":function(){
						$(this).dialog("close");
					}
				}
			
			});
		});
	</script>
  </head>
  <body>
    <div id="div1">
    </div>
  </body>
</html>
