package com.jlsf.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlsf.biz.IAreaBiz;
import com.jlsf.biz.ITeacherBiz;
import com.jlsf.entity.Area;
import com.jlsf.entity.Teacher;
import com.jlsf.util.Page;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 说明：teacher页面action类
 * 时间:2016-06-22
 * 作者： 闫飞
 */
public class TeacherAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//承载教师的集合类
	private List<Teacher> teachers;
	
	//承载省的集合类
	private List<Area> areas;
	
	//承载市的集合类
	private List<Area> cityAreas;
		
	//承载区县的集合类
	private List<Area> areaAreas;
	
	
	
	Page page = new Page();
	
	Teacher teacher;
	
	//教师业务类接口
	@Autowired
	ITeacherBiz teacherBiz;
	
	@Autowired
	IAreaBiz areaBiz;
	/**
	 * 说明：teacher 列表方法
	 * 时间:2016-06-22
	 * 作者： 闫飞
	 */
	public String list() {
		//教师列表
		if (teacher != null){
			String teacherName = teacher.getTeacherName();
			String teacherNo = teacher.getTeacherNo();
			String teacherSex = teacher.getTeacherSex();
			
			//封装翻页链接里的参数
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			if (StringUtils.isNotEmpty(teacherName)){
				map.put("teacher.teacherName", teacherName);
			}
			if (StringUtils.isNotEmpty(teacherNo)){
				map.put("teacher.teacherNo", teacherNo);
			}
			if (StringUtils.isNotEmpty(teacherSex)){
				map.put("teacher.teacherSex", teacherSex);
			}
			page.setParamMap(map);
		}
		teachers = teacherBiz.list(teacher,page);
		return SUCCESS;
	}
	
	public String save(){
		if (teacher.getTeacherId() != null){
			teacherBiz.update(teacher);
		}else{
			teacherBiz.save(teacher);
		}
		return SUCCESS;
	}
	
	public String del(){
		/*for (Teacher obj : teachers){
			teacherBiz.del(obj.getTeacherId());
		}*/
		teacherBiz.deleteBatch(teachers);
		return SUCCESS;
	}
	
	
	
	public String get(){
		if (teacher != null){
			teacher = teacherBiz.get(teacher.getTeacherId());
			//省id
			Integer proAreaId = teacher.getProAreaId();
			//如果有所属的省，则查询市集合
			if (proAreaId != null){
				cityAreas = areaBiz.selectChildren(proAreaId);
			}
			//市id
			Integer cityAreaId = teacher.getCityAreaId();
			//如果有所属的市，则查询区县集合
			if (cityAreaId != null){
				areaAreas = areaBiz.selectChildren(cityAreaId);
			}
		}
		areas = areaBiz.selectFirstLevelAreas();
		return SUCCESS;
	}
	
	public String view(){
		teacher = teacherBiz.get(teacher.getTeacherId());
		return SUCCESS;
	}
	
	
	public List<Teacher> getTeachers() {
		return teachers;
	}
	public void setTeachers(List<Teacher> teachers) {
		this.teachers = teachers;
	}


	public Page getPage() {
		return page;
	}


	public void setPage(Page page) {
		this.page = page;
	}


	public Teacher getTeacher() {
		return teacher;
	}


	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
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

	public List<Area> getAreaAreas() {
		return areaAreas;
	}

	public void setAreaAreas(List<Area> areaAreas) {
		this.areaAreas = areaAreas;
	}

}
