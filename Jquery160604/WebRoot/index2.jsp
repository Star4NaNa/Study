<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index2.jsp' starting page</title>
<link rel="stylesheet" href="<%=path%>/themes/base/jquery.ui.all.css" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.core.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.widget.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.position.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.menu.js"></script>
<script type="text/javascript">
	$(function() {
		$("#menu").menu();
	});
</script>
</head>

<body>
	<div class="">
		<ul id="menu">
			<li class="ui-state-disabled"><a href="#">系统管理</a></li>
			<li><a href="#">个人工具</a></li>
			<li><a href="#">平台研发中心</a></li>
			<li><a href="#">产品设计中心</a></li>
			<li><a href="#">加盟中心</a>
				<ul>
					<li class="ui-state-disabled"><a href="#">班级管理</a></li>
					<li><a href="#">学生管理</a></li>
					<li><a href="#">后勤管理</a></li>
				</ul></li>
			<li><a href="#">人事部</a></li>
			<li><a href="#">财务部</a>
				<ul>
					<li><a href="#">资金管理</a>
						<ul>
							<li><a href="#">现金流管理</a></li>
							<li><a href="#">应收应付管理</a></li>
							<li><a href="#">固定资产管理</a></li>
						</ul></li>
					<li><a href="#">统计分析</a>
						<ul>
							<li><a href="#">支出统计</a></li>
							<li><a href="#">收入统计</a></li>
							<li><a href="#">固定资产统计</a></li>
						</ul></li>
					<li><a href="#">工资结算</a></li>
				</ul></li>
			<li class="ui-state-disabled"><a href="#">综合部</a></li>
		</ul>

	</div>
</body>
</html>
