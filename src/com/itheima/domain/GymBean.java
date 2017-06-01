package com.itheima.domain;

import java.util.Date;

public class GymBean {

	private int gym_id;
	private String gym_project;
	private Date gym_time_start;
	private double gym_price;
	private Date gym_time_end;

	public int getGym_id() {
		return gym_id;
	}

	public void setGym_id(int gym_id) {
		this.gym_id = gym_id;
	}

	public String getGym_project() {
		return gym_project;
	}

	public void setGym_project(String gym_project) {
		this.gym_project = gym_project;
	}

	public Date getGym_time_start() {
		return gym_time_start;
	}

	public void setGym_time_start(Date gym_time_start) {
		this.gym_time_start = gym_time_start;
	}

	public double getGym_price() {
		return gym_price;
	}

	public void setGym_price(double gym_price) {
		this.gym_price = gym_price;
	}

	public Date getGym_time_end() {
		return gym_time_end;
	}

	public void setGym_time_end(Date gym_time_end) {
		this.gym_time_end = gym_time_end;
	}
	
}
