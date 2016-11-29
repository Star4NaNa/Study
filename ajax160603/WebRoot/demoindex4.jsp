<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String uname=request.getParameter("uname");
  
  if("admin".equals(uname)){
      out.print("{\"flag\":true,\"msg\":\"<font color='red'>用户名已经被使用了！</font>\"}");
  
  }else{
    out.print("{\"flag\":false,\"msg\":\"<font color='green'>用户名可以被使用了！</font>\"}");
  
  }
 

 %>
