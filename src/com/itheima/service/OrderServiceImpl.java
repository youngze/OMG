package com.itheima.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.itheima.dao.OrderDao;
import com.itheima.domain.OrderBean;
import com.itheima.domain.Order_total;
@Transactional
public class OrderServiceImpl implements OrderService {

	private OrderDao orderDao;
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
	public void submit(OrderBean orderBean) {
		orderDao.submit(orderBean);
	}
	
	public List<Order_total> total() {		
		return  orderDao.total();			
	}

}
