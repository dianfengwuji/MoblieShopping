package com.moblie.cn.utils;

public class a {
	public static void main(String[] args) {
		String[] name=new String[2];
		String a="电视电影fe";
		name[0]=a.substring(2);
		name[1]=a.substring(0,2);
		System.out.println(name[0]+name[1]+a.length());
	}
}
