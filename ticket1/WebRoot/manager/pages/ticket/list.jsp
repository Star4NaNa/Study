<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<title></title>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/inc/datePicker/WdatePicker.js">
</script>
<script type="text/javascript">
$(function (){
 $("#sel_all").click(function (){
   //$(this).attr("checked")
  if ($(this).prop("checked")){
     $("input[name='tickets.ticketId']").prop("checked",true);
  }else{
     $("input[name='tickets.ticketId']").prop("checked",false);
  }
 });
});
function addTicket(){
    var url = "${pageContext.request.contextPath}/ticket/toAdd";
	window.location.href=url;
}

function edit(){

	var size = $("input[name='tickets.ticketId']").filter(":checked").size();
	var ticketId = $("input[name='tickets.ticketId']").filter(":checked").val();

	if (size < 1){
	 alert("请选择要修改的车票信息");
	}else if (size > 1){
	 alert("只能修改一条车票信息");
	}else{
	 //$("#editForm").attr("action","${pageContext.request.contextPath}/ticket/toEdit?ticket.ticketId="+ticketId);
	 //$("#editForm").submit();
	 window.location.href="${pageContext.request.contextPath}/ticket/toEdit?ticket.ticketId="+ticketId;
	}
 
}
function del(){
  var size = $("input[name='tickets.ticketId']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要删除的票信息");
	}else{
	 if (confirm("确认要删除吗?")){
	 $("#editForm").attr("action","${pageContext.request.contextPath}/ticket/del");
	 $("#editForm").submit();
	 }
	}
}
function dbClickTr(value){
window.location.href = "${pageContext.request.contextPath}/ticket/view?ticket.ticketId="+value;
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/ticket/list");
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

<%@include file="/manager/pages/inc/top.jsp"%>

<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp" %>

<!--right-->
<div class="rightbar">
  
  <div class="title"><span>车票信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">
        <li style="cursor: pointer;" onclick="addTicket();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        <li style="cursor: pointer;" onclick="exportCheckedItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出勾选项目</li>
        </ul>
   </div>
   <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:780px;">
      <tr>
          <td  align="right">车次：</td>
          <td><input style="height: 26px;width:90px;line-height: 26px;" name="ticket.classesType" type="text" value="${ticket.classesType }" maxlength="50" class="dfinput" /></td>
           <td align="right">发车时间：</td>
           <td><input style="height: 26px;width:100px;line-height:26px;" name="ticket.begintime" type="text" value="${ticket.begintime}" maxlength="50"  onfocus="WdatePicker({lang:'zh-cn',dateFmt:'HH :mm:ss'})" class="dfinput" /></td>
           <td>---</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="ticket.endtime" type="text" value="${ticket.endtime}" maxlength="50"  onfocus="WdatePicker({lang:'zh-cn',dateFmt:'HH :mm:ss'})" class="dfinput" /></td>
          <td  align="right">始发站：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="ticket.startStation" type="text" value="${ticket.startStation}" maxlength="25" class="dfinput" /></td>
          <td  align="right">终点站：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="ticket.endStation" type="text" value="${ticket.endStation}" maxlength="5" class="dfinput" /></td>
          
      </tr>
    </table>
    </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0">
    	<thead>
    	<tr>
        <th><input class="sel_all" type="checkbox" id="sel_all"/></th>
       <!--  <th>id</th>   -->
        <th>车次</th>
        <th>出发时间</th>
        <th>始发站</th>
        <th>终点站</th>
        <th>票类型</th>
        <th>票价</th>
       
        </tr>
        </thead>
        <tbody>
        
        <c:forEach var="t" items="${tickets}" varStatus="vst">
        <tr ondblclick="dbClickTr(${t.ticketId});">
        <td><input class="keyid" name="tickets.ticketId" value="${t.ticketId}" type="checkbox"/></td>
       <!-- <td>${t.ticketId}</td> --> 
        <td>${t.classesType}</td>
        <td>${t.startTime}</td>
        <td>${t.startStation}</td>
        <td>${t.endStation}</td>
        <!-- 票类型 -->
        <td>${t.ttypes}</td>
        <td>${t.ticketPrice}</td>
        <!--  
          <td>
           <input type="hidden" id="ticket.ticketId" name="ticket.ticketId" value="t.ticketId"/>
          </td>
        -->  
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