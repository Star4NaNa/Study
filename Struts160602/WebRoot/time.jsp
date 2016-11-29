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
    
    <title>My JSP 'time.jsp' starting page</title>
    
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
    <%
    	long currentTime=System.currentTimeMillis();
    	Long startTime=(Long)session.getAttribute("startTime");
    	if(startTime==null){
    		startTime=currentTime;
    		session.setAttribute("startTime", startTime);
    	}
    	long usedTime=(currentTime-startTime)/1000;
    	if(usedTime>30){
    		request.setAttribute("rest", true);
    	}else{
    		request.setAttribute("rest", false);
    	}
    	request.setAttribute("usedTime", usedTime);
     %>
    <s:if test="#request.rest">
    	您该休息啦！！
    	
    </s:if>
    <s:else>
    	您已经访问的时间：<s:property value="#request.usedTime"/>
    </s:else>
    
  </body>
</html>
