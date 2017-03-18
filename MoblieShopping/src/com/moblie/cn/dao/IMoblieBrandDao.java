package com.moblie.cn.dao;

import java.util.List;
import com.moblie.cn.domain.MoblieBrand;

public interface IMoblieBrandDao{

	public int findCount();

	public List<MoblieBrand> findByPage(int begin, int pageSize);

	public MoblieBrand findMoblieBrandId(int brand_id);

	public void deleteMoblieBrand(MoblieBrand moblieBrand);

	public void addBrand(MoblieBrand moblieBrand);

	public MoblieBrand findMoblieBrandName(String brand_name);

	public void updateMoblieBrand(MoblieBrand moblieBrand);

	public List<MoblieBrand> findAllBrand();
}
