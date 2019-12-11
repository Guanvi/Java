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
public class StudentServiceImpl2 implements StudentService{
	private String name;
	private int age;
	private Date birth;
		//无参构造
		public StudentServiceImpl2() {
			super();
			System.out.println("无参构造");
		}
		
		
	@Override
	public void printInfo() {
		// TODO Auto-generated method stub
		System.out.println(name+"\t"+age+"\t"+birth);
		
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public void setBirth(Date birth) {
		this.birth = birth;
	}
	
	
	
	
	

}
