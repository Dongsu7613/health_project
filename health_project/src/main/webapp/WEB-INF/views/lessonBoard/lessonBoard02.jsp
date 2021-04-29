<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/lessonBoard/lessonBoard02.css">
	<style>
		table,tr,td{
			border:1px solid black;
		}
		img{
			width: 50px; height: 50px;
		}
	</style>
</head>
<body>
	<div class="innerDiv">
		<%-- innerDiv 안에서 만들면 됩니당 ~~~ --%>
		<h1>강사 소개 게시판</h1>
	<form action="/lessonBoard/lessonBoard02" method="post">
		<table>
			<tr>
				<td colspan="7">
					<h3>운동종목으로 강사 검색하기</h3> 
					<input type="text" name="search" id="search">
					<input type="submit" value="검색">
				</td>
			</tr>
			<tr>
				<td>게시물 번호</td>
				<td>강사 아이디</td>
				<td>강사 이름</td>
				<td>종목</td>
				<td>자기소개</td>
				<td>강습지역</td>
				<td>자격증</td>
				<td>허가여부</td>
			</tr>
			<!-- 내용 반복 시작 -->
			<c:forEach var="dto" items="${map.list }">	
			<tr>
				<td>${dto.bid }</td>
				<td><a href="/teacher_contentView?search=${map.search }&bid=${dto.bid }"><img alt="첨부파일 이미지" src="/resources/upload/${dto.fileName}"></a></td>
				<td>${dto.tname }</td>
				<td>${dto.subject }</td>
				<td><a href="/teacher_contentView?search=${map.search }&bid=${dto.bid }">${dto.introduce }</a></td>
				<td>${dto.area}</td>
				<td>${dto.license }</td>
				<td>${dto.grade }</td>
			</tr>	
			</c:forEach>		
			<!-- 내용 반복 끝 -->
		</table>
			<a><button type="button" onclick="location.href='teacher_admissionView'">강사등록 신청하기</button></a>
		</form>
		
	</div>
</body>
</html>