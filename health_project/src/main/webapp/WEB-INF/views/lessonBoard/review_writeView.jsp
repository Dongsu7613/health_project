<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성 페이지</title>
<style type="text/css">
table, tr, td {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}
</style>
</head>
<body>
	<!-- action 부분 ./review_check로 변경해야함 -->
	<form action="./review_write" method="post" name="review_form">
		<table>
			<tr>
				<td>강사 이름</td>
				<td><input type="text" name="tname" id="tname" value="DB강사">
				</td>
			</tr>
			<tr>
				<td>수강 종목</td>
				<td><input type="text" name="subject" id="tname" value="DB종목">
				</td>
			</tr>
			<tr>
				<td>별점</td>
				<td><input type="radio" name="score" id="score" value="5"
					checked>5점 <input type="radio" name="score" id="score"
					value="4">4점 <input type="radio" name="score" id="score"
					value="3">3점 <input type="radio" name="score" id="score"
					value="2">2점 <input type="radio" name="score" id="score"
					value="1">1점</td>
			</tr>
			<tr>
				<td>회원 이름</td>
				<td><input type="text" name="sname" id="sname"
					value="Session회원"></td>
			</tr>
			<tr>
				<td>수업 평가글</td>
				<td><textarea rows="5" cols="33" name="rating" id="rating"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit" value="제출하기">
				 <a	href="index"><button>리뷰쓰기 취소</button></a>
				 </td>
			</tr>
		</table>
	</form>
</body>
</html>