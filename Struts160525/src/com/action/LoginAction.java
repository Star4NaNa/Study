package com.action;

import com.opensymphony.xwork2.Action;

public class LoginAction implements Action {
	private String uname;
	private String upwd;
	private String msg;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String execute() throws Exception {
		if("admin".equals(uname)&&"admin".equals(upwd)){
				this.setMsg("µÇÂ½³É¹¦£¡£¡");
				return SUCCESS;
			}else{
				this.setMsg("µÇÂ½Ê§°Ü£¡£¡");;
				return ERROR;
			}
	}
	
}
