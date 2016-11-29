package com.jlsf.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.ClassesBiz;
import com.jlsf.biz.IPassengerBiz;
import com.jlsf.biz.ITicketBiz;
import com.jlsf.biz.impl.PassengerBizImpl;
import com.jlsf.entity.Classes;
import com.jlsf.entity.Passenger;
import com.jlsf.entity.Teacher;
import com.jlsf.entity.Ticket;
import com.jlsf.util.Page;

public class PassengerAction {
	
   @Autowired
   IPassengerBiz passengerBiz;
   
   @Autowired
   ITicketBiz ticketBiz;
   
   
   public List<Ticket> getTickets() {
	return tickets;
}

public void setTickets(List<Ticket> tickets) {
	this.tickets = tickets;
}

//承接所有乘客的集合
   private List<Passenger>  passengers;
   //承载所有的车票信息
   private List<Ticket> tickets;
  
   
   Page page = new Page();
	
   Passenger passenger;
   
   //获得选中的班次
   Classes classes;
  
   @Autowired
   ClassesBiz cBiz;
   
   
   public Classes getClasses() {
	return classes;
}

public void setClasses(Classes classes) {
	this.classes = classes;
}

public String list(){
	   //获取班次信息
	   classes = cBiz.selectByPrimaryKey(classes.getClassesId());
	   tickets = ticketBiz.queryTicketByClassId(classes.getClassesId());
	 //  classes = cBiz.get(classes.getClassesId());
	   passengers = passengerBiz.list(passenger,page);
	   return "success";
   }

public Passenger getPassenger() {
	   return passenger;
}

public void setPassenger(Passenger passenger) {
	this.passenger = passenger;
}

public List<Passenger> getPassengers() {
	return passengers;
}

public void setPassengers(List<Passenger> passengers) {
	this.passengers = passengers;
}

public Page getPage() {
	return page;
}

public void setPage(Page page) {
	this.page = page;
}
       
}
