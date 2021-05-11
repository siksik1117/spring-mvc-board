<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
</head>
<body style="margin-left:30px">

<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>


	<h2>${view.title}</h2>
	
	<hr />
	
	<div class = "writer">
		<span>작성자 : </span>${view.users}
	</div>
	
	<hr />
	
	<div class = "content">
		${view.content}
	</div>
	<hr />
	
	<div>
	<button type="button" onClick="location.href='/board/modify?id=${view.id}'">수정</button>
	<button type="button" onClick="location.href='/board/delete?id=${view.id}'">삭제</button>
	</div>


</body>
</html>