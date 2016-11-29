package com.jlsf.dao;

import com.jlsf.entity.Passenger;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PassengerMapper {
    int deleteByPrimaryKey(BigDecimal proId);

    int insert(Passenger record);

    int insertSelective(Passenger record);

    Passenger selectByPrimaryKey(BigDecimal proId);

    int updateByPrimaryKeySelective(Passenger record);

    int updateByPrimaryKey(Passenger record);
    
    List<Passenger> list(@Param("passenger") Passenger passenger,@Param("page") Page page);
    
    int listCount(@Param("passenger") Passenger passenger);
}