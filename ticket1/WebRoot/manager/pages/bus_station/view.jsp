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
    
    <div class="title"><span>汽车站信息</span></div>
    <table class="tb1" cellpadding="0" cellspacing="0">
      <tr>
          
          <td width="180px"  align="left">汽车站名称：</td>
          <td  width="240px">${busStation.stationName}
          <input name="busStation.stationId" type="hidden" value="${busStation.stationId}"/>
          </td>
          <td width="120px" align="left"></td>
          <td  width="150px"></td>
      </tr>
      <tr>
          <td align="left">汽车站地址：</td>
          <td>${busStation.stationAddr}</td>
          <td align="right">汽车站电话：</td>
          <td>${busStation.stationTel}</td>
      </tr>
      <tr>
          <td align="left">所属区域：</td>
          <td>${busStation.proAreaName }${busStation.cityAreaName }${busStation.areaName }</td>
          <td align="right">汽车站状态：</td>
          <td>${busStation.stationStatus == 0 ? "停用":"启用"}</td>
      </tr>
      <tr>
          <td align="left">汽车站规模：</td>
          <td>${busStation.stationScale}</td>
          <td align="right">占地面积：&nbsp;&nbsp;</td>
          <td>${busStation.stationArea}</td>
      </tr>
      <tr>
          <td align="left">汽车站备注：</td>
          <td  colspan="3">${busStation.stationRemark}</td>          
      </tr>
      <tr>
          <td align="left">法人：</td>
          <td>${busStation.stationLegal}</td>
          <td align="right">法人电话：</td>
          <td>${busStation.stationLegaltel}</td>
      </tr>    
      <tr>
          <td align="left">法人身份证号：</td>
          
          <td  colspan="3">${busStation.stationLegalid}</td>     
          
      </tr>
     
      <tr>
      	  <td  align="left">员工人数：</td>
          <td >${busStation.stationStaffsum}</td>
          <td align="right">所属公司：</td>
          <td>${busStation.stationCompany}</td>
          
      </tr>
      
          
    </table>
    <input  style="margin:10px 0px 0px 80px;"name="" type="button" class="btn" value="返回" onclick="cancel();"/>
</div>
<!--right-->
</div>
<%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>

