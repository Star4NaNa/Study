package com.biz.impl;

import com.biz.StudentBiz;
import com.dao.StudentDao;
import com.dao.impl.StudentDaoImpl;
import com.entity.Student;

public class StudentBizImpl implements StudentBiz {
	private StudentDao sDao;
	public StudentBizImpl() {
		sDao=new StudentDaoImpl();
	}
	@Override
	public boolean valiStudent(Student student) {
		// TODO Auto-generated method stub
		return sDao.valiStudent(student);
	}

}
