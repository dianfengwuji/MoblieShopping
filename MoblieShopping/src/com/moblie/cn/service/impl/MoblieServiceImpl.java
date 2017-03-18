package com.moblie.cn.service.impl;

import java.util.List;

import com.moblie.cn.dao.IMoblieDao;
import com.moblie.cn.domain.Moblie;
import com.moblie.cn.service.IMoblieService;
import com.moblie.cn.utils.PageBean;

public class MoblieServiceImpl implements IMoblieService{
    private IMoblieDao moblieDao;
    
	public void setMoblieDao(IMoblieDao moblieDao) {
		this.moblieDao = moblieDao;
	}

	@Override
	public PageBean<Moblie> findByPage(Integer currerPage) {
		PageBean<Moblie> pageBean=new PageBean<Moblie>();
		pageBean.setCurrentPage(currerPage);
		int pageSize=3;
		pageBean.setPageSize(pageSize);
		int count =moblieDao.findCount();
		pageBean.setCount(count);
		double tc= count;
		Double num = Math.ceil(tc/pageSize);
		pageBean.setTotalPage(num.intValue());
		int begin=(currerPage-1)*pageSize;
		List<Moblie> list=moblieDao.findByPage(begin,pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public Moblie findMoblieId(int moblie_id) {
		Moblie moblie=moblieDao.findMoblieId(moblie_id);
		return moblie;
	}

	@Override
	public void deleteMoblie(Moblie moblie) {
		moblieDao.deleteMoblie(moblie);	
	}

	@Override
	public void  addMoblie(Moblie moblie) {
		moblieDao.addMoblie(moblie);
	}

	@Override
	public void updateMoblie(Moblie moblie) {
		moblieDao.updateMoblie(moblie);
	}

	@Override
	public List<Moblie> findNavList(String moblie_name) {
		return moblieDao.findNavList(moblie_name);
	}

	@Override
	public List<Moblie> findList() {
		return moblieDao.findList();
	}

	@Override
	public List<Moblie> findType(Integer type_id) {
		return moblieDao.findType(type_id);
	}

	@Override
	public List<Moblie> find(String moblie_name, Integer type_id) {
		return moblieDao.find(moblie_name,type_id);
	}
	
}
