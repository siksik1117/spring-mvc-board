<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>

	<table style="width:60%; margin:auto; text-align:center;'">
		<thead>
		  <tr>
		   <th>번호</th>
		   <th>제목</th>
		   <th>작성자</th>
		   <th>작성일</th>
		   <th>조회수</th>
		  </tr>
		 </thead>
		  
		 <tbody>
		 <c:forEach items="${list}" var="list">
			 <tr>
			  <td>${list.id}</td>
			  <td><a href="/board/view?id=${list.id}">${list.title}</a></td>
			  <td>${list.users}</td>
			  <td>${list.reg_date}</td>
			  <td>${list.view_count}</td>
			 </tr>
		 </c:forEach>
		 
		 </tbody>
	</table>

</body>
</html>