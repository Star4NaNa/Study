package com.dao;

import java.util.List;

import com.entity.Users;

public interface UsersDao {
	public int addUsers(Users users);
	
	public List<Users> queryInfo();
	
	public boolean delUsers(Users users);
	
	public boolean upUsers(Users users);
	
	public Users queryUsersById(Short id);
}
