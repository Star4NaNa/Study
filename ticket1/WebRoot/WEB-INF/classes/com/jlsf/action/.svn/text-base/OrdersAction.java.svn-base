package com.jlsf.action;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.IOrdersBiz;
import com.jlsf.biz.IUsersBiz;
import com.jlsf.entity.Car;
import com.jlsf.entity.Orders;
import com.jlsf.entity.Users;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 说明：orders页面action类
 * 作者：王世奇
 * @author w09
 *
 */
public class OrdersAction extends ActionSupport{
/**
 * 
 */
	private static final long serialVersionUID = 1L;
	
	//承载订单编号的集合类
	private List<Orders> orders;
	
	//承载用户名的集合类
	private List<Users> userName;
	//承载订单时间的集合类
	private List<Orders> orderTime;
	//承载订单状态的集合类
	private List<Orders> orderState;
	//承载车次编号的集合类
	private List<Car> carId;
	
	Page page=new Page();
	Orders order;
	
	//订单业务类接口
	@Autowired
	IOrdersBiz ordersBiz;
	@Autowired
	IUsersBiz userBiz;
//	@Autowired
//	ICarBiz carBiz;
	
	/**
	 * 说明：orders列表方法
	 * 作者：王世奇
	 */
	public String list(){
		
		if(order !=null){
			String orderNo=order.getOrderNo();
			String ordersUserName=order.getUserName();
			BigDecimal orderState=order.getOrderState();
			
			//封装翻页链接里的参数
			Map<String,Serializable> map=new HashMap<String,Serializable>();
			if(StringUtils.isNotEmpty(orderNo)){
				map.put("order.orderNo", orderNo);
			}
			if(StringUtils.isNotEmpty(ordersUserName)){
				map.put("order.ordersUserName", ordersUserName);
			}
			if(orderState!=null){
				map.put("order.orderState", orderState);
			}
			page.setParamMap(map);
		}
		
		orders=ordersBiz.list(order, page);
		return SUCCESS;	
	}
	
	public String save(){
		if(order.getOrderId()!=null){
			ordersBiz.update(order);
		}else{
			ordersBiz.save(order);
		}
		return SUCCESS;
	}
	
	
	
	public String del(){
		ordersBiz.deleteBatch(orders);
		return SUCCESS;
	}
	public String get(){    //这里级联
		if(order!=null){
			order=ordersBiz.get(order.getOrderId());
			
		}
		return SUCCESS;
	}

	
	public String view(){
		order=ordersBiz.get(order.getOrderId());
		return SUCCESS;
	}
	public List<Orders> getOrders() {
		return orders;
	}
	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}
	
	
	public List<Users> getUserName() {
		return userName;
	}
	public void setUserName(List<Users> userName) {
		this.userName = userName;
	}
	
	
	public List<Orders> getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(List<Orders> orderTime) {
		this.orderTime = orderTime;
	}
	
	
	public List<Orders> getOrderState() {
		return orderState;
	}
	public void setOrderState(List<Orders> orderState) {
		this.orderState = orderState;
	}
	
	
	public List<Car> getCarId() {
		return carId;
	}
	public void setCarId(List<Car> carId) {
		this.carId = carId;
	}
	
	
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
	public IOrdersBiz getOrdersBiz() {
		return ordersBiz;
	}
	
	
	public void setOrdersBiz(IOrdersBiz ordersBiz) {
		this.ordersBiz = ordersBiz;
	}
	public IUsersBiz getUserBiz() {
		return userBiz;
	}
	
	
	public void setUserBiz(IUsersBiz userBiz) {
		this.userBiz = userBiz;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
