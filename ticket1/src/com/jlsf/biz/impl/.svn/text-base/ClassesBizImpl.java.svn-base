package com.jlsf.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.ClassesBiz;
import com.jlsf.dao.ClassesMapper;
import com.jlsf.entity.Classes;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;
@Service
public class ClassesBizImpl implements ClassesBiz {
	@Resource 	
private ClassesMapper classesmapper;
	@Override
	public List<Classes> list(Classes classes,Page page) {
		int count = classesmapper.listCount(classes);
		page.setT_c_no(count);
		
		return classesmapper.list(classes, page) ;
	}
	
	@Override
	public int deleteByPrimaryKey(Integer classesId) {
		// TODO Auto-generated method stub
		return classesmapper.deleteByPrimaryKey(classesId);
	}

	@Override
	public int insert(Classes record) {
		// TODO Auto-generated method stub
		return classesmapper.insert(record);
	}

	@Override
	public int insertSelective(Classes record) {
		// TODO Auto-generated method stub
		return classesmapper.insertSelective(record);
	}

	@Override
	public Classes selectByPrimaryKey(Integer classesId) {
		// TODO Auto-generated method stub
		return classesmapper.selectByPrimaryKey(classesId);
	}

	@Override
	public int updateByPrimaryKeySelective(Classes record) {
		// TODO Auto-generated method stub
		return classesmapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Classes record) {
		// TODO Auto-generated method stub
		return classesmapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Classes> listall() {
		// TODO Auto-generated method stub
		return classesmapper.listall();
	}


	

	@Override
	public void deleteBatch(List<Classes> classes) {
		// TODO Auto-generated method stub
		 classesmapper.deleteBatch(classes);
	}

	@Override
	public int insertClasses(Classes classes) {
		// TODO Auto-generated method stub
		return classesmapper.insertClasses(classes);
	}

	@Override
	public Classes get(Integer classesId) {
		// TODO Auto-generated method stub
		return classesmapper.selectByPrimaryKey(classesId);
	}

	@Override
	public List<Classes> selectChildren(Integer id) {
		// TODO Auto-generated method stub
		return classesmapper.selectChildren(id);
	}
	

}
