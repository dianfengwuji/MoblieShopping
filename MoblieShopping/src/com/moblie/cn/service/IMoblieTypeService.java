package com.moblie.cn.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.moblie.cn.domain.MoblieType;
import com.moblie.cn.utils.PageBean;

@Transactional
public interface IMoblieTypeService {

	public PageBean<MoblieType> findByPage(Integer currerPage);
    
	public void addType(MoblieType moblieType);
	
	public MoblieType findMoblieTypeId(int type_id);

	public void deleteMoblieType(MoblieType moblieType);

	public MoblieType findMoblieTypeName(String type_name);

	public void updateMoblieType(MoblieType moblieType);

	public List<MoblieType> findAllType();

}
