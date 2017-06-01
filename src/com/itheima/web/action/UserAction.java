package com.itheima.web.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.itheima.domain.User;
import com.itheima.service.PrdocutService;
import com.itheima.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * 用户的控制器
 * @author Administrator
 */
public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	private static final long serialVersionUID = -3413092622818913571L;
	
	private User user = new User();
	
	public User getModel() {
		return user;
	}
	
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	/**
	 * 注册功能
	 * @return
	 */
	public String regist(){
		// 接收请求参数
		userService.save(user);
		return LOGIN;
	}
	

	public String index() {
		return "index";
	}
	
	public String orde() {
		return "orde";
	}
	
	/**
	 * 跳转注册页面
	 * @return
	 */
	public String initAddUI(){
		return "initAddUI";
	}
	
	public String becomeVIP() {
		return "becomeVIP";
	}
	
	public String reserve() {
		return "reserve";
	}
	
	public String guangzhang() {
		return "guangzhang";
	}
	
	public String BookProcess() {
		return "BookProcess";
	}
	
	public String order() {
		try {
			ActionContext ac = ActionContext.getContext();			
			HttpServletRequest request = ServletActionContext.getRequest(); 
			HttpServletResponse response = ServletActionContext.getResponse();
			new PrdocutService().doPost(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return NONE;
	}
	/**
	 * 通过登录名，判断，登录名是否已经存在
	 * @return
	 */
	public String checkCode(){
		// 调用业务层，查询
		System.out.println("123");
		User u = userService.checkCode(user.getUser_code());
		// 获取response对象
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		try {
			// 获取输出流
			PrintWriter writer = response.getWriter();
			// 进行判断
			if(u != null){
				// 说明：登录名查询到用户了，说明登录已经存在了，不能注册
				writer.print("no");
			}else{
				// 说明，不存在登录名，可以注册
				writer.print("yes");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return NONE;
	}
	
	/**
	 * 登录功能
	 * @return
	 */
	public String login(){
		User existUser = userService.login(user);
		// 判断，登录名或者密码错误了
		if(existUser == null){
			//ValueStack vs = ActionContext.getContext().getValueStack();
			return LOGIN;
		}else{
			ServletActionContext.getRequest().getSession().setAttribute("existUser", existUser);
			// 登录成功
			ActionContext.getContext().getSession().put("user", existUser.getUser_code());
			System.out.println(user);
			return "loginOK";
		}
	}
	
	/**
	 * 退出功能
	 * @return
	 */
	public String exit(){
		ServletActionContext.getRequest().getSession().removeAttribute("existUser");
		return LOGIN;
	}
}









