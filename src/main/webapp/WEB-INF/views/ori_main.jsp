<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./css/bootstrap.css" rel="stylesheet"></link>
<style>
.main-box{
	position: absolute;
	top: 40%;
	left: 45%;
}
.main-button{
	margin:0px 0px;
	width:70px;
	<!--background-color:green;-->
	color:white;
}

</style>
<title>Insert title here</title>
</head>
<body>
	 <!--<c:if test="${sessionScope.memberinfo != null}"> 
		ID = ${sessionScope.memberinfo.id}<br>
		PASSWORD = ${sessionScope.memberinfo.password}<br>
		NAME = ${sessionScope.memberinfo.name}<br>
	</c:if>							세션쓰는법관련해서 남겨놓음-->
	<div class="main-box">
		<c:if test="${sessionScope.memberinfo != null}"> 
			<h4>${sessionScope.memberinfo.name}님 환영합니다</h4>
		</c:if>
		
		<c:if test="${sessionScope.memberinfo == null}"> 
			<button type="button" class="main-button" onclick="location.href='select'">LOGIN</button>
		</c:if>
		<c:if test="${sessionScope.memberinfo != null}"> 
			<button type="button" class="main-button" onclick="location.href='logout'">LOGOUT</button>
		</c:if>
		<button type="button" class="main-button" onclick="location.href='insert'">JOIN</button>
		
		<br>
		<button type="button" class="main-button" onclick="location.href='board'">BOARD</button>
		
		<button type="button" class="main-button" onclick="">ETC</button>
		
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/bootstrap.js"></script>
</body>
</html>