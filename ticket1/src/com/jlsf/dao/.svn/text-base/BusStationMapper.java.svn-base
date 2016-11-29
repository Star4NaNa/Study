package com.jlsf.dao;

import com.jlsf.entity.BusStation;



import com.jlsf.util.Page;


import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BusStationMapper {
    int deleteByPrimaryKey(Integer stationId);

    int insert(BusStation record);

    int insertSelective(BusStation record);

    BusStation selectByPrimaryKey(Integer stationId);
   
    List<BusStation> list(@Param("busStation") BusStation busStation,@Param("page")Page page);
    
    int listCount(@Param("busStation") BusStation busStation);

    int updateByPrimaryKeySelective(BusStation record);

    int updateByPrimaryKey(BusStation record);
    
    int updateStatus(List<BusStation> busStations);//删除（也就是将状态改为0，所以用修改方法）
    
    List<BusStation> listBusStation();
}