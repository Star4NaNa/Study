package com.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.biz.UsersBiz;
import com.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

public class UsersAction extends ActionSupport {
	private UsersBiz uBzi;//注入
	private Users users;//OGNL
	private Short myid;
	public Short getMyid() {
		return myid;
	}
	public void setMyid(Short myid) {
		this.myid = myid;
	}
	public UsersBiz getuBzi() {
		return uBzi;
	}
	public void setuBzi(UsersBiz uBzi) {
		this.uBzi = uBzi;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	//自定义方法 添加数据
	public String tianjia(){
		int num=uBzi.addUsers(users);
		if(num!=0){
			return "tianjia";
		}
		return "error";
	}
	public String selInfo(){
		List<Users> list=uBzi.queryInfo();
		HttpSession session=ServletActionContext.getRequest().getSession();
		session.setAttribute("list", list);
		if(list.size()>0){
			return "selInfo";
		}
		return "error";
	}
	public String doDel(){
		Users user=uBzi.queryUsersById(myid);
		boolean test=uBzi.delUsers(user);
		if(test){
			return "doDel";
		}else{
			return "error";
		}
	}
	public String upex(){
		Users u=uBzi.queryUsersById(myid);
		HttpSession session=ServletActionContext.getRequest().getSession();
		session.setAttribute("u", u);
		if(u.getName()!=null&&!u.getName().equals("")){
			return "upex";
		}else{
			return "error";
		}
	}
	public String upaf(){
		
		boolean test=uBzi.upUsers(users);
		if(test){
			return "upaf";
		}else{
			return "error";
		}
	}
}
