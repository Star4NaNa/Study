package com.jlsf.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.IListphone;
import com.jlsf.dao.ListPhoneMapper;
import com.jlsf.entity.ListPhone;
import com.jlsf.util.Page;
@Service
public class ListPhoneImpl implements IListphone {

	@Resource
	private ListPhoneMapper lMap;
	
	@Override
	public List<ListPhone> list(ListPhone lPhone, Page page) {
		// TODO Auto-generated method stub
		
        int count = lMap.listCount(lPhone);
		
		page.setT_c_no(count);
		
		return lMap.list(lPhone, page);
	}

	@Override
	public int listCount(ListPhone lPhone) {
		// TODO Auto-generated method stub
		return lMap.listCount(lPhone);
	}

	@Override
	public void deleteBatch(List<ListPhone> phone) {
		// TODO Auto-generated method stub
	     lMap.deleteBatch(phone);
	}

	@Override
	public ListPhone selectByPrimaryKey(BigDecimal phoneId) {
		// TODO Auto-generated method stub
		return lMap.selectByPrimaryKey(phoneId);
	}

	@Override
	public int updateByPrimaryKeySelective(ListPhone record) {
		// TODO Auto-generated method stub
		return lMap.updateByPrimaryKeySelective(record);
	}

	@Override
	public int insertSelective(ListPhone record) {
		// TODO Auto-generated method stub
		return lMap.insertSelective(record);
	}

}
