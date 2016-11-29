package com.biz.impl;

import java.util.List;

import com.biz.UsersBiz;
import com.dao.UsersDao;
import com.entity.Users;

public class UsersBizImpl implements UsersBiz {
	private UsersDao uDao;
	
	public void setuDao(UsersDao uDao) {
		this.uDao = uDao;
	}

	@Override
	public int addUsers(Users users) {
		// TODO Auto-generated method stub
		return uDao.addUsers(users);
	}

	@Override
	public List<Users> queryInfo() {
		// TODO Auto-generated method stub
		return uDao.queryInfo();
	}

	@Override
	public boolean delUsers(Users users) {
		// TODO Auto-generated method stub
		return uDao.delUsers(users);
	}

	@Override
	public boolean upUsers(Users users) {
		// TODO Auto-generated method stub
		return uDao.upUsers(users);
	}

	@Override
	public Users queryUsersById(short id) {
		// TODO Auto-generated method stub
		return uDao.queryUsersById(id);
	}

}
