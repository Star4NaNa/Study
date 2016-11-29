<%@ page language="java" pageEncoding="UTF-8"%>
<script>
$(function(){
 $(".lefttop").click(function(){
   var clickUl = $(this).parent().find("ul");
   $(".leftmenu dd ul").each(function(){
	   if (clickUl.attr("id") != $(this).attr("id")){
	     hideUL($(this));
	   }else{
	     if ($(this).is(":visible")){
	     hideUL($(this));
	     }else{
	     showUL($(this));
	     }
	   }
   });
  
 });
});

function hideUL(obj){
       obj.hide("normal",function(){
	   $(this).parent().find(".lefttop").css({"background":"url(${pageContext.request.contextPath}/manager/images/lefttop.jpg) no-repeat;"});
	   });
}
function showUL(obj){
       obj.show("normal",function(){
	   $(this).parent().find(".lefttop").css({"background":"url(${pageContext.request.contextPath}/manager/images/lefttop2.jpg) no-repeat;"});
	   });
}
</script>
<!--left-->
<div  class="leftbar">
   <dl class="leftmenu">
             <dd>
			    <div class="lefttop"><img src="${pageContext.request.contextPath}/manager/images/r1.png" />页面示例 </div>
		    	<ul ${empty param.model ? "":"class='hide'"} id="ul1">
		    	<li><a href="${pageContext.request.contextPath}/teacher/list">教师示例</a></li>
		        <li><a href="${pageContext.request.contextPath}/manager/pages/teacher/list.jsp">列表</a></li>
		        <li><a href="${pageContext.request.contextPath}/manager/pages/teacher/edit.jsp" >添加/修改</a></li>
		        <li><a href="${pageContext.request.contextPath}/manager/pages/teacher/view.jsp" >详情</a></li>
		        <li><a href="${pageContext.request.contextPath}/manager/pages/login.jsp" >登录</a></li>
		        <li><a href="${pageContext.request.contextPath}/manager/pages/repwd.jsp" >修改密码</a></li>
		        </ul>    
		    </dd>
		    <dd>
		    <%-- ${param.model} ==>request.getParamter("model") --%>
		    <div class="lefttop"><img src="${pageContext.request.contextPath}/manager/images/r6.png"/>基本设置</div>
		     <ul ${param.model eq "basic" ? "":"class='hide'"} id="ul7">
		      <li><a href="${pageContext.request.contextPath}/area/list">区域</a></li>
		      <li><a href="${pageContext.request.contextPath}/busStation/list">汽车站</a></li>
		      <li><a href="${pageContext.request.contextPath}/car/list">汽车</a></li>
		      <li><a href="${pageContext.request.contextPath}/driver/list">司机</a></li>
		     </ul> 
	         </dd>
		    <dd>
			    <div class="lefttop"><img src="${pageContext.request.contextPath}/manager/images/r7.png" />路线/班次 </div>
		    	<ul ${param.model eq "route" ? "":"class='hide'"} id="ul2">
		        <li><a href="${pageContext.request.contextPath}/route/list" >路线</a></li>
		        <li><a href="${pageContext.request.contextPath}/classes/list" >班次</a></li>
		        </ul>    
		    </dd>
    
            <dd>
			    <div class="lefttop"><img src="${pageContext.request.contextPath}/manager/images/r2.png" />车票</div>
		    	<ul ${param.model eq "ticket" ? "":"class='hide'"} id="ul3">
		        <li><a href="${pageContext.request.contextPath}/ticket/list">车票</a></li>
		        <li><a href="${pageContext.request.contextPath}/ticketType/list" >车票类型</a></li>
		        </ul>    
		    </dd>
    
    
            <dd>
			    <div class="lefttop"><img src="${pageContext.request.contextPath}/manager/images/r3.png" />订单</div>
		    	<ul ${param.model eq "order" ? "":"class='hide'"} id="ul4">
		    	<li><a href="${pageContext.request.contextPath}/orders/list" >订单</a></li>
		        
		        </ul>    
		    </dd>
  
          <dd>
			    <div class="lefttop"><img src="${pageContext.request.contextPath}/manager/images/r4.png" />员工/用户</div>
		    	<ul ${param.model eq "user" ? "":"class='hide'"} id="ul5">
		        <li><a href="${pageContext.request.contextPath}/employee/list">员工</a></li>
		        <li><a href="${pageContext.request.contextPath}/users/list">用户</a></li>
		        </ul>    
		    </dd>
		    <%-- 
		    <dd>
			    <div class="lefttop"><img src="${pageContext.request.contextPath}/manager/images/r5.png" />投资审计法规库</div>
		    	<ul ${param.model eq "law" ? "":"class='hide'"} id="ul6">
		        <li><a href="${pageContext.request.contextPath}/law/list" >法律法规</a></li>
		        </ul>    
		    </dd>--%>
		    
    </dl>
</div>
<!--left-->
