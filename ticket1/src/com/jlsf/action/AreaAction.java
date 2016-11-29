package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.IAreaBiz;
import com.jlsf.entity.Area;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 
 * 说明：area页面action类
 * 时间：2016-06-22
 * 作者：兰冰
 */
public class AreaAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	//承载区域的集合类
	private List<Area> areas;
	
	//承载省的集合类
	private List<Area> proareas;
		
	//承载市的集合类
	private List<Area> cityAreas;
	
	//承载区县的集合类
	//private List<Area> aAreas;
			
	private Area record;

	Area area;
	Page page = new Page();
	//区域业务类接口
	@Autowired
	IAreaBiz areaBiz;
	/**
	 * 说明：area 列表方法
	 * 时间：2016-06-30
	 * 作者：兰冰
	 */
	
	public String list() {
		//教师列表
		if (area != null){
			String areaName = area.getAreaName();
			String areaCode = area.getAreaCode();
			 
			//封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			if (StringUtils.isNotEmpty(areaName)){
				map.put("area.areaName", areaName);
			}
			if (StringUtils.isNotEmpty(areaCode)){
				map.put("area.areaCode", areaCode);
			}
			
			page.setParamMap(map);
		}
		areas = areaBiz.list(area, page);
		return SUCCESS;
	}
	


	public String insert(){
		if (area.getAreaId() != null){
			areaBiz.updateByPrimaryKeySelective(area);
		}else{
			areaBiz.insert(area);
		}
		return SUCCESS;
	}
	

	public String getAreaChildren(){
		areas = areaBiz.selectChildren(area.getAreaId());
		return SUCCESS;
	}
	
	public String selectByPrimaryKey(){
		if (area != null){
		area =areaBiz.selectByPrimaryKey(area.getAreaId());
		 int level = area.getAreaLevel();
		 
			 if (area.getpAreaId() != null && area.getPpAreaId() == null){
				 area.setAreaLevel(2);
				 area.setPpAreaId(area.getAreaId());;
			 }
			 
			 if (area.getpAreaId() != null && area.getPpAreaId() != null){
				 area.setAreaLevel(3);
				 area.setpAreaId(area.getAreaId());
			 }
			 		 
	    }
		
	areas = areaBiz.selectFirstLevelAreas();
	return SUCCESS;
}


	public String del(){
		
		area = areaBiz.selectByPrimaryKey(area.getAreaId());
		areaBiz.updateDel(area);
		
		return SUCCESS;
	}
	
	public String view(){
		area = areaBiz.selectByPrimaryKey(area.getAreaId());
		return SUCCESS;
	}
	
	public Area getRecord() {
		return record;
	}

	public void setRecord(Area record) {
		this.record = record;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public List<Area> getAreas(){
		return areas;
	}
	public void setAreas(List<Area> areas){
		this.areas=areas;
	}
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Area> getProareas() {
		return proareas;
	}


	public void setProareas(List<Area> proareas) {
		this.proareas = proareas;
	}


	public List<Area> getCityAreas() {
		return cityAreas;
	}


	public void setCityAreas(List<Area> cityAreas) {
		this.cityAreas = cityAreas;
	}
	
}
