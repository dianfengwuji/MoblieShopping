package com.moblie.cn.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.moblie.cn.domain.Advert;


@Transactional
public interface IAdvertService {

	public List<Advert> findList();

}
