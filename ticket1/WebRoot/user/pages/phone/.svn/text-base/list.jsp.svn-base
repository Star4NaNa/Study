<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统</title>

<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

function add(){

  window.location.href="${pageContext.request.contextPath}/user/pages/phone/insert.jsp";

}

function search(){

  $("#searchForm").attr("action","${pageContext.request.contextPath}/phone/list");
  $("#searchForm").submit();

}

$(function (){
 $("#selectAll").click(function (){
   //$(this).attr("checked")
  if ($(this).prop("checked")){
     $("input[name='listphone.phoneId']").prop("checked",true);
  }else{
     $("input[name='listphone.phoneId']").prop("checked",false);
  }
 });
});

function del(){
  var size = $("input[name='listphone.phoneId']").filter(":checked").size();
  if(size < 1){
    alert("请选择要删除的用户信息");
  }else{
    if(confirm("是否删除")){
      $("#editForm").attr("action","${pageContext.request.contextPath}/phone/del");
      $("#editForm").submit();
    }
    
  }
}

/*function stop(){
  var size = $("input[name='users.userId']").filter(":checked").size();
  if(size < 1){
    alert("请选择要停用的用户信息");
  }else{
    if(confirm("是否停用")){
      $("#editForm").attr("action","${pageContext.request.contextPath}/users/stop");
      $("#editForm").submit();
    }
    
  }
}*/

function edit(){

  var size = $("input[name='listphone.phoneId']").filter(":checked").size();
  var phoneId = $("input[name='listphone.phoneId']").filter(":checked").val();
  if( size < 1){
    
    alert("请选择修改对象");
    
  } else if(size > 1){
    
    alert("请单个修改");
    
  } else {
  
    
    $("#editForm").attr("action","${pageContext.request.contextPath}/phone/edit?phone.phoneId="+phoneId);
    
    $("#editForm").submit();
  
  }
  
}


</script>

</head>


<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">


    <%@include file="/manager/pages/inc/top.jsp" %>
    
	<!--right-->
<div class="rightbar">
  
  <div class="title"><span>用户信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
      <ul class="toolbar">
      <li style="cursor: pointer;" onclick="add();"><span><img src="${pageContext.request.contextPath}/manager/images/t01.png"/></span>添加</li>
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
        <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li>
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
       <!--  <li style="cursor: pointer;" onclick="stop();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>停用</li> -->
      </ul>
    
    </div>
    
    
    <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:600px;">
    	<tr>
    	
    	<td  align="left">联系人姓名：
           <input name="phone.phoneName" type="text" />
            </td>

            </tr>
    </table>  
    </form>
        
    <div class="rightinfo">
    
    
    <form id="editForm" action="" method="post">
    <table class="tablelist" cellpadding="0" cellspacing="0" style="width:1000px;">
        <!-- 操作按钮行 -->
    	<thead>
    	<tr>
        <th><input id="selectAll" type="checkbox" value="0"/></th>
        <th>联系人姓名</th>
        <th>联系人电话</th>
        </tr>
        </thead>
        <!-- 数据行 -->
        <tbody>
        <c:forEach var="phone" items="${listphone }" varStatus="vst">
        <tr ondblclick="dbClickTr(${phone.phoneId});">
        <td><input name="listphone.phoneId" type="checkbox" value="${phone.phoneId }" /></td>
        <td>${phone.phoneName }</td>
        <td>${phone.phoneNum }</td>
        
        
        </tr> 
        </c:forEach>
        </tbody>
       </table>
       
       </form>
    
    <%@include file="/manager/pages/user/page_turn/list.jsp" %>
    

    
    
      </div>
    </div>
  
</body>
