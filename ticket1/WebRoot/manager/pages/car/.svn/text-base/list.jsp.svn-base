<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<title><%=title%></title>
<script type="text/javascript">
function add(){
    var url = "${pageContext.request.contextPath}/car/toinsert";
	window.location.href=url;
}
function edit(){
    var size = $("input[name='cars.carId']").filter(":checked").size();
	var  carId = $("input[name='cars.carId']").filter(":checked").val();
	if (size<1){
	 alert("请选择要修改的汽车信息");
	}else if (size > 1){
	 alert("只能修改一条汽车信息");
	}else{
	 var url = "${pageContext.request.contextPath}/car/select?car.carId="+carId;
	 window.location.href=url;
	}
 
}

$(function (){
 $("#sel_all").click(function (){
   //$(this).attr("checked")
  if ($(this).prop("checked")){
     $("input[name='cars.carId']").prop("checked",true);
  }else{
     $("input[name='cars.carId']").prop("checked",false);
  }
 });
});
function del(){
  var size = $("input[name='cars.carId']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要删除的汽车信息");
	}else{
	 if (confirm("确认要删除吗?")){
	 $("#editForm").attr("action","${pageContext.request.contextPath}/car/del");
	 $("#editForm").submit();
	 }
	}
}
function dbClickTr(value){
window.location.href = "${pageContext.request.contextPath}/manager/pages/car/view.jsp";
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/car/list");
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
eachNodes_area(${data_.cars});
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp" %>

<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp" %>

<!--right-->
<div class="rightbar">
  
  <div class="title"><span>汽车信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">
        <li style="cursor: pointer;" onclick="add();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        
        </ul>
    </div>
    <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:800px;">
      <tr>
          <td  align="right">汽车车牌号：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="car.carPlatenum" type="text" value="${car.carPlatenum}" maxlength="50" class="dfinput" /></td>
          <td  align="right">汽车责任人：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="car.carOwner" type="text" value="${car.carOwner}" maxlength="25" class="dfinput"/></td>
          <td  align="right">汽车车况：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="car.carStatus" type="text" value="${car.carStatus}" maxlength="25" class="dfinput"/></td>
          <td  align="right">汽车类型：</td>
          <td>
            <select  name="car.carType" class="select_search">
	          <option value="">所有</option>
	          <option value="0"  ${car.carType==0 ?"selected":""}>22座小巴车</option>
	          <option value="1"  ${car.carType==1 ?"selected":""}>33座小巴车</option>
	          <option value="2"  ${car.carType==2 ?"selected":""}>53座小巴车</option> 
	          </select>
          </td>
      </tr>
    </table>
    </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0" style="width:1000px;">
    	<thead>
    	<tr>
        <th><input class="sel_all" type="checkbox" id="sel_all"/></th> 
        <th width="130">序号</th>
        <th width="130">汽车类型</th>
        <th width="130">车牌号</th>
        <th width="130">行驶证号</th>
        <th width="130">发动机号</th>
        <th width="130">可用座位数</th>
        <th width="130">责任人姓名</th>
        <th width="130">责任人电话</th>
        <th width="180">责任人地址</th>
        <th width="130">车龄</th>
        <th width="130">车况</th>
        </tr>
        </thead>
        <tbody>
        
       
        <c:forEach var="car" items="${cars}" varStatus="vst">
        <tr ondblclick="dbClickTr(${car.carId});">
       
        <td><input class="keyid" name="cars.carId" value="${car.carId}" type="checkbox"/></td>
        <td width="130">${vst.count}</td>
        <td width="130">${car.carType }</td>
        <td width="130">${car.carPlatenum}</td>
        <td width="130">${car.carDrivenum }</td>
        <td width="130">${car.carMotortype }</td>
        <td width="130">${car.carUseseatnum }</td>
        <td width="130">${car.carOwner }</td>
        <td width="130">${car.carOwnerphone }</td>
        <td width="300">${car.carOwneraddress }</td>
        <td width="130">${car.carAge}</td>
        <td width="130">${car.carStatus }</td>
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