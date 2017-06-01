package com.itheima.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.struts2.ServletActionContext;

import com.itheima.domain.SolrBean;
import com.itheima.domain.UserComment;
import com.itheima.service.SolrService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

public class SolrAction extends ActionSupport implements ModelDriven<SolrBean> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private SolrBean solrBean = new SolrBean();
	public SolrBean getModel() {
		// TODO Auto-generated method stub
		return solrBean;
	}
	
	public SolrService solrService;
	public void setSolrService(SolrService solrService) {
		this.solrService = solrService;
	}
	
	public String solrResult() throws SolrServerException {
		HttpServletRequest request = ServletActionContext.getRequest();
		String keyword = request.getParameter("keyword");
		System.out.println("keyword:" + keyword);
		String srk = request.getParameter("srk");
		System.out.println("srk:" + srk);
		SolrDocumentList docList = solrService.solrResult(keyword);
		ValueStack vs = ActionContext.getContext().getValueStack();
		vs.set("docList", docList);
		for(SolrDocument doc : docList){
			System.out.println(doc.get("id") + " " + doc.get("area"));
		}
		
		return "index_solr";
	}

	
	
}
