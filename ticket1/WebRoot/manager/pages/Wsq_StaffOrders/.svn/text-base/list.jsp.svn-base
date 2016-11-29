<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<title><%=title%></title>
<script type="text/javascript">
$(function (){
 $("#sel_all").click(function (){
   //$(this).attr("checked")
  if ($(this).prop("checked")){
     $("input[name='orders.orderId']").prop("checked",true);
  }else{
     $("input[name='orders.orderId']").prop("checked",false);
  }
 });
});

function edit(){

	var size = $("input[name='orders.orderId']").filter(":checked").size();

	var orderId = $("input[name='orders.orderId']").filter(":checked").val();
	
	if (size < 1){
	 alert("请选择要修改的订单信息");
	}else if (size > 1){
	 alert("只能修改一条订单信息");
	}else{
	 $("#editForm").attr("action","${pageContext.request.contextPath}/orders/toEdit?order.orderId="+orderId);
	 $("#editForm").submit();
	}
 
}
function del(){
  var size = $("input[name='torders.orderId']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要删除的订单信息");
	}else{
	 if (confirm("确认要删除吗?")){
	 $("#editForm").attr("action","${pageContext.request.contextPath}/orders/del");
	 $("#editForm").submit();
	 }
	}
}
function dbClickTr(value){   //双击事件
window.location.href = "${pageContext.request.contextPath}/orders/view?order.orderId="+value;
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/orders/list");
$("#searchForm").submit();
}
function exportItem(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/export/exportItem");
$("#searchForm").submit();
}
function exportCheckedItem(){
    var length = $(".keyid").filter(":checked").size();
	if (length < 1){
		alert("请至少选择一个条目！");
		return;
	}
	$("#editForm").attr("action","${pageContext.request.contextPath}/export/exportItem?param_.model=checked");
	$("#editForm").submit();
}

$(function(){
  if (${not empty errorMessage}){
  alert("${errorMessage.message}");
  }
});
//初始化树
eachNodes(${data_.types});
eachNodes_area(${data_.areas});
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp" %>

<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp" %>

<!--right-->
<div class="rightbar">
  
  <div class="title"><span>订单信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        <li style="cursor: pointer;" onclick="exportCheckedItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出勾选项目</li>
        <li style="cursor: pointer;" onclick="exportItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出查询结果</li>
        </ul>
    </div>
    <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:1000px;">
      <tr>
          <td align="right">用户名：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="order.ordersUserName" type="text" value="${order.ordersUserName}" maxlength="50" class="dfinput" /></td>
          <td  style="height: 26px;width:100px;line-height: 26px;" align="right">订单时间：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="order.orderTime" type="text"  maxlength="50" class="dfinput" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})"/></td>
          <td align="right">订单编号：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="order.orderNo" type="text" value="${order.orderNo}" maxlength="50" class="dfinput" /></td>

          <td  align="right">订单状态：</td>
          <td>
          <select  name="order.orderState" class="select_search">
          
	          <option value="">所有</option>
	          <option value="1"  ${order.orderState ==1 ?"selected":""}>完成</option>
	          <option value="0"  ${order.orderState ==0 ?"selected":""}>未完成</option>
	      
	          </select></td>
      </tr>
    </table>
    </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0" style="width:1000px;">
    	<thead>
    	<tr>
        <th><input class="sel_all" type="checkbox" id="sel_all"/></th>
        <th>用户名</th>
        <th>订单编号</th>
        <th>下单时间</th>
        <th>是否完成</th>
        
        </tr>
        </thead>
        <tbody>
        
        <c:forEach var="ord" items="${orders}" varStatus="vst">
        <tr ondblclick="dbClickTr(${ord.orderNo});">
        <td><input class="keyid" name="orders.orderId" value="${ord.orderNo}" type="checkbox"/></td>
        
        <td>${ord.ordersUserName}</td>
        <td>${ord.orderNo}</td>
        <td><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:formatDate value="${ord.orderTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
        </td>
        <td>${ord.orderState == 0 ?"<font color=red>未完成</font>":"完成"}</td>
 
        </tr> 
	    </c:forEach>
        </tbody>
    </table>
    </form>
    <%@include file="/manager/pages/inc/page_turn/list.jsp" %>
   </div>
<!--right-->
</div>

<div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree" class="ztree" style="margin-top:0; width:160px;height:500px;"></ul>
</div>
<div id="menuContent_area" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree_area" class="ztree" style="margin-top:0; width:160px;height:350px;"></ul>
 </div>
<%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>