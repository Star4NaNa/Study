package com.jlsf.dao;

import com.jlsf.entity.Orders;
import com.jlsf.util.Page;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface OrdersMapper {
    int deleteByPrimaryKey(BigDecimal orderId);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(BigDecimal orderId);

    List<Orders> list(@Param("orders") Orders orders,@Param("page") Page page);
    
    List<Orders> billlist(@Param("orders") Orders orders,@Param("page") Page page);
    
    int ListCount(@Param("orders") Orders orders);
    
    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);
    
    void deleteBatch(List<Orders> orders);
    
    List<Orders> listByName(String userRname);
    
}