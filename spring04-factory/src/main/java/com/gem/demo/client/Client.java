package com.gem.demo.client;

import org.springframework.beans.factory.*;
import org.springframework.beans.factory.xml.*;
import org.springframework.context.*;
import org.springframework.context.support.*;
import org.springframework.core.io.*;

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
			
		ClassPathXmlApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
		StudentService studentService=ac.getBean("studentService", StudentService.class);
		System.out.println(studentService);
		
		
			
		}
}
