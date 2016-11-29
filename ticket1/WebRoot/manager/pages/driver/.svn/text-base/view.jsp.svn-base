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
    
    <div class="title"><span>项目信息</span></div>
    <table class="tb1" cellpadding="0" cellspacing="0">
      <tr>
          <td width="120px" align="left">年度：</td>
          <td  width="150px">${data_.item_year}</td>
          <td width="180px"  align="right">项目名称：</td>
          <td  width="240px">${data_.item_name}</td>
      </tr>
      <tr>
          <td align="left">父项目：</td>
          <td>${data_.type_name}</td>
          <td align="right">所属分类：</td>
          <td>${data_.type_name}</td>
      </tr>
      <tr>
          <td align="left">所属区域：</td>
          <td>${data_.area_name}</td>
          <td align="right">建设性质：</td>
          <td>${data_.build_nature}</td>
      </tr>
      <tr>
          <td align="left">建设起止年度：</td>
          <td>${data_.item_startYear}-${data_.item_endYear}</td>
          <td align="right"></td>
          <td></td>
      </tr>
      <tr>
          <td align="left">施工年限：</td>
          <td>${data_.item_buildYear}</td>
          <td align="right">投资总额(万元)：</td>
          <td>${data_.item_amont}</td>
      </tr>
      <tr>
          <td align="left">本年度投资额(万元)：</td>
          <td>${data_.item_tyear_amont}</td>
          <td align="right">至上年累计完成投资额(万元)：</td>
          <td>${data_.item_byear_amont}</td>
      </tr>
      <c:if test="${fn:length(data_.selected_item_sources) > 0}">
      <c:forEach var="selected_item_source" items="${data_.selected_item_sources}" varStatus="vst">
      <tr>
          <td align="left">投资来源：</td>
          <td >${selected_item_source.invest_source_name}</td>
          <td  align="right">投资额(万元)：</td>
          <td >${selected_item_source.item_r_amont}</td>
      </tr>
      </c:forEach>
      </c:if>
      <tr>
          <td align="left">领导组负责人：</td>
          <td>${data_.item_leader}</td>
          <td align="right">电话：</td>
          <td>${data_.item_leader_phone}</td>
      </tr>
      <tr>
          <td align="left">项目负责人：</td>
          <td>${data_.item_master}</td>
          <td align="right">电话：</td>
          <td>${data_.item_master_phone}</td>
      </tr>
      <tr>
          <td align="left">项目法人：</td>
          <td>${data_.item_legal_person}</td>
          <td align="right"></td>
          <td></td>
      </tr>
      <tr>
          <td align="left">建设主体单位：</td>
          <td>${data_.item_department}</td>
          <td align="right">建设地点：</td>
          <td>${data_.bulid_place}</td>
      </tr>
      <tr>
          <td align="left">建设规模：</td>
          <td  colspan="3">${data_.bulid_scope}</td>
      </tr>
     <tr>
          <td align="left">招投标范围：</td>
          <td  colspan="3">${data_.item_invite_scope}</td>
      </tr>
      <tr>
          <td align="left">建设内容：</td>
          <td  colspan="3">${data_.item_content}</td>
      </tr>
      <tr>
          <td align="left">备注：</td>
          <td  colspan="3">${data_.item_remark}</td>
      </tr>
    </table>
    <input  style="margin:10px 0px 0px 80px;"name="" type="button" class="btn" value="返回" onclick="cancel();"/>
</div>
<!--right-->
</div>
<%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>

