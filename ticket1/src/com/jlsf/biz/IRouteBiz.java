package com.jlsf.biz;

import java.math.BigDecimal;
import java.util.List;

import com.jlsf.entity.Route;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;
/**
 * 说明：Route页面接口
 * 时间:2016-07-03 
 * 作者： 王化楠
 */
public interface IRouteBiz {

	//删
    public void del(Integer routeId);
    public void deleteBatch(List<Route> routess);//批量删除
    //增
    int insert(Route record);
    //int insertSelective(Route record);

    //查
    Route selectByPrimaryKey(Integer routeId);
    List<Route> list(Route route,Page page);//查全部（yiyong）
    
    //更新
    public void update(Route route);
    
    //保存增加方法(yiyong)
    public void saveEdit(Route route);
    
    //get 方法（yiyong）--通过编号查询，目的是做修改
    public Route get(Integer routeId);
    
    //查询全部的方法，车次用的
    List<Route> list1();
    
    
}
