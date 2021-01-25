<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
th, td {
	text-align: center;
}
.form-board{
	width: 60%;
	position: absolute;
	top: 20%;
	left: 20%;
}
a:link {
	color: black;
}
</style>
<link href="./css/bootstrap.css" rel="stylesheet"></link>
<title>Insert title here</title>
</head>
<body>
	<div class="form-board">
		<table class="table">
			<tr>
				<th style="text-align: center" width="20%">NO</th>
				<th style="text-align: center" width="40%">TITLE</th>
				<th style="text-align: center" width="10%">NAME</th>
				<th style="text-align: center" width="30%">REG</th>
			</tr>
			<c:forEach var="boardList" items="${list}">
				<tr>
					<td>${boardList.id}</td>
					<td><a href='<c:url value="/boardOne?id=${boardList.id}"/>'>${boardList.title}</a></td>
					<td>${boardList.name}</td>
					<td><fmt:formatDate value="${boardList.reg_date}" pattern="yyyy-MM-dd HH:mm" /></td>
				</tr>
			</c:forEach>
		</table>

		<div class="pull-right">
			<!-- Standard button -->
			<button type="button" class="btn btn-default">INSERT</button>

			<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
			<button type="button" class="btn btn-primary" onclick="location.href='main'">MAIN</button>

		
		</div>
	</div>



	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/bootstrap.js"></script>

</body>
</html>