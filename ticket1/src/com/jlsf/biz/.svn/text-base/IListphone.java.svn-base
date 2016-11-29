package com.jlsf.biz;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jlsf.entity.ListPhone;
import com.jlsf.util.Page;

public interface IListphone {

    List<ListPhone> list(@Param("lPhone") ListPhone lPhone,@Param("page") Page page);
    
    int listCount(@Param("lPhone") ListPhone lPhone);
    
    void deleteBatch(List<ListPhone> phone);
    
    ListPhone selectByPrimaryKey(BigDecimal phoneId);
    
    int updateByPrimaryKeySelective(ListPhone record);
    
    int insertSelective(ListPhone record);
}
