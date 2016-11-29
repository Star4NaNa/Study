package com.jlsf.dao;

import com.jlsf.entity.Employee;
import com.jlsf.entity.Users;
import com.jlsf.util.Page;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface EmployeeMapper {
    int deleteByPrimaryKey(Integer empId);

    int insert(Employee record);

    int insertSelective(Employee record);

    Employee selectByPrimaryKey(Integer empId);
    
    List<Employee> list(@Param("employee") Employee employee,@Param("page") Page page);
    
    int listCount(@Param("employee") Employee employee);
    
    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKey(Employee record);
    
    void deleteBatch(List<Employee> employees);
    
    Employee selByName(String empUsername);
    
   
    
}