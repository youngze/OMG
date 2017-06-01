package com.itheima.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.itheima.domain.*;
import com.itheima.service.OrderService;
import com.itheima.utils.FastJsonUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

public class OrderAction extends ActionSupport implements ModelDriven<OrderBean> {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private OrderBean orderBean = new OrderBean(); 
	
	public OrderBean getModel() {
		return orderBean;
	}

	private OrderService orderService;
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	
	public String submit() {
		HttpServletRequest request = ServletActionContext.getRequest();	
		String user_code = request.getParameter("user_code");
		HttpServletRequest request1 = ServletActionContext.getRequest();
		int amount = Integer.parseInt(request1.getParameter("amount"));		
		String order_coach = request1.getParameter("order_coach");
		
		if(order_coach.equals("1")) {
			int money = amount * 100;
			orderBean.setMoney(money);
		} else {
			int money = amount * 20;
			orderBean.setMoney(money);
		}
		System.out.println("amount:" + amount);
		System.out.println("order_coach:" + orderBean.getOrder_coach());
		orderService.submit(orderBean);
		ValueStack vs = ActionContext.getContext().getValueStack();
		
		/*return "submitOK";*/
		return "submitOK";
	}
	
	public String total() {	
		HttpServletResponse response = ServletActionContext.getResponse();
		List<Order_total> ot = orderService.total();
		System.out.println(ot.get(0).getOrder_total());
		String jsonString = FastJsonUtil.toJSONString(ot);
		FastJsonUtil.write_json(response, jsonString);
		
		return NONE;
	}
}
