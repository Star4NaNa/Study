<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet" type="text/css" />
</head>

<script type="text/javascript">

function checUserPwd(){
  var pwd = $("#newPwd1").val();
  if(pwd==null||pwd==""){
    
    loguserpwd.html("请输入旧密码");u.userPassword
    
  }
}

function checkPwd1(){

   var pwd1 = $("#u.userPassword").val();
   
   var pwd2 = $("#newPwd2").val();
   
   if(pwd1!=pwd2){
   
     pwd.html("两次密码不一致！！");
   
   }

}

</script>

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
    <form id="teacherform" action="${pageContext.request.contextPath}/users/editpwd" method="post">
                       
    <ul class="forminfo">  

    <li>
    
        <label>旧密码</label><input name="newPwd1" type="password" class="dfinput" onblur="checUserPwd()"/> 
        
        <div id="loguserpwd" style="color:red;"></div>
    
    </li>
    
    <li><label>新密码</label><input name="u.userPassword" type="password" class="dfinput"/> </li>
    
    <li><label>确认密码</label><input name="newPwd2" type="password" class="dfinput" onblur="checkPwd1()"/> 
         <div id="pwd" style="color:red;"></div>
    </li>
    
    <li><label>密保问题</label> 
    
    <select name="u.userQue" type="text" class="dfinput" >
     <option value="${sessionScope.users.userQue}">${sessionScope.users.userQue }</option>
     <option value="我的生日是">我的生日是</option>
     <option value="我的家乡是">我的家乡是</option>
     <option value="我的大学是">我的大学是</option>
     <option value="我的偶像是">我的偶像是</option>
     <option value="我的爱人是">我的爱人是</option>
    </select> </li>
    
    <li><label>密保答案</label><input name="u.userAns" type="text" class="dfinput"/> </li>

    <li><label>&nbsp;</label><input type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    </div>
</body>
</html>
