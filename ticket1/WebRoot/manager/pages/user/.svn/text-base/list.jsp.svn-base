<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统</title>

<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

function search(){

  $("#searchForm").attr("action","${pageContext.request.contextPath}/users/list");
  $("#searchForm").submit();

}

$(function (){
 $("#selectAll").click(function (){
   //$(this).attr("checked")
  if ($(this).prop("checked")){
     $("input[name='users.userId']").prop("checked",true);
  }else{
     $("input[name='users.userId']").prop("checked",false);
  }
 });
});

function del(){
  var size = $("input[name='users.userId']").filter(":checked").size();
  if(size < 1){
    alert("请选择要删除的用户信息");
  }else{
    if(confirm("是否删除")){
      $("#editForm").attr("action","${pageContext.request.contextPath}/users/del");
      $("#editForm").submit();
    }
    
  }
}

function stop(){
  var size = $("input[name='users.userId']").filter(":checked").size();
  if(size < 1){
    alert("请选择要停用的用户信息");
  }else{
    if(confirm("是否停用")){
      $("#editForm").attr("action","${pageContext.request.contextPath}/users/stop");
      $("#editForm").submit();
    }
    
  }
}

function edit(){

  var size = $("input[name='users.userId']").filter(":checked").size();
  var userId = $("input[name='users.userId']").filter(":checked").val();
  if( size < 1){
    
    alert("请选择修改对象");
    
  } else if(size > 1){
    
    alert("请单个修改");
    
  } else {
  
    
    $("#editForm").attr("action","${pageContext.request.contextPath}/users/selectByid?u.userId="+userId);
    
    $("#editForm").submit();
  
  }
  
}


</script>

</head>


<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">


    <%@include file="/manager/pages/inc/top.jsp" %>

      <div class="VeryHuo">
    <%@include file="/manager/pages/inc/left.jsp" %>
    
	<!--right-->
<div class="rightbar">
  
  <div class="title"><span>用户信息</span></div>
  
  <form id="searchForm" action="" method="post">	
    <div class="tools">
      <ul class="toolbar">
        <li style="cursor: pointer;" onclick="edit();"><span><img src="${pageContext.request.contextPath}/manager/images/t02.png"/></span>修改</li>
       <!-- <li style="cursor: pointer;" onclick="del();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>删除</li> -->
        <li style="cursor: pointer;" onclick="search();"><span><input type="image" src="${pageContext.request.contextPath}/manager/images/t04.png"/> </span>查询</li>
        <li style="cursor: pointer;" onclick="stop();"><span><img src="${pageContext.request.contextPath}/manager/images/t03.png"/></span>停用</li>
      </ul>
    
    </div>
    
    
    <table cellpadding="0" cellspacing="0" style="margin-left: 10px; width:600px;">
    	<tr>
    	
    	<td  align="left">用户名：
           <input name="u.userName" type="text" />
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
        <th>编号<i class="sort"><img src="${pageContext.request.contextPath}/user/images/px.gif" /></i></th>
        <th>用户名</th>
        <th>真实姓名</th>
        <th>身份证号</th>
        <th>年龄</th>
        <th>电话</th>
        <th>身份</th>
        <th>E-mail</th>
        <th>IP地址</th>
        <th>用户状态</th>
        <th>密保问题</th>
        </tr>
        </thead>
        <!-- 数据行 -->
        <tbody>
        <c:forEach var="u" items="${users }" varStatus="vst">
        <tr ondblclick="dbClickTr(${u.userId});">
        <td><input name="users.userId" type="checkbox" value="${u.userId }" /></td>
        <td>${u.userId }</td>
        <td>${u.userName }</td>
        <td>${u.userRname }</td>
        <td>${u.userCarid }</td>
        <td>${u.userAge }</td>
        <td>${u.userPhone }</td>
        <td>${u.userType }</td>
        <td>${u.userEmail }</td>
        <td>${u.userIp }</td>
        <td>${u.userStatus }</td>
        <td>${u.userQue }</td>
        
        </tr> 
        </c:forEach>
        </tbody>
       </table>
       
       </form>
    
    <%@include file="/manager/pages/user/page_turn/list.jsp" %>
    

    
    
      </div>
    </div>
    </div>
  
</body>
</html>

