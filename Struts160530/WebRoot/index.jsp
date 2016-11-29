<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
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
<script type="text/javascript">
	function check(){
		var name=window.document.getElementsById(myname).value;
		var pwd=window.document.getElementsById(mypwd).value;
		var n=window.document.getElementsById(names);
		var p=window.document.getElementsById(pwds);
		if(name==""){
		
		}
	}
	
</script>
<body>
	<h1>这是注册页面</h1>
	<s:property value="msg" />
	    <form action="zhuce.action" method="post">
    	用户名：<input type="text" name="mytest.myname" id="myname"/><div style="display: inline;" id="names"></div>
    	<br>
    	<br>
    	密码：<input type="text" name="mytest.mypwd" id="mypwd"/><div style="display: inline;" id="pwds"></div>
    	<br>
    	<br>
    	<input type="submit" value="注册"/>
    	
    
    </form>


</body>
</html>
