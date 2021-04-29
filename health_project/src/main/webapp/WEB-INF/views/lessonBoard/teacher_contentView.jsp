<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사상세페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function review_write2() {

		if ($("#sname").val() == "") {
			alert("작성자 이름을 입력해주세요.");
			$("#sname").focus();
			return false;
		} else if ($("#rating").val() == "") {
			alert("내용을 입력해주세요.");
			$("#rating").focus();
			return false;
		}

		var html = "";
		$.ajax({
			url : "/review_write",
			type : "post",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : {
				"tname" : "${map.teacherDto.tname }",
				"subject" : '${map.teacherDto.subject }',
				"score" : $("#score").val(),
				"sname" : $("#sname").val(),
				"rating" : $("#rating").val(),
				"bid" : $("#bid").val()
			},
			success : function(data) {

				html += '<tr>';
				html += '<td>' + data.sname + '</td>';
				html += '<td>' + data.rating + '</td>';
				html += '<td>' + data.score + '</td>';
				html += '</tr>';

				$('#list').prepend(html);
				alert('리뷰를 업로드 하였습니다.');
				location.reload();
			},
			error : function() {
				alert('에러');
			}
		});
	}
</script>
</head>
<body>
	<input type="hidden" name="bid" id="bid" value="${map.teacherDto.bid }">
	<input type="hidden" name="tid" id="tid" value="${map.teacerDto.tid }">
	<table>
		<tr>
			<td>강사명</td>
			<td>${map.teacherDto.tname }</td>
		</tr>
		<tr>
			<td>운동종류</td>
			<td>${map.teacherDto.subject }</td>
		</tr>
		<tr>
			<td>자기소개</td>
			<td>${map.teacherDto.introduce }</td>
		</tr>
		<tr>
			<td>지역</td>
			<td>${map.teacherDto.area }</td>
		</tr>
		<tr>
			<td>자격증</td>
			<td>${map.teacherDto.license }</td>
		</tr>
		<tr>
			<td>대표사진 이미지 이름</td>
			<td>${map.teacherDto.fileName }</td>
		</tr>
		<tr>
			<td>대표사진 이미지</td>
			<td><img alt="첨부파일 이미지"
				src="/resources/upload/${map.teacherDto.fileName}"></td>
		</tr>
		<tr>
			<td>강사등록 신청일</td>
			<td>${map.teacherDto.tdate }</td>
		</tr>
	</table>
	<hr>
	<table id="list">
		<tr>
			<td>작성자</td>
			<td>내용</td>
			<td>별점</td>
		</tr>
		<c:forEach var="dto" items="${reviewMap.review_list }">
			<tr>
				<td>${dto.sname }</td>
				<td>${dto.rating }</td>
				<td>${dto.score }</td>
			</tr>
		</c:forEach>
	</table>
	<div id="write">
		<table>
			<tr>
				<td>작성자 : <input type="text" name="sname" id="sname"></td>
				<td>내용 : <input type="text" name="rating" id="rating"></td>
				<td>별점: <input type="radio" name="score" id="score" value="5"
					checked>5점 <input type="radio" name="score" id="score"
					value="4">4점 <input type="radio" name="score" id="score"
					value="3">3점 <input type="radio" name="score" id="score"
					value="2">2점 <input type="radio" name="score" id="score"
					value="1">1점 <input type="button" onclick="review_write2()"
					value="리뷰달기">
				</td>
			</tr>
		</table>
	</div>

	<!-- 댓글 작성하기 -->
	<hr>
	<div class="button-wrapper">
		<a href="/lessonBoardAccess"><button>리스트로 돌아가기</button></a> <a
			href="/"><button>강습 신청 쪽지보내기✔</button></a>
	</div>
</body>
</html>