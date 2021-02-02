<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		
		<!-- var이라는 변수에 value값을 넣는 C:set -->	
		<c:set var="m_id" value="${board.m_id}" /> 
		<c:if test="${sessionScope.memberinfo.id == m_id}">
			<input type="submit" value="UPDATE">
			<button type="button" class="main-button" onclick="if(!confirm('삭제 하시겠습니까?')){return false;};location.href='boardDelete?id=${board.id}';">DELETE</button>
		</c:if>
		<button type="button" onclick="location.href='board'">BOARD</button>
	</form:form>
	</div>
	
	
</body>
</html>