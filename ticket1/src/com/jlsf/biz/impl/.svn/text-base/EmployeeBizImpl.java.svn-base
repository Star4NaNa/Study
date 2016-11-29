package com.jlsf.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.IEmployeeBiz;
import com.jlsf.dao.EmployeeMapper;
import com.jlsf.entity.Employee;
import com.jlsf.util.Page;
@Service
public class EmployeeBizImpl implements IEmployeeBiz {
	@Resource
	private EmployeeMapper employeeMapper;
	
	@Override
	public List<Employee> list(Employee employee, Page page) {
		int count=employeeMapper.listCount(employee);
		page.setT_c_no(count);
		return employeeMapper.list(employee, page);
	}
	

	@Override
	public void save(Employee employee) {
		
	  employeeMapper.insert(employee);
	}
	public EmployeeMapper getEmployeeMapper() {
		return employeeMapper;
	}
	public void setEmployeeMapper(EmployeeMapper employeeMapper) {
		this.employeeMapper = employeeMapper;
	}


	


	@Override
	public Employee selByName(String empUsername) {
		// TODO Auto-generated method stub
		return employeeMapper.selByName(empUsername);
	}
	

	


	@Override
	public Employee get(int empId) {
	
		return employeeMapper.selectByPrimaryKey(empId);
	}


	@Override
	public int update(Employee employee) {
     
		return employeeMapper.updateByPrimaryKeySelective(employee);
	}


	@Override
	public int del(int empId) {
		
		return employeeMapper.deleteByPrimaryKey(empId);
	}


	@Override
	public void deleteBatch(List<Employee> employees) {
		
		employeeMapper.deleteBatch(employees);
	}



}
