package com.itheima.service;

import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrDocumentList;

public interface SolrService {

	public SolrDocumentList solrResult(String keyword) throws SolrServerException;
	
}
