<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
   String uname=request.getParameter("uname");
   if("admin".equals(uname)){
      out.print("true");
   }else{
     out.print("false");
   }

 %>
