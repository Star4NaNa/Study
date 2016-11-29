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
<div class="title"><span>订单详情</span></div>
    <table class="tb1" cellpadding="0" cellspacing="0">
      <tr>
          <td width="120px" align="left">用户名：</td>
          <td  width="150px">${order.ordersUserName}</td>
          <td width="180px"  align="right">订单编号：</td>
          <td  width="240px">${order.orderNo}</td>
      </tr>
      <tr>
          <td width="120px" align="left">身份证号：</td>
          <td  width="150px">${order.orderProNum}</td>
          
          <td width="180px"  align="right">下单时间：</td>
          <td  width="240px"><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate value="${order.orderTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
          
      </tr>
       <tr>
          <td width="120px" align="left">联系电话：</td>
          <td  width="150px">${order.phone}</td>
          <td width="180px"  align="right">票价：</td>
          <td  width="240px">${order.orderPrice}</td>
      </tr>
       <tr>
          <td width="120px" align="left">班次编号：</td>
          <td  width="150px">${order.orderClassesCode}</td>
          <td width="180px"  align="right">订单状态：</td>
          <td  width="240px">${order.orderIsout}</td>
      </tr>

      <!--      <c:if test="${fn:length(data_.selected_item_sources) > 0}">
      <c:forEach var="selected_item_source" items="${data_.selected_item_sources}" varStatus="vst">
      <tr>
          <td align="left">发车时间：</td>
          <td >${selected_item_source.invest_source_name}</td>
          <td  align="right">到站时间：</td>
          <td >${selected_item_source.item_r_amont}</td>
      </tr>
      </c:forEach>
      </c:if>          -->
       <tr>
          <td width="120px" align="left">发车时间：</td>
          <td  width="150px">${order.orderStartTime}</td>
          <td width="180px"  align="right">到站时间：</td>
          <td  width="240px">${order.orderEndTime}</td>
      </tr>
       <tr>
          <td width="120px" align="left">始发站：</td>
          <td  width="150px">${order.orderstartStationName}</td>
          <td width="180px"  align="right">终点站：</td>
          <td  width="240px">${order.orderendStationName}</td>
      </tr>
      <tr>
          <td width="120px" align="left">汽车类型：</td>
          <td  width="150px">${order.orderCarType}</td>
          <td width="180px"  align="right">车牌号：</td>
          <td  width="240px">${order.orderCarPlateNum}</td>
      </tr>
      <tr>
          <td align="left">线路备注：</td>
          <td  colspan="3">${order.orderRouteRemark}</td>
      </tr>
     
      <tr>
          <td align="left">汽车站备注：</td>
          <td  colspan="3">${order.orderStationRemark}</td>
      </tr>

    </table>

    <input  style="margin:10px 0px 0px 80px;"name="" type="button" class="btn" value="返回" onclick="cancel();"/>
</div>
<!--right-->
</div>
<%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>

