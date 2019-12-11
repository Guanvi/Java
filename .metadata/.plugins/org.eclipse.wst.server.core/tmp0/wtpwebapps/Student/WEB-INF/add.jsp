<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
body{
		background-color: #F1F3F4;
	}
	div{
		width: 50%;
		margin-left: 25%;
		margin-top: 1%;
		text-align: center;
	}

	input .text{
		width: 300px;
		height: 25px;
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
.b_add {
	background:linear-gradient(to bottom, #77b55a 5%, #72b352 100%);
	background-color:#77b55a;
	border-radius:1px;
	border:1px solid #4b8f29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:8px;
	font-weight:bold;
	padding:6px 8px;
	text-decoration:none;
}
.b_add:hover {
	background:linear-gradient(to bottom, #72b352 5%, #77b55a 100%);
	background-color:#72b352;
}
.b_add:active {
	position:relative;
	top:1px;
}


.b_return {
	background:linear-gradient(to bottom, #c123de 5%, #a20dbd 100%);
	background-color:#c123de;
	border:1px solid #a511c0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:8px;
	font-weight:bold;
	padding:6px 8px;
	text-decoration:none;
}
.b_return:hover {
	background:linear-gradient(to bottom, #a20dbd 5%, #c123de 100%);
	background-color:#a20dbd;
}
.b_return:active {
	position:relative;
	top:1px;
}

   
   
   .b_reset {
	background:linear-gradient(to bottom, #fe1a00 5%, #ce0100 100%);
	background-color:#fe1a00;
	border:1px solid #d83526;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:8px;
	font-weight:bold;
	padding:6px 8px;
	text-decoration:none;
}
.b_reset:hover {
	background:linear-gradient(to bottom, #ce0100 5%, #fe1a00 100%);
	background-color:#ce0100;
}
.b_reset:active {
	position:relative;
	top:1px;
}     


.tg_add {
	width: 400px;
	height: 25px;
	margin-left: 25%;
	margin-top: 1%;
	text-align: center;
	border-collapse: collapse;
	border-spacing: 0;
	border: none;
	border-color: #aabcfe;
	margin: 0px auto;
}

.tg_add td {
	height: 25px;
	font-family: SimSun;
	font-size: 13px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 0px;
	overflow: hidden;
	word-break: normal;
	border-color: #aabcfe;
	color: #669;
	background-color: #e8edff;
}

.tg_add th {
	font-family: SimSun;
	font-size: 13px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 0px;
	overflow: hidden;
	word-break: normal;
	border-color: #aabcfe;
	color: #039;
	background-color: #b9c9fe;
}

.tg_add .tg_add-phtq {
	height: 25px;
	background-color: #D2E4FC;
	border-color: inherit;
	text-align: center;
	vertical-align: middle
}

.tg_add .tg_add-iujj {
	height: 25px;
	font-weight: bold;
	font-style: italic;
	font-size: 15px;
	border-color: inherit;
	text-align: center;
	vertical-align: middle
}

.tg_add .tg_add-0pky {
	height: 25px;
	border-color: inherit;
	text-align: center;
	vertical-align: middle
}

        


        
</style>
</head>
<body>
<%@ include file="title.jsp"%>
	<div class="aaa">
	<form action="/Student/student/add" method="post">
	<table class="tg_add">
		<tr>
			<td class="tg_add-phtq">学员编号</td>
			<td class="tg_add-phtq" colspan="3" style="text-align:left" ><input type="text" name="sno" placeholder=""/></td>
			
		</tr>
		<tr>
			<td class="tg_add-0pky">姓名</td>
			<td class="tg_add-0pky"  colspan="3" style="text-align:left" ><input type="text" name="sname" placeholder=""/></td>
		</tr>
		<tr>
			<td class="tg_add-phtq">年龄</td>
			<td class="tg_add-phtq"  colspan="3" style="text-align:left" ><input type="text" name="age" placeholder=""/></td>
		</tr>
		<tr>
			<td class="tg_add-0pky">性别</td>
			<td class="tg_add-0pky"  colspan="3" style="text-align:left" ><input type="text" name="sex" placeholder=""/></td>
		</tr>
		<tr>
			<td class="tg_add-phtq">电话</td>
			<td class="tg_add-phtq"  colspan="3" style="text-align:left" ><input type="text" name="tel" placeholder=""/></td>
		</tr>
		<tr>
			<td class="tg_add-0pky">住址</td>
			<td class="tg_add-0pky"  colspan="3" style="text-align:left" ><input type="text" name="address" placeholder=""/></td>
		</tr>
		<tr>
			<td class="tg_add-phtq "></td>
			<td class="tg_add-phtq " colspan="2"  style="text-align:left">
			&ensp;&emsp;
				<input type="submit" value="添加" class="b_add">
				<input type="reset" value="重置" class="b_reset">
				<input type="button" value="返回" class="b_return" onclick="javascript:history.back(-1)" >
			</td>
			<td class=" tg_add-phtq"></td>
			
		</tr>
	</table>
	
	</form>
	</div>
	<br/>
<%@ include file="botton.jsp"%>
</body>
</html>