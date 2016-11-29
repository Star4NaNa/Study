<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统</title>
<link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet" type="text/css" />
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">管理信息</a></li>
    <li><a href="#">教师管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li  onclick="toAdd();"><span><img src="${pageContext.request.contextPath}/user/images/t01.png" /></span>添加</li>
        <li  onclick="toUpdate();"><span><img src="${pageContext.request.contextPath}/user/images/t02.png" /></span>修改</li>
        <li  onclick="del();"><span><img src="${pageContext.request.contextPath}/user/images/t03.png" /></span>删除</li>
        </ul>
    </div>
    
    <form action="${pageContext.request.contextPath}/servlet/TeacherServlet?method=delete" method="post">
    <table class="tablelist">
        <!-- 操作按钮行 -->
    	<thead>
    	<tr>
        <th><input name="selectAll" type="checkbox" value="0" onclick="selAll();"/></th>
        <th>编号<i class="sort"><img src="${pageContext.request.contextPath}/user/images/px.gif" /></i></th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>说明</th>
        <th>操作</th>
        </tr>
        </thead>
        
        <!-- 数据行 -->
        <tbody>
        <c:forEach begin="1" end="10">
        <tr>
        <td><input name="teacherId" type="checkbox" value="${teacher.teacherId}" /></td>
        <td>1</td>
        <td>2</td>
        <td>3</td>
        <td>4</td>
        <td>${teacher.teacherText}</td>
        <td><a href="${pageContext.request.contextPath}/servlet/TeacherServlet?method=get&teacherId=${teacher.teacherId}" class="tablelink">查看</a></td>
        </tr> 
        </c:forEach>
        </tbody>
    </table>
    
    <%@include file="/manager/pages/inc/page_turn/standard.jsp" %>
    
    <div class="tip" id="tipask">
    	<div class="tiptop"><span>询问信息</span><a onclick="close_ask();"></a></div>
        
      <div class="tipinfo">
        <span><img src="${pageContext.request.contextPath}/user/images/ticon.png" /></span>
        <div class="tipright">
        <p id="tipask_con"></p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input type="submit" class="sure" value="确定" />&nbsp;
        <input type="button" class="cancel" value="取消" onclick="close_ask();" />
        </div>
    
    </div>
    
    <div class="tip" id="tipwarn">
    	<div class="tiptop"><span>提示信息</span><a onclick="close_warn();"></a></div>
      <div class="tipinfo">
        <span><img src="${pageContext.request.contextPath}/user/images/ticon.png" /></span>
        <div class="tipright">
        <p>警告</p>
        <cite  id="tipwarn_con"></cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input type="button"  class="sure" value="确定" style="margin-left:80px;"  onclick="close_warn();"/>
        </div>
    </div>
    </form>
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
