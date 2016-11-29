<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/js/inc/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/cloud.js" type="text/javascript"></script>
<script language="javascript">
	$(function(){
    $('.registbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    	$('.registbox').css({'position':'absolute','left':($(window).width()-692)/2});
    }); 
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
	/*	if(!userPwd){
			$("#userPwd").focus();
			loguserpwd.html("请输入密码！");
			return false;
		}else{
			return true; 
		}*/
		 var patrn=/^(\w){6,20}$/;   
		if (!patrn.test(userPwd)) {
			$("#userPwd").focus();
			loguserpwd.html("只能输入6-20个字母、数字、下划线 ");
			return false;
		}else{
			loguserpwd.html("");
			return true; 
		} 
	}
   
</script>


<script type="text/javascript">
function ckpwd(){
    
    var pwd = document.getElementById("userPwd").value;
    var pwd1 = document.getElementById("userPwd2").value;
    if(pwd!=""&&pwd1!=""){
        document.getElementById("loguserpwd").innerHTML="<font color='green'>√</font>"
         if(pwd!=pwd1){
             document.getElementById("loguserpwd2").innerHTML="密码不一致";    
          }else{
             
             document.getElementById("loguserpwd2").innerHTML="<font color='green'>√</font>";
             document.getElementById("button1").disabled=false;
          }
    }else{
       document.getElementById("loguserpwd2").innerHTML="密码不能为空";
    }
    
}





</script>




</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${pageContext.request.contextPath}/user/pages/index.jsp">首页</a></li>
    <li><a href="#">密码修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>用户信息</span></div>
    <form id="teacherform" action="${pageContext.request.contextPath}/users/setnewpwd" method="post">
                       
    <ul class="forminfo">  

    <li>
    
        <label>用户名</label><input name="userName" id="userName" type="text"  value="${ u.userName}" readonly="readonly"/> 
        
       
    
    </li>
    
      <li>
		      密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<font color="red">*</font> <input name="u.userPassword" id="userPwd" type="password" class="loginpwd" onkeyup="ckpwd();" onblur="checkUserPwd()"/>
		    	<div id="loguserpwd" style="color:red;"></div>
		    </li>
		    <li>
		     确认密码：<font color="red">*</font>  <input id="userPwd2" type="password" class="loginpwd" onkeyup="ckpwd();" onblur="ckall();"/>
		    	<div id="loguserpwd2" style="color:red;"></div>
		    </li>

   
    <li><input type="submit" id="button1"  class="loginbtn" disabled="disabled" value="确认保存"/>
		    </li>
    </ul>
    </form>
    </div>
</body>
</html>
