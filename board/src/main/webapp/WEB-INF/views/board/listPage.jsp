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
	<caption>게시물 목록</caption>
		<thead>
		  <tr>
		   <th style="background-color:#eeeeee; text-align:center">번호</th>
		   <th style="background-color:#eeeeee; text-align:center">제목</th>
		   <th style="background-color:#eeeeee; text-align:center">작성자</th>
		   <th style="background-color:#eeeeee; text-align:center">작성일</th>
		  </tr>
		 </thead>
		  
		 <tbody>
		 <c:forEach items="${list}" var="list">
			 <tr>
			  <td>${list.id}</td>
			  <td><a href="/board/view?id=${list.id}">${list.title}</a></td>
			  <td>${list.users}</td>
			  <td><fmt:formatDate value="${list.reg_date}" pattern="yyyy-MM-dd"/></td>
			 </tr>
		 </c:forEach>
		 
		 </tbody>
		 
	</table>
	
	</div>
	</div>
	<br />
	<div style="text-align:center">
		<c:if test="${page.prev}">
			 <span>[ <a href="/board/listPage?num=${page.startPageNum - 1}">이전</a> ]</span>
		</c:if>
			
		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
			 <span>
			 
				  <c:if test="${select != num}">
				   <a href="/board/listPage?num=${num}">${num}</a>
				  </c:if>    
				  
				  <c:if test="${select == num}">
				   <b>${num}</b>
				  </c:if>
			    
			 </span>
		 </c:forEach>
			
		<c:if test="${page.next}">
			 <span>[ <a href="/board/listPage?num=${page.endPageNum + 1}">다음</a> ]</span>
		</c:if>
	
	<%-- <c:forEach begin="1" end="${pageNum}" var="num">
			<span>
				<a href = "/board/listPage?num=${num}">${num}</a>
			</span>
		</c:forEach> --%>
		
	</div>


</body>
</html>