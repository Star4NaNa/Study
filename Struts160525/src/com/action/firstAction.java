package com.action;

import com.opensymphony.xwork2.Action;

public class firstAction implements Action {
	private String mname;
	private String msg;
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String execute() throws Exception {
		this.setMsg(this.getMname());
		
		
		return SUCCESS;
	}
	

}
