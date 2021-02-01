<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
				<label>이메일 주소</label> <input type="text" id="email" name="email"
					class="form-control" placeholder="이메일을 입력하세요" onkeyup="read()">
					<div id="display"></div>
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
           	var a = "존재하는 이메일입니다.";
            $('#display').html(a);
        }).fail(function(msg) {
     		var b ="생성가능합니다";
            $('#display').html(b);
            //console.log(msg);
        });
	}
         
      </script>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="./js/bootstrap.js"></script>
</body>
</html>