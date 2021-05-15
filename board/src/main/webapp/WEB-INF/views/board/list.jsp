<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">

<title>목록</title>
</head>
<body>

<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>
  
  
  
  <div class="container">
  	<div class="row">

	<table class = "table table-striped" style="width:60%; margin:auto; text-align:center; border:1px solid #dddddd">
	<h2 style="text-align:center;">게시물 목록</h2>
		<thead>
		  <tr>
		   <th style="background-color:#eeeeee; text-align:center">번호</th>
		   <th style="background-color:#eeeeee; text-align:center">제목</th>
		   <th style="background-color:#eeeeee; text-align:center">작성자</th>
		   <th style="background-color:#eeeeee; text-align:center">작성일</th>
		   <th style="background-color:#eeeeee; text-align:center">조회수</th>
		  </tr>
		 </thead>
		  
		 <tbody>
		 <c:forEach items="${list}" var="list">
			 <tr>
			  <td>${list.id}</td>
			  <td><a href="/board/view?id=${list.id}">${list.title}</a></td>
			  <td>${list.users}</td>
			  <td><fmt:formatDate value="${list.reg_date}" pattern="yyyy-MM-dd"/></td>
			  <td>${list.view_count}</td>
			 </tr>
		 </c:forEach>
		 
		 </tbody>
		 
	</table>
	
	</div>
	
	</div>


</body>
</html>