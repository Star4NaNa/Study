package com.jlsf.filter;
import java.util.Map;  

import com.jlsf.entity.Employee;
import com.opensymphony.xwork2.ActionContext;  
import com.opensymphony.xwork2.ActionInvocation;  
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;  
public class EmployeeInterceptot extends AbstractInterceptor{
	  
	private static final long serialVersionUID = 1L;

		@Override  
	    public String intercept(ActionInvocation invocation) throws Exception {  
	        ActionContext ctx = invocation.getInvocationContext();  
	        Map<String,Object> session = ctx.getSession();  
	        Employee employee = (Employee) session.get("employee");  
	        if (employee != null) {  
	            return invocation.invoke();  
	        }  
	        return "authority_emp_login";  
	    }  
	  
}
