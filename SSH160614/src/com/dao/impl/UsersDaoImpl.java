package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.UsersDao;
import com.entity.Users;

public class UsersDaoImpl extends HibernateDaoSupport implements UsersDao {

	@Override
	public int addUsers(Users users) {
		int num=0;
		this.getHibernateTemplate().save(users);
		num=1;
		return num;
	}

	@Override
	public List<Users> queryInfo() {
		List<Users> list=this.getHibernateTemplate().find("from Users order by id");
		return list;
	}

	@Override
	public boolean delUsers(Users users) {
		boolean flag=false;
		this.getHibernateTemplate().delete(users);
		flag=true;
		return flag;
	}

	@Override
	public boolean upUsers(Users users) {
		boolean flag=false;
		this.getHibernateTemplate().update(users);
		flag=true;
		return flag;
	}

	@Override
	public Users queryUsersById(Short id) {
		Users users=(Users) this.getHibernateTemplate().get(Users.class,id);
		return users;
	}

}
