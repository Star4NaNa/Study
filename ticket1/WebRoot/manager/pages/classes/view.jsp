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
    
    <div class="title"><span>班次信息</span></div>
    <table class="tb1" cellpadding="0" cellspacing="0">
      <tr>
          <td width="120px" align="left">班次ID：</td>
          <td  width="150px">${class1.classesId}</td>
          <td width="180px"  align="right">班次编号：</td>
          <td  width="240px">${class1.classesCode}</td>
      </tr>
      <tr>
          <td align="left">发车站：</td>
          <td>${class1.classesStartstationidName}</td>
          <td align="right">终点站：</td>
          <td>${class1.classesEndstationidName}</td>
      </tr>
      <tr>
          <td align="left">发车时间：</td>
          <td>${class1.classesStarttime}</td>
          <td align="right">到站时间：</td>
          <td>${class1.classesEndtime}</td>
      </tr>
      <tr>
          <td align="left">用时：</td>
          <td>${class1.classesTime}</td>
          <td align="right"></td>
          <td></td>
      </tr>
      <tr>
          <td align="left">途经车站：</td>
          <td colspan="3">${class1.classesGoingby}</td>
          
      </tr>
      <tr>
          <td align="left">所属线路：</td>
          <td>${class1.classesRouteId}</td>
          <td align="right">所属司机：</td>
          <td>${class1.classesDriverId}</td>
      </tr>
      <tr>
          <td align="left">车辆类型：</td>
          <td >${class1.classesCarType}</td>
          <td  align="right">座位数：</td>
          <td >${class1.classesSeatNum}</td>
      </tr>
     
    </table>
    <input  style="margin:10px 0px 0px 80px;"name="" type="button" class="btn" value="返回" onclick="cancel();"/>
</div>
<!--right-->
</div>
<%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>

