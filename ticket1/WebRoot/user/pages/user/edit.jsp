<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${pageContext.request.contextPath}/user/pages/index.jsp">首页</a></li>
    <li><a href="#">用户信息修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>用户信息</span></div>
    <form id="teacherform" action="${pageContext.request.contextPath}/users/save" method="post">
                       
    <ul class="forminfo">  

    <li><label>用户名</label><input name="u.userName" type="text" class="dfinput" maxlength="10" value="${sessionScope.users.userName }"/> </li>
    
    <li><label>真实姓名</label><input name="u.userRname" type="text" class="dfinput" maxlength="10" value="${sessionScope.users.userRname }"/> </li>
    
    <li><label>身份证号</label><input name="u.userCarid" type="text" class="dfinput" value="${sessionScope.users.userCarid }"/> </li>
    
    <li> <label>年龄</label><input name="u.userAge" type="text" class="dfinput" value="${sessionScope.users.userAge }"/></li>
    
    <li><label>电话</label><input name="u.userPhone" type="text" class="dfinput" value="${sessionScope.users.userPhone }"/> </li>
    
    
    <li><label>身份</label> 
    
    <select name="u.userType" id="love" class="dfinput">
     <option value="${sessionScope.users.userType }">${sessionScope.users.userType }</option>
     <option value="成人">成人</option>
     <option value="学生">学生</option>
     <option value="军人">军人</option>
    </select> </li>
    
    <li><label>E-mail</label><input name="u.userEmail" type="text" class="dfinput" maxlength="10" value="${sessionScope.users.userEmail }"/> </li>
    
    
    <li><label>&nbsp;</label><input type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    </div>
</body>
</html>
