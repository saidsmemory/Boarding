<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="./favicon.ico">

<title>Welcome To My Playground</title>

<!-- Bootstrap core CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./css/jumbotron-narrow.css" rel="stylesheet">
<link href="./css/custom.css" rel="stylesheet">

<script src="./js/ie-emulation-modes-warning.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
th, td {
	text-align: center;
	border: 1px solid #e8e8e8;
	border-left: none;
	border-right: none;
	tex
}

.boardwarpper {
	margin: 82px 0px;
	height: 600px;
}

.board_t {
	margin-bottom: 30px;
}

.col2 {
	text-align: left;
}
</style>
</head>

<body>

	<!--  <li><a target="_blank" href=""><i class="fas fa-stream"></i></a></li>	-->
	<!--  style="background-color:#e8e8e8"  -->

	<div class="container">
		<div class="header">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li class="noneli" style="display: none;"><a href="select">LOGIN</a></li>
					<li class="noneli" style="display: none;"><a href="board">BOARD</a></li>
					<li class="showli"><a href="#"><i class="fas fa-bars"
							style="font-size: 18px;"></i></a></li>
				</ul>
			</nav>
			<h3 class="text-muted">
				<a href="main">BBB</a>
				<c:if test="${sessionScope.memberinfo != null}">
					<span class="loginmember">${sessionScope.memberinfo.name}님
						환영합니다</span>
					<a id="logout" href="logout">LOGOUT</a>
				</c:if>
			</h3>
		</div>
		<div class="boardwarpper">
			<form:form modelAttribute="board" action="boardUpdate" method="post">
				<div>
					<h1 class="board_t" style="width:30px;">BOARD</h1>
				</div>
				<div>

					<table style="width: 100%">
						<tr>
							<th style="text-align: center; width: 10%; padding: 8px 0px">${board.id}</th>
							<th style="text-align: center; width: 65%; padding: 8px 0px">${board.title}</th>
							<th style="text-align: center; width: 25%; padding: 8px 0px">${board.reg_date}</th>
						</tr>
					</table>
					<div style="margin: 20px 20px 0px 20px">${board.content}</div>
				</div>
				<div style="margin:40px;text-align:right;">
					<input type="hidden" name="id" value="${board.id}">

					<!-- var이라는 변수에 value값을 넣는 C:set -->
					<c:set var="m_id" value="${board.m_id}" />
					<c:if test="${sessionScope.memberinfo.id == m_id}">
						<input type="submit" value="UPDATE">
						<button type="button" class="main-button"
							onclick="if(!confirm('삭제 하시겠습니까?')){return false;};location.href='boardDelete?id=${board.id}';">DELETE</button>
					</c:if>
					<button type="button" onclick="location.href='board'">BOARD</button>
				</div>
			</form:form>
		</div>

		<footer class="footer">
			<p>&copy; Company 2021</p>
		</footer>

	</div>
	<!-- /container -->



	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/navitoggle.js"></script>
	<script src="./js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
