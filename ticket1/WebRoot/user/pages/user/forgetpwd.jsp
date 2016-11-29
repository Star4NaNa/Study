<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
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
    <form action="${pageContext.request.contextPath}/users/seluser"  method="post" id="registForm" name="registForm">
    <div align="center">
   		<span class="systemlogo"></span> 
	  
	    
	    <ul>
	  	 
	  	<li> 
	  	 <div align="center" style="color: blue;margin-top: 30px;" ><strong style="font-size: 20px;">忘记密码</strong></div> 
		 </li>
		   
		<li> 
		    <div> 输入电话： <input type="text" name="userPhone" class="loginuser"/>  </div>
		    	
		</li>
		    
		<li>
		   <div><input type="submit" id="button1"  class="loginbtn"  value="提交"/></div>
		</li>
		</ul>
	    </div>
    
 
    </form>
<div class="loginbm">版权所有  2013</div>
</body>
</html>
