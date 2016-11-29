<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录汽车订票系统</title>
<link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/js/inc/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    	$('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    });  
	$("#loginForm").submit(function(){
	    return checkUserName()&&checkUserPwd();
	});

	  if (${not empty flag}){
		  $("#error").html("${flag}");
	  }
}); 
	function checkUserName(){
		$("#error").html("");
		var userName = $("#userName").val();
		var logusername = $("#logusername");
		
		//校验登录名：只能输入5-20个以字母开头、可带数字、“_”、“.”的字串 
		var patrn=/^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){4,19}$/; 
		
		if (!patrn.test(userName)){
			$("#userName").focus();
			logusername.html("只能输入5-20个以字母开头、可带数字、“_”、“.”的字串");
			return false;
		}else{
			logusername.html("");
			return true; 
		}
	}
	function checkUserPwd(){
		$("#error").html("");
		//校验密码：只能输入6-20个字母、数字、下划线   
		var userPwd = $("#userPwd").val();
		var loguserpwd = $("#loguserpwd");
		if(!userPwd){
			$("#userPwd").focus();
			loguserpwd.html("请输入密码！");
			return false;
		}else{
			return true; 
		}
		/* var patrn=/^(\w){6,20}$/;   
		if (!patrn.test(userPwd)) {
			$("#userPwd").focus();
			loguserpwd.html("只能输入6-20个字母、数字、下划线 ");
			return false;
		}else{
			loguserpwd.html("");
			return true; 
		} */
	}
	
if (window != top)   
top.location.href = location.href;   
</script> 
</head>
<body style="background-color:#1c77ac; background-image:url(${pageContext.request.contextPath}/user/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  
<div class="logintop">    
    <span>欢迎登录汽车站管理系统</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    <form action="${pageContext.request.contextPath}/users_login/login"  method="post" id="loginForm" name="loginForm">
    <div class="loginbody">
   		<span class="systemlogo"></span> 
	    <div class="loginbox">
		    <ul>
		    <li>
		    	<div id="error" style="color:red;"></div>
		        <input name="userName" id="userName" type="text" class="loginuser" onblur="checkUserName()"/>
		    	<div id="logusername" style="color:red;"></div>
		    </li>
		    <li>
		       <input name="userPwd" id="userPwd" type="password" class="loginpwd"/>
		    	<div id="loguserpwd" style="color:red;"></div>
		    </li>
		    <li><input type="submit" class="loginbtn" value="登录"/>
		    <label><input name="" type="checkbox" value="" checked="checked" />记住密码</label>
		    <label><a href="${pageContext.request.contextPath}/user/pages/user/forgetpwd.jsp">忘记密码？</a></label>
		    <label><a target="_parent" href="${pageContext.request.contextPath}/user/pages/regist.jsp">注册账号</a></label>
		    </li>
		    </ul>
	    </div>
    </div>
    </form>
<div class="loginbm">版权所有  2013</div>
</body>
</html>
