package com.itheima.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.itheima.service.*;
import com.itheima.utils.FastJsonUtil;
import com.itheima.domain.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

import org.hibernate.criterion.DetachedCriteria;

import com.itheima.domain.*;
public class UserCommentAction extends ActionSupport implements ModelDriven<UserComment> {

	private static final long serialVersionUID = 1L;
	
	private UserComment userComment = new UserComment();
	
	public UserComment getModel() {
		return userComment;
	}

	private UserCommentService userCommentService;
	public void setUserCommentService(UserCommentService userCommentService) {
		this.userCommentService = userCommentService;
	}
	
	public String comment() {
		HttpServletRequest request= ServletActionContext.getRequest();
		System.out.println(request);
		System.out.println("getUser_comment:" + userComment.getUser_comment());
		userCommentService.comment(userComment);
		return "reserve";
	}
	
	private Integer pageStart;
	public void setPageStart(Integer pageStart) {
		this.pageStart = pageStart;
	}
	
	private Integer pageCode;
	public void setPageCode(Integer pageCode) {
		this.pageCode = pageCode;
	}

	public String reveal() {  
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletRequest request = ServletActionContext.getRequest();
		int pageStart = Integer.parseInt(request.getParameter("pageStart"));
		int pageEnd = Integer.parseInt(request.getParameter("pageEnd"));
		System.out.println(pageStart);
		System.out.println(pageEnd);
		List<UserComment> uc = userCommentService.reveal(pageStart, pageEnd);
		String jsonString = FastJsonUtil.toJSONString(uc);
		FastJsonUtil.write_json(response, jsonString);
		System.out.println("action ok");
		return NONE;
	}
	
	private Integer pageSize;
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public String findByPage(){
		// 调用service业务层
		DetachedCriteria criteria = DetachedCriteria.forClass(UserComment.class);
		HttpServletRequest request = ServletActionContext.getRequest();
		int pageCode = Integer.parseInt(request.getParameter("pageCode"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		System.out.println(pageCode);System.out.println(pageSize);
		// 查询		
		PageBean<UserComment> page = userCommentService.findByPage(pageCode,pageSize,criteria);
		// 压栈
		System.out.println(page.getBeanList().get(0).getUser_code());
		ValueStack vs = ActionContext.getContext().getValueStack();
		// 栈顶是map<"page",page对象>
		vs.set("page", page);
		HttpServletResponse response = ServletActionContext.getResponse();
		String jsonString = FastJsonUtil.toJSONString(page);
		FastJsonUtil.write_json(response, jsonString);
		System.out.println(jsonString);
		return NONE;
	}
}
