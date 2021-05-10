<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
</head>
<body>

	<form method="post">

	<label>제목</label>
	${view.title}<br />
	
	<label>작성자</label>
	${view.users}<br />
	
	<label>내용</label><br />
	${view.content}<br />
	
	</form>

</body>
</html>