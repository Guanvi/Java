package com.gem.demo.jdk.proxy;

import java.lang.reflect.*;

/** 
* @author:Gemptc-byChai
* @version:v0.01
* @message:
* @time:2019年12月11日 下午1:49:45 
*/
public class Client {

	public static void main(String[] args) {
		//剧组/房客
		/**
		 * loader:真实角色的类加载器
		 * interfaces:真实角色所实现的接口
		 * InvocationHandler：如何代理
		 */
		Actor actor=new Actor();
		//获取代理对象
		 IActor proxyActor=(IActor)Proxy.newProxyInstance(actor.getClass().getClassLoader(), 
				 				actor.getClass().getInterfaces(), 
				 				new InvocationHandler() {
									/**
									 * 可以拦截到被代理对象的所有方法，对方法进行增强
									 * proxy：被代理对象的引用（不一定适使用）
									 * method：要增强的方法
									 * args：要增强的方法的参数
									 */
									@Override
									public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
										// TODO Auto-generated method stub
										//获取方法名
										String mname=method.getName();
										System.out.println(mname);
										//对方法增强
										int money=(int)args[0];
										method.invoke(actor, money/2);
										return null;
									}
								});
		 //代理对象，执行核心业务方法
		 proxyActor.actor(100000);
	}

}
//JDK Proxy动态代理
//基于接口
//代理角色-->接口
//经纪公司
interface IActor{
	//代理方法  
	void actor(int money);
}

//真实角色
class Actor implements IActor{
	@Override
	public void actor(int money) {
		// TODO Auto-generated method stub
		System.out.println("演员收到的酬劳"+money);
	}
}
