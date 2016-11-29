package com.jlsf.dao;


import com.jlsf.entity.Car;



import com.jlsf.util.Page;

import java.lang.Integer;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CarMapper {
    int deleteByPrimaryKey(Integer carId);//根据主键删除

    int insert(Car car);//插入一条记录

    int insertSelective(Car car);

    Car selectByPrimaryKey(Integer carId);//根据主键查询记录

    List<Car> list(@Param("car") Car car,@Param("page") Page page);
    
    int listCount(@Param("car") Car car);
    
    int updateByPrimaryKeySelective(Car car);

    int updateByPrimaryKey(Car car);//根据主键更新记录
    
    void deleteBatch(List<Car> car);

   

    List<Car> list1();


}