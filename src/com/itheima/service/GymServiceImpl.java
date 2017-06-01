package com.itheima.service;

import com.itheima.dao.GymDao;
import com.itheima.domain.GymBean;

public class GymServiceImpl implements GymService {


	public GymDao gymDao;
	public void setGymDao(GymDao gymDao) {
		this.gymDao = gymDao;
	}
	
	public GymBean getGymBean(int gym_id) {
		// TODO Auto-generated method stub
		return gymDao.getGymBean(gym_id);
	}
	
}
