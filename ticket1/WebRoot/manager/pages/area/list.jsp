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
     $("input[name='area.areaId']").prop("checked",true);
  }else{
     $("input[name='area.areaId']").prop("checked",false);
  }
 });
});

function add(){
    var url = "${pageContext.request.contextPath}/area/toinsert";
	window.location.href=url;
}
function edit(){
    var size = $("input[name='area.areaId']").filter(":checked").size();
	var  areaId = $("input[name='area.areaId']").filter(":checked").val();
	if (size < 1){
	 alert("请选择要修改的区域信息");
	}else if (size > 1){
	 alert("只能修改一条区域信息");
	}else{
	 var url = "${pageContext.request.contextPath}/area/toEdit?area.areaId="+areaId;
	 window.location.href=url;
	}
 
}
function del(){
 	var size = $("input[name='area.areaId']").filter(":checked").size();
 	var areaId = $("input[name='area.areaId']").filter(":checked").val();
	if (size < 1){
	 alert("请选择要删除的区域信息");
	}else{
	 if (confirm("确认要删除吗?")){
	 //$("#editForm").attr("action","${pageContext.request.contextPath}/teacher/del?busStation.stationId="+stationId);
	// $("#editForm").submit();
	 var url="${pageContext.request.contextPath}/area/del?area.areaId="+areaId;
	  window.location.href =url;
	
	 }
	}

    window.location.href ="${pageContext.request.contextPath}/busStation/del?busStation.stationId="+value;
    
}

function dbClickTr(value){
window.location.href = "${pageContext.request.contextPath}/area/view?area.areaId="+value;
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/area/list");
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
  
  <div class="title"><span>区域信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">
        <li style="cursor: pointer;" onclick="add();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        <li style="cursor: pointer;" onclick="exportCheckedItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出勾选项目</li>
        <li style="cursor: pointer;" onclick="exportItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出查询结果</li>
        </ul>
    </div>
    <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:600px;">
      <tr>
          <td  align="right">区域名称：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="area.areaName" type="text" value="${area.areaName}" maxlength="50" class="dfinput" /></td>
          <td  align="right">区域编号：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="area.areaCode" type="text" value="${area.areaCode}" maxlength="25" class="dfinput"/></td>
          
      </tr>
    </table>
    </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0" style="width:1000px;">
    	<thead>
    	<tr>
        <th><input class="sel_all" type="checkbox" id="sel_all"/></th> 
        <th width="130">区域名称</th>
        <th width="130">区域编码</th>
        <th width="130">所属省</th>
        <th width="130">所属市</th>
        <th width="130">区域等级</th>
        <th width="130">区域状态</th>
        <th width="130">区域备注</th>
        <th width="130">是否被删除</th>
        </tr>
        </thead>
        <tbody>
        
     
      
        <c:forEach var="aa" items="${areas }">
          <%--存储省id --%>
      <c:set var="proname" value=""></c:set> 
      <%--存储市id --%>
      <c:set var="cname" value=""></c:set>
         <c:if test="${aa.areaLevel == 2}">
	       <c:set var="proname" value="${aa.pAreaName}"/>
	      </c:if>
	      <c:if test="${aa.areaLevel == 3}">
	       <c:set var="proname" value="${aa.ppAreaName}"/>
	       <c:set var="cname" value="${aa.pAreaName}"/>
	     </c:if>
        <tr ondblclick="dbClickTr(${aa.areaId});">
        <td><input class="keyid" name="area.areaId" value="${aa.areaId}" type="checkbox"/></td>
        <td width="130">${aa.areaName }</td>
        <td width="130">${aa.areaCode }</td>    
        <td width="130">${proname}</td>
        <td width="130">${cname}</td>
        <td width="130">${aa.areaLevel == 1 ? "省" : aa.areaLevel == 2 ? "市" : "区/县"}</td>
        <td width="130">${aa.areaStatus == 0 ? "<font color=red>禁用</font>" : "可用"}</td>
        <td width="130">${aa.areaRemark }</td>
        <td width="130">${aa.areaDel ==0 ? "否" : "是"}</td>
        
        
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