package com.moblie.cn.test;

import java.io.IOException;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

public class SendMsg_webchinese {
	public static void main(String[] args) throws HttpException, IOException {
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("http://utf8.sms.webchinese.cn");
		// PostMethod post = new
		// PostMethod("http://sms.webchinese.cn/web_api/");
		post.addRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=utf-8");// ��ͷ�ļ�������ת��
		NameValuePair[] data = { new NameValuePair("Uid", "�۷��伫"),// ע����û���
				new NameValuePair("Key", "0203433ecfd463fb5d6a"),// ע��ɹ��󣬵�¼��վ��õ�����Կ
				new NameValuePair("smsMob", "15322635826"),// �ֻ�����
				new NameValuePair("smsText", "��֤�룺8888�����޹�˾��") };// ��������
		post.setRequestBody(data);

		client.executeMethod(post);
		Header[] headers = post.getResponseHeaders();
		int statusCode = post.getStatusCode();
		System.out.println("statusCode:" + statusCode);
		for (Header h : headers) {
			System.out.println("---" + h.toString());
		}
		String result = new String(post.getResponseBodyAsString().getBytes(
				"utf-8"));
		System.out.println(result);

	}
}
