package com.moblie.cn.domain;

import java.util.List;

public class User {
	private Integer user_id;
	private String user_name;
	private String user_email;
	private String user_pwd;
	private String user_img;

	public User() {
		super();
	}

	public User(Integer user_id, String user_name, String user_email,
			String user_pwd, String user_img) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_email = user_email;
		this.user_pwd = user_pwd;
		this.user_img = user_img;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_img() {
		return user_img;
	}

	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}

	public List<User> getFindLikeName(User user) {
		
		return null;
	}

}
