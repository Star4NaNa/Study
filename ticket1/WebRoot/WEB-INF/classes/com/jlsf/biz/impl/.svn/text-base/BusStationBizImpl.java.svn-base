package com.jlsf.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.IBusStationBiz;
import com.jlsf.dao.BusStationMapper;
import com.jlsf.entity.BusStation;
import com.jlsf.util.Page;

/**
 * 
 * 
 * 作者：韩丽丽
 * 时间：0630
 * 功能：BusStationBiz的实现类
 */
@Service
public class BusStationBizImpl implements IBusStationBiz {

	@Resource
	private BusStationMapper  busStationMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<BusStation> list(BusStation busStation,Page page) {
		int count = busStationMapper.listCount(busStation);
		page.setT_c_no(count);
		return busStationMapper.list(busStation, page);
	}

	
	@Override
	public BusStation selectByPrimaryKey(Integer stationId) {
		// TODO Auto-generated method stub
		return busStationMapper.selectByPrimaryKey(stationId);
	}
	/**
	 * 插入（全部数据）
	 */
	@Override
	public void insert(BusStation busStation) {
		// TODO Auto-generated method stub
		 busStationMapper.insert(busStation);
	}

	@Override
	public int insertSelective(BusStation busStation) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer stationId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(BusStation busStation) {
		// TODO Auto-generated method stub
		return  busStationMapper.updateByPrimaryKeySelective(busStation);
	}

	@Override
	public void updateByPrimaryKey(BusStation busStation) {
		// TODO Auto-generated method stub
		 busStationMapper.updateByPrimaryKey(busStation);
	}


	@Override
	public BusStation get(Integer stationId) {
		// TODO Auto-generated method stub
		return busStationMapper.selectByPrimaryKey(stationId);
	}


	@Override
	public void updateStatus(List<BusStation> busStations) {
		busStationMapper.updateStatus(busStations);
	}


	@Override
	public List<BusStation> listBusStation() {
		// TODO Auto-generated method stub
		return busStationMapper.listBusStation();
	}

}
