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
   var areaName = $("#areaName").val();
   /* if (teacherName == null || teacherName == ""){
   } */
   if (!areaName){
    alert("请输入区域名称！");
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
    
    <div class="title"><span>${empty area.areaId ? "新增":"修改"}区域</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/area/insert" method="post">
    <table class="tbb" style="margin-top:10px;">
    <tr>
 
		 <td  width="180px" align="left">区域名称：</td>
          <td width="220px;">
	         <input id="areaName" name="area.areaName" value="${area.areaName}"  type="text" maxlength="32" class="dfinput" /><span class="xx">*</span>
          <input name="area.areaId" value="${area.areaId}"  type="hidden" />
         </td>
		<td align="right" width="130px;">区域编码：</td>
          <td width="220px;"><input name="area.areaCode" type="text" value="${area.areaCode}" maxlength="10" class="dfinput"/></td>
      </tr>
   
      <tr>
          
          <td  width="180px" align="left">是否被删除：</td>
          <td width="220px;">
              <select name="area.areaDel" class="dfinput">
	          <option value="0">否</option>
	           <option value="1">是</option>
	          <c:forEach var="bulid_natrue" items="${data_.bulid_natrues}">
	          <option value="${bulid_natrue.dict_v_value}" ${data_.build_nature eq  bulid_natrue.dict_v_value ?"selected":""}>${bulid_natrue.dict_v_value}</option>
	          </c:forEach>
	          </select>
 	      <td align="right" width="130px">区域状态：</td>
          <td align="left" width="220px;">
              <select name="area.areaStatus" class="dfinput" onchange="item_year_change();">
	          <option value="1">可用</option>
	          <option value="0">禁用</option>
	          </select>
	          <span class="xx">*</span>
          </td>
      </tr>
      
      <%--存储被选中的省id --%>
      <c:set var="proId" value="0"></c:set> 
      <%--存储被选中的市id --%>
      <c:set var="cictyId" value="0"></c:set>
      
      <c:if test="${area.areaLevel == 2}">
       <c:set var="proId" value="${area.pAreaId}"/>
      </c:if>
      <c:if test="${area.areaLevel == 3}">
       <c:set var="proId" value="${area.ppAreaId}"/>
       <c:set var="cictyId" value="${area.pAreaId}"/>
      </c:if>
      
       <tr>
          <td align="left" width="130px">所属省份：</td>
          <td width="220px;">
             <select  class="dfinput" id="province">
	          <option value="">请选择省</option>
	          <c:forEach var="areap" items="${areas}">
	          <option value="${areap.areaId}" ${proId ==  areap.areaId ? "selected":""} >${areap.areaName}</option>
	          </c:forEach>
	          </select>
	       </td>
          <td  width="180px" align="right">所属市：</td>
          <td width="220px;">
              <select  class="dfinput" id="city">
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	           <option value="${city.areaId}" ${cictyId ==  city.areaId ? "selected":""}>${city.areaName}</option>
	          </c:forEach>
	          </select>
          </td> 
      </tr>
     

      <c:if test="${fn:length(data_.selected_item_sources) > 0}">
      <c:forEach var="selected_item_source" items="${data_.selected_item_sources}" varStatus="vst">
      
      </c:forEach>
      </c:if>
        <tr>
          <td align="left" width="130px">备注：</td>
          <td  colspan="3"><textarea  name="area.areaRemark" rows="2" cols="20" class="textinput">${area.areaRemark}</textarea></td>
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

