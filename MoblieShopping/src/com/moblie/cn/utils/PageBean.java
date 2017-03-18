package com.moblie.cn.utils;

import java.util.List;

public class PageBean<T> {
	// 当前页码
	private int currentPage;
	// 显示每页条数
	private int pageSize;
	// 总共页数
	private int totalPage;
	// 总记录数
	private int count;
	// 每页显示记录的详细信息的集合
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
