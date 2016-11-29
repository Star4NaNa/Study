<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div class="pagin">
   	  <div class="message">共&nbsp;<i class="blue">${page.t_c_no}</i>&nbsp;条信息，当前显示第&nbsp;<i class="blue">${page.c_p_no}&nbsp;</i>页</div>
        <ul class="paginList">
            <li>
                 <c:if test="${page.have_first}"><a href="${pageContext.request.contextPath}/${page.path}&page.c_p_no=1">首页</a></c:if>
                 <c:if test="${!page.have_first}">首页</c:if>
            </li>
            <li> 
                 <c:if test="${page.have_prev}"><a href="${pageContext.request.contextPath}/${page.path}&page.c_p_no=${page.c_p_no-1}">上一页</a></c:if>
				 <c:if test="${!page.have_prev}">上一页</c:if>
            </li>
            <li>
                 <c:if test="${page.have_next}"><a href="${pageContext.request.contextPath}/${page.path}&page.c_p_no=${page.c_p_no+1}">下一页</a></c:if>
				 <c:if test="${!page.have_next}">下一页</c:if>
            </li>
            <li>
                 <c:if test="${page.have_last}"><a href="${pageContext.request.contextPath}/${page.path}&page.c_p_no=${page.t_p_no}">尾页</a></c:if>
				 <c:if test="${!page.have_last}">尾页</c:if>
            </li>
            <li style="background:0; border:0;">转入
			    <select class="select" onchange="location.href='${pageContext.request.contextPath}/${page.path}&page.c_p_no='+this.value">
			    <c:forEach var="selectvalue" begin="1" end="${page.t_p_no}" step="1">
				<option value="${selectvalue}" ${page.c_p_no eq selectvalue ?"selected='selected'":""}>
					${selectvalue}   
				</option>
				</c:forEach>
			    </select>
             </li>
        </ul>
</div>