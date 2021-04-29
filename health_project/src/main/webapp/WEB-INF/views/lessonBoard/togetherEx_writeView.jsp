<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>같이 운동해요 작성글 페이지</title>
		<script type="text/javascript">
			function submit(){
				alert('신청서 작성을 완료하였습니다.');
				writeForm.submit();
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
	<form action="/togetherEx_write" id="writeForm" name="writeForm" method="post" enctype="multipart/form-data">
		<table>
			<!-- Session에서 끌고와서 작성자 이름 넣기 or primaryKey -->
			<tr>
				<td>작성자</td>
				<td>
					<input type="text" name="bname" id="bname">
				</td>
			</tr>
			<tr>
				<td>운동종류</td>
				<td><input type="text" name="subject" id="subject"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="title" id="title">
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea name="bcontent" id="bcontent" cols="50" rows="10"></textarea>
				</td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td>
					 <input type="file" name="file" id="file">
				</td>
			</tr>
		</table> 
		<hr>
	</form>
	      <div class="button-wrapper">
	        <button type="submit" onclick="submit()">작성완료</button>
	        <a href="lessonBoardAccess"><button>글쓰기 취소</button></a>
	      </div>
	</body>
</html>