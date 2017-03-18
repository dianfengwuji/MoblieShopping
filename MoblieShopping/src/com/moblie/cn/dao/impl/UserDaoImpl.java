package com.moblie.cn.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.moblie.cn.dao.IUserDao;
import com.moblie.cn.domain.Admin;
import com.moblie.cn.domain.Moblie;
import com.moblie.cn.domain.User;

public class UserDaoImpl extends HibernateDaoSupport implements IUserDao {

	public boolean addUser(User user) {
		this.getHibernateTemplate().save(user);
		return true;
	}

	public int findCount(String name) {
		String hql = "select count(*) from User where  user_name like '%"
				+ name + "%' ";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			System.out.println(list.get(0).intValue());
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<User> findByPage(int begin, int pageSize, String name) {
		DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		criteria.add(Restrictions.like("user_name", "%" + name + "%"));
		List<User> list = this.getHibernateTemplate().findByCriteria(criteria,
				begin, pageSize);
		return list;
	}

	public void deleteUser(User user) {
		this.getHibernateTemplate().delete(user);
	}

	public User findUserId(Integer user_id) {
		return this.getHibernateTemplate().get(User.class, user_id);
	}

	public void editUser(User user) {
		this.getHibernateTemplate().saveOrUpdate(user);
	}

	public int findCount() {
		String hql = "select count(*) from User";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			System.out.println(list.get(0).intValue());
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<User> findByPage(int begin, int pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		List<User> list = this.getHibernateTemplate().findByCriteria(criteria,
				begin, pageSize);
		return list;
	}

	public User findName(String user_name) {
		String hql = "from User where user_name = ?";
		List<User> users = this.getHibernateTemplate().find(hql, user_name);
		if (users.size() > 0) {
			return users.get(0);
		}
		return null;
	}

	public User loginUser(User user) {
		String hql="from User where user_name=? and user_pwd=?";
		List<User> list=this.getHibernateTemplate().find(hql,user.getUser_name(),user.getUser_pwd());
		if(list.size() > 0)
		{
			return list.get(0);
		}
		return null;
	}

	public User loginEmail(User user) {
		String hql="from User where user_email=? and user_pwd=?";
		List<User> list=this.getHibernateTemplate().find(hql,user.getUser_email(),user.getUser_pwd());
		if(list.size() > 0)
		{
			return list.get(0);
		}
		return null;
	}

	public User findEmail(String user_email) {
		String hql = "from User where user_email = ?";
		List<User> list = this.getHibernateTemplate().find(hql, user_email);
		for (User user : list) {
			System.out.println(user.getUser_name()+"++++"+user.getUser_email());
		}
		if (list.size() > 0) {
			System.out.println("ур╣╫ак");
			return list.get(0);
		}
		return null;
	}
}
