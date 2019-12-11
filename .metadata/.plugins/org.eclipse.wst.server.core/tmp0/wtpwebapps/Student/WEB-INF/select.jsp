<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style type="text/css">
.tg_title {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #9ABAD9;
	margin: 0px auto;
}

.tg_title td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 0px;
	overflow: hidden;
	word-break: normal;
	border-color: #9ABAD9;
	color: #444;
	background-color: #EBF5FF;
}

.tg_title th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 0px;
	overflow: hidden;
	word-break: normal;
	border-color: #9ABAD9;
	color: #fff;
	background-color: #409cff;
}

.tg_title .tg_title-bfv2 {
	font-weight: bold;
	font-style: italic;
	font-size: 15px;
	font-family: "Arial Black", Gadget, sans-serif !important;;
	border-color: inherit;
	text-align: center;
	vertical-align: top
}

.tg_title .tg_title-0pky {
	border-color: inherit;
	text-align: left;
	vertical-align: top
}

a {
	text-decoration: none
}
.b_sel {
	background:linear-gradient(to bottom, #33bdef 5%, #019ad2 100%);
	background-color:#33bdef;
	border-radius:1px;
	border:1px solid #057fd0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	

}

     
</style>
<body>
	<form action="/Student/student/select">
		<table class="tg_title" width="600px">
			<tr>
				<td align="center">
				<input type="text" name="sel" style="height: 24px">
				&emsp;<input type="submit" name="submit" class="b_sel">
				</td>

			</tr>
		</table>
	</form>
</body>
</html>