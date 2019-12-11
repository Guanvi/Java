package com.gem.demo.factory;
/** 
* @author:Gemptc-byChai
* @version:v0.01
* @message:
* @time:2019年12月10日 下午3:46:08 
*/

import com.gem.demo.service.*;
import com.gem.demo.service.impl.*;

public class InitFactory {

	//创建StudentServiceImp对象
	public StudentService getInstance() {
		return  new StudentServiceImpl();
	}

}
