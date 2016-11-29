package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.IAreaBiz;
import com.jlsf.biz.IBusStationBiz;
import com.jlsf.entity.Area;
import com.jlsf.entity.BusStation;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * 说明：busStation页面action类 时间：2016-06-30 作者：韩丽丽
 *
 */
public class BusStationAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	// 承载汽车站的集合类
	private List<BusStation> busStations;
	// 汽车站对象
	BusStation busStation;

	// 承载省的集合类
	private List<Area> areas;

	// 承载市的集合类
	private List<Area> cityAreas;

	// 承载区县的集合类
	private List<Area> areaAreas;
	
	Page page = new Page();
	
	// 汽车站业务类接口
	@Autowired
	IBusStationBiz busStationBiz;
	@Autowired
	IAreaBiz areaBiz;

	/**
	 * 说明：busStation 列表方法 时间：2016-06-30 作者：韩丽丽
	 */

	public String list() {
		// 车站列表
		
		if (busStation !=null) {
			String stationName=busStation.getStationName();
			Integer stationStatus=busStation.getStationStatus();
			Integer proAreaId=busStation.getProAreaId();
			Integer cityAreaId=busStation.getCityAreaId();
			Integer areaId=busStation.getAreaId();
			
			//如果有所属的省，则查询市集合
			if (proAreaId != null){
				cityAreas = areaBiz.selectChildren(proAreaId);
			//市id
			 cityAreaId = busStation.getCityAreaId();
			//如果有所属的市，则查询区县集合
			if (cityAreaId != null){
					areaAreas = areaBiz.selectChildren(cityAreaId);
				}
			
			}
			
		//封装翻页里的参数
			
		Map<String, Serializable> map = new HashMap<String, Serializable>();
		if (StringUtils.isNotEmpty(stationName)) {
			map.put("busStation.stationName", stationName);
		}
		if (stationStatus != null) {
			map.put("busStation.stationStatus", stationStatus);
		}
		if (proAreaId != null) {
			map.put("busStation.proAreaId", proAreaId);
		}
		if (cityAreaId != null) {
			map.put("busStation.cityAreaId", cityAreaId);
		}
		if (areaId != null) {
			map.put("busStation.areaId", areaId);
		}
		
		page.setParamMap(map);
		}

		//areas = areaBiz.selectFirstLevelAreas();
		busStations = busStationBiz.list(busStation, page);
		return SUCCESS;
		
		

		
		
		
	}



	/**
	 * 说明：busStation 插入方法 时间：2016-07-01 作者：韩丽丽
	 */

	public String insert() {
		if(busStation.getStationId() != null){
			
			busStationBiz.updateByPrimaryKey(busStation);	
			
		}else{
			
			busStationBiz.insert(busStation);
		}
		return SUCCESS;
		
	}
	

		
	
	
	
	public String get(){
		if (busStation != null){
			busStation = busStationBiz.selectByPrimaryKey(busStation.getStationId());        
			//省id
			Integer proAreaId = busStation.getProAreaId();
			//如果有所属的省，则查询市集合
			if (proAreaId != null){
				cityAreas = areaBiz.selectChildren(proAreaId);
			//市id
			Integer cityAreaId = busStation.getCityAreaId();
				//如果有所属的市，则查询区县集合
				if (cityAreaId != null){
					areaAreas = areaBiz.selectChildren(cityAreaId);
				}
			}
	}
		areas = areaBiz.selectFirstLevelAreas();
		return SUCCESS;
	
	}
	
	public String view(){
		busStation = busStationBiz.get(busStation.getStationId());
		return SUCCESS;
	}
	
	
	public String del(){
		
		busStationBiz.updateStatus(busStations);
		
		/*busStation = busStationBiz.get(busStation.getStationId());
		busStationBiz.updateStatus(busStation);*/
	
		return SUCCESS;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

	public BusStation getRecord() {
		return busStation;
	}

	public void setRecord(BusStation busStation) {
		this.busStation = busStation;
	}

	public BusStation getBusStation() {
		return busStation;
	}

	public void setBusStation(BusStation busStation) {
		this.busStation = busStation;
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

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	public List<BusStation> getBusStations() {
		return busStations;
	}

	public void setBusStations(List<BusStation> busStations) {
		this.busStations = busStations;
	}



	public IBusStationBiz getBusStationBiz() {
		return busStationBiz;
	}



	public void setBusStationBiz(IBusStationBiz busStationBiz) {
		this.busStationBiz = busStationBiz;
	}

}
