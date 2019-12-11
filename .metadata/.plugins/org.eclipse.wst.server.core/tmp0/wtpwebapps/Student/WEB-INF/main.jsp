<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border: none;
	border-color: #aabcfe;
	margin: 0px auto;
}

.tg td {
	font-family: SimSun;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 0px;
	overflow: hidden;
	word-break: normal;
	border-color: #aabcfe;
	color: #669;
	background-color: #e8edff;
}

.tg th {
	font-family: SimSun;
	font-size: 14px;
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

.tg .tg-phtq {
	background-color: #D2E4FC;
	border-color: inherit;
	text-align: center;
	vertical-align: middle
}

.tg .tg-iujj {
	font-weight: bold;
	font-style: italic;
	font-size: 15px;
	border-color: inherit;
	text-align: center;
	vertical-align: middle
}

.tg .tg-0pky {
	border-color: inherit;
	text-align: center;
	vertical-align: middle
}


.a_update {
	background:linear-gradient(to bottom, #89c403 5%, #77a809 100%);
	background-color:#89c403;
	border-radius:2px;
	border:1px solid #74b807;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:8px;
	font-weight:bold;
	padding:2px 5px;
	text-decoration:none;
}
.a_update:hover {
	background:linear-gradient(to bottom, #77a809 5%, #89c403 100%);
	background-color:#77a809;
}
.a_update:active {
	position:relative;
	top:1px;
}


.a_del {
	background:linear-gradient(to bottom, #f24537 5%, #c62d1f 100%);
	background-color:#f24537;
	border-radius:2px;
	border:1px solid #d02718;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:8px;
	font-weight:bold;
	padding:2px 5px;
	text-decoration:none;
}
.a_del:hover {
	background:linear-gradient(to bottom, #c62d1f 5%, #f24537 100%);
	background-color:#c62d1f;
}
.a_del:active {
	position:relative;
	top:1px;
}

        

        




</style>
</head>

<script language="javascript">
    function delcfm() {
        if (!confirm("确认要删除?")) {
            window.event.returnValue = false;
        }
    }
</script>



<body>

 
<%@ include file="title.jsp"%>
<br/>
<%@ include file="select.jsp"%>
<br/>
	<div>
	
		<table class="tg" width="600px" >
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>性別</th>
				<th>年齡</th>
				<th>住址</th>
				<th>电话</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${students}" var="students" varStatus="status">
				<c:if test="${status.index%2==0}">
					<tr>
						<td class="tg-phtq">${students.sno }</td>
						<td class="tg-phtq">${students.sname }</td>
						<td class="tg-phtq">${students.sex }</td>
						<td class="tg-phtq">${students.age }</td>
						<td class="tg-phtq">${students.address }</td>
						<td class="tg-phtq">${students.tel }</td>
						<td class="tg-phtq">
						
							<a href="/Student/student/doupdate?id=${students.id }" class="a_update">更新</a> 
							<a href="/Student/student/del?id=${students.id }" class="a_del" onclick='return confirm("确认删除?")'>删除</a></td>
					</tr>
				</c:if>
				<c:if test="${status.index%2==1}">
					<tr>
						<td class="tg-0pky">${students.sno }</td>
						<td class="tg-0pky">${students.sname }</td>
						<td class="tg-0pky">${students.sex }</td>
						<td class="tg-0pky">${students.age }</td>
						<td class="tg-0pky">${students.address }</td>
						<td class="tg-0pky">${students.tel }</td>
						<td class="tg-0pky">
							<a href="/Student/student/doupdate?id=${students.id }" class="a_update">更新</a> 
							<a href="/Student/student/del?id=${students.id }" class="a_del" onclick='return confirm("确认删除?")'>删除</a></td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</div>
	<br/>
<%@ include file="botton.jsp"%>
</body>
</html>