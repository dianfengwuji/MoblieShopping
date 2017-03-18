package com.moblie.cn.test;

public class Test {

	public static void main(String[] args) {
		String nameString="¶ú»úÒôÏä";
		String[] name=new String[2];
		name[0]=nameString.substring(2);
		name[1]=nameString.substring(0,2);
		System.out.println(nameString.length());
		for (int i = 0; i < name.length; i++) {
			System.out.println(name[i]);
		}
	}
}
