<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	.joinright{
		margin-right:5px;
		text-align:right;
	}
	#logo{
	width: 50%;
	heigth: 50%;
}
.img-box{
	text-align:center;
}
.custombtn{
	background-color:#6495ED;
	color:white;
	border:none;
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
			<h3 class="text-muted"><a href="main">BBB</a>
			<c:if test="${sessionScope.memberinfo != null}">
				<span class="loginmember">${sessionScope.memberinfo.name}님 환영합니다</span>
				<a id="logout" href="logout">LOGOUT</a>
			</c:if></h3>
			
		
		</div>

		<div class="row marketing" style="height:600px;">

			<div class="login-wrapper" style="max-width: 330px; margin: 0 auto;">


				<form action="insert" method="post">
					<div class="form-join">
						<div class="img-box">
							<img src="./images/inimg.png" alt="logo" class="img-rounded" id="logo"><br>
							<br>
							<br>
						</div>
						<br>
						<br>
						<div class="form-group">
							<label>EMAIL</label> <input type="text" id="email" name="email"
								class="form-control" placeholder="Please enter your email" onkeyup="read()">
							<div id="display"></div>
						</div>
						<div class="form-group">
							<label>PASSWORD</label> <input type="password" name="password"
								class="form-control" placeholder="Please enter your passoword">
						</div>
						<div class="form-group">
							<label>NAME</label> <input type="text" name="name"
								class="form-control" placeholder="Please enter your name">
						</div>
						<br> <br>
						<div>
							<button type="submit" class="custombtn">JOIN</button>
							<button type="button" class="custombtn"
								onclick="location.href='main'">MAIN</button>
						</div>
					</div>
				</form>
			</div>

		</div>

		<footer class="footer">
			<p>&copy; Company 2021</p>
		</footer>

	</div>
	<!-- /container -->
	
	

	<script>
	function read(){
   		var url = 'http://localhost:8080/mybatis7/duplicateEmail'
        var email = $('#email').val()
                	
       	$.ajax({
        	method: "get", //get방식
            url: url,	//url 참조
            dataType: "json",
            data: {email:email}
        }).done(function(data) {
        	//var a = '<P>'+data.password+'</p>';
            //var a = '<P>'+"존재하는 이메일입니다"+'</p>';
           	var a = "This email exists";
            $('#display').html(a);
        }).fail(function(msg) {
     		var b ="Can be created";
            $('#display').html(b);
            //console.log(msg);
        });
	}
         
      </script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/navitoggle.js"></script>
	<script src="./js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
