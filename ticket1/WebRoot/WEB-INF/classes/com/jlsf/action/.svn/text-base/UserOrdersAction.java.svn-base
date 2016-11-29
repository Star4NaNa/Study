package com.jlsf.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.ClassesBiz;
import com.jlsf.biz.DriverBiz;
import com.jlsf.biz.ITicketBiz;
import com.jlsf.biz.ITicketTypeBiz;
import com.jlsf.biz.IUsersBiz;
import com.jlsf.biz.OrdersBiz;
import com.jlsf.entity.Classes;
import com.jlsf.entity.Driver;
import com.jlsf.entity.Orders;
import com.jlsf.entity.Ticket;
import com.jlsf.entity.TicketType;
import com.jlsf.entity.Users;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;

public class UserOrdersAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	// 承载订单的集合类
	private List<Orders> orders;
   
	Page page = new Page();
	// 订单业务类接口
	@Autowired
	OrdersBiz ordersBiz;

	Orders order;

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {
		this.order = order;
	}

	public String list() {
		// 教师列表
		if (order != null) {
			String startStation = order.getStationName();
			String endStation = order.getStationName();
			String startTime = order.getOrderStartTime();
			String endTime = order.getOrderEndTime();
			String classesCode = order.getClassesCode();
			// 封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			if (StringUtils.isNotEmpty(startStation)) {
				map.put("order.getStationName()", startStation);
			}
			if (StringUtils.isNotEmpty(endStation)) {
				map.put("order.getStationName()", endStation);
			}
			if (StringUtils.isNotEmpty(startTime)) {
				map.put("order.getOrderStartTime()", startTime);
			}
			if (StringUtils.isNotEmpty(endTime)) {
				map.put("order.getOrderEndTime()", endTime);
			}
			if (StringUtils.isNotEmpty(classesCode)) {
				map.put("order.getClassesCode()", classesCode);
			}


			page.setParamMap(map);
		}
		orders = ordersBiz.billlist(order, page);
		return "success";
	}
	
	public String del(){
		
		ordersBiz.deleteBatch(orders);
		return "success";
	}

	public List<Orders> getOrders() {
		return orders;
	}

	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}
	
	
	public String selbyname(){
	   HttpSession session = ServletActionContext.getRequest().getSession();
 	   Users user = (Users) session.getAttribute("users");
 	   if(user!=null)
 	   { 
 		   orders=ordersBiz.listByName(user.getUserRname());
 	      return "success";
 	   }else
 	   {
 		   
 		   return "notlog";
 	   }
	}
	
	
}
