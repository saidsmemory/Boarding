<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<h1>Member Insert jQuery</h1>
	<div>
		<input type="text" id="email" placeholder="email"><br> <input
			type="text" id="password" placeholder="password"><br> <input
			type="text" id="name" placeholder="name"><br> <input
			type="button" id="insertBtn" value="Write Board">
	</div>
	<button type="button" id="btn" onclick="read()">button</button>
	<br>
	<input type="text" id="btn1" onkeyup="read()">
	<div id="display"></div>
	<br>
	<br>
	<script>
         document.getElementById('insertBtn').addEventListener('click',function(){
            var url = 'http://localhost:8080/mybatis7/ajaxtest'
            $.ajax({
               async : true, //true 비동기
               method: "post", //post방식
               url: url,	//url 참조
               data: JSON.stringify({
            	   email:$('#email').val()
                  ,password:$('#password').val()
                  ,name:$('#name').val()
               }),
               contentType : 'application/json'
            }).done(function() {
				var a = '<P>sucess</p>';
                $('#display').html(a);
             	read();
            }).fail(function(msg) {
               console.log(msg);
            });            
         });
         
         function read(){
        	  var url = 'http://localhost:8080/mybatis7/ajaxtest2'
            	  var email = $('#btn1').val()
                	
        	 $.ajax({
                 method: "get", //get방식
                 url: url,	//클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
                 data: {email:email}, //HTTP 요청과 함께 서버로 보낼 데이터
                 dataType: "json" //서버에서 전송받을 데이터 형식
              }).done(function(data) {
            		var a = '<P>'+data.password+'</p>';
                  	$('#display').html(a);
             
              }).fail(function(msg) {
            	  $('#display').html("fail");
              });
             }

      </script>
</body>
</html>