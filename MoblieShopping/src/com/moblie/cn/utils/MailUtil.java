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
		// ����debug���ԣ��Ա��ڿ���̨�鿴
		prop.setProperty("mail.debug", "true");
		// �����ʼ�������������
		prop.setProperty("mail.host", mail.getHost());
		// ���ͷ�������Ҫ�����֤
		prop.setProperty("mail.smtp.auth", "true");
		// �����ʼ�Э������
		prop.setProperty("mail.transport.protocol", "smtp");

		// ����SSL���ܣ������ʧ��
		MailSSLSocketFactory sf = new MailSSLSocketFactory();
		sf.setTrustAllHosts(true);
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.socketFactory", sf);

		// ����session
		Session session = Session.getInstance(prop);
		// ͨ��session�õ�transport����
		Transport ts = session.getTransport();
		// �����ʼ����������������ͣ��ʺţ���Ȩ��������루����ȫ��
		ts.connect(mail.getHost(),mail.getUsername(), mail.getPassword());// ������ַ�����Ȩ��,�����Լ����ʺ�ipxciikgwdoebcje
		// �����ʼ�
		Message message = createSimpleMail(session,mail);
		// �����ʼ�
		ts.sendMessage(message, message.getAllRecipients());
		ts.close();
		return true;
	}

	public static MimeMessage createSimpleMail(Session session,Mail mail)
			throws Exception {
		// �����ʼ�����
		MimeMessage message = new MimeMessage(session);
		// ָ���ʼ��ķ�����
		message.setFrom(new InternetAddress(mail.getSender(), mail.getName(),
				"UTF-8"));
		// ָ���ʼ����ռ��ˣ����ڷ����˺��ռ�����һ���ģ��Ǿ����Լ����Լ���
		message.setRecipient(Message.RecipientType.TO,
				new InternetAddress(mail.getReceiver()));
		// �ʼ��ı���
		message.setSubject(mail.getSubject());
		// �ʼ����ı�����
		message.setContent(mail.getMessage(), "text/html;charset=UTF-8");
		// ���ش����õ��ʼ�����
		return message;
	}
}
