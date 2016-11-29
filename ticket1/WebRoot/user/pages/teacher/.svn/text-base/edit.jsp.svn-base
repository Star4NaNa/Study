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
    <li><a href="#">教师管理</a></li>
    <li><a href="#">编辑</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>教师信息</span></div>
    <form id="teacherform" action="${pageContext.request.contextPath}/teacher/save" method="post">
    <input name="teacherId" type="hidden" value="${teacher.teacherId}" />
    <ul class="forminfo">
    <li><label>姓名</label><input id="teacherName" name="teacherName" type="text" class="dfinput" maxlength="10" value=""/> <i style="color: red;">*</i><i style="color: red;display: none;" id="teacherNameTip">此项必填项</i>
    <li><label>编号</label><input name="teacherNo" type="text" class="dfinput" maxlength="10" value="${teacher.teacherNo}"/> <i style="color: red;">*</i><i style="color: red;display: none;" id="teacherNoTip">此项必填项</i>
    <li><label>性别</label><input name="teacherSex" type="radio" value="男" />男&nbsp;&nbsp;&nbsp;&nbsp;<input name="teacherSex" type="radio" value="女" ${teacher.teacherSex eq '女'?'checked=checked':''}/>女 <i style="color: red;" id="teacherSexTip">请选择性别</i></li>
    <li><label>年龄</label><input name="teacherAge" type="text" class="dfinput" value="${teacher.teacherAge}" maxlength="3"/><i style="color: red;">*</i><i style="color: red;display: none;" id="teacherAgeTip">3个以内数字</i></li>
    <li><label>备注</label><textarea name="teacherText" cols="" rows="" class="textinput">${teacher.teacherText}</textarea><i style="color: red;display: none;" id="teacherTextTip">250个以内字符</i></li>
    <li><label>爱好</label>
    <select id="love" class="dfinput">
     <option value=""></option>
     <option value="1">足球</option>
     <option value="2">蓝球</option>
    </select>
    </li>
    <li><label>&nbsp;</label><input type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    </div>
</body>
</html>
