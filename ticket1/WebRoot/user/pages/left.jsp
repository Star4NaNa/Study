<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/js/inc/jquery-1.11.1.min.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>通讯录</div>
    
    <dl class="leftmenu">
        
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/user/images/leftico01.png" /></span>页面示例
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="${pageContext.request.contextPath}/user/pages/index.jsp" target="rightFrame">首页</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/user/pages/teacher/teacher.jsp" target="rightFrame">列表页面</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/user/pages/edit.jsp" target="rightFrame">编辑页面</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/user/pages/user/detail.jsp" target="rightFrame">查看页面</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/user/pages/login.jsp" target="_blank">登录页面</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/user/pages/regist.jsp" target="_blank">注册页面</a><i></i></li>
        </ul>    
    </dd>
        
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/user/images/leftico02.png" /></span>设置
    </div>
    <ul class="menuson">
    	<li><cite></cite><a href="${pageContext.request.contextPath}/phone/list" target="rightFrame">联系人设置</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/user/pages/user/edit.jsp" target="rightFrame">修改个人信息</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/user/pages/user/editPwd.jsp" target="rightFrame">修改密码</a><i></i></li>
        </ul>     
    </dd> 
    
    
    <dd><div class="title"><span><img src="${pageContext.request.contextPath}/user/images/leftico03.png" /></span>订票</div>
    <ul class="menuson">
        <li><cite></cite><a href="${pageContext.request.contextPath}/train/list" target="rightFrame">订票</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/userOrders/selbyname" target="rightFrame">我的订单</a><i></i></li>
    </ul>    
    </dd>  
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/user/images/leftico01.png" /></span>其它，供大学习学使用
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="${pageContext.request.contextPath}/index.jsp" target="rightFrame">首页</a><i></i></li>
        <li><cite></cite><a href="${pageContext.request.contextPath}/servlet/TeacherServlet?method=list" target="rightFrame">教师管理</a><i></i></li>
        <li><cite></cite><a href="right.html" target="rightFrame">数据列表</a><i></i></li>
        <li><cite></cite><a href="imgtable.html" target="rightFrame">图片数据表</a><i></i></li>
        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li>
        </ul>    
    </dd>
    
    </dl>
</body>
</html>
