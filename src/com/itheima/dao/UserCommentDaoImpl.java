package com.itheima.dao;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;

import com.itheima.domain.*;

import java.util.List;

import org.hibernate.Query;
import org.junit.Test;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.itheima.domain.*;

public class UserCommentDaoImpl extends HibernateDaoSupport implements UserCommentDao {

	public void comment(UserComment userComment) {
		System.out.println("userComment");
		System.out.println(userComment.getUser_comment());
		this.getHibernateTemplate().save(userComment);
	}

	public List<UserComment> reveal() {
		System.out.println("执行了UserComment");
		//List<UserComment> list = (List<UserComment>) this.getHibernateTemplate().find("from UserComment order by id desc");
		Query query = this.getHibernateTemplate().getSessionFactory().openSession().createQuery("from UserComment order by id desc");		
		query.setFirstResult(0);
		query.setMaxResults(2);
		List<UserComment> list = query.list();
		if(list != null && list.size() > 0) {			
			for(int i=0; i<list.size(); i++) {
				System.out.println(list.get(i).getComment_date());
			}
			return list;
		}
		System.out.println("dao no");
		return null;
	}

	public List<UserComment> reveal(Integer pageStart, Integer pageCode) {
		System.out.println("执行了UserComment");
		//List<UserComment> list = (List<UserComment>) this.getHibernateTemplate().find("from UserComment order by id desc");
		Query query = this.getHibernateTemplate().getSessionFactory().openSession().createQuery("from UserComment order by id desc");		
		query.setFirstResult(pageStart);
		query.setMaxResults(pageCode);
		List<UserComment> list = query.list();
		if(list != null && list.size() > 0) {			
			for(int i=0; i<list.size(); i++) {
				System.out.println(list.get(i).getComment_date());
			}
			return list;
		}
		System.out.println("dao no");
		return null;
	}
	
	public PageBean<UserComment> findByPage(Integer pageCode, Integer pageSize,
			DetachedCriteria criteria) {
		PageBean<UserComment> page = new PageBean<UserComment>();
		page.setPageCode(pageCode);
		page.setPageSize(pageSize);
		criteria.setProjection(Projections.rowCount());
		List<Number> list = (List<Number>) this.getHibernateTemplate().findByCriteria(criteria);
		if(list != null && list.size() > 0){
			int totalCount = list.get(0).intValue();
			// 总的记录数
			page.setTotalCount(totalCount);
			System.out.println(totalCount);
		}
		criteria.setProjection(null);
		criteria.addOrder(Order.desc("id"));
		List<UserComment> beanList = (List<UserComment>) this.getHibernateTemplate().findByCriteria(criteria, (pageCode-1)*pageSize, pageSize);
		page.setBeanList(beanList);
		
		return page;
	}

}
