<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

总 ${page.t_c_no} 条&nbsp;
每页 ${page.p_c_no} 条&nbsp;
总 ${page.t_p_no} 页 &nbsp;
第 ${page.c_p_no} 页&nbsp;

<c:if test="${!page.have_first}">首页</c:if>
<c:if test="${page.have_first}"><a href="${pageContext.request.contextPath}/${page.path}&page.c_p_no=1">首页</a></c:if>
&nbsp;
<c:if test="${page.have_prev}"><a href="${pageContext.request.contextPath}/${page.path}&page.c_p_no=${page.c_p_no-1}">上一页</a></c:if>
<c:if test="${!page.have_prev}">上一页</c:if>
&nbsp;
<c:if test="${page.have_next}"><a href="${pageContext.request.contextPath}/${page.path}&page.c_p_no=${page.c_p_no+1}">下一页</a></c:if>
<c:if test="${!page.have_next}">下一页</c:if>
&nbsp;
<c:if test="${page.have_last}"><a href="${pageContext.request.contextPath}/${page.path}&page.c_p_no=${page.t_p_no}">尾页</a></c:if>
<c:if test="${!page.have_last}">尾页</c:if>
&nbsp;
 第<select onchange="location.href='${pageContext.request.contextPath}/${page.path}&page.c_p_no='+this.value">
		<c:forEach var="selectvalue" begin="1" end="${page.t_p_no}" step="1">
			<option value="${selectvalue}" ${page.c_p_no eq selectvalue ?"selected='selected'":""}>
				${selectvalue}   
			</option>
		</c:forEach>
	</select>
页 




