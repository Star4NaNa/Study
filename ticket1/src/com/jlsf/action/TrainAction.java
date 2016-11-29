package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.ClassesBiz;
import com.jlsf.biz.IAreaBiz;
import com.jlsf.biz.ITicketBiz;
import com.jlsf.entity.Area;
import com.jlsf.entity.Classes;
import com.jlsf.entity.Ticket;
import com.jlsf.util.Page;

public class TrainAction {
	//承载班次的集合类
	private List<Classes> classes;
	
	Classes classe;
	


	public Classes getClasse() {
		return classe;
	}

	public void setClasse(Classes classe) {
		this.classe = classe;
	}

	Page page = new Page();
	//班次业务类接口
	
	//承载区域的集合类
	private List<Area> areas;
	
	@Autowired
    IAreaBiz areaBiz;	//注入AreaBiz调用方法查询所有的区域
	
	
	public List<Area> getAreas() {
		return areas;
	}

	public void setAreas(List<Area> areas) {
		this.areas = areas;
	}

	@Autowired
	ClassesBiz classesbiz;
	
	@Autowired
	ITicketBiz ticketBiz;
	
	private List<Ticket> tickets;
	
	Ticket ticket;

	public List<Ticket> getTickets() {
		return tickets;
	}

	public void setTickets(List<Ticket> tickets) {
		this.tickets = tickets;
	}

	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}

	public String list() {
		if (classes != null){
			int classesstartstationid = classe.getClassesStartstationid();
			int classesendstationid = classe.getClassesEndstationid();
			String classesStarttime = classe.getClassesStarttime();
			
			//封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			if (StringUtils.isNotEmpty(classesStarttime)){
				map.put("classes.classesStarttime", classesStarttime);
			}
			if (classesstartstationid!=0){
				map.put("classes.classesstartstationid", classesstartstationid);
			}
			if (classesendstationid!=0){
				map.put("classes.classesendstationid", classesendstationid);
			}
			page.setParamMap(map);
		}
		
		
		classes = classesbiz.list(classe,page);
		
		//tickets = ticketBiz.list(ticket,page);
		areas = areaBiz.selectFirstLevelAreas();
		
		return "success";
	}

	public List<Classes> getClasses() {
		return classes;
	}

	public void setClasses(List<Classes> classes) {
		this.classes = classes;
	}



	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
}
   
   
