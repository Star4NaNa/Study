package com.dao.impl;

import java.util.List;





import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.dao.MyTestDao;
import com.entity.Mytest;

public class MyTestDaoImpl implements MyTestDao {
	Session session=null;
	Transaction tx=null;
	@Override
	public boolean addMyTest(Mytest mytest) {
		boolean flag=false;
		try {
			session=new Configuration().configure().buildSessionFactory().openSession();
			tx=session.beginTransaction();
			session.save(mytest);
			
			tx.commit();
			flag=true;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}finally{
			session.close();
			
		}
		
		return flag;
	}

	@Override
	public boolean login(Mytest mytest) {
		boolean flag=false;
		try {
			session=new Configuration().configure().buildSessionFactory().openSession();
			tx=session.beginTransaction();
			String hql="from Mytest where myname=:myname and mypwd=:mypwd";
			Query query=session.createQuery(hql);
			query.setString("myname", mytest.getMyname());
			query.setString("mypwd", mytest.getMypwd());
			@SuppressWarnings("rawtypes")
			List list=query.list();
			int num=list.size();
			if(num>0){
				
				flag=true;
			}
			tx.commit();
			
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}finally{
			session.close();
			
		}
		
		return flag;
	}

}
