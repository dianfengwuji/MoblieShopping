package com.moblie.cn.domain;

import java.util.Date;

public class Advert {
	private Integer advert_id;
	private String advert_name;
	private String advert_img;
	private String advert_url;
	private Date advert_date = new Date();

	public Advert() {
		super();
	}

	public Advert(Integer advert_id, String advert_name, String advert_img,
			String advert_url, Date advert_date) {
		super();
		this.advert_id = advert_id;
		this.advert_name = advert_name;
		this.advert_img = advert_img;
		this.advert_url = advert_url;
		this.advert_date = advert_date;
	}

	public Integer getAdvert_id() {
		return advert_id;
	}

	public void setAdvert_id(Integer advert_id) {
		this.advert_id = advert_id;
	}

	public String getAdvert_name() {
		return advert_name;
	}

	public void setAdvert_name(String advert_name) {
		this.advert_name = advert_name;
	}

	public String getAdvert_img() {
		return advert_img;
	}

	public void setAdvert_img(String advert_img) {
		this.advert_img = advert_img;
	}

	public String getAdvert_url() {
		return advert_url;
	}

	public void setAdvert_url(String advert_url) {
		this.advert_url = advert_url;
	}

	public Date getAdvert_date() {
		return advert_date;
	}

	public void setAdvert_date(Date advert_date) {
		this.advert_date = advert_date;
	}

}
