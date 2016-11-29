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
    <li><a href="#">首页</a></li>
    <li><a href="#">用户管理</a></li>
    <li><a href="#">编辑</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>用户信息</span></div>
    <form id="teacherform" action="${pageContext.request.contextPath}/servlet/TeacherServlet?method=edit" method="post">
    <input name="teacherId" type="hidden" value="${teacher.teacherId}" />
    <ul class="forminfo">
      <li><label>用户名</label><input id="userName" name="userName" type="text" class="dfinput" maxlength="10" value=""/> <i style="color: red;">*</i><i style="color: red;display: none;" id="teacherNameTip">此项必填项</i>
    <li><label>旧密码</label><input name="userPwd" type="password" class="dfinput" maxlength="10" value="${teacher.teacherNo}"/> <i style="color: red;">*</i><i style="color: red;display: none;" id="teacherNoTip">此项必填项</i>
    <li><label>新密码</label><input name="userPwd" type="password" class="dfinput" maxlength="10" value="${teacher.teacherNo}"/> <i style="color: red;">*</i><i style="color: red;display: none;" id="teacherNoTip">此项必填项</i>
    <li><label>确认密码</label><input name="userPwd" type="password" class="dfinput" maxlength="10" value="${teacher.teacherNo}"/> <i style="color: red;">*</i><i style="color: red;display: none;" id="teacherNoTip"></i> 
    
    <li><label>真实户名</label><input id="userName" name="userName" type="text" class="dfinput" maxlength="10" value=""/> <i style="color: red;">*</i><i style="color: red;display: none;" id="teacherNameTip">此项必填项</i>
    <li><label>性别</label><input name="teacherSex" type="radio" value="男" />男&nbsp;&nbsp;&nbsp;&nbsp;<input name="teacherSex" type="radio" value="女" ${teacher.teacherSex eq '女'?'checked=checked':''}/>女 <i style="color: red;" id="teacherSexTip">请选择性别</i></li>
    <li><label>年龄</label><input name="userAge" type="text" class="dfinput" value="${teacher.teacherAge}" maxlength="3"/><i style="color: red;">*</i><i style="color: red;display: none;" id="teacherAgeTip">3个以内数字</i></li>
    <li><label>电话</label><input name="userAge" type="text" class="dfinput" value="${teacher.teacherAge}" maxlength="11"/><i style="color: red;">*</i><i style="color: red;display: none;" id="teacherAgeTip">3个以内数字</i></li>
  
    <li><label>证件号</label><select id="cardNum" class="dfinput" width="30">
     <option value="0">----请选择----</option>
     <option value="身份证">身份证</option>
     <option value="军人证">军人证</option>
     <option value="残疾人证">残疾人证</option>
     </select>
    <li><label>&nbsp;</label><input name="cardNum" type="text" class="dfinput" value="${teacher.teacherAge}" maxlength="11"/><i style="color: red;">*</i><i style="color: red;display: none;" id="teacherAgeTip">3个以内数字</i></li>
  

      <li><label>身份</label><input name="userType" type="radio" value="成人" />成人&nbsp;&nbsp;&nbsp;&nbsp;<input name="userType" type="radio" value="军人" ${teacher.teacherSex eq '军人'?'checked=checked':''}/>军人 &nbsp;&nbsp;&nbsp;&nbsp;<input name="userType" type="radio" value="残疾人" ${teacher.teacherSex eq '残疾人'?'checked=checked':''}/>残疾人&nbsp;&nbsp;&nbsp;&nbsp;<input name="userType" type="radio" value="学生" ${teacher.teacherSex eq '学生'?'checked=checked':''}/>学生<i style="color: red;" id="teacherSexTip">请选择身份</i></li>
    
     <li><label>邮箱</label><input id="userName" name="userName" type="text" class="dfinput" maxlength="10" value=""/> <i style="color: red;">*</i><i style="color: red;display: none;" id="teacherNameTip">此项必填项</i>
  
  
    
    <li><label>&nbsp;</label><input type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    </div>
</body>
</html>
