package com.itheima.service;

import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrDocumentList;

import com.itheima.dao.SolrDao;

public class SolrServiceImpl implements SolrService {

	private SolrDao solrDao;
	public void setSolrDao(SolrDao solrDao) {
		this.solrDao = solrDao;
	}
	
	public SolrDocumentList solrResult(String keyword) throws SolrServerException {
		System.out.println("service成功");
		return solrDao.solrResult(keyword);
	}
	
}
