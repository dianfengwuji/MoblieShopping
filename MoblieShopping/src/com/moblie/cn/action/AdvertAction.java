package com.moblie.cn.action;

import java.util.List;

import com.moblie.cn.domain.Advert;
import com.moblie.cn.service.IAdvertService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdvertAction extends ActionSupport implements ModelDriven<Advert> {
	private Advert advert = new Advert();
	private IAdvertService advertService;
	private List<Advert> list;

	public List<Advert> getList() {
		return list;
	}

	public void setList(List<Advert> list) {
		this.list = list;
	}

	public void setAdvertService(IAdvertService advertService) {
		this.advertService = advertService;
	}

	public void setAdvert(Advert advert) {
		this.advert = advert;
	}

	public Advert getModel() {
		return advert;
	}

	public String findList() {
		System.out.println("战斗即将开始.........");
		List<Advert> list = advertService.findList();
		if (list.size() > 0) {
			this.list = list;
		}
		System.out.println("战斗结束了.........");
		return SUCCESS;
	}

}
