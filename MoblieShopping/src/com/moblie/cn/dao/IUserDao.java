package com.moblie.cn.dao;

import java.util.List;

import com.moblie.cn.domain.Moblie;
import com.moblie.cn.domain.User;


public interface IUserDao{

	public boolean addUser(User user);

	public int findCount(String name);

	public List<User> findByPage(int begin, int pageSize, String name);

	public void deleteUser(User user);

	public User findUserId(Integer user_id);

	public void editUser(User user);

	public int findCount();

	public List<User> findByPage(int begin, int pageSize);

	public User findName(String user_name);

	public User loginUser(User user);

	public User loginEmail(User user);

	public User findEmail(String user_email);
}
