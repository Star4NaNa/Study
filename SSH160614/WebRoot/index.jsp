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
  </head>
  
  <body>
    <form action="doAdd!tianjia.action" method="post">
    	姓名：<input type="text" name="users.name"/><br>
    	密码：<input type="text" name="users.password"/><br>
    	电话：<input type="text" name="users.telephone"/><br>
    	用户名：<input type="text" name="users.username"/><br>
    	是否是管理员：<input type="text" name="users.isadmin"/><br>
    	<input type="submit" value="注册"/>
    </form>
    <hr>
    <a href="sel!selInfo.action">查询全部信息</a>
  </body>
</html>
