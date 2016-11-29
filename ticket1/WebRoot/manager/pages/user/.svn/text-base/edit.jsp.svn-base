<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统</title>

<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />


<script type="text/javascript">
function cancel(){
	window.history.back();
}
</script>

</head>
  <body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">
  
   <%@include file="/manager/pages/inc/top.jsp" %>  
   
   <div class="VeryHuo">
   
   <%@include file="/manager/pages/inc/left.jsp" %>
   
   <div class="rightbar">
   
      <div class="title"><span>用户信息</span></div>
  
      <form id="jqueryform" action="${pageContext.request.contextPath}/users/update" method="post">
        
        <table class="tablelist">
           <tr>
             <td colspan="2">
                 <input name="u.userId" type="hidden" value="${u.userId }" readonly="readonly" />
              </td>
           </tr>
          <tr>
            <td>用户名</td>
            <td><input name="u.userName" type="text" value="${u.userName }"/></td>
          </tr>
          
          <tr>
            <td>真实姓名</td>
            <td><input name="u.userRname" type="text" value="${u.userRname }"/></td>
          </tr>
          
          <tr>
            <td>身份证号</td>
            <td><input name="u.userCarid" type="text" value="${u.userCarid }"/></td>
          </tr>
          
          <tr>
            <td>年龄</td>
            <td><input name="u.userAge" type="text" value="${u.userAge }"/></td>
          </tr>
          
          <tr>
            <td>电话</td>
            <td><input name="u.userPhone" type="text" value="${u.userPhone }"/></td>
          </tr>
          
          <tr>
            <td>身份</td>
            <td><input name="u.userType" type="text" value="${u.userType }"/></td>
          </tr>
          
          <tr>
            <td>E-mail</td>
            <td><input name="u.userEmail" type="text" value="${u.userEmail }"/></td>
          </tr>
          
          <tr>
            <td>IP地址</td>
            <td><input name="u.userIp" type="text" value="${u.userIp }"/></td>
          </tr>
          
          <tr>
            <td>用户状态</td>
            <td><input name="u.userStatus" type="text" value="${u.userStatus }"/></td>
          </tr>
          
          <tr>
            <td  colspan="2">
                <input type="submit" class="btn" value="保存"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="" type="button" class="btn" value="返回" onclick="cancel();"/>
             </td>
          </tr>
        
        </table>
      
      </form>
      
     </div>
   </div>
   
   
  </body>
</html>
