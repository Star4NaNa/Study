package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.CarBiz;
import com.jlsf.entity.Car;

import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 说明：car页面action类
 * 时间:2016-06-28
 * 作者： 王晓凡
 */
public class CarAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	//承载教师的集合类
	private List<Car> cars;
	Page page = new Page();
	Car car;
	

	//教师业务类接口
	@Autowired
	CarBiz carBiz;
	
	
	/**
	 * 说明：car 列表方法
	 * 时间:2016-06-28
	 * 作者： 王晓凡
	 */
	public String list() {
		//汽车列表
		if (car != null){
			String carPlatenum=car.getCarPlatenum();
			String carOwner=car.getCarOwner();
			String carStatus=car.getCarStatus();
			Integer carType=car.getCarType();
			//封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			if (StringUtils.isNotEmpty(carPlatenum)){
				map.put("car.carPlatenum", carPlatenum);
			}
			if (StringUtils.isNotEmpty(carOwner)){
				map.put("car.carOwner", carOwner);
			}
			if (StringUtils.isNotEmpty(carStatus)){
				map.put("car.carStatus", carStatus);
			}
			if (carType!=null){
				map.put("car.carType", carType);
			}
			page.setParamMap(map);
		}
		cars = carBiz.list(car, page);
		return SUCCESS;
	}
	
	public String save(){
		if (car.getCarId() != null){
			carBiz.update(car);
		}else{
			carBiz.save(car);
		}
		return SUCCESS;
	}

	
	public String select(){
		car=carBiz.get(car.getCarId());
		return SUCCESS;
	}
	
	public String del(){
		carBiz.deleteBatch(cars);
		return SUCCESS;
	}
	public List<Car> getCars() {
		return cars;
	}

	public void setCars(List<Car> cars) {
		this.cars = cars;
	}
	
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}



	
	
}
