<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function doLogin(){
		var name=$("#loginName").val();
		var pwd=
	}

</script>
  </head>
  
  <body>
     <div id="toploginDiv">
            用户名:<s:textfield name="user.uname" id="loginName"></s:textfield>
          用户名:<s:textfield name="user.upwd" id="loginPwd"></s:textfield>
          <label class="ui-draggable">
               <input type="button" name="loginButton" value="登录" onclick="doLogin();" />
          </label>
      </div>
    <div id="demo" style="display:inline;"></div>
  </body>
</html>
