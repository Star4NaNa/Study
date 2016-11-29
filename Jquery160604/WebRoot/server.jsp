<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String[] source={"ajax","asp","baby","boy","girl","men","women"};
	String query=request.getParameter("term");
	StringBuilder sb=new StringBuilder();
	for(int i=0;i<source.length;i++){
		if(query!=null){
			if(source[i].indexOf(query)>=0){
				sb.append();
			}
		}
	}
 %>
