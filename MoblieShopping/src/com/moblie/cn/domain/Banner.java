package com.moblie.cn.domain;

import java.util.Date;

public class Banner {
	private Integer banner_id;
	private String banner_name;
	private String banner_img;
	private String banner_url;
	private Date banner_date = new Date();

	public Banner() {
		super();
	}

	public Banner(Integer banner_id, String banner_name, String banner_img,
			String banner_url, Date banner_date) {
		super();
		this.banner_id = banner_id;
		this.banner_name = banner_name;
		this.banner_img = banner_img;
		this.banner_url = banner_url;
		this.banner_date = banner_date;
	}

	public Integer getBanner_id() {
		return banner_id;
	}

	public void setBanner_id(Integer banner_id) {
		this.banner_id = banner_id;
	}

	public String getBanner_name() {
		return banner_name;
	}

	public void setBanner_name(String banner_name) {
		this.banner_name = banner_name;
	}

	public String getBanner_img() {
		return banner_img;
	}

	public void setBanner_img(String banner_img) {
		this.banner_img = banner_img;
	}

	public String getBanner_url() {
		return banner_url;
	}

	public void setBanner_url(String banner_url) {
		this.banner_url = banner_url;
	}

	public Date getBanner_date() {
		return banner_date;
	}

	public void setBanner_date(Date banner_date) {
		this.banner_date = banner_date;
	}

}
