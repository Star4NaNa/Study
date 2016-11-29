package com.jlsf.action;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.IUsersBiz;
import com.jlsf.entity.Users;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 
 * 说明：user页面action类
 * 时间：2016-07-01
 * 作者：马一城
 */
public class UsersAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	//承载区域的集合类
	private List<Users> users;
	
	//分页
	Page page = new Page();

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Users> getUsers() {
		return users;
	}

	public void setUsers(List<Users> users) {
		this.users = users;
	}
	
	
	//区域业务类接口
	@Autowired
	IUsersBiz usersBiz;
	
	
	Users u;
	
	String userName;
	String userPwd;
	String userPhone;
	String newPwd1;
	String userAns;

	public String getUserAns() {
		return userAns;
	}

	public void setUserAns(String userAns) {
		this.userAns = userAns;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserName() {
		return userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}

	/**
	 * 说明：user 列表方法
	 * 时间：2016-07-01
	 * 作者：马一城
	 */
	
	public String list(){

		//用户列表
		if(u != null){
			
			String uName = u.getUserName();
			
			String uRname = u.getUserRname();
			
			String uCarid = u.getUserCarid();
	
			//封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			
			if(StringUtils.isNotEmpty(uName)){
				
				map.put("u.userName", uName);
				
			}
			if(StringUtils.isNotEmpty(uRname)){
				
				map.put("u.userRname", uRname);
				
			}
			if(StringUtils.isNotEmpty(uCarid)){
				
				map.put("u.userCarid", uCarid);
				
			}
			
			page.setParamMap(map);
		}
		
		users=usersBiz.list(u,page);
		return SUCCESS;
	}
	/**
	 * 说明：注册方法
	 * 时间：2016-07-02
	 * 作者：赵一峰
	 * @return
	 */
	public String addusers(){
		
		
//		int num=usersBiz.addusers(u);
//		if(num>0)
//		   {
//			ActionContext ac = ActionContext.getContext();
//			Map session = ac.getSession();
//			session.put("users", u);
//			return SUCCESS;
//		   }else{
//			   return ERROR;

	     Users user=new Users();
		 user.setUserName(u.getUserName());
		 //user.setUserPassword(u.getUserPassword());
		if( usersBiz.selByName(user.getUserName())!=null){
			return ERROR;
		}else{
			
			int num=usersBiz.addusers(u);
			if(num>0)
			   {
				ActionContext ac = ActionContext.getContext();
				Map session = ac.getSession();
				session.put("users", u);
				return SUCCESS;
			   }else{
				   return ERROR;
		}
		 
		
	}
		
		
//		Users user=usersBiz.selByName(userName);
//		if(user!=null){
//			return ERROR;
//		}else{
//			u.setUserName(userName);
//			u.setUserPassword(userPwd);
//			int num=usersBiz.addusers(u);
//			if(num>0){
//				return SUCCESS;
//			}else{
//				return ERROR;
//			}
//			
//		}
		
		
		}
	
	/**
	 * 说明：通过用户名查询密码
	 * 时间：2016-07-03
	 * 作者：赵一峰
	 * @return
	 */
	public String selpwd(){
		u=usersBiz.selByName(userName);
		if(u==null){
			
			return ERROR;
		}
		if(u.getUserStatus()==0){
			return "power";
			
		}
		
		
	  String pwd=u.getUserPassword();
	  if("".equals(u.getUserName())||u.getUserName()==null){
		  
		  return ERROR;
	  }
	  if(pwd!=""||pwd!=null){
		if(userPwd.equals(pwd)){
			ActionContext ac = ActionContext.getContext();
			Map session = ac.getSession();
			session.put("users", u);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}else{
		return ERROR;
	}
}
	/**
	 * 查询密保答案
	 * 赵一峰
	 * 
	 */
	public String selans(){
		u=usersBiz.selByName(userName);
		String ans=u.getUserAns();
		if(ans!=""||ans!=null){
			if(userAns.equals(ans)){
				
				return SUCCESS;
			}else{
				return ERROR;
			}
		}else{
			return ERROR;
		}
	} 
	
	/**
	 * 通过用户名更新密码
	 * 
	 */
	public String setnewpwd(){
		Users user=usersBiz.selByName(userName);
		
		u.setUserId(user.getUserId());
		
	     usersBiz.updateByPrimaryKeySelective(u);
		return SUCCESS;
		
		
	}
	
	/**
	 * 说明：查询电话修改密码
	 * 时间：2016-07-03
	 * 作者：赵一峰
	 * @return
	 */
	public String seluser(){
		
		u=usersBiz.selByPhone(userPhone);
		if(u!=null){
		   	return SUCCESS;
		}else{
			return ERROR;
		}
		
	}
	
	
	public List<Users> getList(){
		return users;
	}
	public void setList(List<Users> users){
		this.users=users;
	}
	
	public String del(){
		
		usersBiz.deleteBatch(users);
		return SUCCESS;
	}

	public IUsersBiz getUsersBiz() {
		return usersBiz;
	}

	public void setUsersBiz(IUsersBiz usersBiz) {
		this.usersBiz = usersBiz;
	}
	
	/**
	 * 说明：按ID查询一个用户信息
	 * 时间：2016-07-03
	 * 作者：马一城
	 * 
	 */
    public String selectByid(){
		
		u = usersBiz.selectByPrimaryKey(u.getUserId());
		
		return SUCCESS;
	}
    
    /**
     * 说明：修改用户信息
     * 时间：2016-07-03
     * 作者：马一城
     */
    public String update(){
    	
    	usersBiz.updateByPrimaryKeySelective(u);
    	
    	return SUCCESS;
    }
    
    public String save(){
    	
    	HttpSession session = ServletActionContext.getRequest().getSession();
    	
    	Users user = (Users) session.getAttribute("users");
    	
    	u.setUserId(user.getUserId());
    	
    	usersBiz.updateByPrimaryKeySelective(u);
    	
    	ActionContext ac = ActionContext.getContext();
    	
    	Map s = ac.getSession();
    	
    	s.put("users", u);
    	
    	return SUCCESS;
    }



   /**
    * 说明：修改密码
    * 时间：2016-07-04
    * 作者：马一城
    */
   public String editpwd(){
	   
	   HttpSession session = ServletActionContext.getRequest().getSession();
   	
   	Users user = (Users) session.getAttribute("users");
   	
   	u.setUserId(user.getUserId());
   	
   	usersBiz.updateByPrimaryKeySelective(u);
   	
   	ActionContext ac = ActionContext.getContext();
   	
   	Map s = ac.getSession();
   	
   	s.put("users", u);
	   
	   //u.setUserId(user.getUserId());
	   
	   //u.setUserPassword(newPwd1);
	   
	   usersBiz.updateByPrimaryKeySelective(u);
	   
	   return SUCCESS;
   }
   
   /**
    * 说明：用户停用功能
    * 时间：2016-07-05
    * 作者：马一城
    */
   public String stop(){
	   
	   usersBiz.stop(users);
	   
	   return SUCCESS;
   }
}