<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>같이 운동해요 수정하기</title>
		<style type="text/css">
			table,tr,td{
				border: 1px solid black;
				border-collapse: collapse;
			}
		</style>
	</head>
	<body>
		<form action="/togetherEx_modify" id="modifyForm" name="modifyForm" method="post" enctype="multipart/form-data">
			<input type="hidden" name="bid" id="bid" value="${map.togetherDto.bid }">
			<input type="hidden" name="search" id="search" value="${map.search }">
			<input type="hidden" name="fileName" value="${map.togetherDto.fileName}">
		<table>
			<tr>
				<td>작성자</td>
				<td>
					<input type="text" name="bname" id="bname" value="${map.togetherDto.bname }">
				</td>
			</tr>
			<tr>
				<td>운동종류</td>
				<td><input type="text" name="subject" id="subject" value="${map.togetherDto.subject }"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="title" id="title" value="${map.togetherDto.title }">
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea name="bcontent" id="bcontent" cols="50" rows="10">
						${map.togetherDto.bcontent }
					</textarea>
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
	      <div class="button-wrapper">
	        <button type="submit">수정완료</button>
	       <button  type="button" onclick="javascript:location.href='/togetherEx_list'">취소</button>
	      </div>
	</form>
	
	</body>
</html>