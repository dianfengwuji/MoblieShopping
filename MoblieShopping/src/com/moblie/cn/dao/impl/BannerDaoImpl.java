package com.moblie.cn.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.moblie.cn.dao.IBannerDao;
import com.moblie.cn.domain.Banner;

public class BannerDaoImpl extends HibernateDaoSupport implements IBannerDao{

	public List<Banner> findList() {
		String hql="from Banner order by banner_date desc";
		Session session=this.getSession();
		Query query=session.createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(5);
		List<Banner> list=query.list();
		return list;
	}
}
