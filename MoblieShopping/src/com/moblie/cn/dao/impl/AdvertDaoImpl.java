package com.moblie.cn.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.moblie.cn.dao.IAdvertDao;
import com.moblie.cn.domain.Advert;

public class AdvertDaoImpl extends HibernateDaoSupport implements IAdvertDao{

	public List<Advert> findList() {
		String hql="from Advert order by advert_date desc";
		Session session=this.getSession();
		Query query=session.createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(3);
		List<Advert> list=query.list();
		for (Advert advert : list) {
			System.out.println(advert.getAdvert_name()+"=========="+advert.getAdvert_date());
		}
		return list;
	}
}
