<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function validate(){
		var uname=$("#uname").val();
		if(uname==null||uname==""){
			$("#unameDiv").html("用户名不能为空！");
		}else{
			$.get('demoindex2.jsp','uname='+uname,function(result){
				if($.trim(result)=="true"){
					$("#unameDiv").html("用户名已被占用！");
				}else{
					$("#unameDiv").html("用户名可以使用！");
				}
			});
		}
		
	}


</script>
  </head>
  
  <body>
   	<form action="" id="form1">
   		<table>
   			<tr>
   				<td>用户名：</td>
   				<td><input type="text" name="uname" id="uname" onblur="validate();"/>
   				<font color="red">*</font>
   				
   				</td>
   				<td><div id="unameDiv" style="display: inline;"></div> </td>
   			</tr>
   		
   		</table>
   	
   	</form>
  </body>
</html>
