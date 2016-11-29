package com.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class MyAction extends ActionSupport{
	private List<String> list;

	public List<String> getList() {
		return list;
	}

	public void setList(List<String> list) {
		this.list = list;
	}
	@Override
	public String execute() throws Exception {
		list=new ArrayList<String>();
		list.add("Ş±¶÷");
		list.add("Â¬Îı°²");
		list.add("ÒÁÔóÈğ¶û");
		return SUCCESS;
	}
}
