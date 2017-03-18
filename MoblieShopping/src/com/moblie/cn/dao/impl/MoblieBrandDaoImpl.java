package com.moblie.cn.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.moblie.cn.dao.IMoblieBrandDao;
import com.moblie.cn.domain.MoblieBrand;

public class MoblieBrandDaoImpl extends HibernateDaoSupport implements
		IMoblieBrandDao {

	@Override
	public int findCount() {
		String hql = "select count(*) from MoblieBrand";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<MoblieBrand> findByPage(int begin, int pageSize) {
		DetachedCriteria criteria = DetachedCriteria
				.forClass(MoblieBrand.class);
		List<MoblieBrand> list = this.getHibernateTemplate().findByCriteria(
				criteria, begin, pageSize);
		return list;
	}

	@Override
	public MoblieBrand findMoblieBrandId(int brand_id) {
		return this.getHibernateTemplate().get(MoblieBrand.class, brand_id);
	}

	@Override
	public void deleteMoblieBrand(MoblieBrand moblieBrand) {
		this.getHibernateTemplate().delete(moblieBrand);
	}

	@Override
	public void addBrand(MoblieBrand moblieBrand) {
		this.getHibernateTemplate().save(moblieBrand);
	}

	@Override
	public MoblieBrand findMoblieBrandName(String brand_name) {
		String hql = "from MoblieBrand where brand_name=?";
		List<MoblieBrand> moblieBrands = this.getHibernateTemplate().find(hql,
				brand_name);
		System.out.println("查找中.............");
		if (moblieBrands.size() > 0) {
			return moblieBrands.get(0);
		}
		System.out.println("查找不到.........");
		return null;
	}

	@Override
	public void updateMoblieBrand(MoblieBrand moblieBrand) {
		this.getHibernateTemplate().update(moblieBrand);
	}

	@Override
	public List<MoblieBrand> findAllBrand() {
		return this.getHibernateTemplate().find("from MoblieBrand");
	}

}
