package com.itheima.domain;

import java.util.Date;

public class OrderBean {

	private int order_id;
	private String user_code;
	private int amount;
	private int money;
	private Date time;
	private int order_coach;
	
	public int getOrder_coach() {
		return order_coach;
	}

	public void setOrder_coach(int order_coach) {
		this.order_coach = order_coach;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public String getUser_code() {
		return user_code;
	}

	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

}
