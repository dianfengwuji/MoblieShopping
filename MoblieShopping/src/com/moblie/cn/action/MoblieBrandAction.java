package com.moblie.cn.action;

import java.util.List;

import com.moblie.cn.domain.MoblieBrand;
import com.moblie.cn.service.IMoblieBrandService;
import com.moblie.cn.utils.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MoblieBrandAction extends ActionSupport implements ModelDriven<MoblieBrand> {
   
	private IMoblieBrandService moblieBrandService;
	private MoblieBrand moblieBrand = new MoblieBrand();
	private Integer currentPage = 1;
	
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	@Override
	public MoblieBrand getModel() {
		// TODO Auto-generated method stub
		return moblieBrand;
	}

	public void setMoblieBrandService(IMoblieBrandService moblieBrandService) {
		this.moblieBrandService = moblieBrandService;
	}

	public void setMoblieBrand(MoblieBrand moblieBrand) {
		this.moblieBrand = moblieBrand;
	}

	public String add() {
		return "add";
	}

	public String addBrand() {
		System.out.println(moblieBrand.getBrand_name());
		MoblieBrand  moblieBrands= moblieBrandService.findMoblieBrandName(moblieBrand.getBrand_name());
		System.out.println(moblieBrands);
		if (moblieBrands != null) {
			this.addActionError("品牌重复了");
			System.out.println("品牌重复了，请重新输入。。");
			return "errorBrand";
		}else{
			moblieBrandService.addBrand(moblieBrand);
			return "addSuccess";
		}
			

	}

	public String findAllMoblieBrand() {
		System.out.println("正在出现手机列表中。。。");
		PageBean<MoblieBrand> pageBean = moblieBrandService
				.findByPage(currentPage);
		List<MoblieBrand> moblies = pageBean.getList();
		for (MoblieBrand moblieBrand : moblies) {
			System.out.println(moblieBrand.getBrand_name());
		}
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findBrandAll";
	}

	public String deleteMoblieBrand() {
		moblieBrand = moblieBrandService.findMoblieBrandId(moblieBrand.getBrand_id());
		moblieBrandService.deleteMoblieBrand(moblieBrand);
		return "deleteSuccess";
	}
	
	public String editMoblieBrand(){
		moblieBrand = moblieBrandService.findMoblieBrandId(moblieBrand.getBrand_id());
        return "editSuccess"; 
	}
	
	public String updateMoblieBrand(){
		moblieBrandService.updateMoblieBrand(moblieBrand);
		return "updateSuccess";
	}

}
