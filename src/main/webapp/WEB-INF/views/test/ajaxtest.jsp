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
			<input type="text" id="btn1" onkeyup="read()">
	<div id="display"></div>
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
                 url: url,	//url 참조
                 dataType: "json",
                 data: {email:email}
              }).done(function(data) {
            		var a = '<P>'+data.password+'</p>';
                  	$('#display').html(a);
             
              }).fail(function(msg) {
                 console.log(msg);
              });
             }
         
      </script>
</body>
</html>