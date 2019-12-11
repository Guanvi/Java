package com.gem.demo.client;

import org.springframework.context.*;
import org.springframework.context.support.*;

import com.gem.demo.dao.*;
import com.gem.demo.service.*;
import com.gem.demo.service.impl.*;

/** 
* @author:Gemptc-byChai
* @version:v0.01
* @message:
* @time:2019年12月10日 下午1:57:47 
*/
public class Client {

		public static void main(String[] args) {
			//调用service对象  -->spring
			//IOC 
			//获取bean对象
			ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
		/*StudentService studentService=(StudentService)ac.getBean("studentService");
		studentService.save();*/
		/*StudentDAO studentDAO=(StudentDAO)ac.getBean("studentDAO");
		studentDAO.save();*/
//			StudentDAO studentDAO=ac.getBean("studentDAO", StudentDAO.class);
//			System.out.println(studentDAO);
		}
}
