package com.jlsf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jlsf.entity.Classes;
import com.jlsf.util.Page;

public interface ClassesMapper {
	int deleteByPrimaryKey(Integer classesId);

    int insert(Classes record);

    int insertSelective(Classes record);

    Classes selectByPrimaryKey(Integer classesId);

    int updateByPrimaryKeySelective(Classes record);

    int updateByPrimaryKey(Classes record);
    
     List<Classes> list(@Param("class1") Classes classes,@Param("page") Page page);
    
    int listCount(@Param("class1") Classes classes);
    List<Classes> listall();
    
    

    
    void deleteBatch(List<Classes> classes);
    
    int insertClasses(Classes classes);
   
    public List<Classes> selectChildren(Integer id);
    
    
}