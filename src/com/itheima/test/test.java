package com.itheima.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.params.SolrParams;
import org.springframework.beans.factory.annotation.Autowired;

import com.itheima.domain.User;


public class test {


	public static void main(String[] args) throws Exception {

			HttpSolrServer solrServer = new HttpSolrServer("http://localhost:8081/solr");
			//查询并获取查询响应
			if(solrServer != null) {
				System.out.println("ok");
			}
			
			/* SolrQuery  query = new SolrQuery();         
		     query.setQuery("*:*");
		     QueryResponse rsp = solr.query(query);
		     SolrDocumentList list = rsp.getResults();*/		
			
			SolrQuery query = new SolrQuery();

			String keyword = "*深圳*";
			int i = 1;
			query.setQuery("area:"+keyword);
			QueryResponse queryResponse = solrServer.query(query);
			//从响应中获取查询结果集
			SolrDocumentList docList = queryResponse.getResults();
			System.out.println(docList.size());
			//创建返回结果对象
			/*ResultModel resultModel = new ResultModel();*/
			List<User> list = new ArrayList<User>();

			//遍历结果集
			if(docList != null){
				//获取总记录数
				//resultModel.setRecordCount(docList.getNumFound());
				for(SolrDocument doc : docList){
					/*User user = new User();*/
					System.out.println(doc.get("id") + " " + doc.get("area")+""+doc.get("image"));
				}

			}
		
		/* HttpSolrClient solrServer = new HttpSolrClient(SOLR_URL+"my_core/");  
         SolrQuery query = new SolrQuery();  
         //下面设置solr查询参数
         //query.set("q", "*:*");// 参数q  查询所有   
         query.set("q","周星驰");//相关查询，比如某条数据某个字段含有周、星、驰三个字  将会查询出来 ，这个作用适用于联想查询

         //参数fq, 给query增加过滤查询条件  
         query.addFilterQuery("id:[0 TO 9]");//id为0-4  

         //给query增加布尔过滤条件  
         //query.addFilterQuery("description:演员");  //description字段中含有“演员”两字的数据

         //参数df,给query设置默认搜索域  
         query.set("df", "name");  

         //参数sort,设置返回结果的排序规则  
         query.setSort("id",SolrQuery.ORDER.desc);

         //设置分页参数  
         query.setStart(0);  
         query.setRows(10);//每一页多少值  

         //参数hl,设置高亮  
         query.setHighlight(true);  
         //设置高亮的字段  
         query.addHighlightField("name");  
         //设置高亮的样式  
         query.setHighlightSimplePre("<font color='red'>");  
         query.setHighlightSimplePost("</font>"); 

         //获取查询结果
         QueryResponse response = solrServer.query(query);  
         //两种结果获取：得到文档集合或者实体对象

         //查询得到文档的集合  
         SolrDocumentList solrDocumentList = response.getResults();  
         System.out.println("通过文档集合获取查询的结果"); 
         System.out.println("查询结果的总数量：" + solrDocumentList.getNumFound());  
         //遍历列表  
         for (SolrDocument doc : solrDocumentList) {
             System.out.println("id:"+doc.get("id")+"   name:"+doc.get("name")+"    description:"+doc.get("description"));
         } 

         //得到实体对象
         List<Person> tmpLists = response.getBeans(Person.class);
         if(tmpLists!=null && tmpLists.size()>0){
             System.out.println("通过文档集合获取查询的结果"); 
             for(Person per:tmpLists){
                 
             }*/
		
		
		
}}
	


