package com.moblie.cn.action;

import java.util.List;

import com.moblie.cn.domain.MoblieBrand;
import com.moblie.cn.domain.MoblieType;
import com.moblie.cn.service.IMoblieBrandService;
import com.moblie.cn.service.IMoblieTypeService;
import com.moblie.cn.utils.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MoblieTypeAction extends ActionSupport implements ModelDriven<MoblieType> {

	private IMoblieTypeService moblieTypeService;
	private MoblieType moblieType = new MoblieType();
	private Integer currentPage = 1;

	private IMoblieBrandService moblieBrandService;

	public void setMoblieBrandService(IMoblieBrandService moblieBrandService) {
		this.moblieBrandService = moblieBrandService;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	@Override
	public MoblieType getModel() {
		// TODO Auto-generated method stub
		return moblieType;
	}

	public void setMoblieTypeService(IMoblieTypeService moblieTypeService) {
		this.moblieTypeService = moblieTypeService;
	}

	public void setMoblieType(MoblieType moblieType) {
		this.moblieType = moblieType;
	}

	public String add() {
		return "add";
	}

	public String findAllBrand() {
		List<MoblieBrand> moblieBrands = moblieBrandService.findAllBrand();
		ActionContext.getContext().getValueStack().set("list", moblieBrands);
		return "findAllBrand";
	}

	public String addType() {
		MoblieType moblieTypes = moblieTypeService.findMoblieTypeName(moblieType.getType_name());
		MoblieBrand moblieBrand = moblieBrandService.findMoblieBrandId(moblieType.getMoblieBrand().getBrand_id());
		System.out.println(moblieTypes);
		if (moblieTypes != null && moblieBrand != null) {
			this.addActionError("机型重复了");
			System.out.println("机型重复了，请重新输入。。");
			return "errorType";
		} else {
			moblieTypeService.addType(moblieType);
			return "addSuccess";
		}

	}

	public String findAllMoblieType() {
		System.out.println("正在出现手机列表中。。。");
		PageBean<MoblieType> pageBean = moblieTypeService
				.findByPage(currentPage);
		List<MoblieType> moblies = pageBean.getList();
		for (MoblieType moblieType : moblies) {
			System.out.println(moblieType.getType_name());
		}
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findTypeAll";
	}

	public String deleteMoblieType() {
		moblieType = moblieTypeService.findMoblieTypeId(moblieType.getType_id());
		moblieTypeService.deleteMoblieType(moblieType);
		return "deleteSuccess";
	}

	public String editMoblieType() {
		moblieType = moblieTypeService.findMoblieTypeId(moblieType.getType_id());
		List<MoblieBrand> list = moblieBrandService.findAllBrand();
		ActionContext.getContext().getValueStack().set("list", list);
		return "editSuccess";
	}

	public String updateMoblieType() {
		moblieTypeService.updateMoblieType(moblieType);
		return "updateSuccess";
	}

}
