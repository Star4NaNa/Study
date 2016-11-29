<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My JSP 'index1.jsp' starting page</title>
<link rel="stylesheet" href="<%=path%>/themes/base/jquery.ui.all.css" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.core.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.widget.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.ui.tabs.js"></script>
<script type="text/javascript">
	$(function() {
		$("#div1").tabs({
			active : 0,
			collapsible : true,
			activate : function(event, url) {
				alert("触发activate事件");
			}
		});
	});
</script>
</head>

<body>
	<div id="div1">
		<ul>
			<li><a href="#tabs-1">这是一选项卡</a></li>
			<li><a href="#tabs-2">这是二选项卡</a></li>
		</ul>
		<div id="tabs-1">这是一选项卡</div>
		<div id="tabs-2">这是二选项卡</div>
	</div>

</body>
</html>
