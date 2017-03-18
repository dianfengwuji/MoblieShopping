package com.moblie.cn.dao;

import java.util.List;

import com.moblie.cn.domain.Moblie;

public interface IMoblieDao{

	public int findCount();

	public List<Moblie> findByPage(int begin, int pageSize);

	public Moblie findMoblieId(int moblie_id);

	public void deleteMoblie(Moblie moblie);

	public void addMoblie(Moblie moblie);

	public void updateMoblie(Moblie moblie);

	public List<Moblie> findNavList(String moblie_name);

	public List<Moblie> findList();

	public List<Moblie> findType(Integer type_id);
	
	public List<Moblie> find(String moblie_name, Integer type_id);
}
