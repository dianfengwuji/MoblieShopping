package com.moblie.cn.domain;

import java.util.HashSet;
import java.util.Set;

public class MoblieType {
	private Integer type_id;
	private String type_name;
	private MoblieBrand moblieBrand;
	private Set<Moblie> moblies=new HashSet<Moblie>();

	public MoblieType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MoblieType(Integer type_id, String type_name, MoblieBrand moblieBrand,
			Set<Moblie> moblies) {
		super();
		this.type_id = type_id;
		this.type_name = type_name;
		this.moblieBrand = moblieBrand;
		this.moblies = moblies;
	}


	public Integer getType_id() {
		return type_id;
	}

	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}

	public String getType_name() {
		return type_name;
	}

	public void setType_name(String type_name) {
		this.type_name = type_name;
	}

	public MoblieBrand getMoblieBrand() {
		return moblieBrand;
	}

	public void setMoblieBrand(MoblieBrand moblieBrand) {
		this.moblieBrand = moblieBrand;
	}

	public Set<Moblie> getMoblies() {
		return moblies;
	}

	public void setMoblies(Set<Moblie> moblies) {
		this.moblies = moblies;
	}


}
