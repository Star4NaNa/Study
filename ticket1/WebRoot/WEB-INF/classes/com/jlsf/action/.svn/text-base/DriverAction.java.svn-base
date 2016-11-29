package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.DriverBiz;
import com.jlsf.entity.Driver;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;

public class DriverAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	//承载司机的集合类
	private List<Driver> drivers;
	Page page= new Page();
	Driver driver;
	
	//司机业务类接口
	@Autowired
	DriverBiz driverbiz;
	
	public String list(){
		//司机列表
		if (driver != null){
			String driverIdcard=driver.getDriverIdcard();
			String driverTelephone=driver.getDriverTelephone();
			String driverDrivercard=driver.getDriverDrivercard();
			String driverName=driver.getDriverName();
			//封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			if (StringUtils.isNotEmpty(driverIdcard)){
				map.put("driver.driverIdcard", driverIdcard);
			}
			if (StringUtils.isNotEmpty(driverTelephone)){
				map.put("driver.driverTelephone", driverTelephone);
			}
			if (StringUtils.isNotEmpty(driverDrivercard)){
				map.put("driver.driverDrivercard", driverDrivercard);
			}
			if (StringUtils.isNotEmpty(driverName)){
				map.put("driver.driverName", driverName);
			}
			page.setParamMap(map);
		}
		drivers =  driverbiz.list(driver, page);
		return SUCCESS;
	}
	
	public String save(){
		if (driver.getDriverId() != null){
			driverbiz.update(driver);
		}else{
			driverbiz.save(driver);
		}
		return SUCCESS;
	}
	
	public String select(){
		driver=driverbiz.get(driver.getDriverId());
		return SUCCESS;
	}
	
	public String del(){
		driverbiz.deleteBatch(drivers);
		return SUCCESS;
	}
	
	public List<Driver> getDrivers() {
		return drivers;
	}

	public void setDrivers(List<Driver> drivers) {
		this.drivers = drivers;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public Driver getDriver() {
		return driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}
	
	
	
	
}
