package com.jlsf.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.IOrdersBiz;
import com.jlsf.dao.OrdersMapper;
import com.jlsf.entity.Orders;
import com.jlsf.util.Page;
@Service
public class OrdersBizImpl implements IOrdersBiz {

	@Resource
	private OrdersMapper ordersMapper;
	
	@Override
	public List<Orders> list(Orders order, Page page) {
		int count=ordersMapper.ListCount(order);
		page.setT_c_no(count);
		return ordersMapper.list(order, page);
	}

	@Override
	public void save(Orders orders) {
		ordersMapper.insert(orders);

	}

	@Override
	public void update(Orders order) {
		ordersMapper.updateByPrimaryKeySelective(order);

	}

	@Override
	public void del(BigDecimal orderId) {
		ordersMapper.deleteByPrimaryKey(orderId);

	}

	@Override
	public Orders get(BigDecimal orderId) {
		
		return ordersMapper.selectByPrimaryKey(orderId);
	}

	@Override
	public void deleteBatch(List<Orders> orders) {
		ordersMapper.deleteBatch(orders);

	}

	@Override
	public int ListCount(Orders orders) {
		// TODO Auto-generated method stub
		return ordersMapper.ListCount(orders);
	}

	@Override
	public int insert(Orders orders) {
		// TODO Auto-generated method stub
		return ordersMapper.insert(orders);
	}

	@Override
	public int insertSelective(Orders orders) {
		// TODO Auto-generated method stub
		return ordersMapper.insertSelective(orders);
	}

}
