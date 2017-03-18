package com.moblie.cn.service.impl;

import java.util.List;

import com.moblie.cn.dao.IMoblieBrandDao;
import com.moblie.cn.domain.MoblieBrand;
import com.moblie.cn.service.IMoblieBrandService;
import com.moblie.cn.utils.PageBean;

public class MoblieBrandServiceImpl implements IMoblieBrandService {
	private IMoblieBrandDao moblieBrandDao;
	

	public void setMoblieBrandDao(IMoblieBrandDao moblieBrandDao) {
		this.moblieBrandDao = moblieBrandDao;
	}
    
	@Override
	public void addBrand(MoblieBrand moblieBrand) {
		moblieBrandDao.addBrand(moblieBrand);
	}
	
	@Override
	public PageBean<MoblieBrand> findByPage(Integer currerPage) {
		PageBean<MoblieBrand> pageBean = new PageBean<MoblieBrand>();
		pageBean.setCurrentPage(currerPage);
		int pageSize = 3;
		pageBean.setPageSize(pageSize);
		int count = moblieBrandDao.findCount();
		pageBean.setCount(count);
		double tc = count;
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		int begin = (currerPage - 1) * pageSize;
		List<MoblieBrand> list = moblieBrandDao.findByPage(begin, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public MoblieBrand findMoblieBrandId(int brand_id) {
		MoblieBrand moblieBrand = moblieBrandDao.findMoblieBrandId(brand_id);
		return moblieBrand;
	}

	@Override
	public void deleteMoblieBrand(MoblieBrand moblieBrand) {
		moblieBrandDao.deleteMoblieBrand(moblieBrand);
	}

	@Override
	public MoblieBrand findMoblieBrandName(String brand_name) {
		MoblieBrand moblieBrand = moblieBrandDao.findMoblieBrandName(brand_name);
		return moblieBrand;
	}

	@Override
	public void updateMoblieBrand(MoblieBrand moblieBrand) {
		moblieBrandDao.updateMoblieBrand(moblieBrand);
		
	}

	@Override
	public List<MoblieBrand> findAllBrand() {
		return moblieBrandDao.findAllBrand();
	}





}
