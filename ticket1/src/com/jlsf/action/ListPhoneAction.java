package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.IListphone;
import com.jlsf.entity.ListPhone;
import com.jlsf.entity.Users;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;

public class ListPhoneAction extends ActionSupport{

	//承载区域的集合类
		private List<ListPhone> listphone;
		

		//分页
		Page page = new Page();
		
		@Autowired
		IListphone listBiz;
		
		ListPhone lphone;
		
		ListPhone phone;
		
		
		
		

		public ListPhone getPhone() {
			return phone;
		}

		public void setPhone(ListPhone phone) {
			this.phone = phone;
		}

		public ListPhone getLphone() {
			return lphone;
		}

		public void setLphone(ListPhone lphone) {
			this.lphone = lphone;
		}

		public List<ListPhone> getListphone() {
			return listphone;
		}

		public void setListphone(List<ListPhone> listphone) {
			this.listphone = listphone;
		}

		public Page getPage() {
			return page;
		}

		public void setPage(Page page) {
			this.page = page;
		}

		public IListphone getListBiz() {
			return listBiz;
		}

		public void setListBiz(IListphone listBiz) {
			this.listBiz = listBiz;
		} 
		
		public String list(){
			
			   HttpSession session = ServletActionContext.getRequest().getSession();
	    	
	    	   Users user = (Users) session.getAttribute("users");
	    	   
	    	   lphone = new ListPhone();
	    	   
	    	   if(user==null){
	    		   
	    		   return "notlog";
	    	   }else{
	    	   
	    	   lphone.setPhoneUid(user.getUserId());
	    	   
			    if(phone != null){
				
				String phoneName = phone.getPhoneName();
				
				lphone.setPhoneName(phoneName);
				
				//封装翻页链接里的参数
				Map<String, Serializable> map = new HashMap<String, Serializable>();
				
				if(StringUtils.isNotEmpty(phoneName)){
					
					map.put("lphone.phoneName", phoneName);
					
				}				
				page.setParamMap(map);
			}
			
			    listphone = listBiz.list(lphone, page); 
			    
			return SUCCESS;
			
	    	   }
		}
		
		public String del(){
			
			listBiz.deleteBatch(listphone);
			
			return SUCCESS;
		}
		
		public String edit(){
			
			lphone =  listBiz.selectByPrimaryKey(phone.getPhoneId());
			
			return SUCCESS;
		}
		
		public String update(){
			
			listBiz.updateByPrimaryKeySelective(lphone);
			
			return SUCCESS;
		}
		
		public String insert(){
			
			HttpSession session = ServletActionContext.getRequest().getSession();
			
			Users user = (Users) session.getAttribute("users");
			
			phone = new ListPhone();
			
			phone.setPhoneUid(user.getUserId());
			
			phone.setPhoneName(lphone.getPhoneName());
			
			phone.setPhoneNum(lphone.getPhoneNum());
			
			listBiz.insertSelective(phone);
			
			return SUCCESS;
		}
}
