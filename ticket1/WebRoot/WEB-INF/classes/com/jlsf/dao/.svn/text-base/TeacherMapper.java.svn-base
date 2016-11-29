package com.jlsf.dao;

import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface TeacherMapper {
    int deleteByPrimaryKey(BigDecimal teacherId);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(BigDecimal teacherId);
    
    List<Teacher> list(@Param("teacher") Teacher teacher,@Param("page") Page page);
    
    int listCount(@Param("teacher") Teacher teacher);
    

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
    
    void deleteBatch(List<Teacher> teachers);
}