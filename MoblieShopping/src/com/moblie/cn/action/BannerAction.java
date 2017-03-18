package com.moblie.cn.action;

import java.util.List;

import com.moblie.cn.domain.Banner;
import com.moblie.cn.service.IBannerService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BannerAction extends ActionSupport implements ModelDriven<Banner> {
	private IBannerService bannerService;
	private Banner banner = new Banner();
	private List<Banner> list;

	public List<Banner> getList() {
		return list;
	}

	public void setList(List<Banner> list) {
		this.list = list;
	}

	public void setBanner(Banner banner) {
		this.banner = banner;
	}

	public void setBannerService(IBannerService bannerService) {
		this.bannerService = bannerService;
	}

	public Banner getModel() {
		return banner;
	}

	public String findList() {
		System.out.println("战斗即将开始.........");
		List<Banner> list = bannerService.findList();
		if (list.size() > 0) {
           this.list=list;
		}
		System.out.println("战斗结束了.........");
		return SUCCESS;
	}

}
