package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.ITicketBiz;
import com.jlsf.biz.ITicketTypeBiz;
import com.jlsf.entity.TicketType;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 说明：ticketType action类
 * 时间：2016-07-01
 * 作者：欧阳漾
 */
public class TicketTypeAction extends ActionSupport {
private static final long serialVersionUID = 1L;
	
	//
	private List<TicketType> ticketTypes;
	@Autowired
	ITicketTypeBiz iTicketTypebiz;
	//车票类型业务接口
		TicketType ticketType;
		
		Page page=new Page();
	
		public TicketType getTicketType() {
			return ticketType;
		}
		public void setTicketType(TicketType ticketType) {
			this.ticketType = ticketType;
		}
		public Page getPage() {
			return page;
		}
		public void setPage(Page page) {
			this.page = page;
		}
	/**
	 * 说明：车票列表方法
	 * 时间：2016-07-01
	 * 作者：欧阳漾
	 */
	public String list() {
		//车票列表
        if (ticketType != null){
			
			Integer typeStatus = ticketType.getTypeStatus();
			
			//封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
		
			if (typeStatus != null){  
				map.put("ticketType.typeStatus", typeStatus);
			}
			page.setParamMap(map);
		}
		 ticketTypes=iTicketTypebiz.list(ticketType, page);
		return SUCCESS;
	}
	public String del(){
		
		iTicketTypebiz.deleteBatch(ticketTypes);
		
		return SUCCESS;
	}
	
	public String addEdit(){
		iTicketTypebiz.insert(ticketType);
		return SUCCESS;
	}
	public List<TicketType> getTicketTypes() {
		return ticketTypes;
	}
	public void setTicketTypes(List<TicketType> ticketTypes) {
		this.ticketTypes = ticketTypes;
	}
	
	
}
