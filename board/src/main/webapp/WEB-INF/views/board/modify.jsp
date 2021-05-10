<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
</head>
<body>

<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>


<div class="container">
		<div class="row">
			<form method="post">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판 글 쓰기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="title" maxlength="50" value="${view.title}"/></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" placeholder="작성자" name="users" maxlength="10" value="${view.users}"/></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="1024" style="height: 250px;">${view.content}</textarea></td>
						</tr>
					</tbody>
				</table>	
				<button type="submit" class="btn btn-primary pull-right">완료</button>
			</form>
		</div>
	</div>


</body>
</html>