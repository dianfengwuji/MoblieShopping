package com.moblie.cn.domain;

public class Admin {
	private Integer admin_id;
	private String admin_name;
	private String admin_pwd;
	private String admin_img;

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(Integer admin_id, String admin_name, String admin_pwd,
			String admin_img) {
		super();
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.admin_pwd = admin_pwd;
		this.admin_img = admin_img;
	}

	public Integer getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(Integer admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_pwd() {
		return admin_pwd;
	}

	public void setAdmin_pwd(String admin_pwd) {
		this.admin_pwd = admin_pwd;
	}

	public String getAdmin_img() {
		return admin_img;
	}

	public void setAdmin_img(String admin_img) {
		this.admin_img = admin_img;
	}

}
