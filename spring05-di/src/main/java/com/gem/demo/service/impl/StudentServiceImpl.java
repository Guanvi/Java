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
public class StudentServiceImpl implements StudentService{
	private String name;
	private int age;
	private Date birth;
		//无参构造
		public StudentServiceImpl() {
			super();
			System.out.println("无参构造");
		}
		
		public StudentServiceImpl(String name, int age, Date birth) {
			
			super();
			this.name = name;
			this.age = age;
			this.birth = birth;
			System.out.println("有参构造");
		}
		
	@Override
	public void printInfo() {
		// TODO Auto-generated method stub
		System.out.println(name+"\t"+age+"\t"+birth);
		
	}
	
	
	
	
	

}
