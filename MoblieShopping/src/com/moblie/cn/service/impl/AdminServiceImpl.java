package com.moblie.cn.service.impl;

import com.moblie.cn.dao.IAdminDao;
import com.moblie.cn.domain.Admin;
import com.moblie.cn.service.IAdminService;

public class AdminServiceImpl implements IAdminService{
	
    private IAdminDao adminDao;

	public void setAdminDao(IAdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		Admin adminlogin=adminDao.findNameAndPwd(admin);
		return adminlogin;
	}
    
}
