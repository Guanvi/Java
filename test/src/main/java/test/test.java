package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.IStudentDAO;
import service.IStudentService;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ApplicationContext ac = new ClassPathXmlApplicationContext("myres/hello.xml");
		IStudentService studentService = (IStudentService) ac.getBean("studentService");
		IStudentDAO studentDAO = ac.getBean("studentDao", IStudentDAO.class);
		studentDAO.save();
		System.out.println(studentService);
		System.out.println(studentDAO);

	}

}
