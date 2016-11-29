package com.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import com.biz.impl.StudentBizImpl;
import com.entity.Student;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class MyAction extends ActionSupport {
	private InputStream inputStream;
	private String uname;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	@Override
	public String execute() throws Exception {
		String result=null;
		Student student=new Student();
		student.setSname(uname);
		StudentBizImpl sBiz=new StudentBizImpl();
		boolean test=sBiz.valiStudent(student);
		if(test){
			result="<font color='red'>�û����Ѿ���ʹ�ã�</font>";
			
		}else{
			result="<font color='green'>�û������Ա�ʹ�ã�</font>";
			
		}
		inputStream=new ByteArrayInputStream(result.getBytes("utf-8"));
		return SUCCESS;
	}
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	
}
