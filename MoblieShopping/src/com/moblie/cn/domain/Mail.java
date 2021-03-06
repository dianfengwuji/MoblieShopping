package com.moblie.cn.domain;

import java.io.Serializable;

import com.moblie.cn.utils.Const;

@SuppressWarnings("serial")
public class Mail implements Serializable {
	public static final String ENCODING = "UTF-8";

	private String host = Const.email_host; // 服务器地址
	
	private String username=Const.email_userName; // 账号

	private String password=Const.email_password; // 密码
	
	private String sender=Const.email_sender; // 发件人的邮箱
	
	private String name=Const.email_name; // 发件人昵称
    
	private String subject=Const.email_subject; // 主题
	
	private String receiver; // 收件人的邮箱

	private String message; // 信息(支持HTML)

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
