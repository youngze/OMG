package com.itheima.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.itheima.domain.OrderBean;
import com.itheima.domain.Order_total;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {

	public void submit(OrderBean orderBean) {
		
		this.getHibernateTemplate().save(orderBean);
		
		String sql="update Order_total set total = 9";
		this.getHibernateTemplate().getSessionFactory().openSession().createQuery("update Order_total set order_total = ?  where id = 1").setInteger(0, orderBean.getAmount()).executeUpdate();	}

	public List<Order_total> total() {
		
		List<Order_total> order = (List<Order_total>) this.getHibernateTemplate().find("from Order_total");
		
		return order;
	}

}
