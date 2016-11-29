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
/*$(document).ready(function(){
  
  //给控件绑定submit第一种方式 在html当中指点定onsubmit事件，缺点：侵入式，只能指定一个
  
  //给控件绑定submit第二种方式,非侵式，可绑定多个
  $("#jqueryform").bind("submit",function (){
  
   //获取val的两种方式
   //var teacherName = $("#teacherName").val();
   var carOwner= $("#carOwner").val();
    if (teacherName == null || teacherName == ""){
   } 
   if (!carOwner){
    alert("请输入责任人姓名！");
     return false;
   }
    
  });
*/
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
    
    <div class="title"><span>${empty driver.driverId ? "新增":"修改"}司机信息</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/driver/save" method="post">
    <table class="tbb" style="margin-top:10px;width:1000px;">
      <tr>
          <td align="left" width="130px">驾龄(年)：</td>
          <td align="left" width="220px;">
              <select name="driver.driverDrivingyears" class="dfinput" onchange="item_year_change();">
	         
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
          <td  width="180px" align="right">司机姓名：</td>
          <td width="220px;">
	         <input name="driver.driverName" value="${driver.driverName}"  type="text" maxlength="32" class="dfinput" /><span class="xx">*</span>
	         <input name="driver.driverId" type="hidden" value="${driver.driverId}" />
         </td> 
      </tr>
      <tr>
          <td width="180px" align="right">性别：</td>
          <td>
              <input name="driver.driverSex" type="radio" value="男" } class="tbClass"/>男
              <br />
		      <input name="driver.driverSex" type="radio" value="女" } class="tbClass"/>女
          </td>
          <td  width="180px" align="right">年龄：</td>
          <td width="220px;">
          <input name="driver.driverAge" id="typeSel" type="text" value="${driver.driverAge}" class="dfinput"/>
          </td>
          
          <td  width="180px" align="right">电话号码：</td>
          <td width="220px;">
          <input name="driver.driverTelephone" id="typeSel" type="text" value="${driver.driverTelephone}" class="dfinput"/>
          </td>
      </tr>
      <tr>
          <td align="left" width="130px;">司机住址：</td>
          <td width="220px;">
          <input name="driver.driverAddress" id="typeSel_area" type="text" value="${driver.driverAddress}" class="dfinput"/>
          </td>
          <td align="left" width="130px;">身份证号：</td>
          <td width="220px;">
          <input name="driver.driverIdcard" id="typeSel_area" type="text" value="${driver.driverIdcard}" class="dfinput"/>
          </td>
          
          <td  width="180px" align="right">驾照类型：</td>
          <td width="220px;">
            <input name="driver.driverType" type="text" value="${driver.driverType}" class="dfinput" />
          </td>
      </tr>
      <tr>
          <td align="left" width="130px;">酒驾史：</td>
          <td width="220px;">
          <input name="driver.driverDrunk" type="text" value="${driver.driverDrunk}" class="dfinput" />
          </td>
      </tr>
      <tr>
          <td align="left" width="130px;">犯罪史：</td>
          <td width="220px;"><input name="driver.driverCommit" type="text" value="${driver.driverCommit}"  class="dfinput"/></td>
      </tr>
      
      <tr>
          <td align="left" width="130px;">所在驾校：</td>
          <td width="220px;"><input name="driver.driverDriverschool" type="text" value="${driver.driverDriverschool}"  class="dfinput"/></td>
      </tr>
      <tr>
          <td align="left" width="130px;">驾照起始时间：</td>
          <td width="220px;"><input name="driver.driverBegindate" type="text" value="${driver.driverBegindate}"  class="dfinput"/></td>
      </tr>
      <tr>
          <td align="left" width="130px;">驾照到期时间：</td>
          <td width="220px;"><input name="driver.driverEnddate" type="text" value="${driver.driverEnddate}"  class="dfinput"/></td>
      </tr>
      <tr>
          <td align="left" width="130px;">身体状况：</td>
          <td width="220px;"><input name="driver.driverBodystate" type="text" value="${driver.driverBodystate}"  class="dfinput"/></td>
      </tr>
      <tr>
          <td align="left" width="130px;">疾病史：</td>
          <td width="220px;"><input name="driver.ddriverIllness" type="text" value="${driver.driverIllness}"  class="dfinput"/></td>
      </tr>
      <tr>
          <td align="left" width="130px;">驾照证号：</td>
          <td width="220px;"><input name="driver.driverDrivercard" type="text" value="${driver.driverDrivercard}"  class="dfinput"/></td>
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

