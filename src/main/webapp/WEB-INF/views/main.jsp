<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</style>
</head>
<body>

	<div class="container">
		<div class="header">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li class="noneli" style="display: none;"><a href="select">LOGIN</a></li>
					<li class="noneli" style="display: none;"><a href="board">BOARD</a></li>
					<li class="showli"><a href="#"><i class="fas fa-bars" style="font-size: 18px;"></i></a></li>
				</ul>
			</nav>
			<h3 class="text-muted"><a href="main">BBB</a>
			<c:if test="${sessionScope.memberinfo != null}">
				<span class="loginmember">${sessionScope.memberinfo.name}님 환영합니다</span>
				<a id="logout" href="logout">LOGOUT</a>
			</c:if></h3>
		</div>

		<div class="jumbotron">
		</div>

		<div class="row marketing" style="margin: 40px 0;">
			<div class="col-lg-6">
				<!-- 왼쪽 -->
				<h4>Subheading-1</h4>
				<p>A genius is just a talented person who does his homework.</p>

				<h4>Subheading-2</h4>
				<p>He removes the greatest ornament of friendship, 
				who takes away from it respect.</p>

				<h4>Subheading-3</h4>
				<p>I know of no more encouraging fact than the unquestioned 
				ability of a man to elevate his life by conscious endeavor.</p>
				
			
			</div>

			<div class="col-lg-6">
				<!-- 오른쪽 -->
				<h4>Subheading-4</h4>
				<p>God doesn't require us to succeed; he only requires that you try.</p>

				<h4>Subheading-5</h4>
				<p>It's only when the tide goes out that you discover who's been 
				swimming naked.</p>

				<h4>Subheading-6</h4>
				<p>When we do the best that we can, we never know what miracle is
				 wrought in our life, or in the life of another.</p>
					
				
			</div>
		</div>

		<footer class="footer">
			<p>&copy; Company 2021</p>
		</footer>

	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/navitoggle.js"></script>
	<script src="./js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
