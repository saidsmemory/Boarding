<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="boardInsertPage" method="post">
		<div>
			작성자: ${sessionScope.memberinfo.name}<br>
			<input type="text" name="title"><br>
			<input type="text" name="content"><br>
			<input type="hidden" name="m_id" value="${sessionScope.memberinfo.id}"><br>
			<input type="submit" value="작성하기">
		</div>	
	</form>
</body>
</html>