package com.jlsf.biz;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

import com.jlsf.entity.Area;
import com.jlsf.entity.Car;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;

public interface IAreaBiz {

	//查询全部区域
	public List<Area> list(Area area,Page page);
	
	//插入区域
	int insert(Area area);
	
	//通过编号查询
	Area selectByPrimaryKey(Integer areaId);
	
	//更新
	//public void update(Area area);
	public int updateByPrimaryKeySelective(Area area);
	
	//查询子区域
	public List<Area> selectChildren(int areaId);
	
	//查询全部一级区域
	public List<Area> selectFirstLevelAreas();
	
	//删除
	public void del(Integer areaId);
	
	public void deleteBatch(List<Area> area);
	
	public void updateDel(Area area);


}
