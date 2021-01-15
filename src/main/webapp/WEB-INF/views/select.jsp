<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.form-join {
	width: 30%;
	heigth: 50%;
	position: absolute;
	top: 20%;
	left: 35%;
}
.img-box{
	text-align:center;
}
#logo{
	width: 50%;
	heigth: 50%;
}

</style>
<link href="./css/bootstrap.css" rel="stylesheet"></link>
<title>Insert title here</title>
</head>
<body>
	
	<form:form modelAttribute="member" action="selectPage" method="post" >
		<div class="form-join">
			<div class="img-box">
				<img src="./images/im1.png" alt="img" class="img-rounded" id="im1">
			</div>
			<br><br>
			<div class="form-group">
				<label>이메일 주소</label> <input type="text" name="email" class="form-control" placeholder="이메일을 입력하세요">
				<form:errors path="email"/>
			</div>
			
			
			<div class="form-group">
				<label>암호</label> <input type="password" name="password" class="form-control" placeholder="암호를 입력하세요"	>
				<form:errors path="password"/>
			</div>
			
			<div>
			<!--메세지 정상 작동 	<spring:message code="wkwkddls"/>  -->
			
				<input type="submit" value="Login">
			</div>
		</div>
	</form:form>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/bootstrap.js"></script>
</body>
</html>