package com.gem.demo.service.impl;

import com.gem.demo.service.*;

/** 
* @author:Gemptc-byChai
* @version:v0.01
* @message:
* @time:2019年12月11日 下午3:01:30 
*/
public class StudentServiceImpl implements StudentService{

	@Override
	public void save() {
		// TODO Auto-generated method stub
		System.out.println("保存操作");
	}

	@Override
	public void delete(String id) {
		int num=Integer.parseInt(id);
		System.out.println("删除学生:"+num);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		System.out.println("更新学生");
	}

	

}
