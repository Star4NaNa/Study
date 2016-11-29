package com.jlsf.biz;

import java.math.BigDecimal;
import java.util.List;

import com.jlsf.entity.Ticket;
import com.jlsf.entity.TicketType;
import com.jlsf.util.Page;

public interface ITicketTypeBiz {
	    public int deleteByPrimaryKey(BigDecimal typeId);
        //添加类型信息
	    public void insert(TicketType ticketType);

	    public int insertSelective(TicketType record);

	    public TicketType selectByPrimaryKey(BigDecimal typeId);
	    
	    //车票列表的方法 
	    public List<TicketType> list(TicketType tickettype,Page page);
	    
	    public int updateByPrimaryKeySelective(TicketType record);

	    public int updateByPrimaryKey(TicketType record);
	    
	    public void deleteBatch(List<TicketType> tType);
	    
	    public List<TicketType> listall();
}
