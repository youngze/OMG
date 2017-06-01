package com.itheima.dao;

import java.util.List;

import com.itheima.domain.OrderBean;
import com.itheima.domain.Order_total;

public interface OrderDao {

	void submit(OrderBean orderBean);

	List<Order_total> total();

}
