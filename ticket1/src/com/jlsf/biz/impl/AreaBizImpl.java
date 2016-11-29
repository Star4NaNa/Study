package com.jlsf.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jlsf.biz.IAreaBiz;
import com.jlsf.dao.AreaMapper;
import com.jlsf.entity.Area;
import com.jlsf.util.Page;
@Service
public class AreaBizImpl implements IAreaBiz {

	@Resource
	private AreaMapper areaMapper;
	//查询全部区域
	@Override
	public List<Area> list(Area area, Page page) {
		int count = areaMapper.listCount(area);
		page.setT_c_no(count);
		return areaMapper.list(area, page);
	}

	//添加区域
	@Override
	public int insert(Area area) {
		if(area.getAreaParentid()==null){
			area.setAreaParentid(0);
		}if(area.getPpAreaId()==null && area.getpAreaId() == null){
			area.setAreaLevel(1);
		}if(area.getPpAreaId()!=null && area.getpAreaId() == null ){}
			area.setAreaLevel(2);
		 if(area.getPpAreaId()!=null && area.getpAreaId() != null){
			area.setAreaLevel(3);
		}
		return areaMapper.insert(area);
	}

	@Override
	public Area selectByPrimaryKey(Integer areaId) {
		return areaMapper.selectByPrimaryKey(areaId);
	}



	@Override
	public List<Area> selectChildren(int areaId) {
		
		return areaMapper.selectChildren(areaId);
	}

	@Override
	public List<Area> selectFirstLevelAreas() {
		return areaMapper.selectFirstLevelAreas();
	}


	@Override
	public int updateByPrimaryKeySelective(Area area) {
		if(area.getAreaParentid()==null){
			area.setAreaParentid(0);
		}if(area.getPpAreaId()==null && area.getpAreaId() == null){
			area.setAreaLevel(1);
		}if(area.getPpAreaId()!=null && area.getpAreaId() == null ){}
			area.setAreaLevel(2);
		 if(area.getPpAreaId()!=null && area.getpAreaId() != null){
			area.setAreaLevel(3);
		}
		
		return areaMapper.updateByPrimaryKeySelective(area);
	}



	@Override
	public void deleteBatch(List<Area> area) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateDel(Area area) {
		areaMapper.updateDel(area);
		
	}

	@Override
	public void del(Integer areaId) {
		// TODO Auto-generated method stub
		
	}

	

	








	
	

}
