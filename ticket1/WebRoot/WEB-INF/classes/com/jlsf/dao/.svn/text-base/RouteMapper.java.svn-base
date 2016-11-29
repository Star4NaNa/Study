package com.jlsf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jlsf.entity.Car;
import com.jlsf.entity.Route;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;


public interface RouteMapper {
	//删
    int deleteByPrimaryKey(Integer routeId);
    void deleteBatch(List<Route> routess);//批量删除
    //增
    int insert(Route record);
    int insertSelective(Route record);//动态添加

    //查
    Route selectByPrimaryKey(Integer routeId);
    List<Route> list(@Param("route")Route route,@Param("page") Page page);//查全部
    List<Route> list1();//查询全部，车次用
    
    //统计页数
    int listCount(@Param("route") Route route);
    
    //改
    int updateByPrimaryKey(Route record);
    int updateByPrimaryKeySelective(Route record);//动态更改
    
    
}