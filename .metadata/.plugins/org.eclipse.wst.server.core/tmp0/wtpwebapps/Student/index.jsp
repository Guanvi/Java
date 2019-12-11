<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
<style>
	body{
		background-color: #F1F3F4;
	}
	div{
		width: 50%;
		margin-left: 25%;
		margin-top: 10%;
		text-align: center;
	}
	input {
		width: 250px;
		height: 35px;
		outline: none;
		border-radius: 0px;
		border:1px #2b665e solid;
	}
	.btn{
		background-color: #3EBAB0;
		color: white;
		font-size: 18px;
	}
	.msg{
		color: red;
		font-size: 14px;
		font-weight: bolder;
	}
	.myButton {
	box-shadow:inset 0px 1px 0px 0px #3dc21b;
	background:linear-gradient(to bottom, #44c767 5%, #5cbf2a 100%);
	background-color:#44c767;
	border-radius:1px;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2f6627;
}
.myButton:hover {
	background:linear-gradient(to bottom, #5cbf2a 5%, #44c767 100%);
	background-color:#5cbf2a;
}
.myButton:active {
	position:relative;
	top:1px;
}
	
</style>
</head>
<body>
	<div>
		<c:if test="${param.msg==1}">
			<span class="msg">
				账号密码有误，重新输入
			</span>
			<br>
			<br>
		</c:if>
		<c:if test="${param.msg==2}">
			<span class="msg">
				请先登录
			</span>
			<br>
			<br>
		</c:if>
	<form action="login" method="post">
		<input type="text" name="username" placeholder="账号"/>
		<br/>
		<br/>
		<input type="password" name="pwd" placeholder="密码">
		<br/>
		<br/>
		
		<input type="submit" value="登录" class="myButton">
	</form>
	</div>
</body>
</html>