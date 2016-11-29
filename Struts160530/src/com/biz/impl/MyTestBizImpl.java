package com.biz.impl;

import com.biz.MyTestBiz;
import com.dao.MyTestDao;
import com.dao.impl.MyTestDaoImpl;
import com.entity.Mytest;

public class MyTestBizImpl implements MyTestBiz {
	private MyTestDao mDao;
	public MyTestBizImpl() {
		mDao=new MyTestDaoImpl();
	}

	@Override
	public boolean addMyTest(Mytest mytest) {
		// TODO Auto-generated method stub
		return mDao.addMyTest(mytest);
	}

	@Override
	public boolean login(Mytest mytest) {
		// TODO Auto-generated method stub
		return mDao.login(mytest);
	}

}
