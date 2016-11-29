package com.jlsf.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.IUsersBiz;
import com.jlsf.dao.UsersMapper;
import com.jlsf.entity.Users;
import com.jlsf.util.Page;
@Service
public class UsersBizImpl implements IUsersBiz {

	@Resource
	private UsersMapper uMap;
	
	@Override
	public int deleteByPrimaryKey(BigDecimal userId) {
		// TODO Auto-generated method stub
		return uMap.deleteByPrimaryKey(userId);
	}

	@Override
	public int insert(Users record) {
		// TODO Auto-generated method stub
		return uMap.insert(record);
	}

	@Override
	public int insertSelective(Users record) {
		// TODO Auto-generated method stub
		return uMap.insertSelective(record);
	}

	@Override
	public Users selectByPrimaryKey(BigDecimal userId) {
		// TODO Auto-generated method stub
		return uMap.selectByPrimaryKey(userId);
	}

	@Override
	public int updateByPrimaryKeySelective(Users record) {
		// TODO Auto-generated method stub
		return uMap.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Users record) {
		// TODO Auto-generated method stub
		return uMap.updateByPrimaryKey(record);
	}

	@Override
	public List<Users> list(Users users,Page page) {
		// TODO Auto-generated method stub
		int count = uMap.listCount(users);
		page.setT_c_no(count);
		return uMap.list(users,page);
	}

	@Override
	public int addusers(Users u) {
		
		return uMap.addusers(u);
	}

	@Override
	public Users selByName(String userName) {
		// TODO Auto-generated method stub
		return uMap.selByName(userName);
	}

	@Override
	public Users selByPhone(String userPhone) {
		// TODO Auto-generated method stub
		return uMap.selByPhone(userPhone);
	}

	@Override
	public void deleteBatch(List<Users> users) {
		uMap.deleteBatch(users);
		
	}

	@Override
	public void stop(List<Users> users) {
		// TODO Auto-generated method stub
		uMap.stop(users);
	}

}
