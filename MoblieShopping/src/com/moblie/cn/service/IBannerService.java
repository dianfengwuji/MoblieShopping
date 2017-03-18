package com.moblie.cn.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.moblie.cn.domain.Banner;

@Transactional
public interface IBannerService {

	public List<Banner> findList();
}
