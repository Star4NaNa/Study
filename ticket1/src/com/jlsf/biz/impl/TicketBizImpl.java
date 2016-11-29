package com.jlsf.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.ITicketBiz;
import com.jlsf.dao.TicketMapper;
import com.jlsf.entity.Classes;
import com.jlsf.entity.Ticket;
import com.jlsf.util.Page;

@Service
public class TicketBizImpl implements ITicketBiz {
	@Resource
	private TicketMapper ticketMapper;
//遍历信息，并且分页	
	@Override
	public List<Ticket> list(Ticket ticket, Page page) {
		int count = ticketMapper.listCount(ticket);
		page.setT_c_no(count);
		return ticketMapper.list(ticket, page);
	}
//删除方法
	@Override
	public void deleteBatch(List<Ticket> ticket) {
		ticketMapper.deleteBatch(ticket);
	}
//根据ticketId 查询信息
	@Override
	public Ticket get(Integer ticketId) {
		// TODO Auto-generated method stub
		return ticketMapper.selectByPrimaryKey(ticketId);
	}
//更新查询出来的信息	
	@Override
	public void update(Ticket ticket) {
		ticketMapper.updateByPrimaryKeySelective(ticket);
	}
	@Override
	public int updateByPrimaryKey(Ticket record) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<Ticket> list() {
		
		return null;
	}
	@Override
	public int updateByPrimaryKeySelective(Ticket record) {
	
		return 0;
	}
	@Override
	public int deleteByPrimaryKey(BigDecimal ticketId) {
		
		return 0;
	}

	@Override
	public int insert(Ticket record) {

		return ticketMapper.insert(record);
	}

	@Override
	public int insertSelective(Ticket record) {
		
		return 0;
	}
	@Override
	public List<Ticket> queryTicketByClassId(Integer classesId) {
		
		return ticketMapper.queryTicketByClassId(classesId);
	
	}



}
