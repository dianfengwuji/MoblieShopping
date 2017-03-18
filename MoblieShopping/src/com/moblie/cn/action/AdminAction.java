package com.moblie.cn.action;

import com.moblie.cn.domain.Admin;
import com.moblie.cn.service.IAdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminAction extends ActionSupport implements ModelDriven<Admin> {

	private IAdminService adminService;
	private Admin admin = new Admin();

	@Override
	public Admin getModel() {
		return admin;
	}

	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String login() {
		System.out.println("µÇÂ¼ÖÐ....");
		Admin adminlogin = adminService.login(admin);
		if (adminlogin == null) {
			// µÇÂ½Ê§°Ü
			this.addActionError("µÇÂ¼Ê§°Ü");
			System.out.println("µÇÂ¼Ê§°Ü");
			return "errorlogin";
		} else {
			ActionContext.getContext().getSession().put("adminlogin", adminlogin);
			System.out.println("µÇÂ¼³É¹¦");
			return "adminlogin";
		}
	}

}
