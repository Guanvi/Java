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
			//调用service对象  -->spring
			//磁盘读取配置文件
			//ApplicationContext :BeanFactory的子接口
			//默认加载配置文件  创建对象
			//适用 单例对象
			//默认  单例
		/*ApplicationContext ac=new  FileSystemXmlApplicationContext("C:\\Users\\Administrator\\Desktop\\springdemo\\beans.xml");
		StudentService studentService=ac.getBean("studentService", StudentService.class);
		System.out.println(studentService);*/
			//BeanFactory
			//springIOC根接口
			//时机：需要时创建
			//适用多例对象
			Resource re=new ClassPathResource("beans.xml");
			BeanFactory fc=new XmlBeanFactory(re);
			StudentDAO studentDAO=fc.getBean("studentDAO", StudentDAO.class);
			System.out.println(studentDAO);
		}
}
