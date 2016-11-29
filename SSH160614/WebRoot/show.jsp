<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'show.jsp' starting page</title>

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
	<table width="40%" border="1">
		<tr>
			<td>姓名</td>
			<td>密码</td>
			<td>电话</td>
			<td>用户名</td>
			<td>是不是管理员</td>
		</tr>
		<c:forEach var="lxy" items="${sessionScope.list }">
			<tr>
				<td>${lxy.name }</td>
				<td>${lxy.password }</td>
				<td>${lxy.telephone }</td>
				<td>${lxy.username }</td>
				<td>${lxy.isadmin }</td>
				<td><a href="del.action?myid=${lxy.id }">删除</a></td>
				<td><a href="upex.action?myid=${lxy.id }">更新</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="7" align="center"><input type="button" onclick="window.location='index.jsp'"
				value="返回" /></td>
		</tr>
	</table>
</body>
</html>
