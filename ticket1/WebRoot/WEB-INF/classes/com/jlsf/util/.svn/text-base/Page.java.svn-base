package com.jlsf.util;

import java.io.Serializable;
import java.util.Map;
import java.util.Map.Entry;

/**
 * 闫飞
 * 2013-11-30
 * 翻页工具
 */
public class Page implements Serializable {
   
	private static final long serialVersionUID = 1L;
	//外部传参部分
	private String path = "";//页面动态参数
	private int p_c_no = 10;//每页记录数
	private int c_p_no = 1;//当前页码
	private int t_c_no = 0;//总共记录数
	
	//内部计算部分
	private int t_p_no = 0;//总共页码
	private int c_p_c_no = 0;//当前页的记录数,sqlserver 2000
	private int c_p_c_min_no = 0;//当前页最小记录数，在总记录数中的位置sqlserver 2005,2008
	private int c_p_c_max_no = 0;//当前页最大记录数，在总记录数中的位置,sqlserver 2000,2005,2008
	private boolean have_first = true;//有首页
	private boolean have_last = true;//有尾页
	private boolean have_next = true;//有下一页
	private boolean have_prev = true;//有上一页
	
	Map<String, Serializable> map;//搜索参数
	String mapName;//搜索参数
	
	
	public Page(){
	}
	
	
	


	public void init(){
		//算总页码,总记录数除以每页记录数
		t_p_no = t_c_no / p_c_no;
		//算当前页起位记录编号,每页记录数剩以(当前页号-1) + 1
		if (t_c_no > 0 ){
			c_p_c_min_no = (c_p_no - 1) * p_c_no + 1;
		}
		if ((t_c_no % p_c_no) > 0){
			//如果有余数，则加1
			t_p_no += 1;	
		}
		//每页记录数乘以当前页码 如果大于总共记录数==>溢出
		if (p_c_no * c_p_no > t_c_no){
			//只有最后一页会出现这种情况
			c_p_c_max_no = t_c_no;//最大记录值=总记录数
			c_p_c_no = p_c_no - (p_c_no * c_p_no - t_c_no);//当前页的记录数等于总数-溢出部分
		}else{
			c_p_c_max_no = p_c_no * c_p_no;
			c_p_c_no = p_c_no;
		}
		if (c_p_no >= t_p_no){
			//当前页码已经是尾页
			have_last = false;
			have_next = false;
		}
		if (c_p_no == 1){
			//当前页码已经是首页
			have_first = false;
			have_prev = false;
		}
		if (path.indexOf("?") == -1){
			path += "?1=1";
		}
		if (map != null){
			//遍历下传参数
			for (Entry<String, Serializable> entry : map.entrySet()){
				Serializable value = entry.getValue();
				if (value != null){
					value = value.toString();
				}
				String val = (String) value;
				if (val != null && !val.trim().equals("")){
					path += "&";
					if(mapName != null && !mapName.trim().equals("")){
						path += mapName + ".";	
					}
					path += entry.getKey() + "=" + val.trim();
				}
			}
			
		}
	}
//	public void setPath(String path) {
//		if(!StringUtils.isEmpty(path) && path.indexOf("?") != -1){
//			try {
//				String tmp1 = path.substring(path.indexOf("?")+1);
//				StringBuffer url = new StringBuffer();
//				String[] params = tmp1.split("&");
//				for(String p : params){
//					String[] fe = p.split("=");
//					if(fe.length==2){
//						url.append(fe[0]+"="+URLEncoder.encode(fe[1],"UTF-8")+"&");
//					}
//					
//				}
//				if(url.toString().endsWith("&")){
//					url.deleteCharAt(url.length()-1);
//				}
//				String tmp2 = path.substring(0,path.indexOf("?"));
//				this.path = tmp2 + "?" + url;
//			} catch (UnsupportedEncodingException e) {
//				e.printStackTrace();
//				this.path = "";
//			}
//		}else{
//			this.path = path;
//		}
//	}


	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	public void setPath(String path,Map<String, Serializable> map,String mapName) {
		this.path = path;
		this.map = map;
		this.mapName = mapName;
	}
	public void setPath(String path,Map<String, Serializable> map) {
		this.path = path;
		this.map = map;
	}

	public int getP_c_no() {
		return p_c_no;
	}


	public void setP_c_no(int p_c_no) {
		this.p_c_no = p_c_no;
	}


	public int getC_p_no() {
		return c_p_no;
	}


	public void setC_p_no(int c_p_no) {
		this.c_p_no = c_p_no;
	}


	public int getT_c_no() {
		return t_c_no;
	}


	public void setT_c_no(int t_c_no) {
		this.t_c_no = t_c_no;
		init();
	}


	public int getT_p_no() {
		return t_p_no;
	}


	public int getC_p_c_no() {
		return c_p_c_no;
	}


	public int getC_p_c_max_no() {
		return c_p_c_max_no;
	}


	public boolean getHave_first() {
		return have_first;
	}


	public boolean getHave_last() {
		return have_last;
	}


	public boolean getHave_next() {
		return have_next;
	}


	public boolean getHave_prev() {
		return have_prev;
	}


	public int getC_p_c_min_no() {
		return c_p_c_min_no;
	}


	public void setC_p_c_min_no(int c_p_c_min_no) {
		this.c_p_c_min_no = c_p_c_min_no;
	}


	public void setC_p_c_max_no(int c_p_c_max_no) {
		this.c_p_c_max_no = c_p_c_max_no;
	}

	public Map<String, Serializable> getParamMap() {
		return map;
	}

	public void setParamMap(Map<String, Serializable> map) {
		this.map = map;
	}

	
}
