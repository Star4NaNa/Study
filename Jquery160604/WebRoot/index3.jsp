<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index4.jsp' starting page</title>
<link rel="stylesheet" href="<%=path%>/themes/base/jquery.ui.all.css" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.core.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.widget.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.position.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.menu.js"></script>
<script type="text/javascript">
		$(function(){
			$("#tags").autocomplete({
				source:function(requset,response){
					$.get("server.jsp","term="+request.term,function(data){
						var result=$.parseJSON(data);
						response(result);
					});
				}
			});
		});


</script>
  </head>
  
  <body>
    您输入的信息是：<input type="text" name="tags" id="tags"/>
    
  </body>
</html>
