package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.CarBiz;
import com.jlsf.biz.ClassesBiz;
import com.jlsf.biz.DriverBiz;
import com.jlsf.biz.IAreaBiz;
import com.jlsf.biz.IBusStationBiz;
import com.jlsf.biz.IRouteBiz;
import com.jlsf.entity.Area;
import com.jlsf.entity.BusStation;
import com.jlsf.entity.Car;
import com.jlsf.entity.Classes;
import com.jlsf.entity.Driver;
import com.jlsf.entity.Route;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 说明：classes页面action类
 * 时间:2016-07-02
 * 作者： 李星冶
 */
public class ClassesAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private List<Classes> classes;
    private List<Area> areas;//省
    private List<Area> cityAreas;
    private List<Area> areaAreas;
    private List<Area> proAreas;
    private Integer areaId;//区id
    private List<Area> areaarea;//区集合
    public List<Area> getAreaarea() {
		return areaarea;
	}



	public void setAreaarea(List<Area> areaarea) {
		this.areaarea = areaarea;
	}



	public Integer getAreaId() {
		return areaId;
	}



	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}



	public List<Area> getProAreas() {
		return proAreas;
	}



	public void setProAreas(List<Area> proAreas) {
		this.proAreas = proAreas;
	}
	private List<Route>routes;
    private List<Driver>drivers;
    private List<Car>cars;
    private List<BusStation> busStations;
	public List<BusStation> getBusStations() {
		return busStations;
	}



	public void setBusStations(List<BusStation> busStations) {
		this.busStations = busStations;
	}
	Page page=new Page();
	@Autowired
	IBusStationBiz busstationbiz;
	BusStation busStation;
	@Autowired
	ClassesBiz classesBiz;
	Classes class1;
	@Autowired
	IAreaBiz areabiz;
	@Autowired
	DriverBiz driverbiz;
	Driver driver;
	@Autowired
	CarBiz icarbiz;
	Car car;
	@Autowired
	IRouteBiz routebiz;
	Route route;
	
	private Integer quid;
	private Integer shiid;
	private Integer shengid;
	private Integer driverID;
	private Integer routeID;
	private Integer carID;
	private Integer busStationID;
	
	public Integer getBusStationID() {
		return busStationID;
	}



	public void setBusStationID(Integer busStationID) {
		this.busStationID = busStationID;
	}



	public Integer getDriverID() {
		return driverID;
	}



	public void setDriverID(Integer driverID) {
		this.driverID = driverID;
	}



	public Integer getRouteID() {
		return routeID;
	}



	public void setRouteID(Integer routeID) {
		this.routeID = routeID;
	}



	public Integer getCarID() {
		return carID;
	}



	public void setCarID(Integer carID) {
		this.carID = carID;
	}



	public Integer getQuid() {
		return quid;
	}



	public void setQuid(Integer quid) {
		this.quid = quid;
	}



	public Integer getShiid() {
		return shiid;
	}



	public void setShiid(Integer shiid) {
		this.shiid = shiid;
	}



	public Integer getShengid() {
		return shengid;
	}



	public void setShengid(Integer shengid) {
		this.shengid = shengid;
	}



	public Car getCar() {
		return car;
	}



	public void setCar(Car car) {
		this.car = car;
	}



	public Route getRoute() {
		return route;
	}



	public void setRoute(Route route) {
		this.route = route;
	}



	public BusStation getBusStation() {
		return busStation;
	}



	public void setBusStation(BusStation busStation) {
		this.busStation = busStation;
	}



	public Page getPage() {
		return page;
	}



	public void setPage(Page page) {
		this.page = page;
	}



	public Classes getClass1() {
		return class1;
	}



	public void setClass1(Classes class1) {
		this.class1 = class1;
	}

	public List<Route> getRoutes() {
		return routes;
	}



	public void setRoutes(List<Route> routes) {
		this.routes = routes;
	}



	public List<Driver> getDrivers() {
		return drivers;
	}



	public void setDrivers(List<Driver> drivers) {
		this.drivers = drivers;
	}



	public List<Car> getCars() {
		return cars;
	}



	public void setCars(List<Car> cars) {
		this.cars = cars;
	}



	public List<Area> getAreas() {
		return areas;
	}



	public void setAreas(List<Area> areas) {
		this.areas = areas;
	}



	public List<Area> getCityAreas() {
		return cityAreas;
	}



	public void setCityAreas(List<Area> cityAreas) {
		this.cityAreas = cityAreas;
	}



	public List<Area> getAreaAreas() {
		return areaAreas;
	}



	public void setAreaAreas(List<Area> areaAreas) {
		this.areaAreas = areaAreas;
	}

		/**
		 * 说明：classes 列表方法
		 * 时间:2016-07-01
		 * 作者： 李星冶
		 */
		public String list() {
			
				
				
					if (class1 != null){
							String classesCode = class1.getClassesCode();
							
							String classesStarttime = class1.getClassesStarttime();
							String classesEndtime = class1.getClassesEndtime();
							String classesStartstationidName = class1.getClassesStartstationidName();
							String classesEndstationidName = class1.getClassesEndstationidName();
							
							
							Map<String, Serializable> map = new HashMap<String, Serializable>();
							if (StringUtils.isNotEmpty(classesCode)){
								map.put("class1.classesCode", classesCode);
							}
						
							if (StringUtils.isNotEmpty(classesStarttime)){
								map.put("class1.classesStarttime", classesStarttime);
							}
							if (StringUtils.isNotEmpty(classesEndtime)){
								map.put("class1.classesEndtime", classesEndtime);
							}
							if (StringUtils.isNotEmpty(classesStartstationidName)){
								map.put("class1.classesStartstationidName", classesStartstationidName);
							}
							if (StringUtils.isNotEmpty(classesEndstationidName)){
								map.put("class1.classesEndstationidName", classesEndstationidName);
							}
							
							
							page.setParamMap(map);
						}
						classes=classesBiz.list(class1, page);
						
						return SUCCESS;
			}



			public List<Classes> getClasses() {
				return classes;
			}



			public void setClasses(List<Classes> classes) {
				this.classes = classes;
			}



			public ClassesBiz getClassesBiz() {
				return classesBiz;
			}



			public void setClassesBiz(ClassesBiz classesBiz) {
				this.classesBiz = classesBiz;
			}

			
				public String del(){
				
					classesBiz.deleteBatch(classes);
					return SUCCESS;
				}
				
				
				public String save(){
					
					classesBiz.insertClasses(class1);
					
					return SUCCESS;
				}
				public String get(){
					if(class1!=null){
						class1 = classesBiz.selectByPrimaryKey(class1.getClassesId());        
						busStation=busstationbiz.selectByPrimaryKey(class1.getClassesStartstationid());
						//获取车站id
						busStationID=busStation.getStationId();
						//得到区id
						quid=busStation.getAreaId();
						//得到市id
						shiid=busStation.getCityAreaId();
						//得到省id
						shengid=busStation.getProAreaId();
						//获取市集合				
						cityAreas = areabiz.selectChildren(shengid);
						//获取区集合
						areaarea=areabiz.selectChildren(shiid);
						//得到司机id
						driverID=class1.getClassesDriverId();
						//得到路线id
						routeID=class1.getClassesRouteId();								
						//得到汽车id
						carID=class1.getClassesCarId();
						}
					
					//获取各项列表
					busStations=busstationbiz.listBusStation();
					areas =areabiz.selectFirstLevelAreas();
					cars=icarbiz.list();
					drivers=driverbiz.lists();
					routes=routebiz.list1();
					return SUCCESS;
				}
				public String view(){
					class1 = classesBiz.get(class1.getClassesId());
					return SUCCESS;
				}
}
