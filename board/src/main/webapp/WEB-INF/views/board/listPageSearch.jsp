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
			 <span>[ <a href="/board/listPageSearch?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a> ]</span>
		</c:if>
			
		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
			 <span>
			 
				  <c:if test="${select != num}">
				   <a href="/board/listPageSearch?num=${num}${page.searchTypeKeyword}">${num}</a>
				  </c:if>    
				  
				  <c:if test="${select == num}">
				   <b>${num}</b>
				  </c:if>
			    
			 </span>
		 </c:forEach>
			
		<c:if test="${page.next}">
			 <span>[ <a href="/board/listPageSearch?num=${page.endPageNum + 1}${page.searchTypeKeyword}">다음</a> ]</span>
		</c:if>
		<br />
		<br />
		<div>
		<select name="searchType">
		    <option value="title" <c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
	        <option value="content" <c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
		    <option value="title_content" <c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
		    <option value="writer" <c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
		</select>
		
		<input type="text" name="keyword" value="${page.keyword}"/>
		
		<button type="button" id="searchBtn">검색</button>
		</div>

	</div>
	
	<script>
	document.getElementById("searchBtn").onclick = function () {
		  
		let searchType = document.getElementsByName("searchType")[0].value;
		let keyword =  document.getElementsByName("keyword")[0].value;
		
		location.href = "/board/listPageSearch?num=1" + "&searchType=" + searchType + "&keyword=" + keyword;
	};
	</script>


</body>
</html>