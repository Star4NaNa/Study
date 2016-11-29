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
   var empName = $("#empName").val();
   var empAge = $("#empAge").val();
   var empUsername = $("#empUsername").val();
   var empPassword = $("#empPassword").val();
   /* if (teacherName == null || teacherName == ""){
   } */
   if (!empName){
    alert("请输入员工姓名！");
     return false;
   }
   if (!empAge){
    alert("请输入员工年龄！");
     return false;
   }
   if (!/^\d{1,3}$/.test(empAge)){
    alert("请输入正确的年龄！");
     return false;
   }
   if (!empUsername){
    alert("请输入员工账号！");
     return false;
   }
   if (!empPassword){
    alert("请输入员工密码！");
     return false;
   }
    
  });
  
   //给控件绑定submit第三种方式  等价于bind事件,非侵式，可绑定多个
  /* $("#jqueryform").submit(function (){
    
  }); */
  
   


});
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
    
    <div class="title"><span>${empty employee.empId ? "新增":"修改"}员工信息</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/employee/save" method="post">
     <table class="tbb" style="margin-top:10px;">
      <tr>
        <td align="left" width="130px">员工姓名：</td>
        <td align="left" width="220px;">
              <input id="empName" name="employee.empName" value="${employee.empName}"  type="text" maxlength="32" class="dfinput" />
	          <span class="xx">*</span>
	          <input  name="employee.empId" type="hidden" value="${employee.empId}"/>	          
          </td>
          <td  width="180px" align="right">员工年龄：</td>
          <td width="220px;">
	         <input id="empAge" name="employee.empAge" value="${employee.empAge}"  type="text" maxlength="3" class="dfinput" />
             <span class="xx">*</span>
         </td>
      </tr>
      <tr>
          <td align="left" width="130px">员工籍贯：</td>
          <td width="220px;">
          <input name="employee.empArea" id="typeSel_pitem" type="text" value="${employee.empArea}" class="dfinput"/>
          </td>
          <td  width="180px" align="right">员工性别：</td>
          <td width="220px;">
              <input name="employee.empSex" type="radio" value="男"  ${(employee.empSex eq "男" || empty employee.empSex) ? "checked":""} class="tbClass"/>男
              &nbsp;&nbsp;&nbsp;&nbsp;
		      <input name="employee.empSex" type="radio" value="女" ${employee.empSex eq "女" ? "checked":""} class="tbClass"/>女
          </td>
      </tr>
      <tr>
          <td align="left" width="130px">员工身份证号：</td>
          <td width="220px;">
          <input name="employee.empCardno" id="typeSel_pitem" type="text" value="${employee.empCardno}" class="dfinput"/>
          </td>
           <td width="180px" align="right">在职状态：</td>
          <td width="220px;">
          <input name="employee.empStatus" type="radio" ${employee.empStatus == 1?"checked='checked'":""} value="1"/>在职
          <input name="employee.empStatus" type="radio" ${employee.empStatus == 0?"checked='checked'":""} value="0"/>离职
          <%--
            <select  name="employee.empStatus" class="select_search">
	          <option value="">所有</option>
	          <option value="1" ${employee.empStatus == 1?"selected":""}>在职</option>
	          <option value="0" ${employee.empStatus == 0?"selected":""}>离职</option>
	          </select>
	           --%>
          </td>
              
      </tr>   
      <tr>
          <td align="left" width="130px">登录账号：</td>
          <td align="left" width="220px;">
              <input id="empUsername" name="employee.empUsername" value="${employee.empUsername}"  type="text" maxlength="50" class="dfinput" />
	          
	          <span class="xx">*</span>
          </td>
          <td  width="180px" align="right">登录密码：</td>
          <td width="220px;">
	         <input id="empPassword" name="employee.empPassword" value="${employee.empPassword}"  type="text" maxlength="50" class="dfinput" />
             <span class="xx">*</span>
         </td>
      </tr>
      <%-- 
      <tr><td class="title" colspan="4" style="height:10px;"></td></tr>--%>
      <tr>
          <td align="right" >&nbsp;</td>
          <td  colspan="3"><input type="submit" class="btn" value="保存"/> <input  type="button" class="btn" value="返回" onclick="cancel();"/></td>
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

