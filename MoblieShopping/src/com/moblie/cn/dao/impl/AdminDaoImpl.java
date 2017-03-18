package com.moblie.cn.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.moblie.cn.dao.IAdminDao;
import com.moblie.cn.domain.Admin;

public class AdminDaoImpl extends HibernateDaoSupport implements IAdminDao{
	@Override
    /*
     * 
     * ��ѯadmin���е��û���������
     * */
	public Admin findNameAndPwd(Admin admin) {
		String hql="from Admin where admin_name=? and admin_pwd=?";
		List<Admin> list=this.getHibernateTemplate().find(hql,admin.getAdmin_name(),admin.getAdmin_pwd());
		if(list.size() > 0)
		{
			return list.get(0);
		}
		return null;
	}

}
