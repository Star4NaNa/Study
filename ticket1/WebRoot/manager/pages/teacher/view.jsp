<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=title%></title>
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function cancel(){
	window.history.back();
}
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/manager/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp" %>
<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp" %>

<!--right-->
<div class="rightbar" style="overflow-x:hidden;">
    
    <div class="title"><span>教师信息</span></div>
    <table class="tb1" cellpadding="0" cellspacing="0">
      <tr>
          <td width="120px" align="left">教师姓名：</td>
          <td  width="150px">${teacher.teacherName}</td>
          <td width="180px"  align="right">教师编号：</td>
          <td  width="240px">${teacher.teacherNo}</td>
      </tr>
      <tr>
          <td width="120px" align="left">教师年龄：</td>
          <td  width="150px">${teacher.teacherAge}</td>
          <td width="180px"  align="right">教师姓别：</td>
          <td  width="240px">${teacher.teacherSex}</td>
      </tr>
       <tr>
          <td width="120px" align="left">所属省份：</td>
          <td  width="150px">${teacher.proAreaName}</td>
          <td width="180px"  align="right">所属市：</td>
          <td  width="240px">${teacher.cityAreaName}</td>
      </tr>
       <tr>
          <td width="120px" align="left">所属区/县：</td>
          <td  width="150px">${teacher.areaName}</td>
          <td width="180px"  align="right"></td>
          <td  width="240px"></td>
      </tr>
    </table>
    <input  style="margin:10px 0px 0px 80px;"name="" type="button" class="btn" value="返回" onclick="cancel();"/>
</div>
<!--right-->
</div>
<%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>

