<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<style>
h1 {
  display: inline-block;
  vertical-align: middle;
  color: white;
  margin: 0.5rem;
  padding: 0;
}

nav {
  display: inline-block;
  vertical-align: middle;
}

#uls {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
}

#uls.right {
	float:right;
}

#lis.icon {
  flex-basis: 25%;
}

header {
  background: cadetblue;
  padding: 20px;
}

#b {
  display: block;
  text-align: center;
  margin: .25rem;
  padding: .5rem 1rem;
  text-decoration: none;
  font-weight: bold;
  color: white;
  background: teal;
}

#b:hover {
  background: yellowgreen;
}

a:link { color: black; text-decoration: none;}
a:visited { color: black; text-decoration: none;}
a:hover { color: blue; text-decoration: none;}



*, *:before, *:after {
  box-sizing: inherit;
}


</style>

<header>
  <h1>Spring 게시판</h1>
  <nav>
    <ul id="uls">
		<c:if test="${member == null}">
			<li id="lis">
				<a id="b" href="/member/signin">로그인</a>
			</li>
			<li id="lis">
				<a id="b" href="/member/signup">회원가입</a>
			</li>
		</c:if>
		<c:if test="${member != null}">
	        <li id="lis">
	            <a id="b" href="/board/listPageSearch?num=1">게시물 목록(페이징+검색)</a>
	        </li>
	        <!--
	        <li id="lis">
	             <a id="b"" href="/board/listPage?num=1">게시물 목록(페이징)</a>
	        </li>
	       	-->
	        <li id="lis">
	             <a id="b" href="/board/list">게시물 목록</a>
	        </li> 

	        <li id="lis">
	             <a id="b" href="/board/write">게시물 작성</a>
	        </li>				  
			<li id="lis">
				<a id="b">${member.userName}님 환영합니다.</a>
			</li> 
			<li id="lis">
				<a id="b" href="/member/signout">로그아웃</a>
			</li>
		</c:if>
    </ul>    
  </nav>
</header>

