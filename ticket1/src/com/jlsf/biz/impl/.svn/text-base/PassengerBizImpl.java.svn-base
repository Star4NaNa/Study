package com.jlsf.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.IPassengerBiz;
import com.jlsf.dao.PassengerMapper;
import com.jlsf.entity.Orders;
import com.jlsf.entity.Passenger;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;

@Service
public class PassengerBizImpl implements IPassengerBiz{

	@Resource
	private PassengerMapper passengerMapper ; 
	


	@Override
	public List<Passenger> list(Passenger passenger, Page page) {
		int count = passengerMapper.listCount(passenger);
		page.setT_c_no(count);
		return passengerMapper.list(passenger,page);
	}
   
	
}
