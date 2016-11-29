package com.jlsf.biz;

import java.math.BigDecimal;
import java.util.List;

import com.jlsf.entity.Users;
import com.jlsf.util.Page;

public interface IUsersBiz {

	int deleteByPrimaryKey(BigDecimal userId);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(BigDecimal userId);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    
    List<Users> list(Users users,Page page);
    
    int addusers(Users u);
    
    Users selByName(String userName);
    
    Users selByPhone(String userPhone);
    
    public void deleteBatch(List<Users> users);
    
    void stop(List<Users> users);//用户停用
}
