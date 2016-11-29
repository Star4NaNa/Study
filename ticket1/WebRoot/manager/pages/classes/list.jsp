<%@ page pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<title></title>
<script type="text/javascript">
$(function (){
 $("#sel_all").click(function (){
   //$(this).attr("checked")
  if ($(this).prop("checked")){
     $("input[name='class1.classesId']").prop("checked",true);
  }else{
     $("input[name='class1.classesId']").prop("checked",false);
  }
 });
});
function del(){
    var size = $("input[name='class1.classesId']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要删除的班次信息");
	}else{
	 if (confirm("确认要删除吗?")){
	 $("#editForm").attr("action","${pageContext.request.contextPath}/classes/del");
	 $("#editForm").submit();
	 }
	}
}
function add(f){
    var url = "${pageContext.request.contextPath}/classes/toAdd";
	window.location.href=url;
}
function edit(f){
    var sizes=$("input[name='class1.classesId']").filter(":checked").size();
    var classessId = $("input[name='class1.classesId']").filter(":checked").val();
    if(sizes<1){
    	alert("请选择要修改的班次信息");
    }else if(sizes>1){
    	alert("每次只能修改一条信息");
    }
    else{
    	var url = "${pageContext.request.contextPath}/classes/update?class1.classesId="+classessId;
		window.location.href=url;
	}
}

function dbClickTr(value){
window.location.href = "${pageContext.request.contextPath}/classes/view?class1.classesId="+value;
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/classes/list");
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
  
  <div class="title"><span>班次信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">
        <li style="cursor: pointer;" onclick="add();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
       
        <li style="cursor: pointer;" onclick="edit(1);"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        <li style="cursor: pointer;" onclick="exportCheckedItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出勾选项目</li>
        <li style="cursor: pointer;" onclick="exportItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出查询结果</li>
        </ul>
    </div>
    <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:750px;">
      <tr>
          <td  align="right">班次编号：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="class1.classesCode" type="text" value="${class1.classesCode}" maxlength="50" class="dfinput" /></td>
          <td align="right">选择时间：</td>
           <td><input style="height: 26px;width:100px;line-height: 26px;" name="class1.classesStarttime" type="text" value="${class1.classesStarttime}" maxlength="50"  onfocus="WdatePicker({lang:'zh-cn',dateFmt:'HH :mm:ss'})" class="dfinput" /></td>
          <td>--</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="class1.classesEndtime" type="text" value="${class1.classesEndtime}" maxlength="50"  onfocus="WdatePicker({lang:'zh-cn',dateFmt:'HH :mm:ss'})" class="dfinput" /></td>
          <td  align="right">开始站：</td>
          <td>
          <input name="class1.classesStartstationidName" id="typeSel" type="text" value="${class1.classesStartstationidName}"   style="height: 26px;width:100px;line-height: 26px;" class="dfinput"/>
          </td>
          <td  align="right">结束站：</td>
          <td>
          <input name="class1.classesEndstationidName" id="typeSel_area" type="text" value="${class1.classesEndstationidName}"  style="height:26px;width:100px;line-height: 26px;" class="dfinput"/>
		 
          </td>
          
      </tr>
    </table>
    </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0">
    	<thead>
    	<tr>
        <th><input class="sel_all" type="checkbox" id="sel_all"/></th>
        <th>班次</th>
        
        <th>开始站</th>
         <th>结束站</th>
        <th>开始时间 </th>
         <th>结束时间 </th>
         <th>用时 </th>
        <th>状态</th>
         <th>途径车站</th>
        
        <th>司机</th>
        <th>座位数</th>
        <th>车类型</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="classess" items="${classes}" varStatus="vst">
        <tr ondblclick="dbClickTr(${classess.classesId });">
        <td><input class="keyid" name="class1.classesId" value="${classess.classesId}" type="checkbox"/></td>
        <td>${classess.classesCode}</td>
        <td>${classess.classesStartstationidName}</td>
        <td>${classess.classesEndstationidName}</td>
        <td>${classess.classesStarttime}</td>
        <td>${classess.classesEndtime}</td>
        <td>${classess.classesTime}</td>
        <td>${classess.classesStatusName}</td>
        <td>${classess.classesGoingby}</td>
        <td>${classess.classesDriverIdName}</td>
        <td>${classess.classesSeatNumName}</td>
        <td>${classess.classesCarTypeName}</td>
        
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