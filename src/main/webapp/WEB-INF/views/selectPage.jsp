<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./css/bootstrap.css" rel="stylesheet"></link>
<style>
	div{
		position: absolute;
		top: 40%;
		left: 45%;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<div>
	회원정보<br>
	ID = ${memberinfo.id}<br>
	PASSWORD = ${sessionScope.memberinfo.password}<br>
	NAME = ${sessionScope.memberinfo.name}<br>
	<button type="button" class="btn btn-primary" onclick="location.href='main'">MAIN</button>
	</div>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/bootstrap.js"></script>
</body>
</html>