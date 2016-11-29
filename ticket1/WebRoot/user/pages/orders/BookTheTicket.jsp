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


//选择下拉框的选项时触发变化票价的事件
function changePrice(i){
    //alert("select"+i);
    //document.getElementById("select"+i).value 
    var price = $("#select"+i).val();
    //改变表格里面的信息
    document.getElementById("price"+i).innerHTML=price;
    //改变之前先获取应付金额信息
    var allPrice = $("#money").val();
    //改变应付金额里面的金额信息
    alert(allPrice+price);
    document.getElementById("money").innerHTML="￥"+price+allPrice;
}


//初始化树
eachNodes(${data_.types});
eachNodes_area(${data_.areas});
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">
<div>
<div class="rightbar" style="overflow-x:hidden;float: left;">
  <div class="rightbar" style="overflow-x:hidden;">
     <br>
    <div class="title"><span>车次信息</span></div>
     <br> <br>
    <table class="tb1" cellpadding="0" cellspacing="0">
      <tr>
          <td width="120px" align="left" >车次</td>
          <td width="150px" colspan="3" align="center" ><font color="red">${classes.classesCode}</font></td>
         
      </tr>
      <tr>
          <td width="120px" align="left">始发站</td>
          <td  width="150px">${classes.classesStartstationid}</td>
          <td width="180px"  align="right">终点站</td>
          <td  width="240px">${classes.classesEndstationid}</td>
      </tr>
       <tr>
          <td width="120px" align="left">发车时间</td>
          <td  width="150px">${classes.classesStarttime}</td>
          <td width="180px"  align="right">到站时间</td>
          <td  width="240px">${classes.classesEndtime}</td>
      </tr>
       <tr>
          <td width="120px" align="left">运行时间</td>
          <td  width="150px">${classes.classesTime}</td>
      </tr>
    </table>
    
</div><br/><br/>
<div style="float:left;">
     <div class="title"><span>应付金额</span></div><br><br>
     <div id="money" style="font-size: 50px;color: red;">
     ￥0.0
     </div>
   
</div>
<br><br>

  <div class="title"><span>乘客信息</span></div>
  
 
       <form action="${pageContext.request.contextPath}/servlet/TeacherServlet?method=delete" method="post">
     <table class="tablelist">
        <!-- 操作按钮行 -->
    	<thead>
    	<tr>
        <th><input name="selectAll" type="checkbox" value="0" onclick="selAll();"/></th>
        <th>编号<i class="sort"><img src="${pageContext.request.contextPath}/user/images/px.gif" /></i></th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>地址</th>
        <th>身份证号</th>
        <th>联系电话</th>
        <th>车票类型</th>
         <th>票价</th>
        </tr>
        </thead>
        
        <!-- 数据行 -->
        <tbody>
          <c:forEach var="p" items="${passengers }" varStatus="vst">
        <tr>
        <td><input name="passengerId" type="checkbox" value="${p.proId}" /></td>
        <td>${p.proId}</td>
        <td>${p.proName}</td>
        <td>${p.proSex}</td>
        <td>${p.proAge}</td>
        <td>${p.proAddress}</td>
        <td>${p.proNum}</td>
        <td>${p.proPhone}</td>
        <td>
            <select id="select${vst.index }" name="" onchange="changePrice(${vst.index })">
              <option value="0">请选择</option>
              <c:forEach var="t" items="${tickets }" >
                  <option value="${t.ticketPrice }"> ${t.ttypes }</option>
              </c:forEach>
            </select>
        </td>
        <td>
            <div id="price${vst.index }"></div>
        </td>
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
 
 
 
 
 <br><br>
 
   <div align="right">
         <label>&nbsp;</label><input type="button" class="btn" value="下单" onclick="history.back();"/>
          <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="button" class="btn" value="返回" onclick="history.back();"/>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
 
</body>
</html>