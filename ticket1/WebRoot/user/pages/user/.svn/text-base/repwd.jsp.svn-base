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
    <form action="${pageContext.request.contextPath}/users/selans"  method="post">
    <div align="center" >
   		<span class="systemlogo"></span> 
	    <div class="registbox">
	  		  <div align="center" style="color: blue;margin-top: 30px;" ><strong style="font-size: 20px;">密码找回</strong></div>
		    <ul>
		    <li>
		    	<div id="error" style="color:red;"></div>
                                         用&nbsp;户&nbsp;名：
		        <input name="userName" id="userName" type="text"  value="${ u.userName}" readonly="readonly"/>
		    	<div id="logusername" style="color:red;"></div>
		    </li>
		    <li>
		                       密保问题： <input name=""  type="text" value="${u.userQue }" readonly="readonly"/>
		    	<div id="loguserpwd" style="color:red;"></div>
		    </li>
		    <li>
		                       答案：<input name="userAns" type="text" class="loginpwd" />
		    	<div id="loguserpwd2" style="color:red;"></div>
		    </li>
		    <li><input type="submit" id="button1"  class="loginbtn"  value="提交"/>
		    </li>
		    </ul>
	    </div>
    </div>
    </form>
<div class="loginbm">版权所有  2013</div>
</body>
</html>
