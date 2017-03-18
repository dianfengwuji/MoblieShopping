package com.moblie.cn.service;

import org.springframework.transaction.annotation.Transactional;

import com.moblie.cn.domain.Admin;
import com.moblie.cn.domain.User;
import com.moblie.cn.utils.PageBean;

@Transactional
public interface IUserService {

	public boolean addUser(User user);

	public PageBean<User> findByPage(int currentPage, String name);

	public void deleteUser(User user);

	public User findUserId(Integer user_id);

	public void editUser(User user);

	public PageBean<User> findByPage(int currentPage);

	public User findName(String user_name);

	public User loginUser(User user);

	public User loginEmail(User user);

	public User findEmail(String user_email);
	
}
