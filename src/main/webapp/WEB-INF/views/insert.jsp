<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<form action="insert" method="post">
		<div class="form-join">
			<div class="img-box">
				<img src="./images/logo1.jpg" alt="logo" class="img-rounded" id="logo">
			</div>
			<br><br>
			<div class="form-group">
				<label>이메일 주소</label> <input type="text" name="email"
					class="form-control" placeholder="이메일을 입력하세요">
			</div>
			<div class="form-group">
				<label>암호</label> <input type="password" name="password"
					class="form-control" placeholder="암호">
			</div>
			<div class="form-group">
				<label>이름</label> <input type="text" name="name"
					class="form-control" placeholder="이름">
			</div>
			<br> <br>
			<div>
			<button type="submit" class="btn btn-default">JOIN</button>
			<button type="button" class="btn btn-default" onclick="location.href='main'">MAIN</button>
			</div>
		</div>
	</form>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/bootstrap.js"></script>
</body>
</html>