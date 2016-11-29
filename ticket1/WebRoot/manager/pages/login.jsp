<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<link href="${pageContext.request.contextPath}/manager/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function checkForm() {
        if (!$("input[name='empUsername']").val()) {
            alert("请输入账号");
            return false;
        }
        if (!$("input[name='empPassword']").val()) {
            alert("请输入密码");
            return false;
        }
        return true;
    }
</script>
</head>

<body style="background-color:#1c77ac; background-image:url(${pageContext.request.contextPath}/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

<div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  

    <div class="loginbody" style="overflow:hidden;">
    
    <span class="systemlogo"><img src="${pageContext.request.contextPath}/user/images/loginlogo.png" /></span> 
       <form method="post" action="${pageContext.request.contextPath}/employee_login/login" onsubmit="return checkForm();">
	    <div class="loginbox">
	    <ul>
	    <li><input name="empUsername" id="empUsername"　type="text" value="${employee.empUsername}"  class="loginuser"/></li>
	    <li><input name="empPassword" id="empPassword" type="password" value="${employee.empPassword}" class="loginpwd"/></li>
	    <li><input type="submit" class="loginbtn" value="登录"  />
	    <label><input name="" type="checkbox" value="" checked="checked" />记住密码</label>
	         <%--<label style="color: red">系统错误，请联系管理员</label>--%>
					       <%-- 
					        <label><a href="#">忘记密码？</a></label>--%>
	    </li>
	    </ul>
	    </div>
        </form>
    </div>
    
    <div class="loginbm">Copyright © 2014  All Rights Reserved!</div>
</body>

</html>
