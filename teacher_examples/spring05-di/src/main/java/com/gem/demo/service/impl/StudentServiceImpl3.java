package com.gem.demo.service.impl;

import java.util.*;

import com.gem.demo.dao.*;
import com.gem.demo.dao.impl.*;
import com.gem.demo.service.*;

/** 
* @author:Gemptc-byChai
* @version:v0.01
* @message:
* @time:2019年12月10日 下午1:55:30 
*/
public class StudentServiceImpl3 implements StudentService{
	private String[] mystrs;
	private List<String> myList;
	private Set<String> mySet;
	
	private Map<String,String> myMap;
	private Properties myPro;
		//无参构造
		public StudentServiceImpl3() {
			super();
			System.out.println("无参构造");
		}
		
		
	public void setMystrs(String[] mystrs) {
			this.mystrs = mystrs;
		}


		public void setMyList(List<String> myList) {
			this.myList = myList;
		}


		public void setMySet(Set<String> mySet) {
			this.mySet = mySet;
		}


		public void setMyMap(Map<String, String> myMap) {
			this.myMap = myMap;
		}


		public void setMyPro(Properties myPro) {
			this.myPro = myPro;
		}


	@Override
	public void printInfo() {
		// TODO Auto-generated method stub
		System.out.println(mystrs);
		System.out.println(myList);
		System.out.println(mySet);
		System.out.println(myMap);
		System.out.println(myPro);
	}


	
	
	

}
