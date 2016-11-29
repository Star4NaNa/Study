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

<%@include file="/manager/pages/inc/top.jsp"%>
<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp"%>

<!--right-->
<div class="rightbar" style="overflow-x: hidden;">
    
    <div class="title"><span>添加车票类型状态：</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/ticketType/addEdit" method="post">
     <table class="tbb" style="margin-top:10px;">
    <tr><td class="title" colspan="2" style="height:10px;"></td></tr>
      
   
      <tr>
          <td  width="130px" align="left">票类类型：</td>
          <td><input name="ticketType.typeName" type="text" value="" maxlength="25" class="dfinput"/></td>
               
      <tr>
            <td align="left" width="130px">是否可售：</td>
          <td width="220px;">
          <select  name="ticketType.typeStatus" class="dfinput" id="area">
	          <option value="">请选择：</option>
	         
	           <option value="1">是</option>
	           <option value="0">否</option>
	      
	       </select>
          </td>
          <td  width="180px" align="right"></td>
          <td width="220px;">
          </td>
      </tr>
   
      <tr>
          <td align="right" >&nbsp;</td>
          <td  colspan="3"  align="left"><input type="submit" class="btn" value="保存"/> <input name="" type="button" class="btn" value="返回" onclick="cancel();"/></td>
      </tr>
    </table>
    </form>
  
</div>
<!--right-->
</div>
 <div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree" class="ztree" style="margin-top:0; width:160px;height:300px;"></ul>
 </div>
 <div id="menuContent_area" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree_area" class="ztree" style="margin-top:0; width:160px;height:300px;"></ul>
 </div>
  <div id="menuContent_pitem" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree_pitem" class="ztree" style="margin-top:0; width:250px;height:300px;"></ul>
 </div>
 <%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>

