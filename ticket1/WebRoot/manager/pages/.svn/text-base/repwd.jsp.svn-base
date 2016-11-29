<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/manager/pages/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/manager/css/style.css" rel="stylesheet" type="text/css" />
<title><%=title%></title>
<script type="text/javascript">
function cancel(){
	window.history.back();
}
function sub(){
$('#jqueryform').submit();
}
$(function(){
    $.tools.validator.fn("[name=param_.user_pwd]", "请输入原始密码", function(input, value) {
    if (/^\s*$/.test(value)){
    return false;
    }
    return true;
    });
    
    $.tools.validator.fn("[name=param_.newpwd]", "请输入新密码", function(input, value) {
    if (/^\s*$/.test(value)){
    return false;
    }
    return true;
    });
    
    $.tools.validator.fn("[name=param_.renewpwd]", "请再次输入新密码", function(input, value) {
    if (/^\s*$/.test(value)){
	    return false;
    }
    return true;
    });
    
    $.tools.validator.fn("[data-equals]", "两次输入的密码不一至", function(input) {
    var name = input.attr("data-equals"),
    field = this.getInputs().filter("[name='" + name + "']");
    return input.val() == field.val() ? true : [name];
    });
    
    
	$("#jqueryform").validator({
	 position: 'top left',
	 offset: [0, 0],
	 message: '<div><em/></div>' 
	 });

	if (${not empty data_.msg}){
	$("#jqueryform").data("validator").invalidate({"param_.user_pwd":"${data_.msg}"});
	}	 
	 
});
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">

<%@include file="/manager/pages/inc/top.jsp"%>
<div class="VeryHuo">
<%@include file="/manager/pages/inc/left.jsp"%>

<!--right-->
<div class="rightbar" style="overflow-x: hidden;">

    <div class="title"><span> 修改密码</span></div>
    <form id="jqueryform" action="${pageContext.request.contextPath}/user/saveRepwd" method="post">
    <table cellspacing="10">
      <tr>
          <td align="right">原始密码：</td>
          <td><input name="param_.user_pwd" type="password" maxlength="16" class="dfinput"/><span class="xx">*</span></td>
          <td width="80px" align="right"></td>
          <td></td>
      </tr>
      <tr>
          <td align="right">新密码：</td>
          <td><input name="param_.newpwd" type="password" maxlength="16"  class="dfinput" /><span class="xx">*</span></td>
          <td width="80px" align="right"></td>
          <td></td>
      </tr>
      <tr>
          <td align="right">确认新密码：</td>
          <td><input name="param_.renewpwd" type="password" maxlength="16" data-equals="param_.newpwd" class="dfinput"/></td>
          <td width="80px" align="right"></td>
          <td></td>
      </tr>
      <tr>
          <td align="right">&nbsp;</td>
          <td  colspan="3"><input type="submit" class="btn" value="保存"/> <input type="button" class="btn" value="返回" onclick="cancel();"/></td>
      </tr>
    </table>
    </form>
</div>
<!--right-->
</div>
 <%@include file="/manager/pages/inc/foot.jsp" %>
</body>
</html>