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
    
    <div class="title"><span>员工信息</span></div>
    <table class="tb1" cellpadding="0" cellspacing="0">
      <tr>
          <td width="120px"  align="left">员工编号：</td>
          <td  width="150px">${employee.empId}</td>
          <td width="180px" align="right">员工姓名：</td>
          <td  width="240px">${employee.empName}</td>
      </tr>
      <tr>
          <td width="120px" align="left">员工年龄：</td>
          <td  width="150px">${employee.empAge}</td>
          <td width="180px"  align="right">员工籍贯：</td>
          <td  width="240px">${employee.empArea}</td>
      </tr>
       <tr>
          <td width="120px" align="left">员工性别：</td>
          <td  width="150px">${employee.empSex}</td>
          <td width="180px"  align="right">员工身份证号：</td>
          <td  width="240px">${employee.empCardno}</td>
      </tr>
       <tr>
          <td width="120px" align="left">员工账号：</td>
          <td  width="150px">${employee.empUsername}</td>
          <td width="180px"  align="right">员工密码：</td>
          <td  width="240px">${employee.empPassword}</td>
      </tr>
      <tr>
          <td width="120px" align="left">在职状态：</td>
          <td  width="150px">${employee.empStatus == 1?"在职":"离职"} </td>
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

