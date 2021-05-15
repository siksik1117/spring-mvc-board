<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>

<div id="nav">
 <%@ include file="include/nav.jsp" %>
</div>


<br />

<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>웹 사이트 소개</h1>
				<p>이 웹사이트는 부트스트랩으로 만든 JSP 웹 사이트입니다. Java & Spring Framework를 이용해서 백엔드 개발을 했으며 Maven을 이용해서 MVC프로젝트 생성을 했습니다. 디자인 템플릿으로는 부트스트랩을 이용했습니다.</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride= "carousel">
			<div class="carousel-inner">
				<div class="item active">
					<img style="display:block;margin:auto" src="../../resources/img.png">
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>
