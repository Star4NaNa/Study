package com.jlsf.dao;

import com.jlsf.entity.Users;
import com.jlsf.util.Page;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UsersMapper {
    int deleteByPrimaryKey(BigDecimal userId);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(BigDecimal userId);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    
    List<Users> list(@Param("users") Users users,@Param("page") Page page);
    
    int listCount(@Param("users") Users users);
    
    int addusers(Users u);
    
    Users selByName(String userName);
    
    Users selByPhone(String userPhone);
    
    void deleteBatch(List<Users> users);
    
    void stop(List<Users> users);
}