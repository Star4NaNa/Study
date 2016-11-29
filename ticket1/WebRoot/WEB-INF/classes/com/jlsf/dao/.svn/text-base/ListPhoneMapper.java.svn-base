package com.jlsf.dao;

import com.jlsf.entity.ListPhone;
import com.jlsf.entity.Users;
import com.jlsf.util.Page;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ListPhoneMapper {
    int deleteByPrimaryKey(BigDecimal phoneId);

    int insert(ListPhone record);

    int insertSelective(ListPhone record);

    ListPhone selectByPrimaryKey(BigDecimal phoneId);

    int updateByPrimaryKeySelective(ListPhone record);

    int updateByPrimaryKey(ListPhone record);
    
    List<ListPhone> list(@Param("lPhone") ListPhone lPhone,@Param("page") Page page);
    
    int listCount(@Param("lPhone") ListPhone lPhone);
    
    void deleteBatch(List<ListPhone> phone);
}