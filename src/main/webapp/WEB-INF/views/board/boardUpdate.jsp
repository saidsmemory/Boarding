<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="hidden" name="id" value="${board.id}">
	${board.id}번 게시물 수정<br>
	
	<form:form modelAttribute="board" action="boardUpdatePage" method="post" >
		<input type="hidden" name="id" value="${board.id}">
		text : <input type="text" name="title"><br>
		content : <input type="text" name="content"><br><br>
		<input type="submit" value="수정하기">
	</form:form>
</body>
</html>