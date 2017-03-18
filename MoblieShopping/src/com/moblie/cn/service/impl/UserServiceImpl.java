package com.moblie.cn.service.impl;

import java.util.List;

import com.moblie.cn.dao.IUserDao;
import com.moblie.cn.domain.Admin;
import com.moblie.cn.domain.Moblie;
import com.moblie.cn.domain.User;
import com.moblie.cn.service.IUserService;
import com.moblie.cn.utils.PageBean;

public class UserServiceImpl implements IUserService {

	private IUserDao userDao;

	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	public boolean addUser(User user) {
		userDao.addUser(user);
		return true;
	}

	public void deleteUser(User user) {
		userDao.deleteUser(user);
	}

	public User findUserId(Integer user_id) {
		User user = userDao.findUserId(user_id);
		return user;
	}

	public void editUser(User user) {
		userDao.editUser(user);
	}

	public PageBean<User> findByPage(int currentPage, String name) {
		PageBean<User> pageBean = new PageBean<User>();
		pageBean.setCurrentPage(currentPage);
		int pageSize = 3;
		pageBean.setPageSize(pageSize);
		int count = userDao.findCount(name);
		pageBean.setCount(count);
		double tc = count;
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		int begin = (currentPage - 1) * pageSize;
		List<User> list = userDao.findByPage(begin, pageSize,name);
		pageBean.setList(list);
		return pageBean;
	}

	public PageBean<User> findByPage(int currentPage) {
		PageBean<User> pageBean = new PageBean<User>();
		pageBean.setCurrentPage(currentPage);
		int pageSize = 3;
		pageBean.setPageSize(pageSize);
		int count = userDao.findCount();
		pageBean.setCount(count);
		double tc = count;
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		int begin = (currentPage - 1) * pageSize;
		List<User> list = userDao.findByPage(begin, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	public User findName(String user_name) {
		User user=userDao.findName(user_name);
		return user;
	}

	public User loginUser(User user) {
		User users = userDao.loginUser(user);
		return users;
	}

	public User loginEmail(User user) {
		User users=userDao.loginEmail(user);
		return users;
	}

	public User findEmail(String user_email) {
		User users = userDao.findEmail(user_email);
		return users;
	}

}
