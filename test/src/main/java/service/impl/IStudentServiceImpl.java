package service.impl;

import dao.IStudentDAO;
import dao.impl.IStudentDAOImpl;
import service.IStudentService;

public class IStudentServiceImpl implements IStudentService {

	
	
	private IStudentDAO studentDAO=new IStudentDAOImpl();
	
	@Override
	public void save() {
		// TODO Auto-generated method stub

	}

}
