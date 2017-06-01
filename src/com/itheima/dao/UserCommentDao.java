package com.itheima.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import com.itheima.domain.*;


public interface UserCommentDao {

	void comment(UserComment userComment);
	List<UserComment> reveal(Integer pageStart, Integer pageCode);
	PageBean<UserComment> findByPage(Integer pageCode, Integer pageSize,
			DetachedCriteria criteria);
}
