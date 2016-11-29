package com.action;

import com.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

public class MyAction extends ActionSupport {
	private String paths;
	private Users users;
	public String getPaths() {
		return paths;
	}
	public void setPaths(String paths) {
		this.paths = paths;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public String dologin() {
		if("admin".equals(users.getUsersname())&&"admin".equals(users.getUserspwd())){
			paths="vn";
			
		}else{
			paths="ez";
		}
		
		return "success";
	}
}
