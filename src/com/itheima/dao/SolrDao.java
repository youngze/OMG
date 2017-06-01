package com.itheima.dao;

import java.util.List;

import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrDocumentList;

import com.itheima.domain.SolrBean;

public interface SolrDao {
	
	public SolrDocumentList solrResult(String keyword) throws SolrServerException;

}
