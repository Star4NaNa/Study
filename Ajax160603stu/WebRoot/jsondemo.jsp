<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jsondemo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=basePath%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
			$(document).ready(function(){
				//定义一个json格式的user对象
				var user={"id":1,"name":"李星冶","age":18};
				$("#objectDiv").
				append("ID:"+user.id+"<br>").
				append("NAME:"+user.name+"<br>").
				append("AGE:"+user.age);
				var ary=["中","俄","美","英"];
				for(var i=0;i<ary.length;i++){
					$("#arrayDiv").append(ary[i]+"  ");
				}
				
				var userArray=[{"id":1,"name":"李星冶","age":18},
				{"id":2,"name":"薇恩","age":18},
				{"id":3,"name":"伊泽瑞尔","age":18}];
				$("#objectarrayDiv").append("<table>").
				append("<tr>").
				append("<td>ID</td>").
				append("<td>NAME</td>").
				append("<td>AGE</td>").
				append("</tr>");
				for(var i=0;i<userArray.length;i++){
					$("#objectarrayDiv").
					append("<tr>").
					append("<td>"+userArray[i].id+"</td>").
					append("<td>"+userArray[i].name+"</td>").
					append("<td>"+userArray[i].age+"</td>").
					append("</tr>");
				}
				$("#objectarrayDiv").append("</table>");
			});
			
	</script>
</head>
<body>
一，json格式的user对象<div id="objectDiv"></div>
二，json格式的字符串数组<div id="arrayDiv"></div>
三，json格式的对象数组<div id="objectarrayDiv"></div>
</body>
</html>
