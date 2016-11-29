package com.test;

import java.util.List;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.biz.UsersBiz;
import com.entity.Users;

/**
 * 
 * @author lxy
 *	单元测试没有main函数
 */
public class TestUsers {
	//创建实体工厂
	private BeanFactory bf;
	//业务逻辑对象
	private UsersBiz uBiz;
	//初始化方法
	@Before
	public void init(){
		bf=new ClassPathXmlApplicationContext("applicationContext.xml");
		uBiz=(UsersBiz) bf.getBean("lxybiz");
	}
	@Test
	public void myQueryUsers(){
		
		Users u=uBiz.queryUsersById((short)2);
		System.out.println(u.getName());
	}
	@Ignore
	public void myQuery(){
		List<Users> list=uBiz.queryInfo();
		for (Users users : list) {
			System.out.println(users.getName());
		}
	}
	@Ignore
	public void myDel(){
		Users u=new Users((short)5,"yeshao","admin","123456","vn","shi");
		if(uBiz.delUsers(u)){
			System.out.println("ok");
		}else{
			System.out.println("ko");
		}
	}
	@Ignore
	public void myUp(){
		Users u=new Users((short)7,"UZi","UZI","小狗","VnQAQ","true");
		if(uBiz.upUsers(u)){
			System.out.println("ok");
		}else{
			System.out.println("ko");
		}
	}
	@Ignore
	public void myAdd(){
		Users u=new Users("yeshao", "admin", "123456", "vn", "shi");
		//Users u=new Users();
		//u.setId(new Short((short) 2));
		int num=uBiz.addUsers(u);
		//boolean test=uBiz.delUsers(u);
		if(num!=0){
			System.out.println("ok");
		}else{
			System.out.println("ko");
		}
	}
}
