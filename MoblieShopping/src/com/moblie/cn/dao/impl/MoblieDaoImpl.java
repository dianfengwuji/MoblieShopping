package com.moblie.cn.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.moblie.cn.dao.IMoblieDao;
import com.moblie.cn.domain.Moblie;

public class MoblieDaoImpl extends HibernateDaoSupport implements IMoblieDao {

	@Override
	public int findCount() {
		String hql = "select count(*) from Moblie";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<Moblie> findByPage(int begin, int pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Moblie.class);
		List<Moblie> list = this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		return list;
	}

	@Override
	public Moblie findMoblieId(int moblie_id) {
		String hql = "from Moblie where moblie_id=?";
		List<Moblie> moblies = this.getHibernateTemplate().find(hql, moblie_id);
		if (moblies.size() > 0) {
			return moblies.get(0);
		}
		return null;
	}

	@Override
	public void deleteMoblie(Moblie moblie) {
		this.getHibernateTemplate().delete(moblie);
	}

	@Override
	public void addMoblie(Moblie moblie) {
		this.getHibernateTemplate().save(moblie);
	}

	@Override
	public void updateMoblie(Moblie moblie) {
		this.getHibernateTemplate().saveOrUpdate(moblie);
	}

	@Override
	public List<Moblie> findNavList(String moblie_name) {
		String hql = "from Moblie where moblie_name like ?";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, "%" + moblie_name + "%");
		query.setFirstResult(0);
		query.setMaxResults(query.list().size() > 5 ? 5 : query.list().size());

		List<Moblie> moblies = query.list();
		return moblies;
	}

	@Override
	public List<Moblie> findList() {
		String hql = "from Moblie";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(query.list().size() > 10 ? 10 : query.list().size());
		List<Moblie> list = query.list();
		return list;
	}

	@Override
	public List<Moblie> findType(Integer type_id) {
		String hql = "from Moblie where moblieType.type_id = ?";
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, type_id);
		query.setFirstResult(0);
		query.setMaxResults(query.list().size() > 6 ? 6 : query.list().size());
		List<Moblie> list = query.list();
		return list;
	}

	@Override
	public List<Moblie> find(String moblie_name, Integer type_id) {
		List<Moblie> list;
		System.out.println("============" + moblie_name + type_id);
		if (moblie_name.length() <= 2) {
			String hql = "from Moblie where moblie_name like ? and moblieType.type_id = ?";
			Session session = this.getSession();
			Query query = session.createQuery(hql);
			query.setParameter(0, "%" + moblie_name + "%");
			query.setParameter(1, type_id);
			query.setFirstResult(0);
			query.setMaxResults(query.list().size() > 6 ? 6 : query.list().size());
			list = query.list();
		} else {
			String[] name = new String[2];
			name[0] = moblie_name.substring(0,2);
			name[1] = moblie_name.substring(2);
			String hql = "from Moblie where moblie_name like ? or moblie_name like ? and moblieType.type_id = ?";
			Session session = this.getSession();
			Query query = session.createQuery(hql);
			query.setParameter(0, "%" + name[0] + "%");
			query.setParameter(1, "%" + name[1] + "%");
			query.setParameter(2, type_id);
			query.setFirstResult(0);
			query.setMaxResults(query.list().size() > 6 ? 6 : query.list().size());
			list = query.list();
		}
		return list;
	}
}
