package com.jlsf.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.IRouteBiz;
import com.jlsf.dao.RouteMapper;
import com.jlsf.entity.Route;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;
/**
 * 说明：Route页面接口的实现类
 * 时间:2016-07-04
 * 作者： 王化楠
 */
@Service
public class RouteBizImpl implements IRouteBiz {

	@Resource
	private RouteMapper routemapper; 
	
	/**
	 * 增
	 */
	@Override
	public int insert(Route record) {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * 根据主键查询
	 */
	@Override
	public Route selectByPrimaryKey(Integer routeId) {
		// TODO Auto-generated method stub
		return null;
	}

	

	/**
	 * 查询全部
	 */
	@Override

	public List<Route> list(Route route,Page page){
		
		int count = routemapper.listCount(route);
		page.setT_c_no(count);
		return routemapper.list(route, page);
	}

	/**
	 * 保存增加方法
	 */
	@Override
	public void saveEdit(Route route) {
		 routemapper.insert(route);
		
	}

	/**
	 * get方法--通过编号查询
	 */
	@Override
	public Route get(Integer routeId) {
		return routemapper.selectByPrimaryKey(new Integer(routeId));
		
	}

	/**
	 * 更新
	 */
	@Override
	public void update(Route route) {
		routemapper.updateByPrimaryKeySelective(route);
		
	}

	
	/**
	 * 删除
	 */
	@Override
	public void del(Integer routeId) {
		routemapper.deleteByPrimaryKey(routeId);
	}
	/**
	 * 批量删除
	 */
	@Override
	public void deleteBatch(List<Route> routess) {
		routemapper.deleteBatch(routess);
		
	}

	@Override
	public List<Route> list1() {
		return routemapper.list1();
	}

}
