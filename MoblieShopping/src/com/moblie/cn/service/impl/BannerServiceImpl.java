package com.moblie.cn.service.impl;

import java.util.List;

import com.moblie.cn.dao.IBannerDao;
import com.moblie.cn.domain.Banner;
import com.moblie.cn.service.IBannerService;

public class BannerServiceImpl implements IBannerService{
	
    private IBannerDao bannerDao;

	public void setBannerDao(IBannerDao bannerDao) {
		this.bannerDao = bannerDao;
	}

	public List<Banner> findList() {
		List<Banner> list=bannerDao.findList();
		return list;
	}
}
