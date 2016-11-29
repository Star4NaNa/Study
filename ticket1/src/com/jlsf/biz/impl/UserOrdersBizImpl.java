package com.jlsf.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.OrdersBiz;
import com.jlsf.dao.OrdersMapper;
import com.jlsf.entity.Orders;
import com.jlsf.util.Page;
 @Service
public class UserOrdersBizImpl implements OrdersBiz {
	@Resource
	private OrdersMapper ordersmapper;
	/**
	 * 查询全部
	 */
	@Override
	public List<Orders> billlist(Orders orders, Page page) {
		int count = ordersmapper.ListCount(orders);
		page.setT_c_no(count);
		return ordersmapper.billlist(orders, page);
	}
	public OrdersMapper getOrdersmapper() {
		return ordersmapper;
	}
	public void setOrdersmapper(OrdersMapper ordersmapper) {
		this.ordersmapper = ordersmapper;
	}
	@Override
	public List<Orders> list(Orders orders, Page page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteBatch(List<Orders> orders) {
		
		ordersmapper.deleteBatch(orders);
		
	}
	@Override
	public List<Orders> listByName(String userRname) {
//		int count = ordersmapper.ListCount(orders);
//		page.setT_c_no(count);
		
		return ordersmapper.listByName(userRname);
	}
//	@Override
//	public List<Orders> listByName(String userRname) {
//		// TODO Auto-generated method stub
//		int count = ordersmapper.ListCount(orders);
//		page.setT_c_no(count);
//		return ordersmapper.listByName(userRname);
//	}
//	

}