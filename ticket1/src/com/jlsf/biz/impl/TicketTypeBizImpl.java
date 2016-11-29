package com.jlsf.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.ITicketTypeBiz;
import com.jlsf.dao.TicketTypeMapper;
import com.jlsf.entity.TicketType;
import com.jlsf.util.Page;

@Service
public class TicketTypeBizImpl implements ITicketTypeBiz {
 @Resource
private TicketTypeMapper ticketTypeMapper;
	@Override
	public int deleteByPrimaryKey(BigDecimal typeId) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	@Override
	public int insertSelective(TicketType record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public TicketType selectByPrimaryKey(BigDecimal typeId) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int updateByPrimaryKeySelective(TicketType record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(TicketType record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TicketType> list(TicketType tickettype, Page page) {
		// TODO Auto-generated method stub
		return ticketTypeMapper.list(tickettype, page);
	}

	@Override
	public void deleteBatch(List<TicketType> tType) {
		ticketTypeMapper.deleteBatch(tType);
		
	}



	@Override
	public void insert(TicketType ticketType) {
		ticketTypeMapper.insert(ticketType);
	}



	@Override
	public List<TicketType> listall() {
		// TODO Auto-generated method stub
		return ticketTypeMapper.listall();
	}



}
