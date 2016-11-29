<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<title><%=title%></title>
<script type="text/javascript">
//添加
function add(f){
    var url = "${pageContext.request.contextPath}/route/toAdd";
	window.location.href=url;
}
//修改  先进行勾选，修改选中的，全选时不能修改
function edit(){

	var size = $("input[name='routess.routeId']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要修改的路线信息");
	}else if (size > 1){
	 alert("只能修改一条路线信息");
	}else{
	var routeId = $("input[name='routess.routeId']").filter(":checked").val();
	 var url = "${pageContext.request.contextPath}/route/toEdit?route.routeId="+routeId;
	 window.location.href=url;
	 //$("#editForm").submit();
	}
 
}
//删除  先进行勾选，可以全选
function del(){              
   var size = $("input[name='routess.routeId']").filter(":checked").size();
	if (size < 1){
	 alert("请选择要删除的路线信息");
	}else{
	if(confirm("确认要删除吗？")){
	var routeId = $("input[name='routess.routeId']").filter(":checked").val();
	 var url = "${pageContext.request.contextPath}/route/del";
	 $("#editForm").attr("action",url);
	 $("#editForm").submit();
	  
	}
	}
}

function dbClickTr(value){
window.location.href = "${pageContext.request.contextPath}/manager/pages/item/view.jsp";
}
//查询
function search(){
$("#searchForm").attr("action","${pageContext.request.contextPath}/route/view.jsp");
$("#searchForm").submit();
}
//省市级联
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
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp" %>

<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp" %>

<!--right-->
<div class="rightbar">
  
  <div class="title"><span>路线信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
    	<ul class="toolbar">
        <li style="cursor: pointer;" onclick="add();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        <li style="cursor: pointer;" onclick="exportItem();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t05.png"/> </span>路线热度排行</li>
        </ul>
    </div>
    <table cellpadding="0" cellspacing="0" style="width:960px;">
      <tr>
          <td  align="right" >线路编号：  </td>
          <td><input style="height: 23px;width:210px;line-height: 23px;" name="param_.item_name" type="text" value="${data_.item_name}" maxlength="50" class="dfinput" /></td>
          <td  align="right" >线路名称：  </td>
          <td><input style="height: 23px;width:210px;line-height: 23px;" name="param_.item_name" type="text" value="${data_.item_name}" maxlength="50" class="dfinput" /></td>
          <td align="right">线路状态：</td>
          <td>
	          <select  name="param_.item_year" class="select_search">
	           <option value="">--请选择--</option>
	          <option value="">正使用</option>
	          <option value="">已禁用</option>
	          </select>
          </td>
       </tr>
       <tr>  
          <td align="right">起点省份：</td>
          <td width="220px;">
             <select  class="dfinput" id="stratprovince">
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" ${route.routeStartareaid ==  area.areaId ? "selected":""} >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          
          <td align="right">起点城市：</td>
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
          <td align="right">终点省份：</td>
          <td width="220px;">
             <select  class="dfinput" id="stopprovince">
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" ${teacher.routeEndareaid ==  area.areaId ? "selected":""} >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          
          <td align="right">终点城市：</td>
          <td width="220px;">
              <select  class="dfinput" id="stopcity">
	          <option value="">请选择市</option>
	          <c:forEach var="city" items="${cityAreas}">
	           <option value="${city.areaId}" ${route.cityAreaId ==  city.areaId ? "selected":""}>${city.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
         </tr> 
         
    </table>
    </form>
    <form id="editForm" action="" method="post">					
	 <table class="tablelist" cellpadding="0" cellspacing="0" style="width:1060px;">
    	<thead>
    	<tr>
          <th><input class="sel_all" type="checkbox" id="sel_all"/></th>
          <th width="100">序号</th>
          <th width="100">线路编号</th>
          <th width="100">线路名称</th>
          <th width="100">起点区域</th>
          <th width="100">终点区域</th>
          <th width="100">线路状态</th>
          <th width="100">首车时间</th>
          <th width="100">末车时间</th>
          <th width="100">线路热度</th>
          <th width="100">线路备注</th>
        </tr>
        </thead>
          <tbody>
     
        <c:forEach var="route" items="${routess}" varStatus="vst">
        <tr ondblclick="dbClickTr(${route.routeId});">
        <td><input class="keyid" name="routess.routeId"  value="${route.routeId}" type="checkbox"/></td>
        <td>${route.routeId}</td>
        <td>${route.routeNum}</td>
        <td>${route.routeName}</td>
        <td>${route.routeStartareaid}</td>
        <td>${route.routeEndareaid}</td>
        <td>${route.routeStatus}</td>
        <td>${route.routeStarttime}</td>
        <td>${route.routeStoptime}</td>
        <td>${route.routeHot}</td>
        <td>${route.routeRemark}</td>
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