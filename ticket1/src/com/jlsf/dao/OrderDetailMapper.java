package com.jlsf.dao;

import com.jlsf.entity.OrderDetail;
import java.math.BigDecimal;

public interface OrderDetailMapper {
    int deleteByPrimaryKey(BigDecimal detailId);

    int insert(OrderDetail record);

    int insertSelective(OrderDetail record);

    OrderDetail selectByPrimaryKey(BigDecimal detailId);

    int updateByPrimaryKeySelective(OrderDetail record);

    int updateByPrimaryKey(OrderDetail record);
}