package com.itheima.dao;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.params.SolrParams;
import org.springframework.beans.factory.annotation.Autowired;

import com.itheima.domain.*;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;



public class SolrDaoImpl extends HibernateDaoSupport implements SolrDao {

		public SolrDocumentList solrResult(String keyword) throws SolrServerException {

				HttpSolrServer solrServer = new HttpSolrServer("http://localhost:8081/solr");
				//查询并获取查询响应
				if(solrServer != null) {
					System.out.println("ok");
				}	
				String key = "*" + keyword + "*";
				System.out.println(key+"su");
				SolrQuery query = new SolrQuery(); 
				query.setQuery("area:"+key);
				QueryResponse queryResponse;
				queryResponse = solrServer.query(query);			
				//从响应中获取查询结果集
				SolrDocumentList docList = queryResponse.getResults();
				System.out.println(docList.size());
				//创建返回结果对象
				/*ResultModel resultModel = new ResultModel();*/
				List<SolrBean> list = new ArrayList<SolrBean>();

				//遍历结果集
				if(docList != null){
					//获取总记录数
					//resultModel.setRecordCount(docList.getNumFound());
					for(SolrDocument doc : docList){
						User user = new User();
						System.out.println(doc.get("id") + " " + doc.get("area"));
					}

				}
				
				return  docList;
		}
	
}
