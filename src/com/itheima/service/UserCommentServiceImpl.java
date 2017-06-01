package com.itheima.service;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.itheima.dao.*;
import com.itheima.domain.*;

import org.hibernate.criterion.DetachedCriteria;

import com.itheima.domain.*;
@Transactional
public class UserCommentServiceImpl implements UserCommentService {
	
	private UserCommentDao userCommentDao;
	public void setUserCommentDao(UserCommentDao userCommentDao) {
		this.userCommentDao = userCommentDao;
	}

	public void comment(UserComment userComment) {
		userCommentDao.comment(userComment);		
	}

	/*public List<UserComment> reveal() {
		return  (List<UserComment>)userCommentDao.reveal();
	}*/
	
	public List<UserComment> findByPage(int pageCode) {
		return findByPage(pageCode);
	}
	
	public PageBean<UserComment> findByPage(Integer pageCode, Integer pageSize,
			DetachedCriteria criteria) {
		return userCommentDao.findByPage(pageCode,pageSize,criteria);
	}

	public List<UserComment> reveal(Integer pageStart, Integer pageCode) {
		// TODO Auto-generated method stub
		return null;
	}
}
