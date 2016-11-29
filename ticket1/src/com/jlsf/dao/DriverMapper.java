package com.jlsf.dao;

import com.jlsf.entity.Driver;
import com.jlsf.util.Page;

import java.lang.Integer;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface DriverMapper {
    int deleteByPrimaryKey(Integer driverId);

    int insert(Driver driver);

    int insertSelective(Driver driver);

    Driver selectByPrimaryKey(Integer driverId);
    
    List<Driver> list(@Param("driver") Driver driver,@Param("page") Page page);
    
    int listCount(@Param("driver") Driver driver);

    int updateByPrimaryKeySelective(Driver driver);

    int updateByPrimaryKey(Driver driver);
    
    void deleteBatch(List<Driver> driver);
    
    List<Driver> lists();
}