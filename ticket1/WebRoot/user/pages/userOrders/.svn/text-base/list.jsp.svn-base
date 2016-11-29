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
     $("input[name='orders.orderNo']").prop("checked",true);
  }else{
     $("input[name='orders.orderNo']").prop("checked",false);
  }
 });
});
function addTicket(){
    var url = "${pageContext.request.contextPath}/ticket/toAdd";
	window.location.href=url;
}
function del(){
  var size = $("input[name='orders.orderNo']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要删除的票信息");
	}else{
	 if (confirm("确认要删除吗?")){
	 $("#editForm").attr("action","${pageContext.request.contextPath}/userOrders/del");
	 $("#editForm").submit();
	 }
	}
}
function dbClickTr(value){
window.location.href = "${pageContext.request.contextPath}/manager/pages/item/view.jsp";
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/userOrders/list");
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

<div >


<!--right-->
<div class="rightbar">
  
  <div class="title"><span>区域信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">

        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>

    </div>
      <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:780px;">
      <tr>
          <td  align="right">车次：</td>
          <td><input style="height: 26px;width:90px;line-height: 26px;" name="order.classesCode" type="text" value="${order.classesCode }" maxlength="50" class="dfinput" /></td>
           <td align="right">发车时间：</td>
           <td><input style="height: 26px;width:100px;line-height:26px;" name="order.orderStartTime" type="text" value="${order.orderStartTime}" maxlength="50"  onfocus="WdatePicker({lang:'zh-cn',dateFmt:'HH :mm:ss'})" class="dfinput" /></td>
           <td>---</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="order.orderEndTime" type="text" value="${order.orderEndTime}" maxlength="50"  onfocus="WdatePicker({lang:'zh-cn',dateFmt:'HH :mm:ss'})" class="dfinput" /></td>
          <td  align="right">始发站：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="order.startStation" type="text" value="${order.startStation}" maxlength="25" class="dfinput" /></td>
          <td  align="right">终点站：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="order.endStation" type="text" value="${order.endStation}" maxlength="5" class="dfinput" /></td>
          
      </tr>
    </table>
    </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0" style="width:1000px;">
    	<thead>
    	<tr>
       <th><input class="sel_all" type="checkbox" id="sel_all"/></th>
        <th>订单号</th>
        <th>姓名</th>
        <th>车次</th>
        <th>开车时间</th>
        <th>始发站</th>
        <th>终点站</th>
        <th>订单时间</th>
        <th>票数</th>
        <th>票种类</th>
        <th>价格</th>
        <th>订单状态</th>
        </tr>
        </thead>
        <tbody>
        
       
        <c:forEach var="order" items="${orders }">
        <tr ondblclick="dbClickTr();">
        <td><input class="keyid" name="orders.orderNo" value="${order.orderNo}" type="checkbox"/></td>
        <td>${order.orderNo }</td>
        <td>${order.userRname }</td>
        <td>${order.classesCode }</td>
        <td>${order.classesStarttime }</td>
        <td>${order.startStation }</td>
        <td>${order.endStation }</td>
        <td>${order.orderTime }</td>
        <td>${order.totalAmount }</td>
        <td>${order.typeName }</td>
        <td>${order.ticketPrice }</td>
        <td>${order.orderState }</td>
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