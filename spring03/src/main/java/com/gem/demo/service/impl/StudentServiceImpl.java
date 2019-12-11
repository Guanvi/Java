package com.gem.demo.service.impl;

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

	
	public void init() {
		System.out.println("创建对象");
	}
	@Override
	public void save() {
		// TODO Auto-generated method stub
		System.out.println("service保存数据");
		
	}
	public void destroy() {
		System.out.println("对象销毁");
	}

}
