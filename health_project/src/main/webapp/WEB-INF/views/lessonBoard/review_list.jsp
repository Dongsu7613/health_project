<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>리뷰 리스트 페이지</title>
		<style type="text/css">
			table,tr,td{
				border: 1px solid black;
				border-collapse: collapse;
				text-align: center;
			}
		</style>
		
	</head>
	<body>
		<form action="review_list" name="search" method="post">
			<h4>강사이름으로 검색하기</h4>
			<input type="text" name="search">
			<input type="submit">
		</form>
		<table>
			<!-- 제목부분 -->
			<tr>
				<td>별점</td>			
				<td>회원이름</td>			
				<td>평가글</td>			
			</tr>
			<!-- 반복 시작 -->
			<c:forEach var="dto" items="${map.list }">
			<tr>
				<td>${dto.score }</td>			
				<td>${dto.sname }</td>			
				<td>${dto.rating }</td>
			</tr>
			</c:forEach>
			<!-- 반복 끝 -->
		</table>
			<a href="index"><button>인덱스 페이지로 이동</button></a>
	</body>
</html>