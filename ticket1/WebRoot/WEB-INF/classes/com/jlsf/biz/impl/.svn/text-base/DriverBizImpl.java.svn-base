package com.jlsf.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.DriverBiz;
import com.jlsf.dao.DriverMapper;
import com.jlsf.entity.Driver;
import com.jlsf.util.Page;
@Service
public class DriverBizImpl implements DriverBiz {
	@Resource
	private DriverMapper drivermapper;
	
	/**
	 * 查询全部
	 */
	
	@Override
	public List<Driver> list(Driver driver, Page page) {
		int count = drivermapper.listCount(driver);
		page.setT_c_no(count);
		return drivermapper.list(driver, page);
	}
	

	@Override
	public void save(Driver driver) {
		drivermapper.insert(driver);
		
	}

	@Override
	public void update(Driver driver) {
		drivermapper.updateByPrimaryKeySelective(driver);
		
	}

	@Override
	public void del(Integer driverId) {
		drivermapper.deleteByPrimaryKey(driverId);
		
	}

	@Override
	public Driver get(Integer driverId) {
		// TODO Auto-generated method stub
		return drivermapper.selectByPrimaryKey(driverId);
	}

	@Override
	public void deleteBatch(List<Driver> driver) {
		drivermapper.deleteBatch(driver);
		
	}


	@Override
	public List<Driver> lists() {
		// TODO Auto-generated method stub
		return drivermapper.lists();
	}



}
