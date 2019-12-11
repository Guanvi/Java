package com.gem.demo.util;

import org.aspectj.lang.*;

/** 
* @author:Gemptc-byChai
* @version:v0.01
* @message:
* @time:2019年12月11日 下午3:03:19 
* 通知
*/
public class LoggerAdice {

	public void  printLog() {
		System.out.println("执行了sql语句");
	}
	
	public void txManage() {
		System.out.println("事务管理");
	}
	
	public void afterReturn() {
		System.out.println("正常结束");
	}
	public void afterException() {
		System.out.println("异常结束");
	}

	//环绕通知
	public Object aroundAdvice(ProceedingJoinPoint pjp) {
		Object rObject=null;
		try {
			//获取参数
			Object[] args=pjp.getArgs();
			//自定义通知操作
			printLog();
			//方法执行
			rObject=pjp.proceed(args);
			//自定义通知操作
			txManage();
			//返回结果
			return rObject;
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	} 
}
