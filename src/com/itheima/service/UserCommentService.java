package com.itheima.service;
import org.hibernate.criterion.DetachedCriteria;
import com.itheima.domain.*;
import java.util.List;

import com.itheima.domain.UserComment;

public interface UserCommentService {

	void comment(UserComment userComment);

	List<UserComment> reveal(Integer pageStart, Integer pageCode);

	List<UserComment> findByPage(int pageCode);

	public PageBean<UserComment> findByPage(Integer pageCode, Integer pageSize, DetachedCriteria criteria);
}
