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
   var carOwner= $("#carOwner").val();
   var carPlatenum= $("#carPlatenum").val();
   var carType= $("#carType").val();
   var carAge=$("#carAge").val();
   var carDrivenum=$("#carDrivenum").val();
   var carMotortype=$("#carMotortype").val();
   var carUseseatnum=$("#carUseseatnum").val();
 
   /* if (teacherName == null || teacherName == ""){
   } */
   if (!carOwner){
    alert("请输入责任人姓名！");
     return false;
   }
   if (!carPlatenum){
    alert("请输入车牌号！");
     return false;
   }
   
   if (!carAge){
    alert("请输入车龄！");
     return false;
   }
   if (!carDrivenum){
    alert("请输入行驶证号！");
     return false;
   }
   if (!carMotortype){
    alert("请输入发动机号！");
     return false;
   }
   if (!carUseseatnum){
    alert("请输入可用座位数！");
     return false;
   }
   
   
    
  });
  
   //给控件绑定submit第三种方式  等价于bind事件,非侵式，可绑定多个
  /* $("#jqueryform").submit(function (){
    
  }); */
  
  //给省绑定change事件，做联动
//  getChildren("province","city");
   //给市 绑定change事件，做联动
 // getChildren("city","area");
  
  
 
});




</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/manager/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp"%>
<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp"%>

<!--right-->
<div class="rightbar" style="overflow-x: hidden;">
    
    <div class="title"><span>${empty car.carId ? "新增":"修改"}汽车信息</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/car/save"  method="post">
    <table class="tbb" style="margin-top:10px;">
      <tr>
          <td  width="180px" align="right">汽车责任人：</td>
          <td width="220px;">
	         <input id="carOwner" name="car.carOwner" value="${car.carOwner}"  type="text"  class="dfinput" />
	         <input name="car.carId" type="hidden" value="${car.carId}"/><span class="xx">*</span>
             
         </td>
          <td  width="180px" align="right">责任人电话：</td>
          <td width="220px;">
	         <input name="car.carOwnerphone" value="${car.carOwnerphone}"  type="text"  maxlength="11" class="dfinput" />
         </td>
      </tr>
      <tr>
         <td  width="180px" align="right">责任人地址：</td>
          <td width="220px;">
	         <input name="car.carOwneraddress" value="${car.carOwneraddress}"  type="text"  class="dfinput" />
         </td>
          <td align="right" width="180px">汽车车牌号：</td>
          <td width="220px;">
          <input name="car.carPlatenum" id="carPlatenum" type="text" value="${car.carPlatenum}" class="dfinput"/>
          <span class="xx">*</span> 
          </td>
      </tr>
      <tr>
         
          <td align="right" width="180px">汽车类型：</td>
          <td  width="220px;">
              <select name="car.carType" class="dfinput" onchange="item_year_change();">
	          <option value="">所有</option>
	          <option value="0" ${car.carType == 0 ?"selected":""}>22座小巴车</option>
	          <option value="1" ${car.carType == 1 ?"selected":""}>33座中巴车</option>
	          <option value="2" ${car.carType == 2 ?"selected":""}>53座大巴车</option>
	          </select><span class="xx">*</span> 
          </td> 
          <td  width="180px" align="right">车龄：</td>
          <td width="220px;">
	         <input id="carAge" name="car.carAge" value="${car.carAge}"  type="text"  class="dfinput" />
            <span class="xx">*</span> 
         </td>
      </tr>
      <tr><td class="title" colspan="4" style="height:10px;"></td></tr>
      <tr>
           <td  width="180px" align="right">行驶证号：</td>
          <td width="220px;">
	         <input name="car.carDrivenum" id="carDrivenum" value="${car.carDrivenum}"  type="text" maxlength="7" class="dfinput" />
            <span class="xx">*</span> 
         </td>
         <td  width="180px" align="right">发动机号：</td>
          <td width="220px;">
	         <input name="car.carMotortype" id="carMotortype" value="${car.carMotortype}"  type="text"  class="dfinput" />
             <span class="xx">*</span> 
         </td>
         
      </tr>
        <tr>
           <td  width="180px" align="right">可用座位数：</td>
          <td width="220px;">
	         <input name="car.carUseseatnum" id="carUseseatnum" value="${car.carUseseatnum}"  type="text" maxlength="3" class="dfinput" />
             <span class="xx">*</span> 
         </td>
         </tr>
        
   
      <tr><td class="title" colspan="4" style="height:10px;"></td></tr>
      <tr>
          
          <td align="left" width="130px">车况：</td>
          <td  colspan="3"><textarea  name="car.carStatus" rows="2" cols="20" class="textinput">${car.carStatus}</textarea></td>
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

