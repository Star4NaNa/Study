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
    
    <div class="title"><span>区域信息</span></div>
    <table class="tb1" cellpadding="0" cellspacing="0">
      
      <tr>
          <td width="120px" align="left">区域编号：</td>
          <td  width="150px">${area.areaId}</td>
          <td width="180px"  align="right">区域编码：</td>
          <td  width="240px">${area.areaCode}</td>
      </tr>
      
      <tr>
          <td align="left">父级区域：</td>
          <td>${area.pAreaName}</td>
          <td align="right">区域名称：</td>
          <td>${area.areaName}</td>
      </tr>

      <tr>
          <td align="left">是否被删除：</td>
          <td>${area.areaDel == 0 ? "否" : "是"}</td>
          <td align="right">区域等级：</td>
          <td>${area.areaLevel == 1 ? "省" : area.areaLevel ==2 ? "市" : "区/县"}</td>
      </tr>
      <tr>
          <td align="left">区域状态：</td>
          <td>${area.areaStatus == 0 ? "禁用" : "可用"}</td>
          <td align="right">备注：</td>
          <td>${area.areaRemark}</td>
      </tr>
   </table>
    <input  style="margin:10px 0px 0px 80px;"name="" type="button" class="btn" value="返回" onclick="cancel();"/>
</div>
<!--right-->
</div>
<%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>