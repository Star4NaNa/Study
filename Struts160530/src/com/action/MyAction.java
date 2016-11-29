package com.action;

import com.biz.impl.MyTestBizImpl;
import com.entity.Mytest;
import com.opensymphony.xwork2.ActionSupport;

public class MyAction extends ActionSupport {
	private Mytest mytest;
	MyTestBizImpl mBiz=new MyTestBizImpl();
	private String msg;
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Mytest getMytest() {
		return mytest;
	}

	public void setMytest(Mytest mytest) {
		this.mytest = mytest;
	}
	
	public String register(){
		boolean test=mBiz.addMyTest(mytest);
		if(test){
			return "success";
			
		}else{
			this.setMsg("�û�ע�����������ע�ᣡ");
			return "error";
		}
	}
	
	public String dologin(){
		boolean test=mBiz.login(mytest);
		if(test){
			return "ok";
			
		}else{
			this.setMsg("�û������ڣ�����ע�ᣡ");
			return "error";
		}
	}
}
