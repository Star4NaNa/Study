package com.jlsf.biz;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jlsf.entity.Orders;
import com.jlsf.util.Page;

public interface OrdersBiz {
	
	public List<Orders> list(Orders orders,Page page);//查询全部
	
	public List<Orders> billlist(Orders orders,Page page);
	
	
	public void deleteBatch(List<Orders> orders);
	
	List<Orders> listByName(String userRname);

}
