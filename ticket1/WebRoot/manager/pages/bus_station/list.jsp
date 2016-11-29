<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<title><%=title%></title>
<script type="text/javascript">

$(document).ready(function(){

  //给省绑定change事件，做联动
  getChildren("province","city");
   //给市 绑定change事件，做联动
  getChildren("city","area");

});




$(function (){
 $("#sel_all").click(function (){
   //$(this).attr("checked")
  if ($(this).prop("checked")){
     $("input[name='busStations.stationId']").prop("checked",true);
  }else{
     $("input[name='busStations.stationId']").prop("checked",false);
  }
 });
});
function edit(f){
    var url = "${pageContext.request.contextPath}/busStation/toinsert";
	window.location.href=url;
}
function update(){

	var size = $("input[name='busStations.stationId']").filter(":checked").size();
	var stationId = $("input[name='busStations.stationId']").filter(":checked").val();
	if (size < 1){
	 alert("请选择要修改的汽车站信息");
	}else if (size > 1){
	 alert("只能修改一条汽车站信息");
	}else{
	 //$("#editForm").attr("action","${pageContext.request.contextPath}/busStation/toEdit?busStation.stationId="+stationId);
	 //$("#editForm").submit();
	  var url = "${pageContext.request.contextPath}/busStation/toEdit?busStation.stationId="+stationId;
	  window.location.href=url;
	}
 
}

function del(){
 	var size = $("input[name='busStations.stationId']").filter(":checked").size();
 	//var stationId = $("input[name='busStation.stationId']").filter(":checked").val();
	if (size < 1){
	 alert("请选择要禁用的汽车站信息");
	}else{
	 if (confirm("确认要禁用吗?")){
	 $("#editForm").attr("action","${pageContext.request.contextPath}/busStation/del");
	 $("#editForm").submit();
	 /* var url="${pageContext.request.contextPath}/busStation/del?busStation.stationId="+stationId;
	  window.location.href =url; */
	
	 }
	}

    window.location.href ="${pageContext.request.contextPath}/busStation/del?busStation.stationId="+value;
    
}

function dbClickTr(value){
window.location.href = "${pageContext.request.contextPath}/busStation/view?busStation.stationId="+value;
}
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/busStation/list");
$("#searchForm").submit();
}

function getChildren(id,childid){//做监听时触发change事件  然后上面写了绑定change事件
    $("#"+id).change(function (){
    var areaId = $(this).val();
    //this.value
       if (areaId){
	       $.ajax({
			   type: "POST",
			   url: "${pageContext.request.contextPath}/json/getAreaChildren",
			   //data: "area.areaId="+areaId,
			   data: {"area.areaId":areaId},
			   dataType:"json",
			   success: function(msg){
			     var content = "";
			      $("#"+childid+" option:not(:first)").remove();
			      $.each(msg,function(name,object){
			      content += "<option value=\"" + object.areaId +"\">";
			      content +=  object.areaName;
			      content += "</option>";
				  });
			    $("#"+childid).append(content);
			   }
			});
       }
  });
  }

</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp" %>

<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp" %>

<!--right-->
<div class="rightbar">
  
  <div class="title"><span>项目信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">     
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
        <li style="cursor: pointer;" onclick="update();"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>禁用</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        
        
        </ul>
    </div>
    <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:1440px;">
      <tr>
          <td  align="left">汽车站名：</td>
          <td><input style="height: 26px;width:100px;line-height: 26px;" name="busStation.stationName" type="text" value="${data_.item_name}" maxlength="50" class="dfinput" /></td>          
          <td  align="left">汽车站状态</td>
          <td>
          <select  name="busStation.stationStatus" class="select_search">
          	  <option value="" >所有</option>
           	  <option value="1" >启用</option>
	          <option value="0">停用</option>	          	          
	      </select>
          </td>
   
          <td align="left" >所属省份：</td>
          <td width="220px;">
             <select name="busStation.proAreaId" class="dfinput" id="province">
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td  width="180px" >所属市：</td>
          <td width="220px;">
              <select name="busStation.cityAreaId" class="dfinput" id="city">
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	          <option value="" ></option>
	           <option value="${city.areaId}"  ${busStation.cityAreaId ==  city.areaId ? "selected":""}>${city.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
    
          <td align="left" >所属区/县：</td>
          <td width="220px;">
          <select  name="busStation.areaId" class="dfinput" id="area">
	          <option value="">请选择区/县</option>
	           <c:forEach var="area" items="${areaAreas}">
	            <option value="" ></option>
	           <option value="${area.areaId}"  ${busStation.areaId==  area.areaId ? "selected":""} >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          
          
     
          
      </tr>
    </table>
    </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0" style="width:1860px;">
    	<thead>
    	<tr>
        <th><input class="sel_all" type="checkbox" id="sel_all"/></th>
        <th width="50">序号</th>
        <th width="200">汽车站名称</th>
        <th width="200">汽车站地址</th>
        <th width="200">汽车站电话</th>
        <th width="300">所属区域</th>
        <th width="50">汽车站状态</th>
        <th width="150">汽车站规模</th>
        <th width="150">占地面积</th>
        <th width="450">备注</th>
        <th width="120">员工数</th>
        <th width="100">法人</th>
        <th width="250">法人电话</th>
        <th width="250">法人身份证</th>
        <th width="250">所属公司</th>
        
        

        </tr>
        </thead>
        <tbody>
        
      
       
       
       
        <c:forEach var="busStation" items="${busStations }">
        <tr ondblclick="dbClickTr(${busStation.stationId });">   
        		
        <td><input class="keyid" name="busStations.stationId" value="${busStation.stationId }" type="checkbox"/></td>       
        <td>${busStation.stationId }</td>
        <td width="300">${busStation.stationName }</td>
        <td width="300">${busStation.stationAddr }</td>
        <td width="50">${busStation.stationTel  }</td>
        <td width="300">${busStation.proAreaName }${busStation.cityAreaName }${busStation.areaName }</td>
        <td width="150">${busStation.stationStatus == 0 ? "<font color=red>停用</font>":"启用"}</td>
        <td width="100">${busStation.stationScale }</td>
        <td width="100">${busStation.stationArea }</td>
        <td width="100">${busStation.stationRemark }</td>
        <td width="100">${busStation.stationStaffsum }</td>
        <td width="250">${busStation.stationLegal }</td>
        <td width="250">${busStation.stationLegaltel }</td>
        <td width="80">${busStation.stationLegalid }</td>
        <td width="80">${busStation.stationCompany }</td>      
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