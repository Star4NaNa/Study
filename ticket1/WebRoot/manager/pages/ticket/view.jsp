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
 <table class="tbb" style="margin-top:40px;">
      <tr>
      
      <td align="left" width="60px;">所属省份：</td>
      <td>
            <select  class="dfinput" id="province" >
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" ${area.areaId ==  ticket.priId ? "selected":""} >${area.areaName}</option>
	          </c:forEach>
	          </select>
	         
	          </td>
	          
	          <td align="right" width="60px;">所属市：</td>
      <td>
           <select  class="dfinput" id="city" name="route.routeStartareaid" >
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	           <option value="${city.areaId}" ${city.areaId ==  ticket.cityId ? "selected":""} >${city.areaName}</option>
	          </c:forEach>
	          </select>
	         
	          </td>
	          
	      
    
     
	      
      </tr>
      <tr>
      
       <td align="left" width="60px;">车次：</td>
      <td>
           <select name="ticket.classId" class="dfinput" id="classes">
	          <option value="">请选择车次</option>
	          <c:forEach var="classe_obj" items="${classess}">
	          <option value="${classe_obj.classesId}" ${ticket.classId == classe_obj.classesId ? "selected":""}>${classe_obj.classesCode}</option>
	         
	          </c:forEach>
	          </select>
	         
	          </td>
	          
              <td align="right" width="80px;">车票类型：</td>
      <td>
           <select name="ticket.typeId" class="dfinput" id="ticket.typeId">
	          <option value="">请选择类型</option>
	          <c:forEach var="tickettype" items="${ticketTypes}">
	         <option value="${tickettype.typeId}" ${ticket.typeId == tickettype.typeId ? "selected":""}>${tickettype.typeName}</option>
	          </c:forEach>
	          </select>
	          </td>
      </tr>
     
      <tr>
      <td>票价：</td>
        <td align="center" width="60px;">
         <input name="ticket.ticketPrice" id="typeSel" type="text" value="${ticket.ticketPrice}"  class="dfinput"/>
          <input name="ticket.ticketId" type="hidden" value="${ticket.ticketId}" />

         
		 
        
        </td>
      </tr>
     
 <tr>
          <td align="left" >&nbsp;</td>
          
  </tr>  
    </table>
    <input  style="margin:10px 0px 0px 80px;"name="" type="button" class="btn" value="返回" onclick="cancel();"/>
</div>
<!--right-->
</div>
<%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>

