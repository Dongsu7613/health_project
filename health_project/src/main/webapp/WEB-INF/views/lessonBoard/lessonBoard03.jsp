<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/lessonBoard/lessonBoard03.css">
</head>
<body>
	<div class="innerDiv">
		<%-- innerDiv 안에서 만들면 됩니당 ~~~ --%>
		<h1>같이 운동해요 게시판</h1>
		<form action="/lessonBoard03" method="post">
		<table>
			<tr>
				<td colspan="5">
					<h3>종목으로 같이 운동해요  검색하기</h3> 
					<input type="text" name="search" id="search">
					<input type="submit" value="검색">
				</td>
			</tr>
			<tr>
				<td>번호</td>
				<td>작성자</td>
				<td>제목</td>
				<td>종목</td>
				<td>날짜</td>
				<td>조회수</td>
			</tr>
			<!-- 내용 반복 시작 -->
			<c:forEach var="dto" items="${map.list }">	
			<tr>
				<td><a href="/togetherEx_contentView?search=${map.search }&bid=${dto.bid }">${dto.bid }</a></td>
				<td>${dto.bname }</td>
				<td><a href="/togetherEx_contentView?search=${map.search }&bid=${dto.bid }">${dto.title }</a></td>
				<td>${dto.subject }</td>
				<td>${dto.bdate}</td>
				<td>${dto.bhit }</td>
			</tr>	
			</c:forEach>		
			<!-- 내용 반복 끝 -->
		</table>
		</form>
			<a href="/togetherEx_writeView"><button>글쓰기</button></a>
	</div>
</body>
</html>