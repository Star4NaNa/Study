package com.jlsf.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.jlsf.biz.ITeacherBiz;
import com.jlsf.dao.TeacherMapper;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;

@Service
public class TeacherBizImpl implements ITeacherBiz{
	@Resource 
	private TeacherMapper teacherMapper; 
	
	public List<Teacher> list(Teacher teacher,Page page){
		
		int count = teacherMapper.listCount(teacher);
		page.setT_c_no(count);
		return teacherMapper.list(teacher,page);
	}

	@Override
	public void save(Teacher teacher) {
		teacherMapper.insert(teacher);
	}
	
	

	@Override
	public void update(Teacher teacher) {
		teacherMapper.updateByPrimaryKeySelective(teacher);
	}

	@Override
	public Teacher get(BigDecimal teacherId) {
		 return teacherMapper.selectByPrimaryKey(teacherId);
	}

	@Override
	public void del(BigDecimal teacherId) {
		teacherMapper.deleteByPrimaryKey(teacherId);
	}

	@Override
	public void deleteBatch(List<Teacher> teacher) {
		teacherMapper.deleteBatch(teacher);
	}
	
	
	
	
	
	
	

}
