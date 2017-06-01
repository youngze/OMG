package com.itheima.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.itheima.domain.GymBean;

public class GymDaoImpl extends HibernateDaoSupport implements GymDao {

	public GymBean getGymBean(int gym_id) {
		
		List<GymBean> list = (List<GymBean>) this.getHibernateTemplate().find("from GymBean where gym_id = ?", 1);
		System.out.println(list.get(0).getGym_project());
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		return null;
	}
	
}
