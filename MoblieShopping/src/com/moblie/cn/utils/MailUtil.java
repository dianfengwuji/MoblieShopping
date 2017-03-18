package com.moblie.cn.utils;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.log4j.Logger;

import com.moblie.cn.domain.Mail;
import com.sun.mail.util.MailSSLSocketFactory;

public class MailUtil {

	public boolean send(Mail mail) throws Exception {

		Properties prop = new Properties();
		// 开启debug调试，以便在控制台查看
		prop.setProperty("mail.debug", "true");
		// 设置邮件服务器主机名
		prop.setProperty("mail.host", mail.getHost());
		// 发送服务器需要身份验证
		prop.setProperty("mail.smtp.auth", "true");
		// 发送邮件协议名称
		prop.setProperty("mail.transport.protocol", "smtp");

		// 开启SSL加密，否则会失败
		MailSSLSocketFactory sf = new MailSSLSocketFactory();
		sf.setTrustAllHosts(true);
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.socketFactory", sf);

		// 创建session
		Session session = Session.getInstance(prop);
		// 通过session得到transport对象
		Transport ts = session.getTransport();
		// 连接邮件服务器：邮箱类型，帐号，授权码代替密码（更安全）
		ts.connect(mail.getHost(),mail.getUsername(), mail.getPassword());// 后面的字符是授权码,不是自己的帐号ipxciikgwdoebcje
		// 创建邮件
		Message message = createSimpleMail(session,mail);
		// 发送邮件
		ts.sendMessage(message, message.getAllRecipients());
		ts.close();
		return true;
	}

	public static MimeMessage createSimpleMail(Session session,Mail mail)
			throws Exception {
		// 创建邮件对象
		MimeMessage message = new MimeMessage(session);
		// 指明邮件的发件人
		message.setFrom(new InternetAddress(mail.getSender(), mail.getName(),
				"UTF-8"));
		// 指明邮件的收件人，现在发件人和收件人是一样的，那就是自己给自己发
		message.setRecipient(Message.RecipientType.TO,
				new InternetAddress(mail.getReceiver()));
		// 邮件的标题
		message.setSubject(mail.getSubject());
		// 邮件的文本内容
		message.setContent(mail.getMessage(), "text/html;charset=UTF-8");
		// 返回创建好的邮件对象
		return message;
	}
}
