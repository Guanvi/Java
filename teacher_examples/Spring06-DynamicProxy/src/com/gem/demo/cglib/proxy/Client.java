package com.gem.demo.cglib.proxy;

import java.lang.reflect.*;
import net.sf.cglib.proxy.*;

/** 
* @author:Gemptc-byChai
* @version:v0.01
* @message:cglib动态代理
* 基于子类（被代理的类不能是final)
* 导包：cglib  asm
* 
* @time:2019年12月11日 下午2:07:10 
*/
public class Client {

	public static void main(String[] args) {
		//剧组：需要找演员
		
		
		Actor actor=new Actor();
		//		获取代理对象
		Actor actor2=(Actor)Enhancer.create(actor.getClass(),
				
				new MethodInterceptor() {
				//拦截被代理对象的所有方法
				/**
				 * Object arg0, Method arg1, Object[] arg2,与jdk代理的参数一致
				 */
					@Override
					public Object intercept(Object arg0, Method arg1, Object[] arg2, MethodProxy arg3) throws Throwable {
						// 获取方法名
						System.out.println("被拦击的方法："+arg1.getName());
						//获取参数
						int money=(int)arg2[0];
						//增强。反射执行
						arg1.invoke(actor, money/2);
						return null;
					}
				});
		actor2.proxyMethod(500000);
	}
}

class Actor{
	public void proxyMethod(int money) {
		System.out.println("演员收到的酬劳"+money);
	}
}