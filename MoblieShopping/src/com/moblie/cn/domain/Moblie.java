package com.moblie.cn.domain;

import java.util.Date;

public class Moblie {
	private Integer moblie_id;
	private String moblie_name;
	private Double moblie_price;
	private String moblie_img;
	private String moblie_jieshao;
	private Integer moblie_news;
	private MoblieType moblieType;

	public Moblie() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Moblie(Integer moblie_id, String moblie_name, Double moblie_price, String moblie_img, String moblie_jieshao,
			Integer moblie_news, MoblieType moblieType) {
		super();
		this.moblie_id = moblie_id;
		this.moblie_name = moblie_name;
		this.moblie_price = moblie_price;
		this.moblie_img = moblie_img;
		this.moblie_jieshao = moblie_jieshao;
		this.moblie_news = moblie_news;
		this.moblieType = moblieType;
	}

	public Integer getMoblie_id() {
		return moblie_id;
	}

	public void setMoblie_id(Integer moblie_id) {
		this.moblie_id = moblie_id;
	}

	public String getMoblie_name() {
		return moblie_name;
	}

	public void setMoblie_name(String moblie_name) {
		this.moblie_name = moblie_name;
	}

	public Double getMoblie_price() {
		return moblie_price;
	}

	public void setMoblie_price(Double moblie_price) {
		this.moblie_price = moblie_price;
	}

	public String getMoblie_img() {
		return moblie_img;
	}

	public void setMoblie_img(String moblie_img) {
		this.moblie_img = moblie_img;
	}

	public String getMoblie_jieshao() {
		return moblie_jieshao;
	}

	public void setMoblie_jieshao(String moblie_jieshao) {
		this.moblie_jieshao = moblie_jieshao;
	}

	public Integer getMoblie_news() {
		return moblie_news;
	}

	public void setMoblie_news(Integer moblie_news) {
		this.moblie_news = moblie_news;
	}

	public MoblieType getMoblieType() {
		return moblieType;
	}

	public void setMoblieType(MoblieType moblieType) {
		this.moblieType = moblieType;
	}


}
