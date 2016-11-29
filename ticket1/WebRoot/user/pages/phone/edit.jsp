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
   
   
   <div class="rightbar">
   
      <div class="title"><span>联系人</span></div>
  
      <form id="jqueryform" action="${pageContext.request.contextPath}/phone/update" method="post">
        
        <table class="tablelist">
           <tr>
             <td colspan="2">
                 <input name="lphone.phoneId" type="hidden" value="${lphone.phoneId }" />
              </td>
           </tr>
          <tr>
            <td>联系人姓名</td>
            <td><input name="lphone.phoneName" type="text" value="${lphone.phoneName }"/></td>
          </tr>
          
          <tr>
            <td>联系人电话</td>
            <td><input name="lphone.phoneNum" type="text" value="${lphone.phoneNum }"/></td>
          </tr>
          
          <tr>
            <td colspan="2"><input name="lphone.phoneUid" type="hidden" value="${lphone.phoneUid }"/></td>
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

   
   
  </body>
</html>
