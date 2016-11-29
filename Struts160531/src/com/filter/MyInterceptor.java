package com.filter;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MyInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation actioninvocation) throws Exception {
		//��ȡϵͳ��ǰʱ��
		long startTime=System.currentTimeMillis();
		
		String result=actioninvocation.invoke();
		
		long usedTime=System.currentTimeMillis()-startTime;
		
		System.out.println(usedTime);
		return result;
	}
	
}
