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
    
    <title>My JSP 'login.jsp' starting page</title>
    


  </head>
  
  <body>
    <s:form id="form1" action="loginss.action" method="post">
    	<s:textfield name="username"></s:textfield>
    	<s:password name="userpwd"></s:password>
    	<sx:submit type="button" value="表单内提交" targets="div2" ></sx:submit>
    </s:form>
    <sx:submit type="button" value="表单外提交" targets="div2" formId="form1"></sx:submit>
    <sx:a targets="div2" formId="form1">我也可以提交</sx:a>
  </body>
</html>
