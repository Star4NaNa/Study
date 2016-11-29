<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>My JSP 'divTest.jsp' starting page</title>
	<sx:head/>
  </head>
  
  <body>
  	<s:url id="time" value="time.action"></s:url>
  	<s:url id="welcome" value="welcome.action"></s:url>
    <sx:div id="div1" cssStyle="border:1px solid red;" updateFreq="2000" href="%{time}">
    	初始内容
    </sx:div>
    <sx:div id="div12" cssStyle="border:1px solid green;" href="%{welcome}">
    	初始内容
    </sx:div>
    <sx:div id="div3" cssStyle="border:1px solid blue;">
    	参照物
    </sx:div>
    
    
  </body>
</html>
