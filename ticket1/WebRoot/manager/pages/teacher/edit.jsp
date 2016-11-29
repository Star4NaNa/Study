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
   var teacherName = $("#teacherName").val();
   /* if (teacherName == null || teacherName == ""){
   } */
   if (!teacherName){
    alert("请输入教师姓名！");
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
    
    <div class="title"><span>${empty teacher.teacherId ? "新增":"修改"}教师信息</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/teacher/save" method="post">
    <table class="tbb" style="margin-top:10px;">
      <tr>
          <td align="left" width="130px">教师名称：</td>
          <td align="left" width="220px;">
              <input id="teacherName" name="teacher.teacherName" value="${teacher.teacherName}"  type="text" maxlength="32" class="dfinput" />
	          <input  name="teacher.teacherId" type="hidden" value="${teacher.teacherId}"/>
	          <span class="xx">*</span>
          </td>
          <td  width="180px" align="right">教师年龄：</td>
          <td width="220px;">
	         <input name="teacher.teacherAge" value="${teacher.teacherAge}"  type="text" maxlength="3" class="dfinput" />
         </td>
      </tr>
      <tr>
          <td align="left" width="130px">教师编号：</td>
          <td width="220px;">
          <input name="teacher.teacherNo" id="typeSel_pitem" type="text" value="${teacher.teacherNo}" class="dfinput"/>
          </td>
          <td  width="180px" align="right">教师性别：</td>
          <td width="220px;">
              <input name="teacher.teacherSex" type="radio" value="男"  ${(teacher.teacherSex eq "男" || empty teacher.teacherSex) ? "checked":""} class="tbClass"/>男
              &nbsp;&nbsp;&nbsp;&nbsp;
		      <input name="teacher.teacherSex" type="radio" value="女" ${teacher.teacherSex eq "女" ? "checked":""} class="tbClass"/>女
          </td>
      </tr>
      <tr><td class="title" colspan="4" style="height:10px;"></td></tr>
      <tr>
          <td align="left" width="130px">所属省份：</td>
          <td width="220px;">
             <select  class="dfinput" id="province">
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" ${teacher.proAreaId ==  area.areaId ? "selected":""} >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td  width="180px" align="right">所属市：</td>
          <td width="220px;">
              <select  class="dfinput" id="city">
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	           <option value="${city.areaId}" ${teacher.cityAreaId ==  city.areaId ? "selected":""}>${city.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
      </tr>
      <tr>
          <td align="left" width="130px">所属区/县：</td>
          <td width="220px;">
          <select  name="teacher.areaId" class="dfinput" id="area">
	          <option value="">请选择区/县</option>
	           <c:forEach var="area" items="${areaAreas}">
	           <option value="${area.areaId}" ${teacher.areaId==  area.areaId ? "selected":""}>${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td  width="180px" align="right"></td>
          <td width="220px;">
          </td>
      </tr>
      <tr><td class="title" colspan="4" style="height:10px;"></td></tr>
      <tr>
          <td align="left" width="130px">备注：</td>
          <td  colspan="3"><textarea  name="teacher.teacherText" rows="2" cols="20" class="textinput">${teacher.teacherText}</textarea></td>
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

