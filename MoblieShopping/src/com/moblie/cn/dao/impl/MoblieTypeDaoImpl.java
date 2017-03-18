package com.moblie.cn.dao.impl;


import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.moblie.cn.dao.IMoblieTypeDao;
import com.moblie.cn.domain.MoblieType;

public class MoblieTypeDaoImpl extends HibernateDaoSupport implements IMoblieTypeDao{

	@Override
	public int findCount() {
		String hql="select count(*) from MoblieType";
		List<Long> list=this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
       return 0;
	}

	@Override
	public List<MoblieType> findByPage(int begin, int pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(MoblieType.class);
		List<MoblieType> list = this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		return list;
	}

	@Override
	public MoblieType findMoblieTypeId(int type_id) {
		return this.getHibernateTemplate().get(MoblieType.class, type_id);
	}

	@Override
	public void deleteMoblieType(MoblieType moblieType) {
		this.getHibernateTemplate().delete(moblieType);	
	}

	@Override
	public void addType(MoblieType moblieType) {
		this.getHibernateTemplate().save(moblieType);
	}

	@Override
	public MoblieType findMoblieTypeName(String type_name) {
		String hql="from MoblieType where Type_name=?";
		List<MoblieType> moblieTypes = this.getHibernateTemplate().find(hql, type_name);
		System.out.println("查找中.............");
		if(moblieTypes.size()>0)
		{
			return moblieTypes.get(0);	
		}
		System.out.println("查找不到.........");
		return null;
	}

	@Override
	public void updateMoblieType(MoblieType moblieType) {
		this.getHibernateTemplate().update(moblieType);
	}

	@Override
	public List<MoblieType> findAllType() {
		return this.getHibernateTemplate().find("from MoblieType");
	}
	
}
