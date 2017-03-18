package com.moblie.cn.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.moblie.cn.domain.Moblie;
import com.moblie.cn.domain.MoblieBrand;
import com.moblie.cn.domain.MoblieType;
import com.moblie.cn.service.IMoblieBrandService;
import com.moblie.cn.service.IMoblieService;
import com.moblie.cn.service.IMoblieTypeService;
import com.moblie.cn.utils.PageBean;
import com.moblie.cn.utils.UploadAction;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MoblieAction extends ActionSupport implements ModelDriven<Moblie> {

	private IMoblieService moblieService;
	private Moblie moblie = new Moblie();
	private Integer currentPage = 1;
	private IMoblieTypeService moblieTypeService;
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private Integer type_id;
	private List<Moblie> list;

	public List<Moblie> getList() {
		return list;
	}

	public void setList(List<Moblie> list) {
		this.list = list;
	}

	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setMoblieTypeService(IMoblieTypeService moblieTypeService) {
		this.moblieTypeService = moblieTypeService;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Moblie getModel() {
		return moblie;
	}

	public void setMoblieService(IMoblieService moblieService) {
		this.moblieService = moblieService;
	}

	public void setMoblie(Moblie moblie) {
		this.moblie = moblie;
	}

	public String findAllMoblie() {

		System.out.println("正在出现手机列表中。。。");
		PageBean<Moblie> pageBean = moblieService.findByPage(currentPage);
		List<Moblie> moblies = pageBean.getList();
		for (Moblie moblie : moblies) {
			System.out.println(moblie.getMoblie_name() + "," + moblie.getMoblie_price());
		}
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAll";
	}

	public String deleteMoblie() {
		moblie = moblieService.findMoblieId(moblie.getMoblie_id());
		System.out.println(moblie.getMoblie_id());
		moblieService.deleteMoblie(moblie);
		return "deleteSuccess";
	}

	public String add() {

		List<MoblieType> moblieTypes = moblieTypeService.findAllType();
		ActionContext.getContext().getValueStack().set("list", moblieTypes);
		return "add";
	}

	public String addMoblie() {
		System.out.println(uploadFileName);
		MoblieType moblieType = moblieTypeService.findMoblieTypeId(type_id);
		System.out.println("type_id..............................");
		moblie.setMoblieType(moblieType);
		UploadAction uploadAction = new UploadAction();
		uploadAction.setUpload(upload);
		uploadAction.setUploadContentType(uploadContentType);
		uploadAction.setUploadFileName(uploadFileName);
		System.out.println("========================" + uploadAction.execute());
		moblie.setMoblie_img(uploadAction.execute());
		moblieService.addMoblie(moblie);
		System.out.println("提交成功！！！");
		return "addMoblieSuccess";
	}

	public String updateMoblie() {
		moblie = moblieService.findMoblieId(moblie.getMoblie_id());
		List<MoblieType> list = moblieTypeService.findAllType();
		ActionContext.getContext().getValueStack().set("list", list);
		return "update";
	}

	public String updateMoblieList() {
		UploadAction uploadAction = new UploadAction();
		uploadAction.setUpload(upload);
		uploadAction.setUploadContentType(uploadContentType);
		uploadAction.setUploadFileName(uploadFileName);
		System.out.println("========================" + uploadAction.execute());
		moblie.setMoblie_img(uploadAction.execute());
		moblieService.updateMoblie(moblie);
		return "updateSuccess"; 
	}

	public String findNavList() {
		System.out.println("=======" + moblie.getMoblie_name() + "=============");

		List<Moblie> list = moblieService.findNavList(moblie.getMoblie_name());
		if (list.size() > 0) {
			this.list = list;
		}
		System.out.println("战斗结束了.........");
		return SUCCESS;
	}
	
	public String findList(){
		System.out.println("正在出现列表............");
		List<Moblie> list = moblieService.findList();
		if (list.size() > 0) {
			this.list=list;
		}
		return SUCCESS;
	}
	
	public String findType(){
		System.out.println("正在出现智能硬件.....");
		List<Moblie> list = moblieService.findType(type_id);
		if (list.size() > 0) {
			this.list=list;
		}
		return SUCCESS;
	}
	
	public String find(){
		System.out.println(moblie.getMoblie_name()+"======="+type_id);
		List<Moblie> list = moblieService.find(moblie.getMoblie_name(),type_id);
		if (list.size() > 0) {
			this.list=list;
		}
		return SUCCESS;
	}
	

}
