package com.jlsf.biz;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jlsf.entity.BusStation;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;

/**
 * 功能：IBusStationBiz接口
 * 作者：韩丽丽 
 * 时间：2016-06-30
 *
 */
public interface IBusStationBiz {

	public List<BusStation> list(BusStation busStation,Page page);// 列表查询全部

	public BusStation selectByPrimaryKey(Integer stationId);

	public void insert(BusStation busStation);// 插入 （所有数据）

	public int insertSelective(BusStation busStation);

	public int deleteByPrimaryKey(Integer stationId);

	public int updateByPrimaryKeySelective(BusStation busStation);

	public void updateByPrimaryKey(BusStation busStation);
	
	public BusStation get(Integer stationId);
	
	public void updateStatus(List<BusStation> busStations);//删除（也就是将状态改为0，所以用修改方法）
	
	public List<BusStation> listBusStation();

}
