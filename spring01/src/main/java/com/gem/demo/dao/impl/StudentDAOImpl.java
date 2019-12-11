package com.gem.demo.dao.impl;

import com.gem.demo.dao.*;

/** 
* @author:Gemptc-byChai
* @version:v0.01
* @message:
* @time:2019年12月10日 下午1:54:27 
*/
public class StudentDAOImpl implements StudentDAO{
	
	
	public StudentDAOImpl() {
		// TODO Auto-generated constructor stub
		super();
		save();
		
	}
	@Override
	public void save() {
		// TODO Auto-generated method stub
		System.out.println("DAO保存数据");
	}

}
