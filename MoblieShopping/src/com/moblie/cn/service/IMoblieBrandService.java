package com.moblie.cn.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.moblie.cn.domain.MoblieBrand;
import com.moblie.cn.utils.PageBean;

@Transactional
public interface IMoblieBrandService {

	public PageBean<MoblieBrand> findByPage(Integer currerPage);
    
	public void addBrand(MoblieBrand moblieBrand);
	
	public MoblieBrand findMoblieBrandId(int brand_id);

	public void deleteMoblieBrand(MoblieBrand moblieBrand);

	public MoblieBrand findMoblieBrandName(String brand_name);

	public void updateMoblieBrand(MoblieBrand moblieBrand);

	public List<MoblieBrand> findAllBrand();

}
