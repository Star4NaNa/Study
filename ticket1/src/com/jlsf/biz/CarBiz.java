package com.jlsf.biz;

import java.lang.Integer;

import java.util.List;

import com.jlsf.entity.Car;

import com.jlsf.util.Page;


public interface CarBiz {

	public List<Car> list(Car car,Page page);//全部
	
	public void save(Car car);//保存
	
    public void update(Car car);
	
	public void del(Integer carId);
	
	public Car get(Integer carId);
	
	public void deleteBatch(List<Car> cars); 
	 List<Car> list();
}
