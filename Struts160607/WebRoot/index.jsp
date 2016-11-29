<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
  </head>
  	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  	<script type="text/javascript">
  		function validate(){
  			var uname=$("#uname").val();
  			$.get('myinputstream.action','uname='+uname,function(data){
  				$("#div1").html(data);
  			});
  		}	
  	</script>
  <body>
  <div id="div1">
    <table>
    	<tr>
    		<td>用户名：</td>
    		<td><input type="text" name=uname" id="uname" onblur="validate();"/></td>
    	</tr>
    
    </table>
    </div>
  </body>
</html>
