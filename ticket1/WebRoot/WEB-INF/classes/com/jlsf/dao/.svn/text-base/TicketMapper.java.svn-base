package com.jlsf.dao;


import com.jlsf.entity.Classes;
import com.jlsf.entity.Teacher;
import com.jlsf.entity.Ticket;
import com.jlsf.util.Page;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface TicketMapper {
    int deleteByPrimaryKey(BigDecimal ticketId);


    int insertSelective(Ticket record);
    //查询全部信息
    List<Ticket> list(@Param("ticket") Ticket ticket,@Param("page") Page page);
    
    int listCount(@Param("ticket") Ticket ticket);
    
  //查询出要修改的信息
    Ticket selectByPrimaryKey(Integer ticketId);
//  Ticket selectByPrimaryKey(BigDecimal ticketId);
    //跟新一条信息
    int updateByPrimaryKeySelective(Ticket record);
    int insert(Ticket record);//插入一条记录
    int updateByPrimaryKey(Ticket record);
    
    
    //根据班次的id获取对应车票的信息
    List<Ticket> queryTicketByClassId(Integer classesId);
    
    void deleteBatch(List<Ticket> ticket);
  
}