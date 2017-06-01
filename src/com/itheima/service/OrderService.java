package com.itheima.service;

import java.util.List;

import com.itheima.domain.OrderBean;
import com.itheima.domain.Order_total;

public interface OrderService {

	void submit(OrderBean orderBean);

	List<Order_total> total() ;
}
