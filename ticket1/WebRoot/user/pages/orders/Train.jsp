<%@ page language="java" import="java.util.Date" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/manager/pages/inc/inc.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<title><%=title%></title>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/inc/datePicker/WdatePicker.js"></script>
<script type="text/javascript">


function search(){
      $("#searchForm").attr("action","${pageContext.request.contextPath}/train/list");
      $("#searchForm").submit();
}
$(document).ready(function(){
  //给省绑定change事件，做联动
  getChildren("province","city");
  getChildren("province1","city1");

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

<body >

<div>
<div>
  <div class="title"><span>车次信息</span></div>
  <br>
  <form id="searchForm" action="" method="post">
     <table class="tbb" style="margin-top:10px;">
       <tr>
          <td align="left" width="130px">始发站：</td>
          <td width="220px;">
             <select  class="dfinput" id="province">
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}" >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
          <td width="220px;">
              <select  class="dfinput" id="city" name="classe.startAreaId">
	             <option value="">请选择市</option>
	          </select>
          </tr>
          <tr>
          <td align="left" width="130px">终到站：</td>
          <td width="220px;">
             <select  class="dfinput" id="province1">
	          <option value="">请选择省</option>
	          <c:forEach var="area" items="${areas}">
	          <option value="${area.areaId}"  >${area.areaName}</option>
	          </c:forEach>
	          </select>
          </td>
            <td width="220px;">
              <select  class="dfinput" id="city1" name="classe.stopAreaId">
	             <option value="">请选择市</option>
	          </select>
          </tr>
          <tr>
          <td>日期：</td>
          <td>
              <input class="Wdate" type="text"  value="<fmt:formatDate value="<%=new Date()%>" pattern="yyyy-MM-dd"/> "  name="ticket.classesDate"   id="datetext" style="height: 26px;width:100px;"  onClick="WdatePicker({minDate:'%y-%M-%d'})"/>
           
          </td>
             <td>
                <div class="tools">
    	           <ul class="toolbar">  
                       <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
                   </ul>
                </div>
             </td>
           </tr>
       </table>
     </form>


    <form id="editForm" action="" method="post">					
	       <table class="tablelist" cellpadding="0" cellspacing="0">
    	<thead>
    	<tr>
        <th><input class="sel_all" type="checkbox" id="sel_all"/></th>
        <th>车次</th>
        <th>日期</th>
        <th>始发站</th>
        <th>终到站</th>
        <th>发车时间</th>
        <th>到站时间</th>
        <th>剩余（张）</th>
        <th>操作</th>
        </tr>
        </thead>
        
        <tbody>

   <c:forEach var="c" items="${classes}" >
        <tr>
        <td><input class="keyid" name=""  value="" type="checkbox"/></td>
        <td>${c.classesCode}</td>
        <td>${c.classDate }</td>
        <td>${c.classesStartstationidName}</td>
        <td>${c.classesEndstationidName}</td>
        <td>${c.classesStarttime }</td>
        <td>${c.classesEndtime }</td>
        <td>${c.ticketNumber }</td>
        <td><a href="${pageContext.request.contextPath}/passenger/list?method=get&classes.classesId=${c.classesId}" >订票</a></td>
        </tr> 
	</c:forEach>
    </tbody>
    </table>
    </form>
    <%@include file="/manager/pages/inc/page_turn/list.jsp" %>
   </div>
<!--  
</div>

<div id="menuContent" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree" class="ztree" style="margin-top:0; width:160px;height:500px;"></ul>
</div>
<div id="menuContent_area" class="menuContent" style="display:none; position: absolute;background-color:#f0f6e4;overflow: auto;">
	<ul id="zTree_area" class="ztree" style="margin-top:0; width:160px;height:350px;"></ul>
</div>
       -->
</body>
</html>