package com.action;

import com.opensymphony.xwork2.ActionSupport;

public class loginsAction extends ActionSupport {
	private String username;
	private String userpwd;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	@Override
	public String execute() throws Exception {
		if("admin".equals(username)&&"admin".equals(userpwd)){
			return SUCCESS;
			
		}else{
			return ERROR;
			
		}
		
	}
}
