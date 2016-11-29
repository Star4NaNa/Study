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
     $("input[name='ticketTypes.typeId']").prop("checked",true);
  }else{
     $("input[name='ticketTypes.typeId']").prop("checked",false);
  }
 });
});
function edit(f){
    var url = "${pageContext.request.contextPath}/manager/pages/ticketType/edit.jsp";
	window.location.href=url;
}
function del(){
  var size = $("input[name='ticketTypes.typeId']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要删除的教师信息");
	}else{
	 if (confirm("确认要删除吗?")){
	 $("#editForm").attr("action","${pageContext.request.contextPath}/ticketType/del");
	 $("#editForm").submit();
	 }
	}
}

function dbClickTr(value){
//window.location.href = "${pageContext.request.contextPath}/manager/pages/item/view.jsp";
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/ticketType/list");
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
  
  <div class="title"><span>车票类型信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">  
    	<ul class="toolbar">
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
            <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        <li style="cursor: pointer;" onclick="exportCheckedItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出勾选项目</li>
        </ul>
    </div>
     <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:200px;">
      <tr>
         
          <td align="left">是否可售：</td>
          <td>
	          <select name="ticketType.typeStatus" class="select_search">
	          <option value="" >所有</option>
	          <option value="1" ${ticketType.typeStatus == 1 ? "selected":""}>是</option>
	          <option value="0" ${ticketType.typeStatus == 0 ? "selected":""}>否</option>
	          
	          </select>
          </td>
         
      </tr>
    </table>
  </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0">
    	<thead>
    	<tr>
        <th><input class="sel_all" type="checkbox" id="sel_all"/></th>
        <th>车票编号</th>
        <th>车票类型</th>
        <th>是否可售</th>
        </tr>
        </thead>
        <tbody>
        
        <c:forEach var="t" items="${ticketTypes}" varStatus="vst">
        <tr ondblclick="dbClickTr();">
        <td><input class="keyid" name="ticketTypes.typeId" value="${t.typeId}" type="checkbox"/></td>
           <td>${t.typeId}</td>
           <td>${t.typeName}</td>
           <td>${t.typeStatus==1 ?'是':'否'}</td>
        </tr> 
	    </c:forEach>
        </tbody>
    </table>
    </form>

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