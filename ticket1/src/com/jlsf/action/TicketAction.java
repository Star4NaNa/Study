package com.jlsf.action;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.ClassesBiz;
import com.jlsf.biz.IAreaBiz;
import com.jlsf.biz.ITicketBiz;
import com.jlsf.biz.ITicketTypeBiz;
import com.jlsf.entity.Area;
import com.jlsf.entity.Classes;
import com.jlsf.entity.Teacher;
import com.jlsf.entity.Ticket;
import com.jlsf.entity.TicketType;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 说明：ticket action类
 * 时间：2016-07-01
 * 作者：欧阳漾
 */
public class TicketAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	//
	private List<Ticket> tickets;
	//承载班次信息的集合
	private List<Classes> classess;
	
	//承载车票类型信息的集合
	private List<TicketType> ticketTypes;
	
	private List<Area> areas;//承载联动省市集合
	
	 private List<Area> cityAreas;
	 

	Page page = new Page();
	
	@Autowired
	ITicketBiz ticketbiz;
	 //车票类型业务接口
    @Autowired
    ITicketTypeBiz ticketTypebiz;
    //班次类型业务接口
    @Autowired
    ClassesBiz classesbiz;
    @Autowired
	IAreaBiz areabiz;
    
    
	Ticket ticket;
	
    Area area;
    
	public Area getArea() {
		return area;
	}
	public void setArea(Area area) {
		this.area = area;
	}
	
	public List<Classes> getClassess() {
		return classess;
	}
	public void setClassess(List<Classes> classess) {
		this.classess = classess;
	}
	
	public List<TicketType> getTicketTypes() {
		return ticketTypes;
	}
	public void setTicketTypes(List<TicketType> ticketTypes) {
		this.ticketTypes = ticketTypes;
	}
	
	public List<Area> getAreas() {
		return areas;
	}
	public void setAreas(List<Area> areas) {
		this.areas = areas;
	}
	public List<Area> getCityAreas() {
		return cityAreas;
	}
	public void setCityAreas(List<Area> cityAreas) {
		this.cityAreas = cityAreas;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	
	public Ticket getTicket() {
		return ticket;
	}
	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}
	/**
	 * 说明：ticket车票列表
	 * 时间：2016-07-01
	 * 作者：欧阳漾
	 */
	public String list() {
		if (ticket != null){
			String classesType = ticket.getClassesType();
			String startStation =ticket.getStartStation();
			String endStation = ticket.getEndStation();
			String begintime = ticket.getBegintime();
			String endtime = ticket.getEndtime();
			
			//封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			if (StringUtils.isNotEmpty(classesType)){
				map.put("ticket.classesType", classesType);
			}
			if (StringUtils.isNotEmpty(startStation)){
				map.put("ticket.startStation", startStation);
			}
			
			if (StringUtils.isNotEmpty(endStation)){
				map.put("ticket.endStation", endStation);
			}
			
			
			if (StringUtils.isNotEmpty(begintime)){
				map.put("ticket.begintime", begintime);
			}
			
			if (StringUtils.isNotEmpty(endtime)){
				map.put("ticket.endtime", endtime);
			}
			page.setParamMap(map);
		}
		tickets = ticketbiz.list(ticket, page);
		return SUCCESS;
	}
	public String get(){
		if (ticket != null){
			ticket = ticketbiz.get(ticket.getTicketId());
			cityAreas=areabiz.selectChildren(ticket.getPriId());
			
		    classess=classesbiz.selectChildren(ticket.getCityId());
		}
		
		areas =areabiz.selectFirstLevelAreas();
		
		//classess =classesbiz.listall();
		ticketTypes = ticketTypebiz.listall();
		return SUCCESS;
	}
	
	  //获取下一级
			public String getClassesChildren(){
				classess=classesbiz.selectChildren(area.getAreaId());
				
			
				return SUCCESS;
				
			}
		
	public String save(){
		if (ticket.getTicketId() != null){
			ticketbiz.update(ticket);
		}else{
			ticketbiz.insert(ticket);
		}
		return "success";
	}
	
	public String del(){
		ticketbiz.deleteBatch(tickets);
		return SUCCESS;
	}
	
	public String view(){
		
		
		if (ticket != null){
			ticket = ticketbiz.get(ticket.getTicketId());
			cityAreas=areabiz.selectChildren(ticket.getPriId());
			
		    classess=classesbiz.selectChildren(ticket.getCityId());
		}
		
		areas =areabiz.selectFirstLevelAreas();
		
	
		ticketTypes = ticketTypebiz.listall();
		return SUCCESS;
	}

	public List<Ticket> getTickets() {
		return tickets;
	}
	public void setTickets(List<Ticket> tickets) {
		this.tickets = tickets;
	}
   
} 
