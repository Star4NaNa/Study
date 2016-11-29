package com.jlsf.dao;

import com.jlsf.entity.Area;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;

import java.util.List;
import java.math.BigInteger;

import org.apache.ibatis.annotations.Param;

public interface AreaMapper {
    int deleteByPrimaryKey(Integer areaId);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(Integer areaId);
    
    List<Area> list(@Param("area") Area area,@Param("page") Page page);
    
    int listCount(@Param("area") Area area);
    
    List<Area> selectChildren(int areaId);
    
    int updateByPrimaryKeySelective(Area area);

    int updateByPrimaryKey(Area record);
  
    //查询全部一级区域
  	public List<Area> selectFirstLevelAreas();
  	
  	int updateDel(Area area);
}