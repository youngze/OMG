package com.itheima.web.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.itheima.domain.*;
import com.itheima.service.GymService;
import com.itheima.service.UserService;
import com.itheima.utils.FastJsonUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

public class GymAction extends ActionSupport implements ModelDriven<GymBean> {

	private GymBean gymBean = new GymBean();
	public GymBean getModel() {
		return gymBean;
	}
	
	private GymService gymService;
	public void setGymService(GymService gymService) {
		this.gymService = gymService;
	}
	
	public String getGymBean(){
		System.out.println("============");
		GymBean existGymBean = gymService.getGymBean(gymBean.getGym_id());
		
		String jsonString = FastJsonUtil.toJSONString(existGymBean);
		// 把json字符串写到浏览器
		HttpServletResponse response = ServletActionContext.getResponse();
		// 输出
		FastJsonUtil.write_json(response, jsonString);
		
		/*System.out.println(existGymBean.getGym_project());
		if(existGymBean != null){
			ValueStack gymBean_vs = ActionContext.getContext().getValueStack();
			gymBean_vs.set("gym_vs", existGymBean);
			return NONE;
		}*/
			return NONE;
	}

}
