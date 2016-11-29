package com.jlsf.dao;

import com.jlsf.entity.Ticket;
import com.jlsf.entity.TicketType;
import com.jlsf.util.Page;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface TicketTypeMapper {
    int deleteByPrimaryKey(BigDecimal typeId);

    int insert(TicketType ticketType);

    int insertSelective(TicketType record);

    TicketType selectByPrimaryKey(BigDecimal typeId);
    
    //列表显示，已经实现分页 
    List<TicketType> list(@Param("ticketType") TicketType tickettype,@Param("page") Page page);
    //列表显示记录的总条数
    int listCount(@Param("ticketType") TicketType tickettype);
    
    int updateByPrimaryKeySelective(TicketType record);

    int updateByPrimaryKey(TicketType record);
    
    void deleteBatch(List<TicketType> tType);
    
    public List<TicketType> listall();
    
    
}