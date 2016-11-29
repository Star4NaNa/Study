package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.IEmployeeBiz;
import com.jlsf.entity.Employee;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EmployeeAction extends ActionSupport {
   
	private static final long serialVersionUID = 1L;
	//承载员工的集合类
	public List<Employee> employees;
	
	Page page = new Page();
	
	
	Employee employee;
    
	//员工业务类接口
    @Autowired
    IEmployeeBiz employeeBiz;
    /**
	 * 说明：employee 列表方法 增删改查
	 * 时间:2016-07-02
	 * 作者： 许林
	 */
    Employee emp;
    
    String empUsername;
    String empPassword;
    
    
    public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}

	public String getEmpUsername() {
		return empUsername;
	}

	public void setEmpUsername(String empUsername) {
		this.empUsername = empUsername;
	}

	public String getEmpPassword() {
		return empPassword;
	}

	public void setEmpPassword(String empPassword) {
		this.empPassword = empPassword;
	}
	


	public String list(){
    	//员工列表
    			if (employee != null){
    				String empName = employee.getEmpName();
    				//Integer empId = employee.getEmpId();
    				String empSex = employee.getEmpSex();
    				
    				//封装翻页链接里的参数
    				Map<String, Serializable> map = new HashMap<String, Serializable>();
    				if (StringUtils.isNotEmpty(empName)){
    					map.put("employee.empName", empName);
    				}
//    				if (StringUtils.isNotEmpty(empId)){
//    					map.put("employee.empId", empId);
//    				}
    				if (StringUtils.isNotEmpty(empSex)){
    					map.put("employee.empSex", empSex);
    				}
    				page.setParamMap(map);
    			}
    	employees=employeeBiz.list(employee, page);
    	return SUCCESS;
    }
    
    public String save(){
    	if(employee.getEmpId()!=null){
    	   employeeBiz.update(employee);
    	}else{
    	   employeeBiz.save(employee);
    	}
    	return SUCCESS;
    }
    
    public String get(){
    	employee=employeeBiz.get(employee.getEmpId());
    	return SUCCESS;
    }
    
    public String del(){
//    	for (Employee obj : employees) {
//    		employeeBiz.del(employee.getEmpId());
//		}
    	employeeBiz.deleteBatch(employees);
    	return SUCCESS;
    }
    
    public String view(){
    	employee=employeeBiz.get(employee.getEmpId());
    	return SUCCESS;
    	
    }
    
	public List<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	/**
	 * 说明  登陆方法
	 * 作者  苏博
	 */
	

	
	public String selpwd(){
		emp=employeeBiz.selByName(empUsername);
		if(emp==null){
			return ERROR;
		}
	
		String pwd = emp.getEmpPassword();
		if("".equals(emp.getEmpUsername())||emp.getEmpUsername()==null){
			
			return ERROR;
		}
		if(pwd!=""||pwd!=null){
			if(empPassword.equals(pwd)){
				ActionContext ac = ActionContext.getContext();
				Map session = ac.getSession();
				session.put("employee", emp);
				return SUCCESS;
			}else{
				return ERROR;
			}
			
		}else{
			return ERROR;
		}
	}
	
}
