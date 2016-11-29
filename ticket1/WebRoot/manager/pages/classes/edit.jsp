<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=title%></title>
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

$(document).ready(function(){
 
  

  getChildren("province","city");
 
  
  
 
});
function cancel(){
	window.history.back();
}
$(document).ready(function(){
 
  

 
 	getChildren("startprovince","startcity");
    getChildren("endprovince","endcity");
  	getChildren("startcity","startarea");
 	//getChildren("startarea","busstation");
});
function getChildren(id,childid){
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
<body style="background:url(${pageContext.request.contextPath}/manager/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp"%>
<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp"%>

<!--right-->
<div class="rightbar" style="overflow-x: hidden;">
    
    <div class="title"><span>${empty class1.classesId ? "新增":"修改"}班次</span></div>
     <form id="jqueryform"  action="${pageContext.request.contextPath}/classes/save" method="post">
    <table class="tbb" style="margin-top:40px;">
     
    
      <tr>
      <td align="left" width="60px">班次编号</td>
          <td width="220px;">
          <input name="class1.classesCode" id="typeSel_pitem" type="text" value="${class1.classesCode}" class="dfinput"/>
          </td>
          </tr>
          
      <tr>
          <td align="left" width="130px">开始地点</td>
          <td width="220px;">
             <select  class="dfinput" id="startprovince" name="class1.classes" >
	          <option value="">请选择省份</option>
	          <c:forEach var="area" items="${areas}"> 
	          <option value="${area.areaId}" ${area.areaId ==  shengid ? "selected":""} >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td  width="180px" align="right">所属市</td>
          <td width="220px;">
              <select  class="dfinput" id="startcity" name="class1.classesStartstationid" >
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	           <option value="${city.areaId}" ${city.areaId ==  shiid ? "selected":""}>${city.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td width="180px">所属区</td>
          <td width="220px">
          <select  class="dfinput" id="startarea" >
	          <option value="">请选择区</option>
	          <c:forEach var="area" items="${areaarea}"> 
	          <option value="${area.areaId}" ${area.areaId ==  quid ? "selected":""}>${area.areaName}</option>
	          </c:forEach>
	          </select>
          
          </td>
          <td width="180px">汽车站</td>
          <td width="220px">
          <select  class="dfinput" id="busstation" >
	          <option value="">请选择汽车站</option>
	          <c:forEach var="busStations" items="${busStations}"> 
	          <option value="${busStations.stationId}" ${busStations.stationId == busStationID ? "selected":""}>${busStations.stationName}</option>
	          </c:forEach>
	          </select>
          
          </td>
      </tr>
            <tr>
          <td align="left" width="130px">结束地点</td>
          <td width="220px;">
             <select  class="dfinput" id="endprovince"  >
	          <option value="">请选择省份</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" ${area.areaId ==shengid ? "selected":""}>${area.areaName}</option>
	          
	          </c:forEach>
	          </select>
          </td>
          <td  width="180px" align="right">所属市</td>
          <td width="220px;">
              <select  class="dfinput" id="endcity" name="class1.classesEndstationid">
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	           <option value="${city.areaId}" ${city.areaId ==shiid ? "selected":""}>${city.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
      </tr>
   
     
     <tr>
      <td align="left" width="60px">开始时间</td>
          <td width="220px;">
          <input name="class1.classesStarttime" id="typeSel_pitem" type="text" value="${class1.classesStarttime}" class="dfinput"/>
          </td>
          </tr>
          
           <tr>
      <td align="left" width="60px">结束时间</td>
          <td width="220px;">
          <input name="class1.classesEndtime" id="typeSel_pitem" type="text" value="${class1.classesEndtime}" class="dfinput"/>
          </td>
          </tr>
             <tr>
      <td align="left" width="60px">所用时间</td>
          <td width="220px;">
          <input name="class1.classesTime" id="typeSel_pitem" type="text" value="${class1.classesTime}" class="dfinput"/>
          </td>
          </tr>
          
           <tr>
      <td align="left" width="60px">状态</td>
          <td width="220px;">
          <input name="class1.classesStatus" id="typeSel_pitem" type="text" value="${class1.classesStatus}" class="dfinput"/>
          </td>
          </tr>
          
               <tr>
      <td align="left" width="60px">途径车站</td>
          <td width="220px;">
          <input name="class1.classesGoingby" id="typeSel_pitem" type="text" value="${class1.classesGoingby}" class="dfinput"/>
          </td>
          </tr>
          
         <tr>
      <td align="left" width="60px;">路线名称：</td>
      <td>
           <select name="class1.classesRouteId" class="dfinput" id="class1.classesRouteId">
	          <option value="">请选择路线</option>
	          <c:forEach var="routes" items="${routes}">
	          <option value="${routes.routeId}" ${routes.routeId ==routeID ? "selected":""}>${routes.routeNum}</option>
	         
	          </c:forEach>
	          </select>
	         
	          </td>
	          
	      
      </tr>  
         <tr>
      <td align="left" width="60px;">司机姓名：</td>
      <td>
           <select name="class1.classesDriverId" class="dfinput" id="class1.classesDriverId">
	          <option value="">请选择司机</option>
	          <c:forEach var="drivers" items="${drivers}">
	          <option value="${drivers.driverId}" ${drivers.driverId ==driverID ? "selected":""}>${drivers.driverName}</option>
	         
	          </c:forEach>
	          </select>
	         
	          </td>	     
      </tr>   
          <tr>
      <td align="left" width="60px;">座位数：</td>
      <td>
           <select name="class1.classesSeatNum" class="dfinput" id="class1.classesSeatNum">
	          <option value="">请选择座位数</option>
	          <c:forEach var="cars" items="${cars}">
	          <option value="${cars.carId}" ${cars.carId ==carID ? "selected":""}>${cars.carSeatnum}</option>
	         
	          </c:forEach>
	          </select>
	         
	          </td>	     
      </tr>   
          <tr>
      <td align="left" width="60px;">汽车类型：</td>
      <td>
           <select name="class1.classesCarType" class="dfinput" id="class1.classesCarType">
	          <option value="">请选择汽车类型</option>
	          <c:forEach var="cars" items="${cars}">
	          <option value="${cars.carId}" ${cars.carId ==carID ? "selected":""}>${cars.carType}</option>
	         
	          </c:forEach>
	          </select>
	         
	          </td>	     
      </tr>                                                            
       
          <tr>
           <td align="right" >&nbsp;</td>
          <td  colspan="3"><input type="submit" class="btn" value="保存"/> <input name="" type="button" class="btn" value="返回" onclick="cancel();"/></td>
     
       </tr>
        
    
    </table>
    </form>
  
</div>
<!--right-->
</div>
 <div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree" class="ztree" style="margin-top:0; width:160px;height:300px;"></ul>
 </div>
 <div id="menuContent_area" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree_area" class="ztree" style="margin-top:0; width:160px;height:300px;"></ul>
 </div>
  <div id="menuContent_pitem" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree_pitem" class="ztree" style="margin-top:0; width:250px;height:300px;"></ul>
 </div>
 <%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>

