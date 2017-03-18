package com.moblie.cn.service.impl;

import java.util.List;

import com.moblie.cn.dao.IAdvertDao;
import com.moblie.cn.domain.Advert;
import com.moblie.cn.service.IAdvertService;

public class AdvertServiceImpl implements IAdvertService {
	private IAdvertDao advertDao;

	public void setAdvertDao(IAdvertDao advertDao) {
		this.advertDao = advertDao;
	}

	public List<Advert> findList() {
		List<Advert> list=advertDao.findList();
		return list;
	}

}
