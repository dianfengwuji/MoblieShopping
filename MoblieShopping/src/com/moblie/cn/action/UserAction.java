package com.moblie.cn.action;

import java.io.File;
import java.util.List;
import com.moblie.cn.domain.Mail;
import com.moblie.cn.domain.User;
import com.moblie.cn.service.IUserService;
import com.moblie.cn.utils.MailUtil;
import com.moblie.cn.utils.MathUtil;
import com.moblie.cn.utils.PageBean;
import com.moblie.cn.utils.UploadAction;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	private User user = new User();
	private Mail mail = new Mail();
	private IUserService userService;
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private int currentPage;
	private String name;
	private String result;
	private String email_info;
	private String math;

	public String getMath() {
		return math;
	}

	public void setMath(String math) {
		this.math = math;
	}

	public void setEmail_info(String email_info) {
		this.email_info = email_info;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
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

	public User getModel() {
		return user;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public String add() {
		return SUCCESS;
	}

	public void setMail(Mail mail) {
		this.mail = mail;
	}

	public String addUser() {
		System.out.println("正在添加中.......");
		UploadAction uploadAction = new UploadAction();
		uploadAction.setUpload(upload);
		uploadAction.setUploadContentType(uploadContentType);
		uploadAction.setUploadFileName(uploadFileName);
		user.setUser_img(uploadAction.execute());
		userService.addUser(user);
		System.out.println("添加成功....");
		return "addUserSuccess";
	}

	public String findAllUser() {
		System.out.println("正在出现用户列表中。。。");
		if (name.isEmpty()) {
			PageBean<User> pageBean = userService.findByPage(currentPage);
			List<User> users = pageBean.getList();
			for (User user : users) {
				System.out.println(user.getUser_name() + user.getUser_email());
			}
			ActionContext.getContext().getValueStack().push(pageBean);
			return "findAll";
		} else {
			PageBean<User> pageBean = userService.findByPage(currentPage, name);
			List<User> users = pageBean.getList();
			for (User user : users) {
				System.out.println(user.getUser_name() + "================="
						+ user.getUser_email());
			}
			ActionContext.getContext().getValueStack().push(pageBean);
			return "findName";
		}
	}

	public String deleteUser() {
		user = userService.findUserId(user.getUser_id());
		userService.deleteUser(user);
		return "deleteUserSuccess";
	}

	public String updateUser() {
		user = userService.findUserId(user.getUser_id());
		return "updateUser";
	}

	public String editUser() {
		UploadAction uploadAction = new UploadAction();
		uploadAction.setUpload(upload);
		uploadAction.setUploadContentType(uploadContentType);
		uploadAction.setUploadFileName(uploadFileName);
		user.setUser_img(uploadAction.execute());
		userService.editUser(user);
		return "editSuccess";
	}

	public String register() {
		if (userService.addUser(user)) {
			this.result = "注册成功";
			System.out.println("注册成功");
		} else {
			this.result = "注册失败";
			System.out.println("注册失败");
		}
		return SUCCESS;
	}

	// 发送邮件
	public String sendMail() throws Exception {
		MailUtil mailUtil = new MailUtil();
		this.setMath(MathUtil.math());
		mail.setReceiver(user.getUser_email());
		mail.setMessage("验证码为:" + math);
		if (mailUtil.send(mail) == true) {
			this.result = "发送成功";
			System.out.println("发送成功........ ");
		} else {
			this.result = "发送失败";
			System.out.println("发送失败........");
		}
		ActionContext.getContext().getSession().put("info", math);
		return SUCCESS;
	}

	public String emailInfo() {
		String info = (String) ActionContext.getContext().getSession()
				.get("info");
		if (info.equals(email_info)) {
			System.out.println("=====验证码正确....=======");
			// ActionContext.getContext().getSession().remove("info");
			this.result = "true";
		} else {
			System.out.println("=====验证码错误....=======");
			this.result = "false";
		}
		return "info";
	}

	public String findName() {
		System.out.println(user.getUser_name());
		user = userService.findName(user.getUser_name());
		System.out.println(user);
		if (user != null) {
			this.result = "false";
			System.out.println("=========用户名重复============");
		} else {
			this.result = "true";
			System.out.println("=========用户名可使用============");
		}
		return SUCCESS;

	}

	public String findEmail() {
		System.out.println(user.getUser_email());
		user = userService.findEmail(user.getUser_email());
		System.out.println(user);
		if (user != null) {
			this.result = "false";
			System.out.println("=========邮件地址已被使用============");
		} else {
			this.result = "true";
			System.out.println("=========邮件地址未被使用============");
		}
		return SUCCESS;

	}

	public String loginUser() {
		System.out.println(user.getUser_name());
		System.out.println(user.getUser_pwd());
		user = userService.loginUser(user);
		if (user != null) {
			System.out.println("登录成功");
			this.result = "ok";
		} else {
			System.out.println("登录失败");
			this.result = "error";
		}
		ActionContext.getContext().getSession().put("User", user);
		return SUCCESS;
	}

	public String loginEmail() {
		user = userService.loginEmail(user);
		if (user != null) {
			this.result = "ok";
		} else {
			this.result = "error";
		}
		ActionContext.getContext().getSession().put("User", user);
		return SUCCESS;

	}
    
	public String removeUser() {
         System.out.println("正在去掉...........");
		ActionContext.getContext().getSession().put("User", null);
		 System.out.println("去掉成功..........");
			return "remove";
	}
	

	
}
