<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	확인차원에 정보 입력
	${board.id}<br>
	${board.title}<br>
	${board.content}
	<script>
	document.location.href="boardOne?id=${board.id}";
	</script>
</body>
</html>