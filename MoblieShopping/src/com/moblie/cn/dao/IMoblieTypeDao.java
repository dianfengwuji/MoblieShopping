package com.moblie.cn.dao;

import java.util.List;
import com.moblie.cn.domain.MoblieType;

public interface IMoblieTypeDao{

	public int findCount();

	public List<MoblieType> findByPage(int begin, int pageSize);

	public MoblieType findMoblieTypeId(int type_id);

	public void deleteMoblieType(MoblieType moblieType);

	public void addType(MoblieType moblieType);

	public MoblieType findMoblieTypeName(String type_name);

	public void updateMoblieType(MoblieType moblieType);

	public List<MoblieType> findAllType();
}
