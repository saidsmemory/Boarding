<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	<form:form modelAttribute="board" action="boardUpdate" method="post"> 
		id : ${board.id}<br>
		title : ${board.title}<br>
		content : ${board.content}<br>
		m_id : ${board.m_id}<br>
		reg_date : ${board.reg_date}<br>
		<input type="hidden" name="id" value="${board.id}">	
		<input type="submit" value="update">
	</form:form>
	</div>
	
	
</body>
</html>