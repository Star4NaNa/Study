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
//页面初始化加载函数的方法：
//1.给控件绑定submit第一种方式 在html当中指点定onsubmit事件，缺点：侵入式，只能指定一个
//2.//给控件绑定submit第二种方式,非侵式，可绑定多个
$(document).ready(function(){
  $("#jqueryform").submit(function(){
  //获取val的两种方式
  //1.var teacherName = $("#teacherName").val();
  //2.
  var routeName = $("#routeName").val();
   if (!routeName){
    alert("请输入线路名称！");
     return false;
   }
  });
   //给起点省绑定change事件，做联动
  getChildren("stratprovince","startcity");
   //给终点省绑定change事件，做联动
  getChildren("stopprovince","stopcity");
});
function getChildren(id,childid){
    $("#"+id).change(function (){
    var areaId = $(this).val();//此this是jQuery封装对象
    //this.value--此this是dom对象
       if (areaId){
	       $.ajax({
			   type: "POST",
			   url: "${pageContext.request.contextPath}/json/getAreaChildren",
			   //参数写法一：data: "area.areaId="+areaId,
			   //参数写法二：json写法
			   data: {"area.areaId":areaId},
			   dataType:"json",
			   success: function(msg){
			     //声明字符串，
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
//3.给控件绑定submit第三种方式  等价于bind事件,非侵式，可绑定多个
  /* $("#jqueryform").submit(function (){
    
  }); */
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/manager/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp"%>
<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp"%>

<!--right-->
<div class="rightbar" style="overflow-x: hidden;">
    
    <div class="title"><span>${empty route.routeId ? "新增":"修改"}路线信息</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/route/saveEdit" method="post">
    <table class="tbb" style="margin-top:10px;">
      <tr>  
          <td  width="180px" >线路id：</td>
          <td width="220px;">
	         <input name="route.routeId"  id="route.routeId" value="${route.routeId}"  type="text" maxlength="32" class="dfinput" /><span class="xx"> *</span>
	         <input name="param_.item_id" type="hidden" value="${data_.item_id}"/>
          </td> 
      </tr>
      <tr>  
          <td  width="180px" >线路编号：</td>
          <td width="220px;">
	         <input name="route.routeNum"  id="route.routeNum" value="${route.routeNum}"  type="text" maxlength="32" class="dfinput" /><span class="xx"> *</span>
	         <input name="param_.item_id" type="hidden" value="${data_.item_id}"/>
          </td> 
      </tr>
      <tr>
          <td align="left" width="130px">线路名称：</td>
          <td width="220px;">
          <input name="route.routeName" id="routeName" type="text" value="${route.routeName}" onclick="showMenu_pitem();"  class="dfinput"/><span class="xx"> *</span>
		  <input name="param_.p_id" id="typeIdSel_pitem" type="hidden" value="${data_.p_id}"/>
          </td>
      </tr>
      <tr>
          <td align="left" width="130px">起点所属省份：</td>
          <td width="220px;">
             <select  class="dfinput" id="stratprovince">
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" ${route.routeStartareaid ==  area.areaId ? "selected":""} >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td  width="180px" align="right">所属市：</td>
          <td width="220px;">
              <select  class="dfinput" id="startcity">
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	           <option value="${city.areaId}" ${route.cityAreaId ==  city.areaId ? "selected":""}>${city.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
     </tr>
     <tr>
          <td align="left" width="130px">终点所属省份：</td>
          <td width="220px;">
             <select  class="dfinput" id="stopprovince">
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" ${route.routeEndareaid ==  area.areaId ? "selected":""} >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td width="180px" align="right">所属市：</td>
          <td width="220px;">																																																																																																																																																																																																																				
              <select  class="dfinput" id="stopcity">
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	           <option value="${city.areaId}" ${route.cityAreaId ==  city.areaId ? "selected":""}>${city.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
      </tr>
      <tr>
          <td  width="180px">线路状态：</td>
          <td width="220px;">
          <input name="route.routeStatus" id="typeSel" type="text" value="${route.routeStatus}" onfocus="showMenu();" class="dfinput"/>
		  <input name="param_.type_id" id="typeIdSel" type="hidden" value="${data_.type_id}"/>
          </td>
          <span class="xx">*</span>
      </tr>
      <tr>
          <td align="left" width="130px;">首车时间：</td>
          <td width="220px;">
          <input name="route.routeStarttime" id="typeSel_area" type="text" value="${route.routeStarttime}" onfocus="showMenu_area();"  class="dfinput"/>
		  <input name="param_.area_id" id="typeIdSel_area" type="hidden" value="${data_.area_id}"/>
          </td>
          
      </tr>
      <tr>
          <td align="left" width="130px;">末车时间：</td>
          <td width="220px;">
          <input name="route.routeStoptime" id="typeSel_area" type="text" value="${route.routeStoptime}" onfocus="showMenu_area();"class="dfinput"/>
		  <input name="param_.area_id" id="typeIdSel_area" type="hidden" value="${data_.area_id}"/>
          </td>
          
      </tr>
      <tr>
          <td align="left" width="130px;">线路备注：</td>
          <td width="220px;">
          <input name="route.routeRemark" id="typeSel_area" type="text" value="${route.routeRemark}" onfocus="showMenu_area();"  class="dfinput"/>
		  <input name="param_.area_id" id="typeIdSel_area" type="hidden" value="${data_.area_id}"/>
          </td>
          
      </tr>
      <tr>
          <td align="right" >&nbsp;</td>
          <td  colspan="3"><input type="submit" class="btn" value="保存" /> <input name="" type="button" class="btn" value="返回" onclick="cancel();"/></td>
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

