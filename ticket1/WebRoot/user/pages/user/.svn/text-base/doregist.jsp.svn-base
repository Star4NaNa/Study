<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 	<script type="text/javascript">
	  var time=3;
	  setInterval("Time()",1000);
	  function Time(){
	    if(time==0){
	      location="${pageContext.request.contextPath}/user/pages/login.jsp";
	    }
	    
	    document.getElementById("layer").innerHTML="操作成功"+time+"秒后跳转....";
	    time--;
	  }
	</script>

  </head>
  
  <body>
  <span id="layer"></span>
  </body>
</html>
