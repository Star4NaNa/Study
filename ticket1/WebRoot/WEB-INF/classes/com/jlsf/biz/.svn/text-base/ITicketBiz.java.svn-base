package com.jlsf.biz;

import java.math.BigDecimal;
import java.util.List;






import com.jlsf.entity.Classes;
import com.jlsf.entity.Teacher;
import com.jlsf.entity.Ticket;
import com.jlsf.util.Page;

public interface ITicketBiz {
	   public int deleteByPrimaryKey(BigDecimal ticketId);

	   public int insert(Ticket record);

	   public int insertSelective(Ticket record);
	   //车票列表方法
	   public List<Ticket> list(Ticket ticket,Page page);
	    
	   public List<Ticket> list();
	    
	  // public Ticket selectByPrimaryKey(BigDecimal ticketId);

	   public int updateByPrimaryKeySelective(Ticket record);

	   public int updateByPrimaryKey(Ticket record);
	   
	   public void deleteBatch(List<Ticket> ticket);
	   
	   //查询出要修改的记录
	   public Ticket get(Integer ticketId);
	   
	   //更新信息方法
	    public void update(Ticket ticket);
	    
	    //根据班次的id获取对应车票的信息
	    List<Ticket> queryTicketByClassId(Integer classesId);
}
