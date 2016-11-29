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
   var orderNo = $("#orderNo").val();
   /* if (teacherName == null || teacherName == ""){
   } */
   if (!orderNo){
    alert("请输入订单编号");
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
    
    <div class="title"><span>${empty order.orderId ? "新增":"修改"}订单信息</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/orders/save" method="post">
    <table class="tbb" style="margin-top:10px;">
      <tr>
          <td align="left" width="130px">订单编号：</td>
          <td align="left" width="220px;">
              <input id="orderNo" name="order.orderNo" value="${order.orderNo}"  type="text" maxlength="32" class="dfinput" readonly="readonly"/><span class="xx">*</span>
	          <input  name="order.orderId" type="hidden" value="${order.orderNo}"/>
	          
          </td>
          <td  width="180px" align="right">用户名：</td>
          <td width="220px;">
	         <input name="teacher.teacherAge" value="${order.ordersUserName}"  type="text" maxlength="3" class="dfinput" readonly="readonly"/><span class="xx">*</span>
         </td>
      </tr>
      <tr>
          <td align="left" width="130px">联系电话：</td>
          <td align="left" width="220px;">
              <input id="order.phone" name="order.phone" value="${order.phone}"  type="text" maxlength="32" class="dfinput" /> 
          </td>
          <td  width="180px" align="right">订单状态：</td>
          <td width="220px;">
	         <input name="${order.orderIsout}" value="${order.orderIsout}"  type="text" maxlength="3" class="dfinput" />
         </td>
      </tr>
      <tr>
          <td align="left" width="130px">汽车类型</td>
          <td align="left" width="220px;">
              <input name="${order.orderCarType}" value="${order.orderCarType}"  type="text" maxlength="32" class="dfinput" />  
          </td>
          <td  width="180px" align="right">票价：</td>
          <td width="220px;">
	         <input name="${order.orderPrice}" value="${order.orderPrice}"  type="text" maxlength="3" class="dfinput" />
      </tr>
      <tr>
          <td align="left" width="130px">始发站：</td>
          <td align="left" width="220px;">
              <input name="order.orderstartStationName" value="${order.orderstartStationName}"  type="text" maxlength="32" class="dfinput" />       
          </td>
          <td  width="180px" align="right">终点站：</td>
          <td width="220px;">
	         <input name="order.orderendStationName" value="${order.orderendStationName}"  type="text" maxlength="3" class="dfinput" />
         </td>
      </tr>
      <tr>
          <td align="left" width="130px">发车时间：</td>
          <td align="left" width="220px;">
              <input name="order.orderStartTime" value="${order.orderStartTime}"  type="text" maxlength="32" class="dfinput" />   
          </td>
          <td  width="180px" align="right">到站时间：</td>
          <td width="220px;">
	         <input name="order.orderEndTime" value="${order.orderEndTime}"  type="text" maxlength="3" class="dfinput" />
         </td>
      <tr>
          <td align="left" width="130px">班次编号</td>
          <td align="left" width="220px;">
              <input name="order.orderClassesCode" value="${order.orderClassesCode}"  type="text" maxlength="32" class="dfinput" />  
          </td>
          <td  width="180px" align="right">车牌号：</td>
          <td width="220px;">
	         <input name="order.orderCarPlateNum" value="${order.orderCarPlateNum}"  type="text" maxlength="3" class="dfinput" />
         </td>
      </tr>
       <tr>
          <td align="left" width="130px">线路备注：</td>
          <td  colspan="3"><textarea  name="order.orderRouteRemark" rows="2" cols="20" class="textinput">${order.orderRouteRemark}</textarea></td>
      </tr>
      
      <tr>
          <td align="left" width="130px">汽车站备注：</td>
          <td  colspan="3"><textarea  name="order.orderStationRemark" rows="2" cols="20" class="textinput">${order.orderStationRemark}</textarea></td>
      </tr>
      

      
<!--     <tr><td class="title" colspan="4" style="height:10px;"></td></tr>     --> 
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

