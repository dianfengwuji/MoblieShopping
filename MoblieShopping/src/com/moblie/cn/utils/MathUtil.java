package com.moblie.cn.utils;

import java.util.Random;

/**
 * ����6λ��ͬ�������
 * */
public class MathUtil {
	public static String math() {
		String base = Const.math_base;
		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 6; i++) {
			int number = random.nextInt(base.length());
			sb.append(base.charAt(number));
		}
		return sb.toString();
	}
}
