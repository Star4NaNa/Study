package com.action;

import java.util.Map;

import javax.servlet.Servlet;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String username;
	private String password;
	private static final String MYNAME="";
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public void validate() {
		if(this.getUsername().length()==0){
			addFieldError("username", "用户名不能为空");
			
		}
		if(this.getPassword().length()==0){
			addFieldError("password", "密码不能为空");
			
		}
	}
	@Override
	public String execute() throws Exception {
		if("admin".equals(username)&&"admin".equals(password)){
//			Map<String,Object> session=ActionContext.getContext().getSession();
			HttpSession session=ServletActionContext.getRequest().getSession();
//			if(session.containsKey(MYNAME)){
//				session.remove(MYNAME);
//				
//			}
//			session.put(MYNAME, username);
			session.setAttribute("asd", username);
			return "success";
			
		}else{
			return "input";
		}
		
	}
	
}
