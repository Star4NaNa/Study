package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.IAreaBiz;
import com.jlsf.biz.IRouteBiz;
import com.jlsf.entity.Area;
import com.jlsf.entity.Route;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 说明：Route页面Action类 
 * 时间:2016-07-01 
 * 作者： 王化楠
 */
public class RouteAction extends ActionSupport {

	// 承载路线的集合类
	private List<Route> routess;
	// 承载区域的集合类
	private List<Area> areas;
	
	//注入路线biz
	@Autowired
	IRouteBiz routebiz;
	//注入区域biz
	@Autowired
	IAreaBiz areabiz;

	

	Page page = new Page();

	Route route;

	// 查询全部带分页
	public String list() {
		//路线列表
		if (route != null) {

			String routeNum = route.getRouteNum();
			String routeName = route.getRouteName();
			Integer routeStartareaid = route.getRouteStartareaid();
			Integer routeEndareaid = route.getRouteEndareaid();
			Integer routeStatus = route.getRouteStatus();
			String routeStarttime = route.getRouteStarttime();
			String routeStoptime = route.getRouteStoptime();
			Integer routeHot = route.getRouteHot();
			String routeRemark = route.getRouteRemark();

			// 封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			if (StringUtils.isNotEmpty(routeNum)) {
				map.put("route.routeNum", routeNum);
			}
			if (StringUtils.isNotEmpty(routeName)) {
				map.put("route.routeName", routeName);
			}
			if (routeStartareaid != null) {
				map.put("route.routeStartareaid", routeStartareaid);
			}
			if (routeEndareaid != null) {
				map.put("route.routeEndareaid", routeEndareaid);
			}
			if (routeStatus != null) {
				map.put("route.routeStatus", routeStatus);
			}
			if (StringUtils.isNotEmpty(routeStarttime)) {
				map.put("route.routeStarttime", routeStarttime);
			}
			if (StringUtils.isNotEmpty(routeStoptime)) {
				map.put("route.routeStoptime", routeStoptime);
			}
			if (routeHot != null) {
				map.put("route.routeHot", routeHot);
			}
			if (StringUtils.isNotEmpty(routeRemark)) {
				map.put("route.routeRemark", routeRemark);
			}
			page.setParamMap(map);
		}
		routess = routebiz.list(route, page);
		return SUCCESS;
	}
	//保存增加方法
	public String save(){
		
		if (route.getRouteId() != null){
			routebiz.update(route);
		}else{
			areas=areabiz.selectFirstLevelAreas();
			routebiz.saveEdit(route);
		}
		
	
		return SUCCESS;
	}
	public List<Route> getRoutess() {
		return routess;
	}
	public void setRoutess(List<Route> routess) {
		this.routess = routess;
	}
	//修改方法--通过编号查询
	public String get(){
		if (route != null && route.getRouteId() != null){
			route=routebiz.get(route.getRouteId());
		}
		
		areas=areabiz.selectFirstLevelAreas();
		return SUCCESS;
	}
	

	//删除方法
		public String del(){
            //方法一：迭代删除
//			for(Route obj:routess){
//				routebiz.del(route.getRouteId());
//			}
			
			//方法二：
			routebiz.deleteBatch(routess);
			return SUCCESS;
		}
		
		
	public List<Area> getAreas() {
		return areas;
	}
	public void setAreas(List<Area> areas) {
		this.areas = areas;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public Route getRoute() {
		return route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}

}
