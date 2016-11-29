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
     $("input[name='teachers.teacherId']").prop("checked",true);
  }else{
     $("input[name='teachers.teacherId']").prop("checked",false);
  }
 });
});
function add(f){
    var url = "${pageContext.request.contextPath}/teacher/toAdd";
	window.location.href=url;
}

function edit(){

	var size = $("input[name='teachers.teacherId']").filter(":checked").size();
	var teacherId = $("input[name='teachers.teacherId']").filter(":checked").val();
	if (size < 1){
	 alert("请选择要修改的教师信息");
	}else if (size > 1){
	 alert("只能修改一条教师信息");
	}else{
	 $("#editForm").attr("action","${pageContext.request.contextPath}/teacher/toEdit?teacher.teacherId="+teacherId);
	 $("#editForm").submit();
	}
 
}
function del(){
  var size = $("input[name='teachers.teacherId']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要删除的教师信息");
	}else{
	 if (confirm("确认要删除吗?")){
	 $("#editForm").attr("action","${pageContext.request.contextPath}/teacher/del");
	 $("#editForm").submit();
	 }
	}
}
function dbClickTr(value){ 
window.location.href = "${pageContext.request.contextPath}/teacher/view?teacher.teacherId="+value;
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/teacher/list");
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
  
  <div class="title"><span>教师信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">
        <li style="cursor: pointer;" onclick="add();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
                <%-- 
        <li style="cursor: pointer;" onclick="exportCheckedItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出勾选项目</li>
        <li style="cursor: pointer;" onclick="exportItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>导出查询结果</li>
        --%>
        
        </ul>
    </div>
    <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:600px;">
      <tr>
          <td  align="right">教师名称：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="teacher.teacherName" type="text" value="${teacher.teacherName}" maxlength="50" class="dfinput" /></td>
          <td  align="right">教师编号：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="teacher.teacherNo" type="text" value="${teacher.teacherNo}" maxlength="25" class="dfinput"/></td>
          <td  align="right">教师性别：</td>
          <td>
            <select  name="teacher.teacherSex" class="select_search">
	          <option value="">所有</option>
	          <option value="男"  ${teacher.teacherSex eq "男" ?"selected":""}>男</option>
	          <option value="女"  ${teacher.teacherSex eq "女" ?"selected":""}>女</option>
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
        <th>序号</th>
        <th>教师名称</th>
        <th>性别</th>
        <th>编号</th>
        <th>所属区/县</th>
        <th>所属市</th>
        <th>所属省</th>
        </tr>
        </thead>
        <tbody>
        
        <c:forEach var="teacher" items="${teachers}" varStatus="vst">
        <tr ondblclick="dbClickTr(${teacher.teacherId});">
        <td><input class="keyid" name="teachers.teacherId"  value="${teacher.teacherId}" type="checkbox"/></td>
        <td>${vst.count}</td>
        <td>${teacher.teacherName}</td>
        <td>${teacher.teacherSex}</td>
        <td>${teacher.teacherNo}</td>
        <td>${teacher.areaName}</td>
        <td>${teacher.cityAreaName}</td>
        <td>${teacher.proAreaName}</td>
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