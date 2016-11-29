package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

import com.dao.StudentDao;
import com.entity.Student;

public class StudentDaoImpl implements StudentDao {
	@SuppressWarnings("unchecked")
	@Override
	public boolean valiStudent(Student student) {
		boolean flag=false;
		Session session=null;
		List<Student> list=new ArrayList<Student>();
		try {
			session=new Configuration().
					configure().
					buildSessionFactory().openSession();
			String hql="from Student where sname=:sname";//1,±àÐ´hql
			Query query=session.createQuery(hql);
			query.setString("sname", student.getSname());
			list=query.list();
			if(list.size()>0){
				flag=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return flag;
	}
}
