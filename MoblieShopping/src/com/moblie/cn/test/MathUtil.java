package com.moblie.cn.test;

import java.util.Random;

import com.moblie.cn.utils.Const;

public class MathUtil {
	public static void main(String[] args) {
		String base =Const.math_base;
	    Random random = new Random();   
	    StringBuffer sb = new StringBuffer();   
	    for (int i = 0; i < 6; i++) {   
	        int number = random.nextInt(base.length());   
	        sb.append(base.charAt(number));   
	    }   
        System.out.println(sb);
	}
}
