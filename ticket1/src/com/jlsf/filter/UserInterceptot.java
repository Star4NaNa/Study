package com.jlsf.filter;
import java.util.Map;  

import com.jlsf.entity.Users;
import com.opensymphony.xwork2.ActionContext;  
import com.opensymphony.xwork2.ActionInvocation;  
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;  
public class UserInterceptot extends AbstractInterceptor{
	  
	private static final long serialVersionUID = 1L;

		@Override  
	    public String intercept(ActionInvocation invocation) throws Exception {  
	        ActionContext ctx = invocation.getInvocationContext();  
	        Map<String,Object> session = ctx.getSession();  
	        Users users = (Users) session.get("users");  
	        if (users != null) {  
	            return invocation.invoke();  
	        }  
	        return "authority_user_login";  
	    }  
	  
}
