package com.moblie.cn.utils;

import java.util.List;

public class PageBean<T> {
	// ��ǰҳ��
	private int currentPage;
	// ��ʾÿҳ����
	private int pageSize;
	// �ܹ�ҳ��
	private int totalPage;
	// �ܼ�¼��
	private int count;
	// ÿҳ��ʾ��¼����ϸ��Ϣ�ļ���
	private List<T> list;

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

}
