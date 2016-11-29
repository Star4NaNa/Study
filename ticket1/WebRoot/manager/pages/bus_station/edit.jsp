<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=title%></title>
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function cancel(){
	window.history.back();
}
//页面初始化加载函数第一种方式
$(document).ready(function(){
  
  //给控件绑定submit第一种方式 在html当中指点定onsubmit事件，缺点：侵入式，只能指定一个
  
  //给控件绑定submit第二种方式,非侵式，可绑定多个
  $("#jqueryform").bind("submit",function (){
  
   //获取val的两种方式
   //var teacherName = $("#teacherName").val();
   var stationName = $("#stationName").val();
   /* if (teacherName == null || teacherName == ""){
   } */
   if (!stationName){
    alert("请输入车站名称！");
     return false;
   }
   var stationAddr = $("#stationAddr").val();
   /* if (teacherName == null || teacherName == ""){
   } */
   if (!stationAddr){
    alert("请输入车站地址！");
     return false;
   }
    var stationTel = $("#stationTel").val();
   /* if (teacherName == null || teacherName == ""){
   } */
   if (!stationTel){
    alert("请输入车站地址！");
     return false;
   }
    
  });
  
   //给控件绑定submit第三种方式  等价于bind事件,非侵式，可绑定多个
  /* $("#jqueryform").submit(function (){
    
  }); */
  
  //给省绑定change事件，做联动
  getChildren("province","city");
   //给市 绑定change事件，做联动
  getChildren("city","area");
  
  
 
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

//页面初始化加载函数第二种方式  等价于ready事件
$(function (){

});
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/manager/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp"%>
<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp"%>

<!--right-->
<div class="rightbar" style="overflow-x: hidden;">
    
    <div class="title"><span>${empty busStation.stationId ? "新增":"修改"}汽车站</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/busStation/insert" method="post">
    <table class="tbb" style="margin-top:10px;">
      <tr>
          
         
          <td  width="180px" align="left">汽车站名称：</td>
          <td width="220px;">
	         <input id="stationName" name="busStation.stationName" value="${busStation.stationName}"  type="text" maxlength="32" class="dfinput" /><span class="xx">*</span>
	         <input name="busStation.stationId" type="hidden" value="${busStation.stationId}"/>
	         <td align="left" width="130px"></td>
          <td width="220px;">
          
		  
          </td>
         </td> 
      </tr>
      <tr>
          <td align="left" width="130px">汽车站地址：</td>
          <td width="220px;">
          <input id="stationAddr" name="busStation.stationAddr" type="text" value="${busStation.stationAddr}" onclick="showMenu_pitem();"  class="dfinput"/>
		  
          </td>
          <td  width="180px" align="right">汽车站电话：</td>
          <td width="220px;">
          <input id="stationTel"name="busStation.stationTel"  type="text" value="${busStation.stationTel}" onfocus="showMenu();"  class="dfinput"/>
		  <input name="param_.type_id" id="typeIdSel" type="hidden" value="${data_.type_id}"/>
          </td>
      </tr>
      <tr>
          <td align="left" width="130px">所属省份：</td>
          <td width="220px;">
             <select  class="dfinput" id="province">
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" ${busStation.proAreaId ==  area.areaId ? "selected":""} >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td  width="180px" align="right">所属市：</td>
          <td width="220px;">
              <select  class="dfinput" id="city">
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	           <option value="${city.areaId}" ${busStation.cityAreaId ==  city.areaId ? "selected":""}>${city.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
      </tr>
      <tr>
          <td align="left" width="130px">所属区/县：</td>
          <td width="220px;">
          <select  name="busStation.areaId" class="dfinput" id="area">
	          <option value="">请选择区/县</option>
	           <c:forEach var="area" items="${areaAreas}">
	           <option value="${area.areaId}" ${busStation.areaId==  area.areaId ? "selected":""}>${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td  width="180px" align="right"></td>
          <td width="220px;">
          </td>
      </tr>
      <tr>
          <td align="left" width="130px;">汽车站规模：</td>
          <td width="220px;">
          <input name="busStation.stationScale" type="text" value="${busStation.stationScale}" class="dfinput"   />
          </td>
          <td width="180px" align="right">占地面积：&nbsp;&nbsp;</td>
          <td width="220px;">
          <input name="busStation.stationArea" type="text" value="${busStation.stationArea}" class="dfinput"   />
          </td>
      </tr>
      <tr>
          <td align="left" width="130px;">汽车站备注：</td>
         <td ><textarea  name="busStation.stationRemark" rows="2" cols="20" class="textinput">${busStation.stationRemark}</textarea></td>  
          <td  width="180px" align="right">汽车站状态：</td>
          <td width="220px;">
              <select name="busStation.stationStatus" class="dfinput">
	          <option value="0">停用</option>
	          <option value="1">启用</option>
	          </select>
          </td>       
      </tr>

      <tr><td class="title" colspan="4" style="height:10px;"></td></tr>

    
      <tr>
          <td width="130px" align="left">法人：</td>
          <td width="220px;">
              <input name="busStation.stationLegal" type="text" value="${busStation.stationLegal}" maxlength="14" class="dfinput"/>
          </td>         
      </tr>
      <tr>
          <td width="130px" align="left">法人电话：</td>
          <td width="220px;">
              <input name="busStation.stationLegaltel" type="text" value="${busStation.stationLegaltel}" maxlength="14" class="dfinput"/>
          </td>         
      </tr>
       <tr>
          <td width="130px" align="left">法人身份证号码：</td>
          <td width="220px;">
              <input name="busStation.stationLegalid" type="text" value="${busStation.stationLegalid}" maxlength="14" class="dfinput"/>
          </td>         
      </tr>
       <tr>
          <td width="130px" align="left">员工人数：</td>
          <td width="220px;">
              <input name="busStation.stationStaffsum" type="text" value="${busStation.stationStaffsum}" maxlength="14" class="dfinput"/>
          </td>         
      </tr>
       <tr>
          <td width="130px" align="left">所属公司：</td>
          <td width="220px;">
              <input name="busStation.stationCompany" type="text" value="${busStation.stationCompany}" maxlength="14" class="dfinput"/>
          </td>         
      </tr>
     
      
      
     <tr><td class="title" colspan="4" style="height:10px;"></td></tr>
      
      
          
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

