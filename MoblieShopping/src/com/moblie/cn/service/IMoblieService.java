package com.moblie.cn.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.moblie.cn.domain.Moblie;
import com.moblie.cn.utils.PageBean;

@Transactional
public interface IMoblieService {
	public PageBean<Moblie> findByPage(Integer currerPage);

	public Moblie findMoblieId(int moblie_id);

	public void deleteMoblie(Moblie moblie);

	public void addMoblie(Moblie moblie);

	public void updateMoblie(Moblie moblie);
	
	public List<Moblie> findNavList(String moblie_name);

	public List<Moblie> findList();

	public List<Moblie> findType(Integer type_id);

	public List<Moblie> find(String moblie_name, Integer type_id);
}
