<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--right-->
<div class="right">
<%-- 
  	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">审计管理</a></li>
    <li><a href="#">信息管理</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>--%>
    
    <div class="title"><span>常用功能</span></div>
   
    <div class="toolsli">
    <ul class="toollist">
    
    <li><a href="${pageContext.request.contextPath}/audits/list"><img src="${pageContext.request.contextPath}/images/i01.png" /></a><h2>审计记录</h2></li>
    <li><a href="${pageContext.request.contextPath}/item/list"><img src="${pageContext.request.contextPath}/images/i02.png" /></a><h2>项目信息</h2></li>
    <li><a href="${pageContext.request.contextPath}/area/list"><img src="${pageContext.request.contextPath}/images/i03.png" /></a><h2>项目区域</h2></li>
    <li><a href="${pageContext.request.contextPath}/type/list"><img src="${pageContext.request.contextPath}/images/i04.png" /></a><h2>项目分类</h2></li>
    </ul>
   
    </div>
    
    <c:if test="${f:hasSystem(session[user_online].user_permission)}">
    <div class="title"><span>系统设置</span></div>
    <div class="toolsli">
    <ul class="toollist">
    <li><a href="${pageContext.request.contextPath}/dept/list"><img src="${pageContext.request.contextPath}/images/i05.png" /></a><h2>部门设置</h2></li>
    <li><a href="${pageContext.request.contextPath}/user/list"><img src="${pageContext.request.contextPath}/images/i06.png" /></a><h2>员工管理</h2></li>
    <li><a href="${pageContext.request.contextPath}/user/repwd"><img src="${pageContext.request.contextPath}/images/i07.png" /></a><h2>修改密码</h2></li>    
    </ul>
    </div>
    </c:if>
 </div>
<!--right-->
</body>
</html>


