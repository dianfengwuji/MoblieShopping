package com.moblie.cn.domain;

import java.util.HashSet;
import java.util.Set;

public class MoblieBrand {
	private Integer brand_id;
	private String brand_name;
	private Set<MoblieType> moblieTypes=new HashSet<MoblieType>();

	public MoblieBrand() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MoblieBrand(Integer brand_id, String brand_name, Set<MoblieType> moblieTypes) {
		super();
		this.brand_id = brand_id;
		this.brand_name = brand_name;
		this.moblieTypes = moblieTypes;
	}

	public Integer getBrand_id() {
		return brand_id;
	}

	public void setBrand_id(Integer brand_id) {
		this.brand_id = brand_id;
	}

	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	public Set<MoblieType> getMoblieTypes() {
		return moblieTypes;
	}

	public void setMoblieTypes(Set<MoblieType> moblieTypes) {
		this.moblieTypes = moblieTypes;
	}

}
