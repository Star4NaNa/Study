<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Ajax.jsp' starting page</title>
    <sx:head/>
  </head>
  
  <body>
  	<s:url id="logins" value="logins.action"></s:url>
  	<sx:a href="%{logins}" targets="div1">用户登录</sx:a>
    	<sx:div id="div1" cssStyle="border:1px solid red" >
    		第一层显示的是登陆菜单！
    	</sx:div>
        <sx:div id="div2" cssStyle="border:1px solid blue" >
    		第二层显示的是登陆结果！
    	</sx:div>
    
  </body>
</html>
