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
     $("input[name='drivers.driverId']").prop("checked",true);
  }else{
     $("input[name='drivers.driverId']").prop("checked",false);
  }
 });
});
function del(){
    var size = $("input[name='drivers.driverId']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要删除的信息");
	}else{
	 if (confirm("确认要删除吗?")){
	 $("#editForm").attr("action","${pageContext.request.contextPath}/driver/del");
	 $("#editForm").submit();
	 }
	}
}
function add(f){
    var url = "${pageContext.request.contextPath}/driver/toinsert";
	window.location.href=url;
}
function edit(f){
    var sizes=$("input[name='drivers.driverId']").filter(":checked").size();
    var driverId = $("input[name='drivers.driverId']").filter(":checked").val();
    if(sizes<1){
    	alert("请选择要修改的信息");
    }else if(sizes>1){
    	alert("每次只能修改一条信息");
    }
    else{
    	var url = "${pageContext.request.contextPath}/driver/select?driver.driverId="+driverId;
		window.location.href=url;
	}
}
function dbClickTr(value){
alert(value);
window.location.href = "${pageContext.request.contextPath}/manager/pages/driver/view.jsp";
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/driver/list");
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
eachNodes_area(${data_.drivers});
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp" %>

<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp" %>

<!--right-->
<div class="rightbar">
  
  <div class="title"><span>司机信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">
        <li style="cursor: pointer;" onclick="add();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
        <li style="cursor: pointer;" onclick="edit(1);"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        </ul>
    </div>
    <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:1040px;">
      <tr>
          <td  align="right">司机姓名：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="driver.driverName" type="text" value="${driver.driverName}" maxlength="50" class="dfinput" /></td>
          <td align="right">驾龄(年)：</td>
          <td>
	          <select  name="driver.driverDrivingyears" class="select_search">
	          <option value="">所有</option>
	          <option value="1" ${driver.driverDrivingyears == 1 ?"selected":""}>1</option>
	          <option value="2" ${driver.driverDrivingyears == 2 ?"selected":""}>2</option>
	          <option value="3" ${driver.driverDrivingyears == 3 ?"selected":""}>3</option>
	          <option value="4" ${driver.driverDrivingyears == 4 ?"selected":""}>4</option>
	          <option value="5" ${driver.driverDrivingyears == 5 ?"selected":""}>5</option>
	          <option value="6" ${driver.driverDrivingyears == 6 ?"selected":""}>6</option>
	          <option value="7" ${driver.driverDrivingyears == 7 ?"selected":""}>7</option>
	          <option value="8" ${driver.driverDrivingyears == 8 ?"selected":""}>8</option>
	          <option value="9" ${driver.driverDrivingyears == 9 ?"selected":""}>9</option>
	          </select>
          </td>
          <td  align="right">身份证号：</td>
          <td>
          <input name="driver.driverIdcard" id="typeSel" type="text" value="${driver.driverIdcard}"  style="height: 26px;width:100px;line-height: 26px;" class="dfinput"/>
          </td>
          <td  align="right">驾驶证号：</td>
          <td>
          <input name="driver.driverDrivercard" id="typeSel_area" type="text" value="${driver.driverDrivercard}"   style="height:26px;width:100px;line-height: 26px;" class="dfinput"/> 
          </td>
          <td  align="right">驾照类型：</td>
          <td>
          <input name="driver.driverType" id="typeSel_area" type="text" value="${driver.driverType}"   style="height:26px;width:100px;line-height: 26px;" class="dfinput"/>

          </td>
          <td  align="right">联系电话：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="driver.driverTelephone" type="text" value="${driver.driverTelephone}" maxlength="25" class="dfinput"/></td>
      </tr>
    </table>
    </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0" style="margin-left: 10px; width:2000px;">
    	<thead>
    	<tr>
        <th><input class="sel_all" type="checkbox" id="sel_all"/></th>
        <th>编号</th>
        <th>姓名</th>
        <th>身份证号</th>
        <th>年龄</th>
        <th>性别</th>
        <th>驾照类型</th>
        <th>电话</th>
        <th>住址</th>
        <th>酒驾史</th>
        <th>犯罪史</th>
        <th>驾龄</th>
        <th>所在驾校</th>
        <th>驾驶证起始时间</th>
        <th>驾驶证到期时间</th>
        <th>身体状况</th>
        <th>疾病史</th>
        <th>驾驶证号</th>
        </tr>
        </thead>
        <tbody>
        
        <c:forEach var="driver" items="${drivers}" varStatus="vst">
        <tr ondblclick="dbClickTr();">
        <td><input class="keyid" name="drivers.driverId" value="${driver.driverId}" type="checkbox"/></td>
        <td>${vst.count}</td>
        <td>${driver.driverName}</td>
        <td>${driver.driverIdcard}</td>
        <td>${driver.driverSex}</td>
        <td>${driver.driverAge}</td>
        <td>${driver.driverType}</td>
        <td>${driver.driverTelephone}</td>
        <td>${driver.driverAddress}</td>
        <td>${driver.driverDrunk}</td>
        <td>${driver.driverCommit}</td>
        <td>${driver.driverDrivingyears}</td>
        <td>${driver.driverDriverschool}</td>
        <td>${driver.driverBegindate}</td>
        <td>${driver.driverEnddate}</td>
        <td>${driver.driverBodystate}</td>
        <td>${driver.driverIllness}</td>
        <td>${driver.driverDrivercard}</td>
        
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