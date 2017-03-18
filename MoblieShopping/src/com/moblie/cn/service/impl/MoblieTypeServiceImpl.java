package com.moblie.cn.service.impl;

import java.util.List;

import com.moblie.cn.dao.IMoblieTypeDao;
import com.moblie.cn.domain.MoblieType;
import com.moblie.cn.service.IMoblieTypeService;
import com.moblie.cn.utils.PageBean;

public class MoblieTypeServiceImpl implements IMoblieTypeService {
	private IMoblieTypeDao moblieTypeDao;
	

	public void setMoblieTypeDao(IMoblieTypeDao moblieTypeDao) {
		this.moblieTypeDao = moblieTypeDao;
	}
    
	@Override
	public void addType(MoblieType moblieType) {
		moblieTypeDao.addType(moblieType);
	}
	
	@Override
	public PageBean<MoblieType> findByPage(Integer currerPage) {
		PageBean<MoblieType> pageBean = new PageBean<MoblieType>();
		pageBean.setCurrentPage(currerPage);
		int pageSize = 3;
		pageBean.setPageSize(pageSize);
		int count = moblieTypeDao.findCount();
		pageBean.setCount(count);
		double tc = count;
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		int begin = (currerPage - 1) * pageSize;
		List<MoblieType> list = moblieTypeDao.findByPage(begin, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public MoblieType findMoblieTypeId(int type_id) {
		MoblieType moblieType = moblieTypeDao.findMoblieTypeId(type_id);
		return moblieType;
	}

	@Override
	public void deleteMoblieType(MoblieType moblieType) {
		moblieTypeDao.deleteMoblieType(moblieType);
	}

	@Override
	public MoblieType findMoblieTypeName(String type_name) {
		MoblieType moblieType = moblieTypeDao.findMoblieTypeName(type_name);
		return moblieType;
	}

	@Override
	public void updateMoblieType(MoblieType moblieType) {
		moblieTypeDao.updateMoblieType(moblieType);
		
	}

	@Override
	public List<MoblieType> findAllType() {
		return moblieTypeDao.findAllType();
	}





}
