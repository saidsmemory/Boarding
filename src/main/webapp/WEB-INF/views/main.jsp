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
			<button type="button" class="btn btn-primary" onclick="location.href='select'">LOGIN</button>
		</c:if>
		<c:if test="${sessionScope.memberinfo != null}"> 
			<button type="button" class="btn btn-primary" onclick="location.href='logout'">LOGOUT</button>
		</c:if>
		
		<button type="button" class="btn btn-primary" onclick="location.href='insert'">JOIN</button>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/bootstrap.js"></script>
</body>
</html>

<c:if test="${sessionScope.memberinfo != null}"> 
		</c:if>