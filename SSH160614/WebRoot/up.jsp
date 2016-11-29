<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'up.jsp' starting page</title>
    
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
    <form action="upaf.action" method="post">
    	编号：<input type="text" name="users.id" value="${sessionScope.u.id }" readonly="readonly"/><br>
    	姓名：<input type="text" name="users.name" value="${sessionScope.u.name }"/><br>
    	密码：<input type="text" name="users.password" value="${sessionScope.u.password }"/><br>
    	电话：<input type="text" name="users.telephone" value="${sessionScope.u.telephone }"/><br>
    	用户名：<input type="text" name="users.username" value="${sessionScope.u.username }"/><br>
    	是否是管理员：<input type="text" name="users.isadmin" value="${sessionScope.u.isadmin }"/><br>
    	<input type="submit" value="更新"/>
    </form>
  </body>
</html>
