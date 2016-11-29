package com.jlsf.biz;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;


import com.jlsf.entity.Orders;
import com.jlsf.util.Page;

public interface IOrdersBiz {

	public List<Orders> list(Orders order,Page page);
	public void save(Orders orders);
	public void update(Orders order);
	public void del(BigDecimal orderId);
	public Orders get(BigDecimal orderId);
	public void deleteBatch(List<Orders> orders);
	
	int ListCount(Orders orders);
	int insert(Orders orders);
	int insertSelective(Orders orders);
	
//	public void deleteByPrimaryKey(BigDecimal orderId);
//
//	public void insert(Orders record);
//
//	public void insertSelective(Orders record);
//
//    Orders selectByPrimaryKey(BigDecimal orderId);
//
//    int updateByPrimaryKeySelective(Orders record);
//
//    int updateByPrimaryKey(Orders record);
//    
//    public List<Orders> list();
	
}
