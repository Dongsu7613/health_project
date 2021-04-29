<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>강사 등록 페이지</title>
		<script type="text/javascript">
			function submit(){
				alert('신청서 작성을 완료하였습니다.');
				admissionForm.submit();
			}
		</script>
		<style type="text/css">
			table,tr,td{
				border: 1px solid black;
				border-collapse: collapse;
			}
		
		</style>
	</head>
	<body>
	<form action="/teacher_admission" id="admissionForm" name="admissionForm" method="post" enctype="multipart/form-data">
		<table>
			<!-- 강사아이디는 회원에서 끌고와야함 -->
			<tr>
				<td>회원가입 id</td>
				<td><input type="text" name="tid" id="tid" value="inSession"></td>
			</tr>
			<tr>
				<td>강사이름</td>
				<td><input type="text" name="tname" id="tname" value="inSession"></td>
			</tr>
			<!-- 회원 입력부분 시작 -->
			<tr>
				<td>대표사진 등록하기</td>
				<td>
					<input type="file" name="file" id="file">
				</td>
			</tr>
			<tr>
				<td>종목</td>
				<td>
				<input type="radio" name="subject" id="subject" value="골프" checked>골프
				<input type="radio" name="subject" id="subject" value="수영" >수영
				<input type="radio" name="subject" id="subject" value="헬스" >헬스
				<input type="radio" name="subject" id="subject" value="요가" >요가
				</td>
			</tr>
			<tr>
				<td>자기소개</td>
				<td>
				<input type="text" name="introduce" id="introduce">
				</td>
			</tr>
			<tr>
				<td>강습지역</td>
				<td>
				<input type="text" name="area" id="area">
				</td>
			</tr>
			<tr>
				<td>자격증</td>
				<td>
				<input type="text" name="license" id="license">
				</td>
			</tr>
		</table>
	</form>	
		<hr>
		<button type="submit" onclick="submit()">작성완료</button>
		<a href="/lessonBoardAccess"><button>강사등록 취소</button></a>
	</body>
</html>