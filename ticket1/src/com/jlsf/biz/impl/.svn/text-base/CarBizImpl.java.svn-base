package com.jlsf.biz.impl;

import java.lang.Integer;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.CarBiz;
import com.jlsf.dao.CarMapper;
import com.jlsf.entity.Car;
import com.jlsf.util.Page;
@Service
public class CarBizImpl implements CarBiz {

	@Resource
	private CarMapper carMapper;

	@Override
	public List<Car> list(Car car, Page page) {
		int count = carMapper.listCount(car);
		page.setT_c_no(count);
		return carMapper.list(car, page);
	}

	@Override
	public void save(Car car) {
		carMapper.insert(car);
	}

	@Override
	public void update(Car car) {
		carMapper.updateByPrimaryKeySelective(car);
		
	}

	@Override
	public void del(Integer carId) {
		carMapper.deleteByPrimaryKey(carId);
		
	}

	@Override
	public Car get(Integer carId) {
		return carMapper.selectByPrimaryKey(carId);
	}

	@Override
	public void deleteBatch(List<Car> cars) {
		carMapper.deleteBatch(cars);
		
	}

	@Override
	public List<Car> list() {
		// TODO Auto-generated method stub
		return carMapper.list1();
	}
	
	
}
